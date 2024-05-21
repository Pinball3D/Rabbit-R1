package androidx.compose.ui.platform.coreshims;

import android.R;
import android.os.Build;
import android.view.View;
import android.view.WindowInsets;
import android.view.WindowInsetsController;
import android.view.inputmethod.InputMethodManager;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public final class SoftwareKeyboardControllerCompat {
    private final Impl mImpl;

    public SoftwareKeyboardControllerCompat(View view) {
        this.mImpl = new Impl30(view);
    }

    @Deprecated
    SoftwareKeyboardControllerCompat(WindowInsetsController windowInsetsController) {
        this.mImpl = new Impl30(windowInsetsController);
    }

    public void show() {
        this.mImpl.show();
    }

    public void hide() {
        this.mImpl.hide();
    }

    /* loaded from: classes.dex */
    private static class Impl {
        void hide() {
        }

        void show() {
        }

        Impl() {
        }
    }

    /* loaded from: classes.dex */
    private static class Impl20 extends Impl {
        private final View mView;

        Impl20(View view) {
            this.mView = view;
        }

        @Override // androidx.compose.ui.platform.coreshims.SoftwareKeyboardControllerCompat.Impl
        void show() {
            final View view = this.mView;
            if (view == null) {
                return;
            }
            if (view.isInEditMode() || view.onCheckIsTextEditor()) {
                view.requestFocus();
            } else {
                view = view.getRootView().findFocus();
            }
            if (view == null) {
                view = this.mView.getRootView().findViewById(R.id.content);
            }
            if (view == null || !view.hasWindowFocus()) {
                return;
            }
            view.post(new Runnable() { // from class: androidx.compose.ui.platform.coreshims.SoftwareKeyboardControllerCompat$Impl20$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    ((InputMethodManager) r0.getContext().getSystemService("input_method")).showSoftInput(view, 0);
                }
            });
        }

        @Override // androidx.compose.ui.platform.coreshims.SoftwareKeyboardControllerCompat.Impl
        void hide() {
            View view = this.mView;
            if (view != null) {
                ((InputMethodManager) view.getContext().getSystemService("input_method")).hideSoftInputFromWindow(this.mView.getWindowToken(), 0);
            }
        }
    }

    /* loaded from: classes.dex */
    private static class Impl30 extends Impl20 {
        private View mView;
        private WindowInsetsController mWindowInsetsController;

        Impl30(View view) {
            super(view);
            this.mView = view;
        }

        Impl30(WindowInsetsController windowInsetsController) {
            super(null);
            this.mWindowInsetsController = windowInsetsController;
        }

        @Override // androidx.compose.ui.platform.coreshims.SoftwareKeyboardControllerCompat.Impl20, androidx.compose.ui.platform.coreshims.SoftwareKeyboardControllerCompat.Impl
        void show() {
            if (this.mView != null && Build.VERSION.SDK_INT < 33) {
                ((InputMethodManager) this.mView.getContext().getSystemService("input_method")).isActive();
            }
            WindowInsetsController windowInsetsController = this.mWindowInsetsController;
            if (windowInsetsController == null) {
                View view = this.mView;
                windowInsetsController = view != null ? view.getWindowInsetsController() : null;
            }
            if (windowInsetsController != null) {
                windowInsetsController.show(WindowInsets.Type.ime());
            } else {
                super.show();
            }
        }

        @Override // androidx.compose.ui.platform.coreshims.SoftwareKeyboardControllerCompat.Impl20, androidx.compose.ui.platform.coreshims.SoftwareKeyboardControllerCompat.Impl
        void hide() {
            View view;
            WindowInsetsController windowInsetsController = this.mWindowInsetsController;
            if (windowInsetsController == null) {
                View view2 = this.mView;
                windowInsetsController = view2 != null ? view2.getWindowInsetsController() : null;
            }
            if (windowInsetsController != null) {
                final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
                WindowInsetsController.OnControllableInsetsChangedListener onControllableInsetsChangedListener = new WindowInsetsController.OnControllableInsetsChangedListener() { // from class: androidx.compose.ui.platform.coreshims.SoftwareKeyboardControllerCompat$Impl30$$ExternalSyntheticLambda0
                    @Override // android.view.WindowInsetsController.OnControllableInsetsChangedListener
                    public final void onControllableInsetsChanged(WindowInsetsController windowInsetsController2, int i) {
                        atomicBoolean.set((r2 & 8) != 0);
                    }
                };
                windowInsetsController.addOnControllableInsetsChangedListener(onControllableInsetsChangedListener);
                if (!atomicBoolean.get() && (view = this.mView) != null) {
                    ((InputMethodManager) view.getContext().getSystemService("input_method")).hideSoftInputFromWindow(this.mView.getWindowToken(), 0);
                }
                windowInsetsController.removeOnControllableInsetsChangedListener(onControllableInsetsChangedListener);
                windowInsetsController.hide(WindowInsets.Type.ime());
                return;
            }
            super.hide();
        }
    }
}
