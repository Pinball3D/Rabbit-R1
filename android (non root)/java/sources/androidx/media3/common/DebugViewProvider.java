package androidx.media3.common;

import android.view.SurfaceView;

/* loaded from: classes2.dex */
public interface DebugViewProvider {
    public static final DebugViewProvider NONE = new DebugViewProvider() { // from class: androidx.media3.common.DebugViewProvider$$ExternalSyntheticLambda0
        @Override // androidx.media3.common.DebugViewProvider
        public final SurfaceView getDebugPreviewSurfaceView(int i, int i2) {
            return DebugViewProvider.lambda$static$0(i, i2);
        }
    };

    static /* synthetic */ SurfaceView lambda$static$0(int i, int i2) {
        return null;
    }

    SurfaceView getDebugPreviewSurfaceView(int i, int i2);
}
