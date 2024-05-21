package com.google.android.exoplayer2.video;

import android.content.Context;
import android.graphics.Point;
import android.hardware.display.DisplayManager;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.util.Pair;
import android.view.Display;
import android.view.Surface;
import androidx.work.WorkRequest;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.FormatHolder;
import com.google.android.exoplayer2.RendererCapabilities;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.decoder.DecoderReuseEvaluation;
import com.google.android.exoplayer2.mediacodec.MediaCodecAdapter;
import com.google.android.exoplayer2.mediacodec.MediaCodecDecoderException;
import com.google.android.exoplayer2.mediacodec.MediaCodecInfo;
import com.google.android.exoplayer2.mediacodec.MediaCodecRenderer;
import com.google.android.exoplayer2.mediacodec.MediaCodecSelector;
import com.google.android.exoplayer2.mediacodec.MediaCodecUtil;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.MediaFormatUtil;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.TraceUtil;
import com.google.android.exoplayer2.util.Util;
import com.google.android.exoplayer2.video.VideoRendererEventListener;
import com.google.common.collect.ImmutableList;
import io.flutter.plugin.platform.PlatformPlugin;
import io.sentry.protocol.SentryThread;
import io.sentry.protocol.ViewHierarchyNode;
import java.nio.ByteBuffer;
import java.util.Collection;
import java.util.List;

/* loaded from: classes2.dex */
public class MediaCodecVideoRenderer extends MediaCodecRenderer {
    private static final int HEVC_MAX_INPUT_SIZE_THRESHOLD = 2097152;
    private static final float INITIAL_FORMAT_MAX_INPUT_SIZE_SCALE_FACTOR = 1.5f;
    private static final String KEY_CROP_BOTTOM = "crop-bottom";
    private static final String KEY_CROP_LEFT = "crop-left";
    private static final String KEY_CROP_RIGHT = "crop-right";
    private static final String KEY_CROP_TOP = "crop-top";
    private static final int[] STANDARD_LONG_EDGE_VIDEO_PX = {1920, 1600, 1440, PlatformPlugin.DEFAULT_SYSTEM_UI, 960, 854, 640, 540, 480};
    private static final String TAG = "MediaCodecVideoRenderer";
    private static final long TUNNELING_EOS_PRESENTATION_TIME_US = Long.MAX_VALUE;
    private static boolean deviceNeedsSetOutputSurfaceWorkaround;
    private static boolean evaluatedDeviceNeedsSetOutputSurfaceWorkaround;
    private final long allowedJoiningTimeMs;
    private int buffersInCodecCount;
    private boolean codecHandlesHdr10PlusOutOfBandMetadata;
    private CodecMaxValues codecMaxValues;
    private boolean codecNeedsSetOutputSurfaceWorkaround;
    private int consecutiveDroppedFrameCount;
    private final Context context;
    private int currentHeight;
    private float currentPixelWidthHeightRatio;
    private int currentUnappliedRotationDegrees;
    private int currentWidth;
    private final boolean deviceNeedsNoPostProcessWorkaround;
    private long droppedFrameAccumulationStartTimeMs;
    private int droppedFrames;
    private final VideoRendererEventListener.EventDispatcher eventDispatcher;
    private VideoFrameMetadataListener frameMetadataListener;
    private final VideoFrameReleaseHelper frameReleaseHelper;
    private boolean haveReportedFirstFrameRenderedForCurrentSurface;
    private long initialPositionUs;
    private long joiningDeadlineMs;
    private long lastBufferPresentationTimeUs;
    private long lastFrameReleaseTimeNs;
    private long lastRenderRealtimeUs;
    private final int maxDroppedFramesToNotify;
    private boolean mayRenderFirstFrameAfterEnableIfNotStarted;
    private PlaceholderSurface placeholderSurface;
    private boolean renderedFirstFrameAfterEnable;
    private boolean renderedFirstFrameAfterReset;
    private VideoSize reportedVideoSize;
    private int scalingMode;
    private Surface surface;
    private long totalVideoFrameProcessingOffsetUs;
    private boolean tunneling;
    private int tunnelingAudioSessionId;
    OnFrameRenderedListenerV23 tunnelingOnFrameRenderedListener;
    private int videoFrameProcessingOffsetCount;

    private void clearReportedVideoSize() {
        this.reportedVideoSize = null;
    }

    private static boolean isBufferLate(long j) {
        return j < -30000;
    }

    private static boolean isBufferVeryLate(long j) {
        return j < -500000;
    }

    @Override // com.google.android.exoplayer2.Renderer, com.google.android.exoplayer2.RendererCapabilities
    public String getName() {
        return TAG;
    }

    protected Surface getSurface() {
        return this.surface;
    }

    public MediaCodecVideoRenderer(Context context, MediaCodecSelector mediaCodecSelector) {
        this(context, mediaCodecSelector, 0L);
    }

    public MediaCodecVideoRenderer(Context context, MediaCodecSelector mediaCodecSelector, long j) {
        this(context, mediaCodecSelector, j, null, null, 0);
    }

    public MediaCodecVideoRenderer(Context context, MediaCodecSelector mediaCodecSelector, long j, Handler handler, VideoRendererEventListener videoRendererEventListener, int i) {
        this(context, MediaCodecAdapter.Factory.DEFAULT, mediaCodecSelector, j, false, handler, videoRendererEventListener, i, 30.0f);
    }

    public MediaCodecVideoRenderer(Context context, MediaCodecSelector mediaCodecSelector, long j, boolean z, Handler handler, VideoRendererEventListener videoRendererEventListener, int i) {
        this(context, MediaCodecAdapter.Factory.DEFAULT, mediaCodecSelector, j, z, handler, videoRendererEventListener, i, 30.0f);
    }

    public MediaCodecVideoRenderer(Context context, MediaCodecAdapter.Factory factory, MediaCodecSelector mediaCodecSelector, long j, boolean z, Handler handler, VideoRendererEventListener videoRendererEventListener, int i) {
        this(context, factory, mediaCodecSelector, j, z, handler, videoRendererEventListener, i, 30.0f);
    }

