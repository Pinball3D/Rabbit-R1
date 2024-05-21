package androidx.media3.exoplayer.video.spherical;

import androidx.media3.common.Format;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.BaseRenderer;
import androidx.media3.exoplayer.ExoPlaybackException;
import androidx.media3.exoplayer.RendererCapabilities;
import java.nio.ByteBuffer;

/* loaded from: classes2.dex */
public final class CameraMotionRenderer extends BaseRenderer {
    private static final int SAMPLE_WINDOW_DURATION_US = 100000;
    private static final String TAG = "CameraMotionRenderer";
    private final DecoderInputBuffer buffer;
    private long lastTimestampUs;
    private CameraMotionListener listener;
    private long offsetUs;
    private final ParsableByteArray scratch;

    @Override // androidx.media3.exoplayer.Renderer, androidx.media3.exoplayer.RendererCapabilities
    public String getName() {
        return TAG;
    }

    @Override // androidx.media3.exoplayer.Renderer
    public boolean isReady() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.media3.exoplayer.BaseRenderer
    public void onStreamChanged(Format[] formatArr, long j, long j2) {
        this.offsetUs = j2;
    }

    public CameraMotionRenderer() {
        super(6);
        this.buffer = new DecoderInputBuffer(1);
        this.scratch = new ParsableByteArray();
    }

    @Override // androidx.media3.exoplayer.RendererCapabilities
    public int supportsFormat(Format format) {
        if ("application/x-camera-motion".equals(format.sampleMimeType)) {
            return RendererCapabilities.create(4);
        }
        return RendererCapabilities.create(0);
    }

    @Override // androidx.media3.exoplayer.BaseRenderer, androidx.media3.exoplayer.PlayerMessage.Target
    public void handleMessage(int i, Object obj) throws ExoPlaybackException {
        if (i == 8) {
            this.listener = (CameraMotionListener) obj;
        } else {
            super.handleMessage(i, obj);
        }
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    protected void onPositionReset(long j, boolean z) {
        this.lastTimestampUs = Long.MIN_VALUE;
        resetListener();
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    protected void onDisabled() {
        resetListener();
    }

    @Override // androidx.media3.exoplayer.Renderer
    public void render(long j, long j2) {
        while (!hasReadStreamToEnd() && this.lastTimestampUs < 100000 + j) {
            this.buffer.clear();
            if (readSource(getFormatHolder(), this.buffer, 0) != -4 || this.buffer.isEndOfStream()) {
                return;
            }
            this.lastTimestampUs = this.buffer.timeUs;
            if (this.listener != null && !this.buffer.isDecodeOnly()) {
                this.buffer.flip();
                float[] parseMetadata = parseMetadata((ByteBuffer) Util.castNonNull(this.buffer.data));
                if (parseMetadata != null) {
                    ((CameraMotionListener) Util.castNonNull(this.listener)).onCameraMotion(this.lastTimestampUs - this.offsetUs, parseMetadata);
                }
            }
        }
    }

    @Override // androidx.media3.exoplayer.Renderer
    public boolean isEnded() {
        return hasReadStreamToEnd();
    }

    private float[] parseMetadata(ByteBuffer byteBuffer) {
        if (byteBuffer.remaining() != 16) {
            return null;
        }
        this.scratch.reset(byteBuffer.array(), byteBuffer.limit());
        this.scratch.setPosition(byteBuffer.arrayOffset() + 4);
        float[] fArr = new float[3];
        for (int i = 0; i < 3; i++) {
            fArr[i] = Float.intBitsToFloat(this.scratch.readLittleEndianInt());
        }
        return fArr;
    }

    private void resetListener() {
        CameraMotionListener cameraMotionListener = this.listener;
        if (cameraMotionListener != null) {
            cameraMotionListener.onCameraMotionReset();
        }
    }
}
