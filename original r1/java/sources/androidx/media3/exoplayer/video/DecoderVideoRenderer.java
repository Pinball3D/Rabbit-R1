package androidx.media3.exoplayer.video;

import android.os.Handler;
import android.os.SystemClock;
import android.view.Surface;
import androidx.media3.common.Format;
import androidx.media3.common.VideoSize;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.TimedValueQueue;
import androidx.media3.common.util.TraceUtil;
import androidx.media3.common.util.Util;
import androidx.media3.decoder.CryptoConfig;
import androidx.media3.decoder.Decoder;
import androidx.media3.decoder.DecoderException;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.decoder.VideoDecoderOutputBuffer;
import androidx.media3.exoplayer.BaseRenderer;
import androidx.media3.exoplayer.DecoderCounters;
import androidx.media3.exoplayer.DecoderReuseEvaluation;
import androidx.media3.exoplayer.ExoPlaybackException;
import androidx.media3.exoplayer.FormatHolder;
import androidx.media3.exoplayer.drm.DrmSession;
import androidx.media3.exoplayer.video.VideoRendererEventListener;

/* loaded from: classes2.dex */
public abstract class DecoderVideoRenderer extends BaseRenderer {
    private static final int REINITIALIZATION_STATE_NONE = 0;
    private static final int REINITIALIZATION_STATE_SIGNAL_END_OF_STREAM = 1;
    private static final int REINITIALIZATION_STATE_WAIT_END_OF_STREAM = 2;
    private static final String TAG = "DecoderVideoRenderer";
    private final long allowedJoiningTimeMs;
    private int buffersInCodecCount;
    private int consecutiveDroppedFrameCount;
    private Decoder<DecoderInputBuffer, ? extends VideoDecoderOutputBuffer, ? extends DecoderException> decoder;
    protected DecoderCounters decoderCounters;
    private DrmSession decoderDrmSession;
    private boolean decoderReceivedBuffers;
    private int decoderReinitializationState;
    private long droppedFrameAccumulationStartTimeMs;
    private int droppedFrames;
    private final VideoRendererEventListener.EventDispatcher eventDispatcher;
    private final DecoderInputBuffer flagsOnlyBuffer;
    private final TimedValueQueue<Format> formatQueue;
    private VideoFrameMetadataListener frameMetadataListener;
    private long initialPositionUs;
    private DecoderInputBuffer inputBuffer;
    private Format inputFormat;
    private boolean inputStreamEnded;
    private long joiningDeadlineMs;
    private long lastRenderTimeUs;
    private final int maxDroppedFramesToNotify;
    private boolean mayRenderFirstFrameAfterEnableIfNotStarted;
    private Object output;
    private VideoDecoderOutputBuffer outputBuffer;
    private VideoDecoderOutputBufferRenderer outputBufferRenderer;
    private Format outputFormat;
    private int outputMode;
    private boolean outputStreamEnded;
    private long outputStreamOffsetUs;
    private Surface outputSurface;
    private boolean renderedFirstFrameAfterEnable;
    private boolean renderedFirstFrameAfterReset;
    private VideoSize reportedVideoSize;
    private DrmSession sourceDrmSession;
    private boolean waitingForFirstSampleInFormat;

    private void clearRenderedFirstFrame() {
        this.renderedFirstFrameAfterReset = false;
    }

    private void clearReportedVideoSize() {
        this.reportedVideoSize = null;
    }

    private boolean hasOutput() {
        return this.outputMode != -1;
    }

    private static boolean isBufferLate(long j) {
        return j < -30000;
    }

    private static boolean isBufferVeryLate(long j) {
        return j < -500000;
    }

    protected abstract Decoder<DecoderInputBuffer, ? extends VideoDecoderOutputBuffer, ? extends DecoderException> createDecoder(Format format, CryptoConfig cryptoConfig) throws DecoderException;

    @Override // androidx.media3.exoplayer.Renderer
    public boolean isEnded() {
        return this.outputStreamEnded;
    }

    protected void onProcessedOutputBuffer(long j) {
        this.buffersInCodecCount--;
    }

