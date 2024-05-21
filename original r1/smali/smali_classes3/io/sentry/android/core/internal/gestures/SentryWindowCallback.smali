.class public final Lio/sentry/android/core/internal/gestures/SentryWindowCallback;
.super Lio/sentry/android/core/internal/gestures/WindowCallbackAdapter;
.source "SentryWindowCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/internal/gestures/SentryWindowCallback$MotionEventObtainer;
    }
.end annotation


# instance fields
.field private final delegate:Landroid/view/Window$Callback;

.field private final gestureDetector:Landroidx/core/view/GestureDetectorCompat;

.field private final gestureListener:Lio/sentry/android/core/internal/gestures/SentryGestureListener;

.field private final motionEventObtainer:Lio/sentry/android/core/internal/gestures/SentryWindowCallback$MotionEventObtainer;

.field private final options:Lio/sentry/SentryOptions;


# direct methods
.method public constructor <init>(Landroid/view/Window$Callback;Landroid/content/Context;Lio/sentry/android/core/internal/gestures/SentryGestureListener;Lio/sentry/SentryOptions;)V
    .locals 6

    .line 28
    new-instance v2, Landroidx/core/view/GestureDetectorCompat;

    invoke-direct {v2, p2, p3}, Landroidx/core/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    new-instance v5, Lio/sentry/android/core/internal/gestures/SentryWindowCallback$1;

    invoke-direct {v5}, Lio/sentry/android/core/internal/gestures/SentryWindowCallback$1;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lio/sentry/android/core/internal/gestures/SentryWindowCallback;-><init>(Landroid/view/Window$Callback;Landroidx/core/view/GestureDetectorCompat;Lio/sentry/android/core/internal/gestures/SentryGestureListener;Lio/sentry/SentryOptions;Lio/sentry/android/core/internal/gestures/SentryWindowCallback$MotionEventObtainer;)V

    return-void
.end method

.method constructor <init>(Landroid/view/Window$Callback;Landroidx/core/view/GestureDetectorCompat;Lio/sentry/android/core/internal/gestures/SentryGestureListener;Lio/sentry/SentryOptions;Lio/sentry/android/core/internal/gestures/SentryWindowCallback$MotionEventObtainer;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lio/sentry/android/core/internal/gestures/WindowCallbackAdapter;-><init>(Landroid/view/Window$Callback;)V

    iput-object p1, p0, Lio/sentry/android/core/internal/gestures/SentryWindowCallback;->delegate:Landroid/view/Window$Callback;

    iput-object p3, p0, Lio/sentry/android/core/internal/gestures/SentryWindowCallback;->gestureListener:Lio/sentry/android/core/internal/gestures/SentryGestureListener;

    iput-object p4, p0, Lio/sentry/android/core/internal/gestures/SentryWindowCallback;->options:Lio/sentry/SentryOptions;

    iput-object p2, p0, Lio/sentry/android/core/internal/gestures/SentryWindowCallback;->gestureDetector:Landroidx/core/view/GestureDetectorCompat;

    iput-object p5, p0, Lio/sentry/android/core/internal/gestures/SentryWindowCallback;->motionEventObtainer:Lio/sentry/android/core/internal/gestures/SentryWindowCallback$MotionEventObtainer;

    return-void
.end method

.method private handleTouchEvent(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/SentryWindowCallback;->gestureDetector:Landroidx/core/view/GestureDetectorCompat;

    .line 68
    invoke-virtual {v0, p1}, Landroidx/core/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 69
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lio/sentry/android/core/internal/gestures/SentryWindowCallback;->gestureListener:Lio/sentry/android/core/internal/gestures/SentryGestureListener;

    .line 71
    invoke-virtual {p0, p1}, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->onUp(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    if-eqz p1, :cond_1

    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/SentryWindowCallback;->motionEventObtainer:Lio/sentry/android/core/internal/gestures/SentryWindowCallback$MotionEventObtainer;

    .line 53
    invoke-interface {v0, p1}, Lio/sentry/android/core/internal/gestures/SentryWindowCallback$MotionEventObtainer;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 55
    :try_start_0
    invoke-direct {p0, v0}, Lio/sentry/android/core/internal/gestures/SentryWindowCallback;->handleTouchEvent(Landroid/view/MotionEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_1
    iget-object v2, p0, Lio/sentry/android/core/internal/gestures/SentryWindowCallback;->options:Lio/sentry/SentryOptions;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lio/sentry/android/core/internal/gestures/SentryWindowCallback;->options:Lio/sentry/SentryOptions;

    .line 58
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v4, "Error dispatching touch event"

    invoke-interface {v2, v3, v4, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    .line 61
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 62
    throw p0

    .line 64
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Lio/sentry/android/core/internal/gestures/WindowCallbackAdapter;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public getDelegate()Landroid/view/Window$Callback;
    .locals 0

    iget-object p0, p0, Lio/sentry/android/core/internal/gestures/SentryWindowCallback;->delegate:Landroid/view/Window$Callback;

    return-object p0
.end method

.method public stopTracking()V
    .locals 1

    iget-object p0, p0, Lio/sentry/android/core/internal/gestures/SentryWindowCallback;->gestureListener:Lio/sentry/android/core/internal/gestures/SentryGestureListener;

    .line 76
    sget-object v0, Lio/sentry/SpanStatus;->CANCELLED:Lio/sentry/SpanStatus;

    invoke-virtual {p0, v0}, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->stopTracing(Lio/sentry/SpanStatus;)V

    return-void
.end method
