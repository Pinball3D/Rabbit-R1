package androidx.media3.common;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.Surface;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.List;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public interface VideoFrameProcessor {
    public static final long DROP_OUTPUT_FRAME = -2;
    public static final int INPUT_TYPE_BITMAP = 2;
    public static final int INPUT_TYPE_SURFACE = 1;
    public static final int INPUT_TYPE_TEXTURE_ID = 3;
    public static final long RENDER_OUTPUT_FRAME_IMMEDIATELY = -1;

    /* loaded from: classes2.dex */
    public interface Factory {
        VideoFrameProcessor create(Context context, List<Effect> list, DebugViewProvider debugViewProvider, ColorInfo colorInfo, ColorInfo colorInfo2, boolean z, Executor executor, Listener listener) throws VideoFrameProcessingException;
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface InputType {
    }

    /* loaded from: classes2.dex */
    public interface Listener {
        void onEnded();

        void onError(VideoFrameProcessingException videoFrameProcessingException);

        void onOutputFrameAvailableForRendering(long j);

        void onOutputSizeChanged(int i, int i2);
    }

    void flush();

    Surface getInputSurface();

    int getPendingInputFrameCount();

    void queueInputBitmap(Bitmap bitmap, long j, float f);

    void queueInputTexture(int i, long j);

    void registerInputFrame();

    void registerInputStream(int i);

    void release();

    void renderOutputFrame(long j);

    void setInputFrameInfo(FrameInfo frameInfo);

    void setOnInputFrameProcessedListener(OnInputFrameProcessedListener onInputFrameProcessedListener);

    void setOutputSurfaceInfo(SurfaceInfo surfaceInfo);

    void signalEndOfInput();
}
