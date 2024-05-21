package io.flutter.plugin.platform;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.hardware.display.VirtualDisplay;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class VirtualDisplayController {
    private static String TAG = "VirtualDisplayController";
    private final AccessibilityEventsDelegate accessibilityEventsDelegate;
    private final Context context;
    private final int densityDpi;
    private final View.OnFocusChangeListener focusChangeListener;
    SingleViewPresentation presentation;
    private final PlatformViewRenderTarget renderTarget;
    private final int viewId;
    private VirtualDisplay virtualDisplay;

    public static VirtualDisplayController create(Context context, AccessibilityEventsDelegate accessibilityEventsDelegate, PlatformView platformView, PlatformViewRenderTarget platformViewRenderTarget, int i, int i2, int i3, Object obj, View.OnFocusChangeListener onFocusChangeListener) {
        if (i == 0 || i2 == 0) {
            return null;
        }
        DisplayManager displayManager = (DisplayManager) context.getSystemService("display");
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        platformViewRenderTarget.resize(i, i2);
        VirtualDisplay createVirtualDisplay = displayManager.createVirtualDisplay("flutter-vd#" + i3, i, i2, displayMetrics.densityDpi, platformViewRenderTarget.getSurface(), 0);
        if (createVirtualDisplay == null) {
            return null;
        }
        return new VirtualDisplayController(context, accessibilityEventsDelegate, createVirtualDisplay, platformView, platformViewRenderTarget, onFocusChangeListener, i3, obj);
    }

    private VirtualDisplayController(Context context, AccessibilityEventsDelegate accessibilityEventsDelegate, VirtualDisplay virtualDisplay, PlatformView platformView, PlatformViewRenderTarget platformViewRenderTarget, View.OnFocusChangeListener onFocusChangeListener, int i, Object obj) {
        this.context = context;
        this.accessibilityEventsDelegate = accessibilityEventsDelegate;
        this.renderTarget = platformViewRenderTarget;
        this.focusChangeListener = onFocusChangeListener;
        this.viewId = i;
        this.virtualDisplay = virtualDisplay;
        this.densityDpi = context.getResources().getDisplayMetrics().densityDpi;
        SingleViewPresentation singleViewPresentation = new SingleViewPresentation(context, this.virtualDisplay.getDisplay(), platformView, accessibilityEventsDelegate, i, onFocusChangeListener);
        this.presentation = singleViewPresentation;
        singleViewPresentation.show();
    }

    public int getRenderTargetWidth() {
        PlatformViewRenderTarget platformViewRenderTarget = this.renderTarget;
        if (platformViewRenderTarget != null) {
            return platformViewRenderTarget.getWidth();
        }
        return 0;
    }

    public int getRenderTargetHeight() {
        PlatformViewRenderTarget platformViewRenderTarget = this.renderTarget;
        if (platformViewRenderTarget != null) {
            return platformViewRenderTarget.getHeight();
        }
        return 0;
    }

    public void resize(int i, int i2, Runnable runnable) {
        if (i == getRenderTargetWidth() && i2 == getRenderTargetHeight()) {
            getView().postDelayed(runnable, 0L);
        } else {
            resize31(getView(), i, i2, runnable);
        }
    }

    /* renamed from: io.flutter.plugin.platform.VirtualDisplayController$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 implements View.OnAttachStateChangeListener {
        final /* synthetic */ View val$embeddedView;
        final /* synthetic */ Runnable val$onNewSizeFrameAvailable;

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
        }

        AnonymousClass1(View view, Runnable runnable) {
            this.val$embeddedView = view;
            this.val$onNewSizeFrameAvailable = runnable;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            OneTimeOnDrawListener.schedule(this.val$embeddedView, new Runnable() { // from class: io.flutter.plugin.platform.VirtualDisplayController.1.1
                @Override // java.lang.Runnable
                public void run() {
                    AnonymousClass1.this.val$embeddedView.postDelayed(AnonymousClass1.this.val$onNewSizeFrameAvailable, 128L);
                }
            });
            this.val$embeddedView.removeOnAttachStateChangeListener(this);
        }
    }

    public void dispose() {
        this.presentation.cancel();
        this.presentation.detachState();
        this.virtualDisplay.release();
        this.renderTarget.release();
    }

    private void resize31(View view, int i, int i2, Runnable runnable) {
        this.renderTarget.resize(i, i2);
        this.virtualDisplay.resize(i, i2, this.densityDpi);
        view.postDelayed(runnable, 0L);
    }

    void onFlutterViewAttached(View view) {
        SingleViewPresentation singleViewPresentation = this.presentation;
        if (singleViewPresentation == null || singleViewPresentation.getView() == null) {
            return;
        }
        this.presentation.getView().onFlutterViewAttached(view);
    }

    void onFlutterViewDetached() {
        SingleViewPresentation singleViewPresentation = this.presentation;
        if (singleViewPresentation == null || singleViewPresentation.getView() == null) {
            return;
        }
        this.presentation.getView().onFlutterViewDetached();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onInputConnectionLocked() {
        SingleViewPresentation singleViewPresentation = this.presentation;
        if (singleViewPresentation == null || singleViewPresentation.getView() == null) {
            return;
        }
        this.presentation.getView().onInputConnectionLocked();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onInputConnectionUnlocked() {
        SingleViewPresentation singleViewPresentation = this.presentation;
        if (singleViewPresentation == null || singleViewPresentation.getView() == null) {
            return;
        }
        this.presentation.getView().onInputConnectionUnlocked();
    }

    public View getView() {
        SingleViewPresentation singleViewPresentation = this.presentation;
        if (singleViewPresentation == null) {
            return null;
        }
        return singleViewPresentation.getView().getView();
    }

    public void dispatchTouchEvent(MotionEvent motionEvent) {
        SingleViewPresentation singleViewPresentation = this.presentation;
        if (singleViewPresentation == null) {
            return;
        }
        singleViewPresentation.dispatchTouchEvent(motionEvent);
    }

    /* loaded from: classes3.dex */
    static class OneTimeOnDrawListener implements ViewTreeObserver.OnDrawListener {
        Runnable mOnDrawRunnable;
        final View mView;

        static void schedule(View view, Runnable runnable) {
            view.getViewTreeObserver().addOnDrawListener(new OneTimeOnDrawListener(view, runnable));
        }

        OneTimeOnDrawListener(View view, Runnable runnable) {
            this.mView = view;
            this.mOnDrawRunnable = runnable;
        }

        @Override // android.view.ViewTreeObserver.OnDrawListener
        public void onDraw() {
            Runnable runnable = this.mOnDrawRunnable;
            if (runnable == null) {
                return;
            }
            runnable.run();
            this.mOnDrawRunnable = null;
            this.mView.post(new Runnable() { // from class: io.flutter.plugin.platform.VirtualDisplayController.OneTimeOnDrawListener.1
                @Override // java.lang.Runnable
                public void run() {
                    OneTimeOnDrawListener.this.mView.getViewTreeObserver().removeOnDrawListener(OneTimeOnDrawListener.this);
                }
            });
        }
    }
}