    protected void onQueueInputBuffer(DecoderInputBuffer decoderInputBuffer) {
    }

    protected abstract void renderOutputBufferToSurface(VideoDecoderOutputBuffer videoDecoderOutputBuffer, Surface surface) throws DecoderException;

    protected abstract void setDecoderOutputMode(int i);

    protected DecoderVideoRenderer(long j, Handler handler, VideoRendererEventListener videoRendererEventListener, int i) {
        super(2);
        this.allowedJoiningTimeMs = j;
        this.maxDroppedFramesToNotify = i;
        this.joiningDeadlineMs = -9223372036854775807L;
        clearReportedVideoSize();
        this.formatQueue = new TimedValueQueue<>();
        this.flagsOnlyBuffer = DecoderInputBuffer.newNoDataInstance();
        this.eventDispatcher = new VideoRendererEventListener.EventDispatcher(handler, videoRendererEventListener);
        this.decoderReinitializationState = 0;
        this.outputMode = -1;
    }

    @Override // androidx.media3.exoplayer.Renderer
    public void render(long j, long j2) throws ExoPlaybackException {
        if (this.outputStreamEnded) {
            return;
        }
        if (this.inputFormat == null) {
            FormatHolder formatHolder = getFormatHolder();
            this.flagsOnlyBuffer.clear();
            int readSource = readSource(formatHolder, this.flagsOnlyBuffer, 2);
            if (readSource != -5) {
                if (readSource == -4) {
                    Assertions.checkState(this.flagsOnlyBuffer.isEndOfStream());
                    this.inputStreamEnded = true;
                    this.outputStreamEnded = true;
                    return;
                }
                return;
            }
            onInputFormatChanged(formatHolder);
        }
        maybeInitDecoder();
        if (this.decoder != null) {
            try {
                TraceUtil.beginSection("drainAndFeed");
                do {
                } while (drainOutputBuffer(j, j2));
                do {
                } while (feedInputBuffer());
                TraceUtil.endSection();
                this.decoderCounters.ensureUpdated();
            } catch (DecoderException e) {
                Log.e(TAG, "Video codec error", e);
                this.eventDispatcher.videoCodecError(e);
                throw createRendererException(e, this.inputFormat, 4003);
            }
        }
    }

    @Override // androidx.media3.exoplayer.Renderer
    public boolean isReady() {
        if (this.inputFormat != null && ((isSourceReady() || this.outputBuffer != null) && (this.renderedFirstFrameAfterReset || !hasOutput()))) {
            this.joiningDeadlineMs = -9223372036854775807L;
            return true;
        }
        if (this.joiningDeadlineMs == -9223372036854775807L) {
            return false;
        }
        if (SystemClock.elapsedRealtime() < this.joiningDeadlineMs) {
            return true;
        }
        this.joiningDeadlineMs = -9223372036854775807L;
        return false;
    }

