.class interface abstract Lio/sentry/android/core/internal/gestures/SentryWindowCallback$MotionEventObtainer;
.super Ljava/lang/Object;
.source "SentryWindowCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/core/internal/gestures/SentryWindowCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "MotionEventObtainer"
.end annotation


# virtual methods
.method public obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 0

    .line 86
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p0

    return-object p0
.end method