    public MediaCodecVideoRenderer(Context context, MediaCodecAdapter.Factory factory, MediaCodecSelector mediaCodecSelector, long j, boolean z, Handler handler, VideoRendererEventListener videoRendererEventListener, int i, float f) {
        super(2, factory, mediaCodecSelector, z, f);
        this.allowedJoiningTimeMs = j;
        this.maxDroppedFramesToNotify = i;
        Context applicationContext = context.getApplicationContext();
        this.context = applicationContext;
        this.frameReleaseHelper = new VideoFrameReleaseHelper(applicationContext);
        this.eventDispatcher = new VideoRendererEventListener.EventDispatcher(handler, videoRendererEventListener);
        this.deviceNeedsNoPostProcessWorkaround = deviceNeedsNoPostProcessWorkaround();
        this.joiningDeadlineMs = -9223372036854775807L;
        this.currentWidth = -1;
        this.currentHeight = -1;
        this.currentPixelWidthHeightRatio = -1.0f;
        this.scalingMode = 1;
        this.tunnelingAudioSessionId = 0;
        clearReportedVideoSize();
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected int supportsFormat(MediaCodecSelector mediaCodecSelector, Format format) throws MediaCodecUtil.DecoderQueryException {
        boolean z;
        int i = 0;
        if (!MimeTypes.isVideo(format.sampleMimeType)) {
            return RendererCapabilities.create(0);
        }
        boolean z2 = format.drmInitData != null;
        List<MediaCodecInfo> decoderInfos = getDecoderInfos(this.context, mediaCodecSelector, format, z2, false);
        if (z2 && decoderInfos.isEmpty()) {
            decoderInfos = getDecoderInfos(this.context, mediaCodecSelector, format, false, false);
        }
        if (decoderInfos.isEmpty()) {
            return RendererCapabilities.create(1);
        }
        if (!supportsFormatDrm(format)) {
            return RendererCapabilities.create(2);
        }
        MediaCodecInfo mediaCodecInfo = decoderInfos.get(0);
        boolean isFormatSupported = mediaCodecInfo.isFormatSupported(format);
        if (!isFormatSupported) {
            for (int i2 = 1; i2 < decoderInfos.size(); i2++) {
                MediaCodecInfo mediaCodecInfo2 = decoderInfos.get(i2);
                if (mediaCodecInfo2.isFormatSupported(format)) {
                    z = false;
                    isFormatSupported = true;
                    mediaCodecInfo = mediaCodecInfo2;
                    break;
                }
            }
        }
        z = true;
        int i3 = isFormatSupported ? 4 : 3;
        int i4 = mediaCodecInfo.isSeamlessAdaptationSupported(format) ? 16 : 8;
        int i5 = mediaCodecInfo.hardwareAccelerated ? 64 : 0;
        int i6 = z ? 128 : 0;
        if (Util.SDK_INT >= 26 && "video/dolby-vision".equals(format.sampleMimeType) && !Api26.doesDisplaySupportDolbyVision(this.context)) {
            i6 = 256;
        }
        if (isFormatSupported) {
            List<MediaCodecInfo> decoderInfos2 = getDecoderInfos(this.context, mediaCodecSelector, format, z2, true);
            if (!decoderInfos2.isEmpty()) {
                MediaCodecInfo mediaCodecInfo3 = MediaCodecUtil.getDecoderInfosSortedByFormatSupport(decoderInfos2, format).get(0);
                if (mediaCodecInfo3.isFormatSupported(format) && mediaCodecInfo3.isSeamlessAdaptationSupported(format)) {
                    i = 32;
                }
            }
        }
        return RendererCapabilities.create(i3, i4, i, i5, i6);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected List<MediaCodecInfo> getDecoderInfos(MediaCodecSelector mediaCodecSelector, Format format, boolean z) throws MediaCodecUtil.DecoderQueryException {
        return MediaCodecUtil.getDecoderInfosSortedByFormatSupport(getDecoderInfos(this.context, mediaCodecSelector, format, z, this.tunneling), format);
    }

    private static List<MediaCodecInfo> getDecoderInfos(Context context, MediaCodecSelector mediaCodecSelector, Format format, boolean z, boolean z2) throws MediaCodecUtil.DecoderQueryException {
        String str = format.sampleMimeType;
        if (str == null) {
            return ImmutableList.of();
        }
        List<MediaCodecInfo> decoderInfos = mediaCodecSelector.getDecoderInfos(str, z, z2);
        String alternativeCodecMimeType = MediaCodecUtil.getAlternativeCodecMimeType(format);
        if (alternativeCodecMimeType == null) {
            return ImmutableList.copyOf((Collection) decoderInfos);
        }
        List<MediaCodecInfo> decoderInfos2 = mediaCodecSelector.getDecoderInfos(alternativeCodecMimeType, z, z2);
        if (Util.SDK_INT >= 26 && "video/dolby-vision".equals(format.sampleMimeType) && !decoderInfos2.isEmpty() && !Api26.doesDisplaySupportDolbyVision(context)) {
            return ImmutableList.copyOf((Collection) decoderInfos2);
        }
        return ImmutableList.builder().addAll((Iterable) decoderInfos).addAll((Iterable) decoderInfos2).build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class Api26 {
        private Api26() {
        }

        public static boolean doesDisplaySupportDolbyVision(Context context) {
            DisplayManager displayManager = (DisplayManager) context.getSystemService("display");
            Display display = displayManager != null ? displayManager.getDisplay(0) : null;
            if (display == null || !display.isHdr()) {
                return false;
            }
            for (int i : display.getHdrCapabilities().getSupportedHdrTypes()) {
                if (i == 1) {
                    return true;
                }
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.BaseRenderer
    public void onEnabled(boolean z, boolean z2) throws ExoPlaybackException {
        super.onEnabled(z, z2);
        boolean z3 = getConfiguration().tunneling;
        Assertions.checkState((z3 && this.tunnelingAudioSessionId == 0) ? false : true);
        if (this.tunneling != z3) {
            this.tunneling = z3;
            releaseCodec();
        }
        this.eventDispatcher.enabled(this.decoderCounters);
        this.mayRenderFirstFrameAfterEnableIfNotStarted = z2;
        this.renderedFirstFrameAfterEnable = false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.BaseRenderer
    public void onPositionReset(long j, boolean z) throws ExoPlaybackException {
        super.onPositionReset(j, z);
        clearRenderedFirstFrame();
        this.frameReleaseHelper.onPositionReset();
        this.lastBufferPresentationTimeUs = -9223372036854775807L;
        this.initialPositionUs = -9223372036854775807L;
        this.consecutiveDroppedFrameCount = 0;
        if (z) {
            setJoiningDeadlineMs();
        } else {
            this.joiningDeadlineMs = -9223372036854775807L;
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.Renderer
    public boolean isReady() {
        PlaceholderSurface placeholderSurface;
        if (super.isReady() && (this.renderedFirstFrameAfterReset || (((placeholderSurface = this.placeholderSurface) != null && this.surface == placeholderSurface) || getCodec() == null || this.tunneling))) {
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

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.BaseRenderer
    public void onStarted() {
        super.onStarted();
        this.droppedFrames = 0;
        this.droppedFrameAccumulationStartTimeMs = SystemClock.elapsedRealtime();
        this.lastRenderRealtimeUs = SystemClock.elapsedRealtime() * 1000;
        this.totalVideoFrameProcessingOffsetUs = 0L;
        this.videoFrameProcessingOffsetCount = 0;
        this.frameReleaseHelper.onStarted();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.BaseRenderer
    public void onStopped() {
        this.joiningDeadlineMs = -9223372036854775807L;
        maybeNotifyDroppedFrames();
        maybeNotifyVideoFrameProcessingOffset();
        this.frameReleaseHelper.onStopped();
        super.onStopped();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.BaseRenderer
    public void onDisabled() {
        clearReportedVideoSize();
        clearRenderedFirstFrame();
        this.haveReportedFirstFrameRenderedForCurrentSurface = false;
        this.tunnelingOnFrameRenderedListener = null;
        try {
            super.onDisabled();
        } finally {
            this.eventDispatcher.disabled(this.decoderCounters);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.BaseRenderer
    public void onReset() {
        try {
            super.onReset();
        } finally {
            if (this.placeholderSurface != null) {
                releasePlaceholderSurface();
            }
        }
    }

    @Override // com.google.android.exoplayer2.BaseRenderer, com.google.android.exoplayer2.PlayerMessage.Target
    public void handleMessage(int i, Object obj) throws ExoPlaybackException {
        if (i == 1) {
            setOutput(obj);
            return;
        }
        if (i == 7) {
            this.frameMetadataListener = (VideoFrameMetadataListener) obj;
            return;
        }
        if (i == 10) {
            int intValue = ((Integer) obj).intValue();
            if (this.tunnelingAudioSessionId != intValue) {
                this.tunnelingAudioSessionId = intValue;
                if (this.tunneling) {
                    releaseCodec();
                    return;
                }
                return;
            }
            return;
        }
        if (i != 4) {
            if (i == 5) {
                this.frameReleaseHelper.setChangeFrameRateStrategy(((Integer) obj).intValue());
                return;
            } else {
                super.handleMessage(i, obj);
                return;
            }
        }
        this.scalingMode = ((Integer) obj).intValue();
        MediaCodecAdapter codec = getCodec();
        if (codec != null) {
            codec.setVideoScalingMode(this.scalingMode);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0, types: [com.google.android.exoplayer2.video.MediaCodecVideoRenderer] */
    /* JADX WARN: Type inference failed for: r5v8, types: [android.view.Surface] */
    private void setOutput(Object obj) throws ExoPlaybackException {
        PlaceholderSurface placeholderSurface = obj instanceof Surface ? (Surface) obj : null;
        if (placeholderSurface == null) {
            PlaceholderSurface placeholderSurface2 = this.placeholderSurface;
            if (placeholderSurface2 != null) {
                placeholderSurface = placeholderSurface2;
            } else {
                MediaCodecInfo codecInfo = getCodecInfo();
                if (codecInfo != null && shouldUsePlaceholderSurface(codecInfo)) {
                    placeholderSurface = PlaceholderSurface.newInstanceV17(this.context, codecInfo.secure);
                    this.placeholderSurface = placeholderSurface;
                }
            }
        }
        if (this.surface == placeholderSurface) {
            if (placeholderSurface == null || placeholderSurface == this.placeholderSurface) {
                return;
            }
            maybeRenotifyVideoSizeChanged();
            maybeRenotifyRenderedFirstFrame();
            return;
        }
        this.surface = placeholderSurface;
        this.frameReleaseHelper.onSurfaceChanged(placeholderSurface);
        this.haveReportedFirstFrameRenderedForCurrentSurface = false;
        int state = getState();
        MediaCodecAdapter codec = getCodec();
        if (codec != null) {
            if (Util.SDK_INT >= 23 && placeholderSurface != null && !this.codecNeedsSetOutputSurfaceWorkaround) {
                setOutputSurfaceV23(codec, placeholderSurface);
            } else {
                releaseCodec();
                maybeInitCodecOrBypass();
            }
        }
        if (placeholderSurface != null && placeholderSurface != this.placeholderSurface) {
            maybeRenotifyVideoSizeChanged();
            clearRenderedFirstFrame();
            if (state == 2) {
                setJoiningDeadlineMs();
                return;
            }
            return;
        }
        clearReportedVideoSize();
        clearRenderedFirstFrame();
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected boolean shouldInitCodec(MediaCodecInfo mediaCodecInfo) {
        return this.surface != null || shouldUsePlaceholderSurface(mediaCodecInfo);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected boolean getCodecNeedsEosPropagation() {
        return this.tunneling && Util.SDK_INT < 23;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected MediaCodecAdapter.Configuration getMediaCodecConfiguration(MediaCodecInfo mediaCodecInfo, Format format, MediaCrypto mediaCrypto, float f) {
        PlaceholderSurface placeholderSurface = this.placeholderSurface;
        if (placeholderSurface != null && placeholderSurface.secure != mediaCodecInfo.secure) {
            releasePlaceholderSurface();
        }
        String str = mediaCodecInfo.codecMimeType;
        CodecMaxValues codecMaxValues = getCodecMaxValues(mediaCodecInfo, format, getStreamFormats());
        this.codecMaxValues = codecMaxValues;
        MediaFormat mediaFormat = getMediaFormat(format, str, codecMaxValues, f, this.deviceNeedsNoPostProcessWorkaround, this.tunneling ? this.tunnelingAudioSessionId : 0);
        if (this.surface == null) {
            if (!shouldUsePlaceholderSurface(mediaCodecInfo)) {
                throw new IllegalStateException();
            }
            if (this.placeholderSurface == null) {
                this.placeholderSurface = PlaceholderSurface.newInstanceV17(this.context, mediaCodecInfo.secure);
            }
            this.surface = this.placeholderSurface;
        }
        return MediaCodecAdapter.Configuration.createForVideoDecoding(mediaCodecInfo, mediaFormat, format, this.surface, mediaCrypto);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected DecoderReuseEvaluation canReuseCodec(MediaCodecInfo mediaCodecInfo, Format format, Format format2) {
        DecoderReuseEvaluation canReuseCodec = mediaCodecInfo.canReuseCodec(format, format2);
        int i = canReuseCodec.discardReasons;
        if (format2.width > this.codecMaxValues.width || format2.height > this.codecMaxValues.height) {
            i |= 256;
        }
        if (getMaxInputSize(mediaCodecInfo, format2) > this.codecMaxValues.inputSize) {
            i |= 64;
        }
        int i2 = i;
        return new DecoderReuseEvaluation(mediaCodecInfo.name, format, format2, i2 != 0 ? 0 : canReuseCodec.result, i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public void resetCodecStateForFlush() {
        super.resetCodecStateForFlush();
        this.buffersInCodecCount = 0;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.Renderer
    public void setPlaybackSpeed(float f, float f2) throws ExoPlaybackException {
        super.setPlaybackSpeed(f, f2);
        this.frameReleaseHelper.onPlaybackSpeed(f);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x007a, code lost:
    
        if (r3.equals("video/av01") == false) goto L18;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int getCodecMaxInputSize(com.google.android.exoplayer2.mediacodec.MediaCodecInfo r9, com.google.android.exoplayer2.Format r10) {
        /*
            Method dump skipped, instructions count: 276
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.video.MediaCodecVideoRenderer.getCodecMaxInputSize(com.google.android.exoplayer2.mediacodec.MediaCodecInfo, com.google.android.exoplayer2.Format):int");
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected float getCodecOperatingRateV23(float f, Format format, Format[] formatArr) {
        float f2 = -1.0f;
        for (Format format2 : formatArr) {
            float f3 = format2.frameRate;
            if (f3 != -1.0f) {
                f2 = Math.max(f2, f3);
            }
        }
        if (f2 == -1.0f) {
            return -1.0f;
        }
        return f2 * f;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected void onCodecInitialized(String str, MediaCodecAdapter.Configuration configuration, long j, long j2) {
        this.eventDispatcher.decoderInitialized(str, j, j2);
        this.codecNeedsSetOutputSurfaceWorkaround = codecNeedsSetOutputSurfaceWorkaround(str);
        this.codecHandlesHdr10PlusOutOfBandMetadata = ((MediaCodecInfo) Assertions.checkNotNull(getCodecInfo())).isHdr10PlusOutOfBandMetadataSupported();
        if (Util.SDK_INT < 23 || !this.tunneling) {
            return;
        }
        this.tunnelingOnFrameRenderedListener = new OnFrameRenderedListenerV23((MediaCodecAdapter) Assertions.checkNotNull(getCodec()));
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected void onCodecReleased(String str) {
        this.eventDispatcher.decoderReleased(str);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected void onCodecError(Exception exc) {
        Log.e(TAG, "Video codec error", exc);
        this.eventDispatcher.videoCodecError(exc);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public DecoderReuseEvaluation onInputFormatChanged(FormatHolder formatHolder) throws ExoPlaybackException {
        DecoderReuseEvaluation onInputFormatChanged = super.onInputFormatChanged(formatHolder);
        this.eventDispatcher.inputFormatChanged(formatHolder.format, onInputFormatChanged);
        return onInputFormatChanged;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected void onQueueInputBuffer(DecoderInputBuffer decoderInputBuffer) throws ExoPlaybackException {
        if (!this.tunneling) {
            this.buffersInCodecCount++;
        }
        if (Util.SDK_INT >= 23 || !this.tunneling) {
            return;
        }
        onProcessedTunneledBuffer(decoderInputBuffer.timeUs);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected void onOutputFormatChanged(Format format, MediaFormat mediaFormat) {
        int integer;
        int integer2;
        MediaCodecAdapter codec = getCodec();
        if (codec != null) {
            codec.setVideoScalingMode(this.scalingMode);
        }
        if (this.tunneling) {
            this.currentWidth = format.width;
            this.currentHeight = format.height;
        } else {
            Assertions.checkNotNull(mediaFormat);
            boolean z = mediaFormat.containsKey(KEY_CROP_RIGHT) && mediaFormat.containsKey(KEY_CROP_LEFT) && mediaFormat.containsKey(KEY_CROP_BOTTOM) && mediaFormat.containsKey(KEY_CROP_TOP);
            if (z) {
                integer = (mediaFormat.getInteger(KEY_CROP_RIGHT) - mediaFormat.getInteger(KEY_CROP_LEFT)) + 1;
            } else {
                integer = mediaFormat.getInteger(ViewHierarchyNode.JsonKeys.WIDTH);
            }
            this.currentWidth = integer;
            if (z) {
                integer2 = (mediaFormat.getInteger(KEY_CROP_BOTTOM) - mediaFormat.getInteger(KEY_CROP_TOP)) + 1;
            } else {
                integer2 = mediaFormat.getInteger(ViewHierarchyNode.JsonKeys.HEIGHT);
            }
            this.currentHeight = integer2;
        }
        this.currentPixelWidthHeightRatio = format.pixelWidthHeightRatio;
        if (Util.SDK_INT >= 21) {
            if (format.rotationDegrees == 90 || format.rotationDegrees == 270) {
                int i = this.currentWidth;
                this.currentWidth = this.currentHeight;
                this.currentHeight = i;
                this.currentPixelWidthHeightRatio = 1.0f / this.currentPixelWidthHeightRatio;
            }
        } else {
            this.currentUnappliedRotationDegrees = format.rotationDegrees;
        }
        this.frameReleaseHelper.onFormatChanged(format.frameRate);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected void handleInputBufferSupplementalData(DecoderInputBuffer decoderInputBuffer) throws ExoPlaybackException {
        if (this.codecHandlesHdr10PlusOutOfBandMetadata) {
            ByteBuffer byteBuffer = (ByteBuffer) Assertions.checkNotNull(decoderInputBuffer.supplementalData);
            if (byteBuffer.remaining() >= 7) {
                byte b = byteBuffer.get();
                short s = byteBuffer.getShort();
                short s2 = byteBuffer.getShort();
                byte b2 = byteBuffer.get();
                byte b3 = byteBuffer.get();
                byteBuffer.position(0);
                if (b == -75 && s == 60 && s2 == 1 && b2 == 4) {
                    if (b3 == 0 || b3 == 1) {
                        byte[] bArr = new byte[byteBuffer.remaining()];
                        byteBuffer.get(bArr);
                        byteBuffer.position(0);
                        setHdr10PlusInfoV29(getCodec(), bArr);
                    }
                }
            }
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected boolean processOutputBuffer(long j, long j2, MediaCodecAdapter mediaCodecAdapter, ByteBuffer byteBuffer, int i, int i2, int i3, long j3, boolean z, boolean z2, Format format) throws ExoPlaybackException {
        boolean z3;
        long j4;
        Assertions.checkNotNull(mediaCodecAdapter);
        if (this.initialPositionUs == -9223372036854775807L) {
            this.initialPositionUs = j;
        }
        if (j3 != this.lastBufferPresentationTimeUs) {
            this.frameReleaseHelper.onNextFrame(j3);
            this.lastBufferPresentationTimeUs = j3;
        }
        long outputStreamOffsetUs = getOutputStreamOffsetUs();
        long j5 = j3 - outputStreamOffsetUs;
        if (z && !z2) {
            skipOutputBuffer(mediaCodecAdapter, i, j5);
            return true;
        }
        double playbackSpeed = getPlaybackSpeed();
        boolean z4 = getState() == 2;
        long elapsedRealtime = SystemClock.elapsedRealtime() * 1000;
        long j6 = (long) ((j3 - j) / playbackSpeed);
        if (z4) {
            j6 -= elapsedRealtime - j2;
        }
        if (this.surface == this.placeholderSurface) {
            if (!isBufferLate(j6)) {
                return false;
            }
            skipOutputBuffer(mediaCodecAdapter, i, j5);
            updateVideoFrameProcessingOffsetCounters(j6);
            return true;
        }
        long j7 = elapsedRealtime - this.lastRenderRealtimeUs;
        if (this.renderedFirstFrameAfterEnable ? this.renderedFirstFrameAfterReset : !(z4 || this.mayRenderFirstFrameAfterEnableIfNotStarted)) {
            j4 = j7;
            z3 = false;
        } else {
            z3 = true;
            j4 = j7;
        }
        if (this.joiningDeadlineMs == -9223372036854775807L && j >= outputStreamOffsetUs && (z3 || (z4 && shouldForceRenderOutputBuffer(j6, j4)))) {
            long nanoTime = System.nanoTime();
            notifyFrameMetadataListener(j5, nanoTime, format);
            if (Util.SDK_INT >= 21) {
                renderOutputBufferV21(mediaCodecAdapter, i, j5, nanoTime);
            } else {
                renderOutputBuffer(mediaCodecAdapter, i, j5);
            }
            updateVideoFrameProcessingOffsetCounters(j6);
            return true;
        }
        if (z4 && j != this.initialPositionUs) {
            long nanoTime2 = System.nanoTime();
            long adjustReleaseTime = this.frameReleaseHelper.adjustReleaseTime((j6 * 1000) + nanoTime2);
            long j8 = (adjustReleaseTime - nanoTime2) / 1000;
            boolean z5 = this.joiningDeadlineMs != -9223372036854775807L;
            if (shouldDropBuffersToKeyframe(j8, j2, z2) && maybeDropBuffersToKeyframe(j, z5)) {
                return false;
            }
            if (shouldDropOutputBuffer(j8, j2, z2)) {
                if (z5) {
                    skipOutputBuffer(mediaCodecAdapter, i, j5);
                } else {
                    dropOutputBuffer(mediaCodecAdapter, i, j5);
                }
                updateVideoFrameProcessingOffsetCounters(j8);
                return true;
            }
            if (Util.SDK_INT >= 21) {
                if (j8 < 50000) {
                    if (adjustReleaseTime == this.lastFrameReleaseTimeNs) {
                        skipOutputBuffer(mediaCodecAdapter, i, j5);
                    } else {
                        notifyFrameMetadataListener(j5, adjustReleaseTime, format);
                        renderOutputBufferV21(mediaCodecAdapter, i, j5, adjustReleaseTime);
                    }
                    updateVideoFrameProcessingOffsetCounters(j8);
                    this.lastFrameReleaseTimeNs = adjustReleaseTime;
                    return true;
                }
            } else if (j8 < 30000) {
                if (j8 > 11000) {
                    try {
                        Thread.sleep((j8 - WorkRequest.MIN_BACKOFF_MILLIS) / 1000);
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                        return false;
                    }
                }
                notifyFrameMetadataListener(j5, adjustReleaseTime, format);
                renderOutputBuffer(mediaCodecAdapter, i, j5);
                updateVideoFrameProcessingOffsetCounters(j8);
                return true;
            }
        }
        return false;
    }

    private void notifyFrameMetadataListener(long j, long j2, Format format) {
        VideoFrameMetadataListener videoFrameMetadataListener = this.frameMetadataListener;
        if (videoFrameMetadataListener != null) {
            videoFrameMetadataListener.onVideoFrameAboutToBeRendered(j, j2, format, getCodecOutputMediaFormat());
        }
    }

    protected void onProcessedTunneledBuffer(long j) throws ExoPlaybackException {
        updateOutputFormatForTime(j);
        maybeNotifyVideoSizeChanged();
        this.decoderCounters.renderedOutputBufferCount++;
        maybeNotifyRenderedFirstFrame();
        onProcessedOutputBuffer(j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onProcessedTunneledEndOfStream() {
        setPendingOutputEndOfStream();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public void onProcessedOutputBuffer(long j) {
        super.onProcessedOutputBuffer(j);
        if (this.tunneling) {
            return;
        }
        this.buffersInCodecCount--;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public void onProcessedStreamChange() {
        super.onProcessedStreamChange();
        clearRenderedFirstFrame();
    }

    protected boolean shouldDropOutputBuffer(long j, long j2, boolean z) {
        return isBufferLate(j) && !z;
    }

    protected boolean shouldDropBuffersToKeyframe(long j, long j2, boolean z) {
        return isBufferVeryLate(j) && !z;
    }

    protected boolean shouldForceRenderOutputBuffer(long j, long j2) {
        return isBufferLate(j) && j2 > 100000;
    }

    protected void skipOutputBuffer(MediaCodecAdapter mediaCodecAdapter, int i, long j) {
        TraceUtil.beginSection("skipVideoBuffer");
        mediaCodecAdapter.releaseOutputBuffer(i, false);
        TraceUtil.endSection();
        this.decoderCounters.skippedOutputBufferCount++;
    }

    protected void dropOutputBuffer(MediaCodecAdapter mediaCodecAdapter, int i, long j) {
        TraceUtil.beginSection("dropVideoBuffer");
        mediaCodecAdapter.releaseOutputBuffer(i, false);
        TraceUtil.endSection();
        updateDroppedBufferCounters(0, 1);
    }

    protected boolean maybeDropBuffersToKeyframe(long j, boolean z) throws ExoPlaybackException {
        int skipSource = skipSource(j);
        if (skipSource == 0) {
            return false;
        }
        if (z) {
            this.decoderCounters.skippedInputBufferCount += skipSource;
            this.decoderCounters.skippedOutputBufferCount += this.buffersInCodecCount;
        } else {
            this.decoderCounters.droppedToKeyframeCount++;
            updateDroppedBufferCounters(skipSource, this.buffersInCodecCount);
        }
        flushOrReinitializeCodec();
        return true;
    }

    protected void updateDroppedBufferCounters(int i, int i2) {
        this.decoderCounters.droppedInputBufferCount += i;
        int i3 = i + i2;
        this.decoderCounters.droppedBufferCount += i3;
        this.droppedFrames += i3;
        this.consecutiveDroppedFrameCount += i3;
        this.decoderCounters.maxConsecutiveDroppedBufferCount = Math.max(this.consecutiveDroppedFrameCount, this.decoderCounters.maxConsecutiveDroppedBufferCount);
        int i4 = this.maxDroppedFramesToNotify;
        if (i4 <= 0 || this.droppedFrames < i4) {
            return;
        }
        maybeNotifyDroppedFrames();
    }

    protected void updateVideoFrameProcessingOffsetCounters(long j) {
        this.decoderCounters.addVideoFrameProcessingOffset(j);
        this.totalVideoFrameProcessingOffsetUs += j;
        this.videoFrameProcessingOffsetCount++;
    }

    protected void renderOutputBuffer(MediaCodecAdapter mediaCodecAdapter, int i, long j) {
        maybeNotifyVideoSizeChanged();
        TraceUtil.beginSection("releaseOutputBuffer");
        mediaCodecAdapter.releaseOutputBuffer(i, true);
        TraceUtil.endSection();
        this.lastRenderRealtimeUs = SystemClock.elapsedRealtime() * 1000;
        this.decoderCounters.renderedOutputBufferCount++;
        this.consecutiveDroppedFrameCount = 0;
        maybeNotifyRenderedFirstFrame();
    }

    protected void renderOutputBufferV21(MediaCodecAdapter mediaCodecAdapter, int i, long j, long j2) {
        maybeNotifyVideoSizeChanged();
        TraceUtil.beginSection("releaseOutputBuffer");
        mediaCodecAdapter.releaseOutputBuffer(i, j2);
        TraceUtil.endSection();
        this.lastRenderRealtimeUs = SystemClock.elapsedRealtime() * 1000;
        this.decoderCounters.renderedOutputBufferCount++;
        this.consecutiveDroppedFrameCount = 0;
        maybeNotifyRenderedFirstFrame();
    }

    private boolean shouldUsePlaceholderSurface(MediaCodecInfo mediaCodecInfo) {
        return Util.SDK_INT >= 23 && !this.tunneling && !codecNeedsSetOutputSurfaceWorkaround(mediaCodecInfo.name) && (!mediaCodecInfo.secure || PlaceholderSurface.isSecureSupported(this.context));
    }

    private void releasePlaceholderSurface() {
        Surface surface = this.surface;
        PlaceholderSurface placeholderSurface = this.placeholderSurface;
        if (surface == placeholderSurface) {
            this.surface = null;
        }
        placeholderSurface.release();
        this.placeholderSurface = null;
    }

    private void setJoiningDeadlineMs() {
        this.joiningDeadlineMs = this.allowedJoiningTimeMs > 0 ? SystemClock.elapsedRealtime() + this.allowedJoiningTimeMs : -9223372036854775807L;
    }

    private void clearRenderedFirstFrame() {
        MediaCodecAdapter codec;
        this.renderedFirstFrameAfterReset = false;
        if (Util.SDK_INT < 23 || !this.tunneling || (codec = getCodec()) == null) {
            return;
        }
        this.tunnelingOnFrameRenderedListener = new OnFrameRenderedListenerV23(codec);
    }

    void maybeNotifyRenderedFirstFrame() {
        this.renderedFirstFrameAfterEnable = true;
        if (this.renderedFirstFrameAfterReset) {
            return;
        }
        this.renderedFirstFrameAfterReset = true;
        this.eventDispatcher.renderedFirstFrame(this.surface);
        this.haveReportedFirstFrameRenderedForCurrentSurface = true;
    }

    private void maybeRenotifyRenderedFirstFrame() {
        if (this.haveReportedFirstFrameRenderedForCurrentSurface) {
            this.eventDispatcher.renderedFirstFrame(this.surface);
        }
    }

    private void maybeNotifyVideoSizeChanged() {
        if (this.currentWidth == -1 && this.currentHeight == -1) {
            return;
        }
        VideoSize videoSize = this.reportedVideoSize;
        if (videoSize != null && videoSize.width == this.currentWidth && this.reportedVideoSize.height == this.currentHeight && this.reportedVideoSize.unappliedRotationDegrees == this.currentUnappliedRotationDegrees && this.reportedVideoSize.pixelWidthHeightRatio == this.currentPixelWidthHeightRatio) {
            return;
        }
        VideoSize videoSize2 = new VideoSize(this.currentWidth, this.currentHeight, this.currentUnappliedRotationDegrees, this.currentPixelWidthHeightRatio);
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

    private void maybeNotifyVideoFrameProcessingOffset() {
        int i = this.videoFrameProcessingOffsetCount;
        if (i != 0) {
            this.eventDispatcher.reportVideoFrameProcessingOffset(this.totalVideoFrameProcessingOffsetUs, i);
            this.totalVideoFrameProcessingOffsetUs = 0L;
            this.videoFrameProcessingOffsetCount = 0;
        }
    }

    private static void setHdr10PlusInfoV29(MediaCodecAdapter mediaCodecAdapter, byte[] bArr) {
        Bundle bundle = new Bundle();
        bundle.putByteArray("hdr10-plus-info", bArr);
        mediaCodecAdapter.setParameters(bundle);
    }

    protected void setOutputSurfaceV23(MediaCodecAdapter mediaCodecAdapter, Surface surface) {
        mediaCodecAdapter.setOutputSurface(surface);
    }

    private static void configureTunnelingV21(MediaFormat mediaFormat, int i) {
        mediaFormat.setFeatureEnabled("tunneled-playback", true);
        mediaFormat.setInteger("audio-session-id", i);
    }

    protected MediaFormat getMediaFormat(Format format, String str, CodecMaxValues codecMaxValues, float f, boolean z, int i) {
        Pair<Integer, Integer> codecProfileAndLevel;
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", str);
        mediaFormat.setInteger(ViewHierarchyNode.JsonKeys.WIDTH, format.width);
        mediaFormat.setInteger(ViewHierarchyNode.JsonKeys.HEIGHT, format.height);
        MediaFormatUtil.setCsdBuffers(mediaFormat, format.initializationData);
        MediaFormatUtil.maybeSetFloat(mediaFormat, "frame-rate", format.frameRate);
        MediaFormatUtil.maybeSetInteger(mediaFormat, "rotation-degrees", format.rotationDegrees);
        MediaFormatUtil.maybeSetColorInfo(mediaFormat, format.colorInfo);
        if ("video/dolby-vision".equals(format.sampleMimeType) && (codecProfileAndLevel = MediaCodecUtil.getCodecProfileAndLevel(format)) != null) {
            MediaFormatUtil.maybeSetInteger(mediaFormat, "profile", ((Integer) codecProfileAndLevel.first).intValue());
        }
        mediaFormat.setInteger("max-width", codecMaxValues.width);
        mediaFormat.setInteger("max-height", codecMaxValues.height);
        MediaFormatUtil.maybeSetInteger(mediaFormat, "max-input-size", codecMaxValues.inputSize);
        if (Util.SDK_INT >= 23) {
            mediaFormat.setInteger(SentryThread.JsonKeys.PRIORITY, 0);
            if (f != -1.0f) {
                mediaFormat.setFloat("operating-rate", f);
            }
        }
        if (z) {
            mediaFormat.setInteger("no-post-process", 1);
            mediaFormat.setInteger("auto-frc", 0);
        }
        if (i != 0) {
            configureTunnelingV21(mediaFormat, i);
        }
        return mediaFormat;
    }

    protected CodecMaxValues getCodecMaxValues(MediaCodecInfo mediaCodecInfo, Format format, Format[] formatArr) {
        int codecMaxInputSize;
        int i = format.width;
        int i2 = format.height;
        int maxInputSize = getMaxInputSize(mediaCodecInfo, format);
        if (formatArr.length == 1) {
            if (maxInputSize != -1 && (codecMaxInputSize = getCodecMaxInputSize(mediaCodecInfo, format)) != -1) {
                maxInputSize = Math.min((int) (maxInputSize * INITIAL_FORMAT_MAX_INPUT_SIZE_SCALE_FACTOR), codecMaxInputSize);
            }
            return new CodecMaxValues(i, i2, maxInputSize);
        }
        int length = formatArr.length;
        boolean z = false;
        for (int i3 = 0; i3 < length; i3++) {
            Format format2 = formatArr[i3];
            if (format.colorInfo != null && format2.colorInfo == null) {
                format2 = format2.buildUpon().setColorInfo(format.colorInfo).build();
            }
            if (mediaCodecInfo.canReuseCodec(format, format2).result != 0) {
                z |= format2.width == -1 || format2.height == -1;
                i = Math.max(i, format2.width);
                i2 = Math.max(i2, format2.height);
                maxInputSize = Math.max(maxInputSize, getMaxInputSize(mediaCodecInfo, format2));
            }
        }
        if (z) {
            Log.w(TAG, "Resolutions unknown. Codec max resolution: " + i + ViewHierarchyNode.JsonKeys.X + i2);
            Point codecMaxSize = getCodecMaxSize(mediaCodecInfo, format);
            if (codecMaxSize != null) {
                i = Math.max(i, codecMaxSize.x);
                i2 = Math.max(i2, codecMaxSize.y);
                maxInputSize = Math.max(maxInputSize, getCodecMaxInputSize(mediaCodecInfo, format.buildUpon().setWidth(i).setHeight(i2).build()));
                Log.w(TAG, "Codec max resolution adjusted to: " + i + ViewHierarchyNode.JsonKeys.X + i2);
            }
        }
        return new CodecMaxValues(i, i2, maxInputSize);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    protected MediaCodecDecoderException createDecoderException(Throwable th, MediaCodecInfo mediaCodecInfo) {
        return new MediaCodecVideoDecoderException(th, mediaCodecInfo, this.surface);
    }

    private static Point getCodecMaxSize(MediaCodecInfo mediaCodecInfo, Format format) {
        boolean z = format.height > format.width;
        int i = z ? format.height : format.width;
        int i2 = z ? format.width : format.height;
        float f = i2 / i;
        for (int i3 : STANDARD_LONG_EDGE_VIDEO_PX) {
            int i4 = (int) (i3 * f);
            if (i3 <= i || i4 <= i2) {
                break;
            }
            if (Util.SDK_INT >= 21) {
                int i5 = z ? i4 : i3;
                if (!z) {
                    i3 = i4;
                }
                Point alignVideoSizeV21 = mediaCodecInfo.alignVideoSizeV21(i5, i3);
                if (mediaCodecInfo.isVideoSizeAndRateSupportedV21(alignVideoSizeV21.x, alignVideoSizeV21.y, format.frameRate)) {
                    return alignVideoSizeV21;
                }
            } else {
                try {
                    int ceilDivide = Util.ceilDivide(i3, 16) * 16;
                    int ceilDivide2 = Util.ceilDivide(i4, 16) * 16;
                    if (ceilDivide * ceilDivide2 <= MediaCodecUtil.maxH264DecodableFrameSize()) {
                        int i6 = z ? ceilDivide2 : ceilDivide;
                        if (!z) {
                            ceilDivide = ceilDivide2;
                        }
                        return new Point(i6, ceilDivide);
                    }
                } catch (MediaCodecUtil.DecoderQueryException unused) {
                }
            }
        }
        return null;
    }

    protected static int getMaxInputSize(MediaCodecInfo mediaCodecInfo, Format format) {
        if (format.maxInputSize != -1) {
            int size = format.initializationData.size();
            int i = 0;
            for (int i2 = 0; i2 < size; i2++) {
                i += format.initializationData.get(i2).length;
            }
            return format.maxInputSize + i;
        }
        return getCodecMaxInputSize(mediaCodecInfo, format);
    }

    private static boolean deviceNeedsNoPostProcessWorkaround() {
        return "NVIDIA".equals(Util.MANUFACTURER);
    }

    protected boolean codecNeedsSetOutputSurfaceWorkaround(String str) {
        if (str.startsWith("OMX.google")) {
            return false;
        }
        synchronized (MediaCodecVideoRenderer.class) {
            if (!evaluatedDeviceNeedsSetOutputSurfaceWorkaround) {
                deviceNeedsSetOutputSurfaceWorkaround = evaluateDeviceNeedsSetOutputSurfaceWorkaround();
                evaluatedDeviceNeedsSetOutputSurfaceWorkaround = true;
            }
        }
        return deviceNeedsSetOutputSurfaceWorkaround;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes2.dex */
    public static final class CodecMaxValues {
        public final int height;
        public final int inputSize;
        public final int width;

        public CodecMaxValues(int i, int i2, int i3) {
            this.width = i;
            this.height = i2;
            this.inputSize = i3;
        }
    }

    private static int getMaxSampleSize(int i, int i2) {
        return (i * 3) / (i2 * 2);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:448:0x0848, code lost:
    
        if (r0.equals("PGN528") == false) goto L91;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:47:0x089f. Please report as an issue. */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean evaluateDeviceNeedsSetOutputSurfaceWorkaround() {
        /*
            Method dump skipped, instructions count: 3188
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.video.MediaCodecVideoRenderer.evaluateDeviceNeedsSetOutputSurfaceWorkaround():boolean");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public final class OnFrameRenderedListenerV23 implements MediaCodecAdapter.OnFrameRenderedListener, Handler.Callback {
        private static final int HANDLE_FRAME_RENDERED = 0;
        private final Handler handler;

        public OnFrameRenderedListenerV23(MediaCodecAdapter mediaCodecAdapter) {
            Handler createHandlerForCurrentLooper = Util.createHandlerForCurrentLooper(this);
            this.handler = createHandlerForCurrentLooper;
            mediaCodecAdapter.setOnFrameRenderedListener(this, createHandlerForCurrentLooper);
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecAdapter.OnFrameRenderedListener
        public void onFrameRendered(MediaCodecAdapter mediaCodecAdapter, long j, long j2) {
            if (Util.SDK_INT < 30) {
                this.handler.sendMessageAtFrontOfQueue(Message.obtain(this.handler, 0, (int) (j >> 32), (int) j));
            } else {
                handleFrameRendered(j);
            }
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            if (message.what != 0) {
                return false;
            }
            handleFrameRendered(Util.toLong(message.arg1, message.arg2));
            return true;
        }

        private void handleFrameRendered(long j) {
            if (this != MediaCodecVideoRenderer.this.tunnelingOnFrameRenderedListener || MediaCodecVideoRenderer.this.getCodec() == null) {
                return;
            }
            if (j == Long.MAX_VALUE) {
                MediaCodecVideoRenderer.this.onProcessedTunneledEndOfStream();
                return;
            }
            try {
                MediaCodecVideoRenderer.this.onProcessedTunneledBuffer(j);
            } catch (ExoPlaybackException e) {
                MediaCodecVideoRenderer.this.setPendingPlaybackException(e);
            }
        }
    }
}
