package com.google.android.exoplayer2.util;

import android.content.Context;
import android.view.Surface;
import com.google.android.exoplayer2.video.ColorInfo;
import java.util.List;

/* loaded from: classes2.dex */
public interface FrameProcessor {
    public static final long DROP_OUTPUT_FRAME = -2;
    public static final long RELEASE_OUTPUT_FRAME_IMMEDIATELY = -1;

    /* loaded from: classes2.dex */
    public interface Factory {
        FrameProcessor create(Context context, Listener listener, List<Effect> list, DebugViewProvider debugViewProvider, ColorInfo colorInfo, boolean z) throws FrameProcessingException;
    }

    /* loaded from: classes2.dex */
    public interface Listener {
        void onFrameProcessingEnded();

        void onFrameProcessingError(FrameProcessingException frameProcessingException);

        void onOutputFrameAvailable(long j);

        void onOutputSizeChanged(int i, int i2);
    }

    Surface getInputSurface();

    int getPendingInputFrameCount();

    void registerInputFrame();

    void release();

    void releaseOutputFrame(long j);

    void setInputFrameInfo(FrameInfo frameInfo);

    void setOutputSurfaceInfo(SurfaceInfo surfaceInfo);

    void signalEndOfInput();
}
