package com.google.android.material.transition.platform;

import android.app.Activity;
import android.app.SharedElementCallback;
import android.content.Context;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.transition.Transition;
import android.view.View;
import android.view.Window;
import androidx.core.graphics.BlendModeColorFilterCompat;
import androidx.core.graphics.BlendModeCompat;
import com.google.android.material.R;
import com.google.android.material.internal.ContextUtils;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.Shapeable;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public class MaterialContainerTransformSharedElementCallback extends SharedElementCallback {
    private static WeakReference<View> capturedSharedElement;
    private Rect returnEndBounds;
    private boolean entering = true;
    private boolean transparentWindowBackgroundEnabled = true;
    private boolean sharedElementReenterTransitionEnabled = false;
    private ShapeProvider shapeProvider = new ShapeableViewShapeProvider();

    /* loaded from: classes2.dex */
    public interface ShapeProvider {
        ShapeAppearanceModel provideShape(View view);
    }

    public ShapeProvider getShapeProvider() {
        return this.shapeProvider;
    }

    public boolean isSharedElementReenterTransitionEnabled() {
        return this.sharedElementReenterTransitionEnabled;
    }

    public boolean isTransparentWindowBackgroundEnabled() {
        return this.transparentWindowBackgroundEnabled;
    }

    public void setShapeProvider(ShapeProvider shapeProvider) {
        this.shapeProvider = shapeProvider;
    }

    public void setSharedElementReenterTransitionEnabled(boolean z) {
        this.sharedElementReenterTransitionEnabled = z;
    }

    public void setTransparentWindowBackgroundEnabled(boolean z) {
        this.transparentWindowBackgroundEnabled = z;
    }

    /* loaded from: classes2.dex */
    public static class ShapeableViewShapeProvider implements ShapeProvider {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.material.transition.platform.MaterialContainerTransformSharedElementCallback.ShapeProvider
        public ShapeAppearanceModel provideShape(View view) {
            if (view instanceof Shapeable) {
                return ((Shapeable) view).getShapeAppearanceModel();
            }
            return null;
        }
    }

    @Override // android.app.SharedElementCallback
    public Parcelable onCaptureSharedElementSnapshot(View view, Matrix matrix, RectF rectF) {
        capturedSharedElement = new WeakReference<>(view);
        return super.onCaptureSharedElementSnapshot(view, matrix, rectF);
    }

    @Override // android.app.SharedElementCallback
    public View onCreateSnapshotView(Context context, Parcelable parcelable) {
        WeakReference<View> weakReference;
        View view;
        ShapeAppearanceModel provideShape;
        View onCreateSnapshotView = super.onCreateSnapshotView(context, parcelable);
        if (onCreateSnapshotView != null && (weakReference = capturedSharedElement) != null && this.shapeProvider != null && (view = weakReference.get()) != null && (provideShape = this.shapeProvider.provideShape(view)) != null) {
            onCreateSnapshotView.setTag(R.id.mtrl_motion_snapshot_view, provideShape);
        }
        return onCreateSnapshotView;
    }

    @Override // android.app.SharedElementCallback
    public void onMapSharedElements(List<String> list, Map<String, View> map) {
        View view;
        Activity activity;
        if (list.isEmpty() || map.isEmpty() || (view = map.get(list.get(0))) == null || (activity = ContextUtils.getActivity(view.getContext())) == null) {
            return;
        }
        Window window = activity.getWindow();
        if (this.entering) {
            setUpEnterTransform(window);
        } else {
            setUpReturnTransform(activity, window);
        }
    }

    @Override // android.app.SharedElementCallback
    public void onSharedElementStart(List<String> list, List<View> list2, List<View> list3) {
        if (!list2.isEmpty() && !list3.isEmpty()) {
            list2.get(0).setTag(R.id.mtrl_motion_snapshot_view, list3.get(0));
        }
        if (this.entering || list2.isEmpty() || this.returnEndBounds == null) {
            return;
        }
        View view = list2.get(0);
        view.measure(View.MeasureSpec.makeMeasureSpec(this.returnEndBounds.width(), 1073741824), View.MeasureSpec.makeMeasureSpec(this.returnEndBounds.height(), 1073741824));
        view.layout(this.returnEndBounds.left, this.returnEndBounds.top, this.returnEndBounds.right, this.returnEndBounds.bottom);
    }

    @Override // android.app.SharedElementCallback
    public void onSharedElementEnd(List<String> list, List<View> list2, List<View> list3) {
        if (!list2.isEmpty() && (list2.get(0).getTag(R.id.mtrl_motion_snapshot_view) instanceof View)) {
            list2.get(0).setTag(R.id.mtrl_motion_snapshot_view, null);
        }
        if (!this.entering && !list2.isEmpty()) {
            this.returnEndBounds = TransitionUtils.getRelativeBoundsRect(list2.get(0));
        }
        this.entering = false;
    }

    private void setUpEnterTransform(final Window window) {
        Transition sharedElementEnterTransition = window.getSharedElementEnterTransition();
        if (sharedElementEnterTransition instanceof MaterialContainerTransform) {
            MaterialContainerTransform materialContainerTransform = (MaterialContainerTransform) sharedElementEnterTransition;
            if (!this.sharedElementReenterTransitionEnabled) {
                window.setSharedElementReenterTransition(null);
            }
            if (this.transparentWindowBackgroundEnabled) {
                updateBackgroundFadeDuration(window, materialContainerTransform);
                materialContainerTransform.addListener(new TransitionListenerAdapter() { // from class: com.google.android.material.transition.platform.MaterialContainerTransformSharedElementCallback.1
                    @Override // com.google.android.material.transition.platform.TransitionListenerAdapter, android.transition.Transition.TransitionListener
                    public void onTransitionStart(Transition transition) {
                        MaterialContainerTransformSharedElementCallback.removeWindowBackground(window);
                    }

                    @Override // com.google.android.material.transition.platform.TransitionListenerAdapter, android.transition.Transition.TransitionListener
                    public void onTransitionEnd(Transition transition) {
                        MaterialContainerTransformSharedElementCallback.restoreWindowBackground(window);
                    }
                });
            }
        }
    }

    private void setUpReturnTransform(final Activity activity, final Window window) {
        Transition sharedElementReturnTransition = window.getSharedElementReturnTransition();
        if (sharedElementReturnTransition instanceof MaterialContainerTransform) {
            MaterialContainerTransform materialContainerTransform = (MaterialContainerTransform) sharedElementReturnTransition;
            materialContainerTransform.setHoldAtEndEnabled(true);
            materialContainerTransform.addListener(new TransitionListenerAdapter() { // from class: com.google.android.material.transition.platform.MaterialContainerTransformSharedElementCallback.2
                @Override // com.google.android.material.transition.platform.TransitionListenerAdapter, android.transition.Transition.TransitionListener
                public void onTransitionEnd(Transition transition) {
                    View view;
                    if (MaterialContainerTransformSharedElementCallback.capturedSharedElement != null && (view = (View) MaterialContainerTransformSharedElementCallback.capturedSharedElement.get()) != null) {
                        view.setAlpha(1.0f);
                        WeakReference unused = MaterialContainerTransformSharedElementCallback.capturedSharedElement = null;
                    }
                    activity.finish();
                    activity.overridePendingTransition(0, 0);
                }
            });
            if (this.transparentWindowBackgroundEnabled) {
                updateBackgroundFadeDuration(window, materialContainerTransform);
                materialContainerTransform.addListener(new TransitionListenerAdapter() { // from class: com.google.android.material.transition.platform.MaterialContainerTransformSharedElementCallback.3
                    @Override // com.google.android.material.transition.platform.TransitionListenerAdapter, android.transition.Transition.TransitionListener
                    public void onTransitionStart(Transition transition) {
                        MaterialContainerTransformSharedElementCallback.removeWindowBackground(window);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void removeWindowBackground(Window window) {
        Drawable windowBackground = getWindowBackground(window);
        if (windowBackground == null) {
            return;
        }
        windowBackground.mutate().setColorFilter(BlendModeColorFilterCompat.createBlendModeColorFilterCompat(0, BlendModeCompat.CLEAR));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void restoreWindowBackground(Window window) {
        Drawable windowBackground = getWindowBackground(window);
        if (windowBackground == null) {
            return;
        }
        windowBackground.mutate().clearColorFilter();
    }

    private static Drawable getWindowBackground(Window window) {
        return window.getDecorView().getBackground();
    }

    private static void updateBackgroundFadeDuration(Window window, MaterialContainerTransform materialContainerTransform) {
        if (materialContainerTransform.getDuration() >= 0) {
            window.setTransitionBackgroundFadeDuration(materialContainerTransform.getDuration());
        }
    }
}