    @Override // androidx.media3.exoplayer.BaseRenderer, androidx.media3.exoplayer.PlayerMessage.Target
    public void handleMessage(int i, Object obj) throws ExoPlaybackException {
        if (i == 1) {
            setOutput(obj);
        } else if (i == 7) {
            this.frameMetadataListener = (VideoFrameMetadataListener) obj;
        } else {
            super.handleMessage(i, obj);
        }
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    protected void onEnabled(boolean z, boolean z2) throws ExoPlaybackException {
        DecoderCounters decoderCounters = new DecoderCounters();
        this.decoderCounters = decoderCounters;
        this.eventDispatcher.enabled(decoderCounters);
        this.mayRenderFirstFrameAfterEnableIfNotStarted = z2;
        this.renderedFirstFrameAfterEnable = false;
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    protected void onPositionReset(long j, boolean z) throws ExoPlaybackException {
        this.inputStreamEnded = false;
        this.outputStreamEnded = false;
        clearRenderedFirstFrame();
        this.initialPositionUs = -9223372036854775807L;
        this.consecutiveDroppedFrameCount = 0;
        if (this.decoder != null) {
            flushDecoder();
        }
        if (z) {
            setJoiningDeadlineMs();
        } else {
            this.joiningDeadlineMs = -9223372036854775807L;
        }
        this.formatQueue.clear();
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    protected void onStarted() {
        this.droppedFrames = 0;
        this.droppedFrameAccumulationStartTimeMs = SystemClock.elapsedRealtime();
        this.lastRenderTimeUs = Util.msToUs(SystemClock.elapsedRealtime());
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    protected void onStopped() {
        this.joiningDeadlineMs = -9223372036854775807L;
        maybeNotifyDroppedFrames();
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    protected void onDisabled() {
        this.inputFormat = null;
        clearReportedVideoSize();
        clearRenderedFirstFrame();
        try {
            setSourceDrmSession(null);
            releaseDecoder();
        } finally {
            this.eventDispatcher.disabled(this.decoderCounters);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.media3.exoplayer.BaseRenderer
    public void onStreamChanged(Format[] formatArr, long j, long j2) throws ExoPlaybackException {
        this.outputStreamOffsetUs = j2;
        super.onStreamChanged(formatArr, j, j2);
    }

    protected void flushDecoder() throws ExoPlaybackException {
        this.buffersInCodecCount = 0;
        if (this.decoderReinitializationState != 0) {
            releaseDecoder();
            maybeInitDecoder();
            return;
        }
        this.inputBuffer = null;
        VideoDecoderOutputBuffer videoDecoderOutputBuffer = this.outputBuffer;
        if (videoDecoderOutputBuffer != null) {
            videoDecoderOutputBuffer.release();
            this.outputBuffer = null;
        }
        this.decoder.flush();
        this.decoderReceivedBuffers = false;
    }

    protected void releaseDecoder() {
        this.inputBuffer = null;
        this.outputBuffer = null;
        this.decoderReinitializationState = 0;
        this.decoderReceivedBuffers = false;
        this.buffersInCodecCount = 0;
        if (this.decoder != null) {
            this.decoderCounters.decoderReleaseCount++;
            this.decoder.release();
            this.eventDispatcher.decoderReleased(this.decoder.getName());
            this.decoder = null;
        }
        setDecoderDrmSession(null);
    }

    protected void onInputFormatChanged(FormatHolder formatHolder) throws ExoPlaybackException {
        DecoderReuseEvaluation canReuseDecoder;
        this.waitingForFirstSampleInFormat = true;
        Format format = (Format) Assertions.checkNotNull(formatHolder.format);
        setSourceDrmSession(formatHolder.drmSession);
        Format format2 = this.inputFormat;
        this.inputFormat = format;
        Decoder<DecoderInputBuffer, ? extends VideoDecoderOutputBuffer, ? extends DecoderException> decoder = this.decoder;
        if (decoder == null) {
            maybeInitDecoder();
            this.eventDispatcher.inputFormatChanged(this.inputFormat, null);
            return;
        }
        if (this.sourceDrmSession != this.decoderDrmSession) {
            canReuseDecoder = new DecoderReuseEvaluation(this.decoder.getName(), format2, format, 0, 128);
        } else {
            canReuseDecoder = canReuseDecoder(decoder.getName(), format2, format);
        }
        if (canReuseDecoder.result == 0) {
            if (this.decoderReceivedBuffers) {
                this.decoderReinitializationState = 1;
            } else {
                releaseDecoder();
                maybeInitDecoder();
            }
        }
        this.eventDispatcher.inputFormatChanged(this.inputFormat, canReuseDecoder);
    }

    protected boolean shouldDropOutputBuffer(long j, long j2) {
        return isBufferLate(j);
    }

    protected boolean shouldDropBuffersToKeyframe(long j, long j2) {
        return isBufferVeryLate(j);
    }

    protected boolean shouldForceRenderOutputBuffer(long j, long j2) {
        return isBufferLate(j) && j2 > 100000;
    }

    protected void skipOutputBuffer(VideoDecoderOutputBuffer videoDecoderOutputBuffer) {
        this.decoderCounters.skippedOutputBufferCount++;
        videoDecoderOutputBuffer.release();
    }

    protected void dropOutputBuffer(VideoDecoderOutputBuffer videoDecoderOutputBuffer) {
        updateDroppedBufferCounters(0, 1);
        videoDecoderOutputBuffer.release();
    }

    protected boolean maybeDropBuffersToKeyframe(long j) throws ExoPlaybackException {
        int skipSource = skipSource(j);
        if (skipSource == 0) {
            return false;
        }
        this.decoderCounters.droppedToKeyframeCount++;
        updateDroppedBufferCounters(skipSource, this.buffersInCodecCount);
        flushDecoder();
        return true;
    }

    protected void updateDroppedBufferCounters(int i, int i2) {
        this.decoderCounters.droppedInputBufferCount += i;
        int i3 = i + i2;
        this.decoderCounters.droppedBufferCount += i3;
        this.droppedFrames += i3;
        int i4 = this.consecutiveDroppedFrameCount + i3;
        this.consecutiveDroppedFrameCount = i4;
        DecoderCounters decoderCounters = this.decoderCounters;
        decoderCounters.maxConsecutiveDroppedBufferCount = Math.max(i4, decoderCounters.maxConsecutiveDroppedBufferCount);
        int i5 = this.maxDroppedFramesToNotify;
        if (i5 <= 0 || this.droppedFrames < i5) {
            return;
        }
        maybeNotifyDroppedFrames();
    }

    protected void renderOutputBuffer(VideoDecoderOutputBuffer videoDecoderOutputBuffer, long j, Format format) throws DecoderException {
        VideoFrameMetadataListener videoFrameMetadataListener = this.frameMetadataListener;
        if (videoFrameMetadataListener != null) {
            videoFrameMetadataListener.onVideoFrameAboutToBeRendered(j, System.nanoTime(), format, null);
        }
        this.lastRenderTimeUs = Util.msToUs(SystemClock.elapsedRealtime());
        int i = videoDecoderOutputBuffer.mode;
        boolean z = i == 1 && this.outputSurface != null;
        boolean z2 = i == 0 && this.outputBufferRenderer != null;
        if (!z2 && !z) {
            dropOutputBuffer(videoDecoderOutputBuffer);
            return;
        }
        maybeNotifyVideoSizeChanged(videoDecoderOutputBuffer.width, videoDecoderOutputBuffer.height);
        if (z2) {
            this.outputBufferRenderer.setOutputBuffer(videoDecoderOutputBuffer);
        } else {
            renderOutputBufferToSurface(videoDecoderOutputBuffer, this.outputSurface);
        }
        this.consecutiveDroppedFrameCount = 0;
        this.decoderCounters.renderedOutputBufferCount++;
        maybeNotifyRenderedFirstFrame();
    }

    protected final void setOutput(Object obj) {
        if (obj instanceof Surface) {
            this.outputSurface = (Surface) obj;
            this.outputBufferRenderer = null;
            this.outputMode = 1;
        } else if (obj instanceof VideoDecoderOutputBufferRenderer) {
            this.outputSurface = null;
            this.outputBufferRenderer = (VideoDecoderOutputBufferRenderer) obj;
            this.outputMode = 0;
        } else {
            this.outputSurface = null;
            this.outputBufferRenderer = null;
            this.outputMode = -1;
            obj = null;
        }
        if (this.output == obj) {
            if (obj != null) {
                onOutputReset();
                return;
            }
            return;
        }
        this.output = obj;
        if (obj != null) {
            if (this.decoder != null) {
                setDecoderOutputMode(this.outputMode);
            }
            onOutputChanged();
            return;
        }
        onOutputRemoved();
    }

    protected DecoderReuseEvaluation canReuseDecoder(String str, Format format, Format format2) {
        return new DecoderReuseEvaluation(str, format, format2, 0, 1);
    }

    private void setSourceDrmSession(DrmSession drmSession) {
        DrmSession.replaceSession(this.sourceDrmSession, drmSession);
        this.sourceDrmSession = drmSession;
    }

    private void setDecoderDrmSession(DrmSession drmSession) {
        DrmSession.replaceSession(this.decoderDrmSession, drmSession);
        this.decoderDrmSession = drmSession;
    }

    private void maybeInitDecoder() throws ExoPlaybackException {
        CryptoConfig cryptoConfig;
        if (this.decoder != null) {
            return;
        }
        setDecoderDrmSession(this.sourceDrmSession);
        DrmSession drmSession = this.decoderDrmSession;
        if (drmSession != null) {
            cryptoConfig = drmSession.getCryptoConfig();
            if (cryptoConfig == null && this.decoderDrmSession.getError() == null) {
                return;
            }
        } else {
            cryptoConfig = null;
        }
        try {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            this.decoder = createDecoder(this.inputFormat, cryptoConfig);
            setDecoderOutputMode(this.outputMode);
            long elapsedRealtime2 = SystemClock.elapsedRealtime();
            this.eventDispatcher.decoderInitialized(this.decoder.getName(), elapsedRealtime2, elapsedRealtime2 - elapsedRealtime);
            this.decoderCounters.decoderInitCount++;
        } catch (DecoderException e) {
            Log.e(TAG, "Video codec error", e);
            this.eventDispatcher.videoCodecError(e);
            throw createRendererException(e, this.inputFormat, 4001);
        } catch (OutOfMemoryError e2) {
            throw createRendererException(e2, this.inputFormat, 4001);
        }
    }

    private boolean feedInputBuffer() throws DecoderException, ExoPlaybackException {
        Decoder<DecoderInputBuffer, ? extends VideoDecoderOutputBuffer, ? extends DecoderException> decoder = this.decoder;
        if (decoder == null || this.decoderReinitializationState == 2 || this.inputStreamEnded) {
            return false;
        }
        if (this.inputBuffer == null) {
            DecoderInputBuffer dequeueInputBuffer = decoder.dequeueInputBuffer();
            this.inputBuffer = dequeueInputBuffer;
            if (dequeueInputBuffer == null) {
                return false;
            }
        }
        if (this.decoderReinitializationState == 1) {
            this.inputBuffer.setFlags(4);
            this.decoder.queueInputBuffer(this.inputBuffer);
            this.inputBuffer = null;
            this.decoderReinitializationState = 2;
            return false;
        }
        FormatHolder formatHolder = getFormatHolder();
        int readSource = readSource(formatHolder, this.inputBuffer, 0);
        if (readSource == -5) {
            onInputFormatChanged(formatHolder);
            return true;
        }
        if (readSource != -4) {
            if (readSource == -3) {
                return false;
            }
            throw new IllegalStateException();
        }
        if (this.inputBuffer.isEndOfStream()) {
            this.inputStreamEnded = true;
            this.decoder.queueInputBuffer(this.inputBuffer);
            this.inputBuffer = null;
            return false;
        }
        if (this.waitingForFirstSampleInFormat) {
            this.formatQueue.add(this.inputBuffer.timeUs, this.inputFormat);
            this.waitingForFirstSampleInFormat = false;
        }
        this.inputBuffer.flip();
        this.inputBuffer.format = this.inputFormat;
        onQueueInputBuffer(this.inputBuffer);
        this.decoder.queueInputBuffer(this.inputBuffer);
        this.buffersInCodecCount++;
        this.decoderReceivedBuffers = true;
        this.decoderCounters.queuedInputBufferCount++;
        this.inputBuffer = null;
        return true;
    }

    private boolean drainOutputBuffer(long j, long j2) throws ExoPlaybackException, DecoderException {
        if (this.outputBuffer == null) {
            VideoDecoderOutputBuffer dequeueOutputBuffer = this.decoder.dequeueOutputBuffer();
            this.outputBuffer = dequeueOutputBuffer;
            if (dequeueOutputBuffer == null) {
                return false;
            }
            this.decoderCounters.skippedOutputBufferCount += this.outputBuffer.skippedOutputBufferCount;
            this.buffersInCodecCount -= this.outputBuffer.skippedOutputBufferCount;
        }
        if (!this.outputBuffer.isEndOfStream()) {
            boolean processOutputBuffer = processOutputBuffer(j, j2);
            if (processOutputBuffer) {
                onProcessedOutputBuffer(this.outputBuffer.timeUs);
                this.outputBuffer = null;
            }
            return processOutputBuffer;
        }
        if (this.decoderReinitializationState == 2) {
            releaseDecoder();
            maybeInitDecoder();
        } else {
            this.outputBuffer.release();
            this.outputBuffer = null;
            this.outputStreamEnded = true;
        }
        return false;
    }

    private boolean processOutputBuffer(long j, long j2) throws ExoPlaybackException, DecoderException {
        if (this.initialPositionUs == -9223372036854775807L) {
            this.initialPositionUs = j;
        }
        long j3 = this.outputBuffer.timeUs - j;
        if (!hasOutput()) {
            if (!isBufferLate(j3)) {
                return false;
            }
            skipOutputBuffer(this.outputBuffer);
            return true;
        }
        long j4 = this.outputBuffer.timeUs - this.outputStreamOffsetUs;
        Format pollFloor = this.formatQueue.pollFloor(j4);
        if (pollFloor != null) {
            this.outputFormat = pollFloor;
        }
        long msToUs = Util.msToUs(SystemClock.elapsedRealtime()) - this.lastRenderTimeUs;
        boolean z = getState() == 2;
        if (this.renderedFirstFrameAfterEnable ? this.renderedFirstFrameAfterReset : !z && !this.mayRenderFirstFrameAfterEnableIfNotStarted) {
            if (!z || !shouldForceRenderOutputBuffer(j3, msToUs)) {
                if (!z || j == this.initialPositionUs || (shouldDropBuffersToKeyframe(j3, j2) && maybeDropBuffersToKeyframe(j))) {
                    return false;
                }
                if (shouldDropOutputBuffer(j3, j2)) {
                    dropOutputBuffer(this.outputBuffer);
                    return true;
                }
                if (j3 < 30000) {
                    renderOutputBuffer(this.outputBuffer, j4, this.outputFormat);
                    return true;
                }
                return false;
            }
        }
        renderOutputBuffer(this.outputBuffer, j4, this.outputFormat);
        return true;
    }

    private void onOutputChanged() {
        maybeRenotifyVideoSizeChanged();
        clearRenderedFirstFrame();
        if (getState() == 2) {
            setJoiningDeadlineMs();
        }
    }

    private void onOutputRemoved() {
        clearReportedVideoSize();
        clearRenderedFirstFrame();
    }

    private void onOutputReset() {
        maybeRenotifyVideoSizeChanged();
        maybeRenotifyRenderedFirstFrame();
    }

    private void setJoiningDeadlineMs() {
        this.joiningDeadlineMs = this.allowedJoiningTimeMs > 0 ? SystemClock.elapsedRealtime() + this.allowedJoiningTimeMs : -9223372036854775807L;
    }

    private void maybeNotifyRenderedFirstFrame() {
        this.renderedFirstFrameAfterEnable = true;
        if (this.renderedFirstFrameAfterReset) {
            return;
        }
        this.renderedFirstFrameAfterReset = true;
        this.eventDispatcher.renderedFirstFrame(this.output);
    }

    private void maybeRenotifyRenderedFirstFrame() {
        if (this.renderedFirstFrameAfterReset) {
            this.eventDispatcher.renderedFirstFrame(this.output);
        }
    }

    private void maybeNotifyVideoSizeChanged(int i, int i2) {
        VideoSize videoSize = this.reportedVideoSize;
        if (videoSize != null && videoSize.width == i && this.reportedVideoSize.height == i2) {
            return;
        }
        VideoSize videoSize2 = new VideoSize(i, i2);
        this.reportedVideoSize = videoSize2;
        this.eventDispatcher.videoSizeChanged(videoSize2);
    }

    private void maybeRenotifyVideoSizeChanged() {
        VideoSize videoSize = this.reportedVideoSize;
        if (videoSize != null) {
            this.eventDispatcher.videoSizeChanged(videoSize);
        }
    }

    private void maybeNotifyDroppedFrames() {
        if (this.droppedFrames > 0) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            this.eventDispatcher.droppedFrames(this.droppedFrames, elapsedRealtime - this.droppedFrameAccumulationStartTimeMs);
            this.droppedFrames = 0;
            this.droppedFrameAccumulationStartTimeMs = elapsedRealtime;
        }
    }
}
