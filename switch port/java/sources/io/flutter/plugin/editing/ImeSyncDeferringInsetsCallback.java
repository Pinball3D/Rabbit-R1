package io.flutter.plugin.editing;

import android.graphics.Insets;
import android.view.View;
import android.view.WindowInsets;
import android.view.WindowInsetsAnimation;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class ImeSyncDeferringInsetsCallback {
    private ImeVisibleListener imeVisibleListener;
    private WindowInsets lastWindowInsets;
    private View view;
    private final int deferredInsetTypes = WindowInsets.Type.ime();
    private boolean animating = false;
    private boolean needsSave = false;
    private AnimationCallback animationCallback = new AnimationCallback();
    private InsetsListener insetsListener = new InsetsListener();

    /* loaded from: classes3.dex */
    public interface ImeVisibleListener {
        void onImeVisibleChanged(boolean z);
    }

    WindowInsetsAnimation.Callback getAnimationCallback() {
        return this.animationCallback;
    }

    ImeVisibleListener getImeVisibleListener() {
        return this.imeVisibleListener;
    }

    View.OnApplyWindowInsetsListener getInsetsListener() {
        return this.insetsListener;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setImeVisibleListener(ImeVisibleListener imeVisibleListener) {
        this.imeVisibleListener = imeVisibleListener;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ImeSyncDeferringInsetsCallback(View view) {
        this.view = view;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void install() {
        this.view.setWindowInsetsAnimationCallback(this.animationCallback);
        this.view.setOnApplyWindowInsetsListener(this.insetsListener);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void remove() {
        this.view.setWindowInsetsAnimationCallback(null);
        this.view.setOnApplyWindowInsetsListener(null);
    }

    /* loaded from: classes3.dex */
    private class AnimationCallback extends WindowInsetsAnimation.Callback {
        AnimationCallback() {
            super(1);
        }

        @Override // android.view.WindowInsetsAnimation.Callback
        public void onPrepare(WindowInsetsAnimation windowInsetsAnimation) {
            ImeSyncDeferringInsetsCallback.this.needsSave = true;
            if ((windowInsetsAnimation.getTypeMask() & ImeSyncDeferringInsetsCallback.this.deferredInsetTypes) != 0) {
                ImeSyncDeferringInsetsCallback.this.animating = true;
            }
        }

        @Override // android.view.WindowInsetsAnimation.Callback
        public WindowInsetsAnimation.Bounds onStart(WindowInsetsAnimation windowInsetsAnimation, WindowInsetsAnimation.Bounds bounds) {
            WindowInsetsCompat rootWindowInsets = ViewCompat.getRootWindowInsets(ImeSyncDeferringInsetsCallback.this.view);
            if (rootWindowInsets != null && ImeSyncDeferringInsetsCallback.this.imeVisibleListener != null) {
                ImeSyncDeferringInsetsCallback.this.imeVisibleListener.onImeVisibleChanged(rootWindowInsets.isVisible(WindowInsetsCompat.Type.ime()));
            }
            return super.onStart(windowInsetsAnimation, bounds);
        }

        @Override // android.view.WindowInsetsAnimation.Callback
        public WindowInsets onProgress(WindowInsets windowInsets, List<WindowInsetsAnimation> list) {
            if (ImeSyncDeferringInsetsCallback.this.animating && !ImeSyncDeferringInsetsCallback.this.needsSave) {
                Iterator<WindowInsetsAnimation> it = list.iterator();
                boolean z = false;
                while (it.hasNext()) {
                    if ((it.next().getTypeMask() & ImeSyncDeferringInsetsCallback.this.deferredInsetTypes) != 0) {
                        z = true;
                    }
                }
                if (!z) {
                    return windowInsets;
                }
                int windowSystemUiVisibility = ImeSyncDeferringInsetsCallback.this.view.getWindowSystemUiVisibility();
                int i = ((windowSystemUiVisibility & 512) == 0 && (windowSystemUiVisibility & 2) == 0) ? windowInsets.getInsets(WindowInsets.Type.navigationBars()).bottom : 0;
                WindowInsets.Builder builder = new WindowInsets.Builder(ImeSyncDeferringInsetsCallback.this.lastWindowInsets);
                builder.setInsets(ImeSyncDeferringInsetsCallback.this.deferredInsetTypes, Insets.of(0, 0, 0, Math.max(windowInsets.getInsets(ImeSyncDeferringInsetsCallback.this.deferredInsetTypes).bottom - i, 0)));
                ImeSyncDeferringInsetsCallback.this.view.onApplyWindowInsets(builder.build());
            }
            return windowInsets;
        }

        @Override // android.view.WindowInsetsAnimation.Callback
        public void onEnd(WindowInsetsAnimation windowInsetsAnimation) {
            if (!ImeSyncDeferringInsetsCallback.this.animating || (windowInsetsAnimation.getTypeMask() & ImeSyncDeferringInsetsCallback.this.deferredInsetTypes) == 0) {
                return;
            }
            ImeSyncDeferringInsetsCallback.this.animating = false;
            if (ImeSyncDeferringInsetsCallback.this.lastWindowInsets == null || ImeSyncDeferringInsetsCallback.this.view == null) {
                return;
            }
            ImeSyncDeferringInsetsCallback.this.view.dispatchApplyWindowInsets(ImeSyncDeferringInsetsCallback.this.lastWindowInsets);
        }
    }

    /* loaded from: classes3.dex */
    private class InsetsListener implements View.OnApplyWindowInsetsListener {
        private InsetsListener() {
        }

        @Override // android.view.View.OnApplyWindowInsetsListener
        public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
            ImeSyncDeferringInsetsCallback.this.view = view;
            if (ImeSyncDeferringInsetsCallback.this.needsSave) {
                ImeSyncDeferringInsetsCallback.this.lastWindowInsets = windowInsets;
                ImeSyncDeferringInsetsCallback.this.needsSave = false;
            }
            if (ImeSyncDeferringInsetsCallback.this.animating) {
                return WindowInsets.CONSUMED;
            }
            return view.onApplyWindowInsets(windowInsets);
        }
    }
}
