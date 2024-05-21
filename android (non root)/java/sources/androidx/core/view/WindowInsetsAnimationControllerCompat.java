package androidx.core.view;

import android.view.WindowInsetsAnimationController;
import androidx.core.graphics.Insets;

/* loaded from: classes.dex */
public final class WindowInsetsAnimationControllerCompat {
    private final Impl mImpl;

    /* JADX INFO: Access modifiers changed from: package-private */
    public WindowInsetsAnimationControllerCompat(WindowInsetsAnimationController windowInsetsAnimationController) {
        this.mImpl = new Impl30(windowInsetsAnimationController);
    }

    public Insets getHiddenStateInsets() {
        return this.mImpl.getHiddenStateInsets();
    }

    public Insets getShownStateInsets() {
        return this.mImpl.getShownStateInsets();
    }

    public Insets getCurrentInsets() {
        return this.mImpl.getCurrentInsets();
    }

    public float getCurrentFraction() {
        return this.mImpl.getCurrentFraction();
    }

    public float getCurrentAlpha() {
        return this.mImpl.getCurrentAlpha();
    }

    public int getTypes() {
        return this.mImpl.getTypes();
    }

    public void setInsetsAndAlpha(Insets insets, float f, float f2) {
        this.mImpl.setInsetsAndAlpha(insets, f, f2);
    }

    public void finish(boolean z) {
        this.mImpl.finish(z);
    }

    public boolean isReady() {
        return (isFinished() || isCancelled()) ? false : true;
    }

    public boolean isFinished() {
        return this.mImpl.isFinished();
    }

    public boolean isCancelled() {
        return this.mImpl.isCancelled();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class Impl {
        void finish(boolean z) {
        }

        public float getCurrentAlpha() {
            return 0.0f;
        }

        public float getCurrentFraction() {
            return 0.0f;
        }

        public int getTypes() {
            return 0;
        }

        boolean isCancelled() {
            return true;
        }

        boolean isFinished() {
            return false;
        }

        public void setInsetsAndAlpha(Insets insets, float f, float f2) {
        }

        Impl() {
        }

        public Insets getHiddenStateInsets() {
            return Insets.NONE;
        }

        public Insets getShownStateInsets() {
            return Insets.NONE;
        }

        public Insets getCurrentInsets() {
            return Insets.NONE;
        }
    }

    /* loaded from: classes.dex */
    private static class Impl30 extends Impl {
        private final WindowInsetsAnimationController mController;

        Impl30(WindowInsetsAnimationController windowInsetsAnimationController) {
            this.mController = windowInsetsAnimationController;
        }

        @Override // androidx.core.view.WindowInsetsAnimationControllerCompat.Impl
        public Insets getHiddenStateInsets() {
            return Insets.toCompatInsets(this.mController.getHiddenStateInsets());
        }

        @Override // androidx.core.view.WindowInsetsAnimationControllerCompat.Impl
        public Insets getShownStateInsets() {
            return Insets.toCompatInsets(this.mController.getShownStateInsets());
        }

        @Override // androidx.core.view.WindowInsetsAnimationControllerCompat.Impl
        public Insets getCurrentInsets() {
            return Insets.toCompatInsets(this.mController.getCurrentInsets());
        }

        @Override // androidx.core.view.WindowInsetsAnimationControllerCompat.Impl
        public float getCurrentFraction() {
            return this.mController.getCurrentFraction();
        }

        @Override // androidx.core.view.WindowInsetsAnimationControllerCompat.Impl
        public float getCurrentAlpha() {
            return this.mController.getCurrentAlpha();
        }

        @Override // androidx.core.view.WindowInsetsAnimationControllerCompat.Impl
        public int getTypes() {
            return this.mController.getTypes();
        }

        @Override // androidx.core.view.WindowInsetsAnimationControllerCompat.Impl
        public void setInsetsAndAlpha(Insets insets, float f, float f2) {
            this.mController.setInsetsAndAlpha(insets == null ? null : insets.toPlatformInsets(), f, f2);
        }

        @Override // androidx.core.view.WindowInsetsAnimationControllerCompat.Impl
        void finish(boolean z) {
            this.mController.finish(z);
        }

        @Override // androidx.core.view.WindowInsetsAnimationControllerCompat.Impl
        boolean isFinished() {
            return this.mController.isFinished();
        }

        @Override // androidx.core.view.WindowInsetsAnimationControllerCompat.Impl
        boolean isCancelled() {
            return this.mController.isCancelled();
        }
    }
}
