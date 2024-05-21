package io.sentry.android.core.internal.util;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;
import io.sentry.android.core.BuildInfoProvider;
import io.sentry.android.core.internal.gestures.NoOpWindowCallback;
import io.sentry.android.core.performance.WindowContentChangedCallback;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public class FirstDrawDoneListener implements ViewTreeObserver.OnDrawListener {
    private final Runnable callback;
    private final Handler mainThreadHandler = new Handler(Looper.getMainLooper());
    private final AtomicReference<View> viewReference;

    public static void registerForNextDraw(Activity activity, final Runnable runnable, final BuildInfoProvider buildInfoProvider) {
        final Window window = activity.getWindow();
        if (window != null) {
            View peekDecorView = window.peekDecorView();
            if (peekDecorView != null) {
                registerForNextDraw(peekDecorView, runnable, buildInfoProvider);
            } else {
                final Window.Callback callback = window.getCallback();
                window.setCallback(new WindowContentChangedCallback(callback != null ? callback : new NoOpWindowCallback(), new Runnable() { // from class: io.sentry.android.core.internal.util.FirstDrawDoneListener$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        FirstDrawDoneListener.lambda$registerForNextDraw$0(window, callback, runnable, buildInfoProvider);
                    }
                }));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$registerForNextDraw$0(Window window, Window.Callback callback, Runnable runnable, BuildInfoProvider buildInfoProvider) {
        View peekDecorView = window.peekDecorView();
        if (peekDecorView != null) {
            window.setCallback(callback);
            registerForNextDraw(peekDecorView, runnable, buildInfoProvider);
        }
    }

    public static void registerForNextDraw(View view, Runnable runnable, BuildInfoProvider buildInfoProvider) {
        FirstDrawDoneListener firstDrawDoneListener = new FirstDrawDoneListener(view, runnable);
        if (buildInfoProvider.getSdkInfoVersion() < 26 && !isAliveAndAttached(view)) {
            view.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: io.sentry.android.core.internal.util.FirstDrawDoneListener.1
                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewAttachedToWindow(View view2) {
                    view2.getViewTreeObserver().addOnDrawListener(FirstDrawDoneListener.this);
                    view2.removeOnAttachStateChangeListener(this);
                }

                @Override // android.view.View.OnAttachStateChangeListener
                public void onViewDetachedFromWindow(View view2) {
                    view2.removeOnAttachStateChangeListener(this);
                }
            });
        } else {
            view.getViewTreeObserver().addOnDrawListener(firstDrawDoneListener);
        }
    }

    private FirstDrawDoneListener(View view, Runnable runnable) {
        this.viewReference = new AtomicReference<>(view);
        this.callback = runnable;
    }

    @Override // android.view.ViewTreeObserver.OnDrawListener
    public void onDraw() {
        final View andSet = this.viewReference.getAndSet(null);
        if (andSet == null) {
            return;
        }
        andSet.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: io.sentry.android.core.internal.util.FirstDrawDoneListener$$ExternalSyntheticLambda0
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public final void onGlobalLayout() {
                FirstDrawDoneListener.this.m5664x5598fc1d(andSet);
            }
        });
        this.mainThreadHandler.postAtFrontOfQueue(this.callback);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$onDraw$1$io-sentry-android-core-internal-util-FirstDrawDoneListener, reason: not valid java name */
    public /* synthetic */ void m5664x5598fc1d(View view) {
        view.getViewTreeObserver().removeOnDrawListener(this);
    }

    private static boolean isAliveAndAttached(View view) {
        return view.getViewTreeObserver().isAlive() && view.isAttachedToWindow();
    }
}
