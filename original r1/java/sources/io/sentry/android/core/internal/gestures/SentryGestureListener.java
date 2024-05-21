package io.sentry.android.core.internal.gestures;

import android.app.Activity;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.Window;
import io.sentry.Breadcrumb;
import io.sentry.Hint;
import io.sentry.IHub;
import io.sentry.IScope;
import io.sentry.ITransaction;
import io.sentry.Scope;
import io.sentry.ScopeCallback;
import io.sentry.SentryLevel;
import io.sentry.SpanStatus;
import io.sentry.TransactionContext;
import io.sentry.TransactionOptions;
import io.sentry.TypeCheckHint;
import io.sentry.android.core.SentryAndroidOptions;
import io.sentry.internal.gestures.UiElement;
import io.sentry.protocol.TransactionNameSource;
import io.sentry.util.TracingUtils;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.Map;

/* loaded from: classes3.dex */
public final class SentryGestureListener implements GestureDetector.OnGestureListener {
    private static final String TRACE_ORIGIN = "auto.ui.gesture_listener";
    static final String UI_ACTION = "ui.action";
    private final WeakReference<Activity> activityRef;
    private final IHub hub;
    private final SentryAndroidOptions options;
    private UiElement activeUiElement = null;
    private ITransaction activeTransaction = null;
    private GestureType activeEventType = GestureType.Unknown;
    private final ScrollState scrollState = new ScrollState(null);

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public enum GestureType {
        Click,
        Scroll,
        Swipe,
        Unknown
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public void onLongPress(MotionEvent motionEvent) {
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public void onShowPress(MotionEvent motionEvent) {
    }

    public SentryGestureListener(Activity activity, IHub iHub, SentryAndroidOptions sentryAndroidOptions) {
        this.activityRef = new WeakReference<>(activity);
        this.hub = iHub;
        this.options = sentryAndroidOptions;
    }

    public void onUp(MotionEvent motionEvent) {
        View ensureWindowDecorView = ensureWindowDecorView("onUp");
        UiElement uiElement = this.scrollState.target;
        if (ensureWindowDecorView == null || uiElement == null) {
            return;
        }
        if (this.scrollState.type == GestureType.Unknown) {
            this.options.getLogger().log(SentryLevel.DEBUG, "Unable to define scroll type. No breadcrumb captured.", new Object[0]);
            return;
        }
        addBreadcrumb(uiElement, this.scrollState.type, Collections.singletonMap("direction", this.scrollState.calculateDirection(motionEvent)), motionEvent);
        startTracing(uiElement, this.scrollState.type);
        this.scrollState.reset();
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onDown(MotionEvent motionEvent) {
        if (motionEvent == null) {
            return false;
        }
        this.scrollState.reset();
        this.scrollState.startX = motionEvent.getX();
        this.scrollState.startY = motionEvent.getY();
        return false;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onSingleTapUp(MotionEvent motionEvent) {
        View ensureWindowDecorView = ensureWindowDecorView("onSingleTapUp");
        if (ensureWindowDecorView != null && motionEvent != null) {
            UiElement findTarget = ViewUtils.findTarget(this.options, ensureWindowDecorView, motionEvent.getX(), motionEvent.getY(), UiElement.Type.CLICKABLE);
            if (findTarget == null) {
                this.options.getLogger().log(SentryLevel.DEBUG, "Unable to find click target. No breadcrumb captured.", new Object[0]);
                return false;
            }
            addBreadcrumb(findTarget, GestureType.Click, Collections.emptyMap(), motionEvent);
            startTracing(findTarget, GestureType.Click);
        }
        return false;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        View ensureWindowDecorView = ensureWindowDecorView("onScroll");
        if (ensureWindowDecorView != null && motionEvent != null && this.scrollState.type == GestureType.Unknown) {
            UiElement findTarget = ViewUtils.findTarget(this.options, ensureWindowDecorView, motionEvent.getX(), motionEvent.getY(), UiElement.Type.SCROLLABLE);
            if (findTarget == null) {
                this.options.getLogger().log(SentryLevel.DEBUG, "Unable to find scroll target. No breadcrumb captured.", new Object[0]);
                return false;
            }
            this.options.getLogger().log(SentryLevel.DEBUG, "Scroll target found: " + findTarget.getIdentifier(), new Object[0]);
            this.scrollState.setTarget(findTarget);
            this.scrollState.type = GestureType.Scroll;
        }
        return false;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        this.scrollState.type = GestureType.Swipe;
        return false;
    }

    private void addBreadcrumb(UiElement uiElement, GestureType gestureType, Map<String, Object> map, MotionEvent motionEvent) {
        if (this.options.isEnableUserInteractionBreadcrumbs()) {
            String gestureType2 = getGestureType(gestureType);
            Hint hint = new Hint();
            hint.set(TypeCheckHint.ANDROID_MOTION_EVENT, motionEvent);
            hint.set(TypeCheckHint.ANDROID_VIEW, uiElement.getView());
            this.hub.addBreadcrumb(Breadcrumb.userInteraction(gestureType2, uiElement.getResourceName(), uiElement.getClassName(), uiElement.getTag(), map), hint);
        }
    }

    private void startTracing(UiElement uiElement, GestureType gestureType) {
        boolean z = gestureType == GestureType.Click || !(gestureType == this.activeEventType && uiElement.equals(this.activeUiElement));
        if (!this.options.isTracingEnabled() || !this.options.isEnableUserInteractionTracing()) {
            if (z) {
                TracingUtils.startNewTrace(this.hub);
                this.activeUiElement = uiElement;
                this.activeEventType = gestureType;
                return;
            }
            return;
        }
        Activity activity = this.activityRef.get();
        if (activity == null) {
            this.options.getLogger().log(SentryLevel.DEBUG, "Activity is null, no transaction captured.", new Object[0]);
            return;
        }
        String identifier = uiElement.getIdentifier();
        ITransaction iTransaction = this.activeTransaction;
        if (iTransaction != null) {
            if (!z && !iTransaction.isFinished()) {
                this.options.getLogger().log(SentryLevel.DEBUG, "The view with id: " + identifier + " already has an ongoing transaction assigned. Rescheduling finish", new Object[0]);
                if (this.options.getIdleTimeout() != null) {
                    this.activeTransaction.scheduleFinish();
                    return;
                }
                return;
            }
            stopTracing(SpanStatus.OK);
        }
        String str = getActivityName(activity) + "." + identifier;
        String str2 = "ui.action." + getGestureType(gestureType);
        TransactionOptions transactionOptions = new TransactionOptions();
        transactionOptions.setWaitForChildren(true);
        transactionOptions.setDeadlineTimeout(30000L);
        transactionOptions.setIdleTimeout(this.options.getIdleTimeout());
        transactionOptions.setTrimEnd(true);
        final ITransaction startTransaction = this.hub.startTransaction(new TransactionContext(str, TransactionNameSource.COMPONENT, str2), transactionOptions);
        startTransaction.getSpanContext().setOrigin("auto.ui.gesture_listener." + uiElement.getOrigin());
        this.hub.configureScope(new ScopeCallback() { // from class: io.sentry.android.core.internal.gestures.SentryGestureListener$$ExternalSyntheticLambda2
            @Override // io.sentry.ScopeCallback
            public final void run(IScope iScope) {
                SentryGestureListener.this.m5662x5513955d(startTransaction, iScope);
            }
        });
        this.activeTransaction = startTransaction;
        this.activeUiElement = uiElement;
        this.activeEventType = gestureType;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void stopTracing(SpanStatus spanStatus) {
        ITransaction iTransaction = this.activeTransaction;
        if (iTransaction != null) {
            if (iTransaction.getStatus() == null) {
                this.activeTransaction.finish(spanStatus);
            } else {
                this.activeTransaction.finish();
            }
        }
        this.hub.configureScope(new ScopeCallback() { // from class: io.sentry.android.core.internal.gestures.SentryGestureListener$$ExternalSyntheticLambda1
            @Override // io.sentry.ScopeCallback
            public final void run(IScope iScope) {
                SentryGestureListener.this.m5663x526f98b6(iScope);
            }
        });
        this.activeTransaction = null;
        if (this.activeUiElement != null) {
            this.activeUiElement = null;
        }
        this.activeEventType = GestureType.Unknown;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: clearScope, reason: merged with bridge method [inline-methods] */
    public void m5663x526f98b6(final IScope iScope) {
        iScope.withTransaction(new Scope.IWithTransaction() { // from class: io.sentry.android.core.internal.gestures.SentryGestureListener$$ExternalSyntheticLambda3
            @Override // io.sentry.Scope.IWithTransaction
            public final void accept(ITransaction iTransaction) {
                SentryGestureListener.this.m5661xfa8c04b4(iScope, iTransaction);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$clearScope$2$io-sentry-android-core-internal-gestures-SentryGestureListener, reason: not valid java name */
    public /* synthetic */ void m5661xfa8c04b4(IScope iScope, ITransaction iTransaction) {
        if (iTransaction == this.activeTransaction) {
            iScope.clearTransaction();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: applyScope, reason: merged with bridge method [inline-methods] */
    public void m5662x5513955d(final IScope iScope, final ITransaction iTransaction) {
        iScope.withTransaction(new Scope.IWithTransaction() { // from class: io.sentry.android.core.internal.gestures.SentryGestureListener$$ExternalSyntheticLambda0
            @Override // io.sentry.Scope.IWithTransaction
            public final void accept(ITransaction iTransaction2) {
                SentryGestureListener.this.m5660xd83f30f4(iScope, iTransaction, iTransaction2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$applyScope$3$io-sentry-android-core-internal-gestures-SentryGestureListener, reason: not valid java name */
    public /* synthetic */ void m5660xd83f30f4(IScope iScope, ITransaction iTransaction, ITransaction iTransaction2) {
        if (iTransaction2 == null) {
            iScope.setTransaction(iTransaction);
        } else {
            this.options.getLogger().log(SentryLevel.DEBUG, "Transaction '%s' won't be bound to the Scope since there's one already in there.", iTransaction.getName());
        }
    }

    private String getActivityName(Activity activity) {
        return activity.getClass().getSimpleName();
    }

    private View ensureWindowDecorView(String str) {
        Activity activity = this.activityRef.get();
        if (activity == null) {
            this.options.getLogger().log(SentryLevel.DEBUG, "Activity is null in " + str + ". No breadcrumb captured.", new Object[0]);
            return null;
        }
        Window window = activity.getWindow();
        if (window == null) {
            this.options.getLogger().log(SentryLevel.DEBUG, "Window is null in " + str + ". No breadcrumb captured.", new Object[0]);
            return null;
        }
        View decorView = window.getDecorView();
        if (decorView != null) {
            return decorView;
        }
        this.options.getLogger().log(SentryLevel.DEBUG, "DecorView is null in " + str + ". No breadcrumb captured.", new Object[0]);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: io.sentry.android.core.internal.gestures.SentryGestureListener$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$io$sentry$android$core$internal$gestures$SentryGestureListener$GestureType;

        static {
            int[] iArr = new int[GestureType.values().length];
            $SwitchMap$io$sentry$android$core$internal$gestures$SentryGestureListener$GestureType = iArr;
            try {
                iArr[GestureType.Click.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$io$sentry$android$core$internal$gestures$SentryGestureListener$GestureType[GestureType.Scroll.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$io$sentry$android$core$internal$gestures$SentryGestureListener$GestureType[GestureType.Swipe.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$io$sentry$android$core$internal$gestures$SentryGestureListener$GestureType[GestureType.Unknown.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    private static String getGestureType(GestureType gestureType) {
        int i = AnonymousClass1.$SwitchMap$io$sentry$android$core$internal$gestures$SentryGestureListener$GestureType[gestureType.ordinal()];
        return i != 1 ? i != 2 ? i != 3 ? "unknown" : "swipe" : "scroll" : "click";
    }

    /* loaded from: classes3.dex */
    private static final class ScrollState {
        private float startX;
        private float startY;
        private UiElement target;
        private GestureType type;

        /* JADX INFO: Access modifiers changed from: private */
        public void setTarget(UiElement uiElement) {
            this.target = uiElement;
        }

        private ScrollState() {
            this.type = GestureType.Unknown;
            this.startX = 0.0f;
            this.startY = 0.0f;
        }

        /* synthetic */ ScrollState(AnonymousClass1 anonymousClass1) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public String calculateDirection(MotionEvent motionEvent) {
            float x = motionEvent.getX() - this.startX;
            float y = motionEvent.getY() - this.startY;
            return Math.abs(x) > Math.abs(y) ? x > 0.0f ? "right" : "left" : y > 0.0f ? "down" : "up";
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void reset() {
            this.target = null;
            this.type = GestureType.Unknown;
            this.startX = 0.0f;
            this.startY = 0.0f;
        }
    }
}
