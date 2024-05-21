.class public final Lio/sentry/android/core/internal/gestures/SentryGestureListener;
.super Ljava/lang/Object;
.source "SentryGestureListener.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;,
        Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;
    }
.end annotation


# static fields
.field private static final TRACE_ORIGIN:Ljava/lang/String; = "auto.ui.gesture_listener"

.field static final UI_ACTION:Ljava/lang/String; = "ui.action"


# instance fields
.field private activeEventType:Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

.field private activeTransaction:Lio/sentry/ITransaction;

.field private activeUiElement:Lio/sentry/internal/gestures/UiElement;

.field private final activityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final hub:Lio/sentry/IHub;

.field private final options:Lio/sentry/android/core/SentryAndroidOptions;

.field private final scrollState:Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lio/sentry/IHub;Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->activeUiElement:Lio/sentry/internal/gestures/UiElement;

    iput-object v0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->activeTransaction:Lio/sentry/ITransaction;

    .line 51
    sget-object v1, Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;->Unknown:Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

    iput-object v1, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->activeEventType:Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

    .line 53
    new-instance v1, Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;

    invoke-direct {v1, v0}, Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;-><init>(Lio/sentry/android/core/internal/gestures/SentryGestureListener$1;)V

    iput-object v1, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->scrollState:Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;

    .line 59
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->activityRef:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->hub:Lio/sentry/IHub;

    iput-object p3, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->options:Lio/sentry/android/core/SentryAndroidOptions;

    return-void
.end method

.method private addBreadcrumb(Lio/sentry/internal/gestures/UiElement;Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;Ljava/util/Map;Landroid/view/MotionEvent;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/internal/gestures/UiElement;",
            "Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/view/MotionEvent;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 178
    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableUserInteractionBreadcrumbs()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 182
    :cond_0
    invoke-static {p2}, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->getGestureType(Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;)Ljava/lang/String;

    move-result-object p2

    .line 184
    new-instance v0, Lio/sentry/Hint;

    invoke-direct {v0}, Lio/sentry/Hint;-><init>()V

    const-string v1, "android:motionEvent"

    .line 185
    invoke-virtual {v0, v1, p4}, Lio/sentry/Hint;->set(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p4, "android:view"

    .line 186
    invoke-virtual {p1}, Lio/sentry/internal/gestures/UiElement;->getView()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p4, v1}, Lio/sentry/Hint;->set(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->hub:Lio/sentry/IHub;

    .line 190
    invoke-virtual {p1}, Lio/sentry/internal/gestures/UiElement;->getResourceName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1}, Lio/sentry/internal/gestures/UiElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lio/sentry/internal/gestures/UiElement;->getTag()Ljava/lang/String;

    move-result-object p1

    .line 189
    invoke-static {p2, p4, v1, p1, p3}, Lio/sentry/Breadcrumb;->userInteraction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lio/sentry/Breadcrumb;

    move-result-object p1

    .line 188
    invoke-interface {p0, p1, v0}, Lio/sentry/IHub;->addBreadcrumb(Lio/sentry/Breadcrumb;Lio/sentry/Hint;)V

    return-void
.end method

.method private ensureWindowDecorView(Ljava/lang/String;)Landroid/view/View;
    .locals 6

    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->activityRef:Ljava/lang/ref/WeakReference;

    .line 327
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, ". No breadcrumb captured."

    if-nez v0, :cond_0

    iget-object p0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 330
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Activity is null in "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v2, v2, [Ljava/lang/Object;

    .line 331
    invoke-interface {p0, v0, p1, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 335
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 338
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Window is null in "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v2, v2, [Ljava/lang/Object;

    .line 339
    invoke-interface {p0, v0, p1, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 343
    :cond_1
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 346
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DecorView is null in "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v2, v2, [Ljava/lang/Object;

    .line 347
    invoke-interface {p0, v0, p1, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_2
    return-object v0
.end method

.method private getActivityName(Landroid/app/Activity;)Ljava/lang/String;
    .locals 0

    .line 323
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getGestureType(Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;)Ljava/lang/String;
    .locals 1

    .line 356
    sget-object v0, Lio/sentry/android/core/internal/gestures/SentryGestureListener$1;->$SwitchMap$io$sentry$android$core$internal$gestures$SentryGestureListener$GestureType:[I

    invoke-virtual {p0}, Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string p0, "unknown"

    goto :goto_0

    :cond_0
    const-string p0, "swipe"

    goto :goto_0

    :cond_1
    const-string p0, "scroll"

    goto :goto_0

    :cond_2
    const-string p0, "click"

    :goto_0
    return-object p0
.end method

.method private startTracing(Lio/sentry/internal/gestures/UiElement;Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;)V
    .locals 6

    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->activeEventType:Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->activeUiElement:Lio/sentry/internal/gestures/UiElement;

    .line 197
    invoke-virtual {p1, v0}, Lio/sentry/internal/gestures/UiElement;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 198
    :goto_0
    sget-object v3, Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;->Click:Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

    if-ne p2, v3, :cond_1

    goto :goto_1

    :cond_1
    if-nez v0, :cond_2

    :goto_1
    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    iget-object v3, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 203
    invoke-virtual {v3}, Lio/sentry/android/core/SentryAndroidOptions;->isTracingEnabled()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v3}, Lio/sentry/android/core/SentryAndroidOptions;->isEnableUserInteractionTracing()Z

    move-result v3

    if-nez v3, :cond_3

    goto/16 :goto_3

    :cond_3
    iget-object v3, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->activityRef:Ljava/lang/ref/WeakReference;

    .line 212
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    if-nez v3, :cond_4

    iget-object p0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 214
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string p2, "Activity is null, no transaction captured."

    new-array v0, v2, [Ljava/lang/Object;

    invoke-interface {p0, p1, p2, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 218
    :cond_4
    invoke-virtual {p1}, Lio/sentry/internal/gestures/UiElement;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->activeTransaction:Lio/sentry/ITransaction;

    if-eqz v5, :cond_7

    if-nez v0, :cond_6

    .line 221
    invoke-interface {v5}, Lio/sentry/ITransaction;->isFinished()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object p1, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 223
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The view with id: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " already has an ongoing transaction assigned. Rescheduling finish"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 224
    invoke-interface {p1, p2, v0, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 230
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->getIdleTimeout()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->activeTransaction:Lio/sentry/ITransaction;

    .line 234
    invoke-interface {p0}, Lio/sentry/ITransaction;->scheduleFinish()V

    :cond_5
    return-void

    .line 240
    :cond_6
    sget-object v0, Lio/sentry/SpanStatus;->OK:Lio/sentry/SpanStatus;

    invoke-virtual {p0, v0}, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->stopTracing(Lio/sentry/SpanStatus;)V

    .line 245
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v3}, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->getActivityName(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 246
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ui.action."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->getGestureType(Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 248
    new-instance v3, Lio/sentry/TransactionOptions;

    invoke-direct {v3}, Lio/sentry/TransactionOptions;-><init>()V

    .line 249
    invoke-virtual {v3, v1}, Lio/sentry/TransactionOptions;->setWaitForChildren(Z)V

    const-wide/16 v4, 0x7530

    .line 251
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 250
    invoke-virtual {v3, v4}, Lio/sentry/TransactionOptions;->setDeadlineTimeout(Ljava/lang/Long;)V

    iget-object v4, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 252
    invoke-virtual {v4}, Lio/sentry/android/core/SentryAndroidOptions;->getIdleTimeout()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/sentry/TransactionOptions;->setIdleTimeout(Ljava/lang/Long;)V

    .line 253
    invoke-virtual {v3, v1}, Lio/sentry/TransactionOptions;->setTrimEnd(Z)V

    iget-object v1, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->hub:Lio/sentry/IHub;

    .line 255
    new-instance v4, Lio/sentry/TransactionContext;

    sget-object v5, Lio/sentry/protocol/TransactionNameSource;->COMPONENT:Lio/sentry/protocol/TransactionNameSource;

    invoke-direct {v4, v0, v5, v2}, Lio/sentry/TransactionContext;-><init>(Ljava/lang/String;Lio/sentry/protocol/TransactionNameSource;Ljava/lang/String;)V

    .line 256
    invoke-interface {v1, v4, v3}, Lio/sentry/IHub;->startTransaction(Lio/sentry/TransactionContext;Lio/sentry/TransactionOptions;)Lio/sentry/ITransaction;

    move-result-object v0

    .line 259
    invoke-interface {v0}, Lio/sentry/ITransaction;->getSpanContext()Lio/sentry/SpanContext;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "auto.ui.gesture_listener."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/sentry/internal/gestures/UiElement;->getOrigin()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/sentry/SpanContext;->setOrigin(Ljava/lang/String;)V

    iget-object v1, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->hub:Lio/sentry/IHub;

    .line 261
    new-instance v2, Lio/sentry/android/core/internal/gestures/SentryGestureListener$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0}, Lio/sentry/android/core/internal/gestures/SentryGestureListener$$ExternalSyntheticLambda2;-><init>(Lio/sentry/android/core/internal/gestures/SentryGestureListener;Lio/sentry/ITransaction;)V

    invoke-interface {v1, v2}, Lio/sentry/IHub;->configureScope(Lio/sentry/ScopeCallback;)V

    iput-object v0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->activeTransaction:Lio/sentry/ITransaction;

    iput-object p1, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->activeUiElement:Lio/sentry/internal/gestures/UiElement;

    iput-object p2, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->activeEventType:Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

    return-void

    :cond_8
    :goto_3
    if-eqz v0, :cond_9

    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->hub:Lio/sentry/IHub;

    .line 205
    invoke-static {v0}, Lio/sentry/util/TracingUtils;->startNewTrace(Lio/sentry/IHub;)V

    iput-object p1, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->activeUiElement:Lio/sentry/internal/gestures/UiElement;

    iput-object p2, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->activeEventType:Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

    :cond_9
    return-void
.end method


# virtual methods
.method applyScope(Lio/sentry/IScope;Lio/sentry/ITransaction;)V
    .locals 1

    .line 306
    new-instance v0, Lio/sentry/android/core/internal/gestures/SentryGestureListener$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lio/sentry/android/core/internal/gestures/SentryGestureListener$$ExternalSyntheticLambda0;-><init>(Lio/sentry/android/core/internal/gestures/SentryGestureListener;Lio/sentry/IScope;Lio/sentry/ITransaction;)V

    invoke-interface {p1, v0}, Lio/sentry/IScope;->withTransaction(Lio/sentry/Scope$IWithTransaction;)V

    return-void
.end method

.method clearScope(Lio/sentry/IScope;)V
    .locals 1

    .line 296
    new-instance v0, Lio/sentry/android/core/internal/gestures/SentryGestureListener$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lio/sentry/android/core/internal/gestures/SentryGestureListener$$ExternalSyntheticLambda3;-><init>(Lio/sentry/android/core/internal/gestures/SentryGestureListener;Lio/sentry/IScope;)V

    invoke-interface {p1, v0}, Lio/sentry/IScope;->withTransaction(Lio/sentry/Scope$IWithTransaction;)V

    return-void
.end method

.method synthetic lambda$applyScope$3$io-sentry-android-core-internal-gestures-SentryGestureListener(Lio/sentry/IScope;Lio/sentry/ITransaction;Lio/sentry/ITransaction;)V
    .locals 0

    .line 0
    if-nez p3, :cond_0

    .line 310
    invoke-interface {p1, p2}, Lio/sentry/IScope;->setTransaction(Lio/sentry/ITransaction;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 313
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    .line 317
    invoke-interface {p2}, Lio/sentry/ITransaction;->getName()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "Transaction \'%s\' won\'t be bound to the Scope since there\'s one already in there."

    .line 314
    invoke-interface {p0, p1, p3, p2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$clearScope$2$io-sentry-android-core-internal-gestures-SentryGestureListener(Lio/sentry/IScope;Lio/sentry/ITransaction;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->activeTransaction:Lio/sentry/ITransaction;

    if-ne p2, p0, :cond_0

    .line 299
    invoke-interface {p1}, Lio/sentry/IScope;->clearTransaction()V

    :cond_0
    return-void
.end method

.method synthetic lambda$startTracing$0$io-sentry-android-core-internal-gestures-SentryGestureListener(Lio/sentry/ITransaction;Lio/sentry/IScope;)V
    .locals 0

    .line 263
    invoke-virtual {p0, p2, p1}, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->applyScope(Lio/sentry/IScope;Lio/sentry/ITransaction;)V

    return-void
.end method

.method synthetic lambda$stopTracing$1$io-sentry-android-core-internal-gestures-SentryGestureListener(Lio/sentry/IScope;)V
    .locals 0

    .line 285
    invoke-virtual {p0, p1}, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->clearScope(Lio/sentry/IScope;)V

    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->scrollState:Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;

    .line 93
    invoke-static {v1}, Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;->access$400(Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;)V

    iget-object v1, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->scrollState:Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;

    .line 94
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-static {v1, v2}, Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;->access$502(Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;F)F

    iget-object p0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->scrollState:Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;

    .line 95
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {p0, p1}, Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;->access$602(Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;F)F

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    iget-object p0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->scrollState:Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;

    .line 161
    sget-object p1, Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;->Swipe:Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

    invoke-static {p0, p1}, Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;->access$202(Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;)Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

    const/4 p0, 0x0

    return p0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    const-string p2, "onScroll"

    .line 128
    invoke-direct {p0, p2}, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->ensureWindowDecorView(Ljava/lang/String;)Landroid/view/View;

    move-result-object p2

    const/4 p3, 0x0

    if-eqz p2, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p4, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->scrollState:Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;

    .line 133
    invoke-static {p4}, Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;->access$200(Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;)Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

    move-result-object p4

    sget-object v0, Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;->Unknown:Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

    if-ne p4, v0, :cond_2

    iget-object p4, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 136
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sget-object v1, Lio/sentry/internal/gestures/UiElement$Type;->SCROLLABLE:Lio/sentry/internal/gestures/UiElement$Type;

    .line 135
    invoke-static {p4, p2, v0, p1, v1}, Lio/sentry/android/core/internal/gestures/ViewUtils;->findTarget(Lio/sentry/android/core/SentryAndroidOptions;Landroid/view/View;FFLio/sentry/internal/gestures/UiElement$Type;)Lio/sentry/internal/gestures/UiElement;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 140
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string p2, "Unable to find scroll target. No breadcrumb captured."

    new-array p4, p3, [Ljava/lang/Object;

    .line 141
    invoke-interface {p0, p1, p2, p4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return p3

    :cond_1
    iget-object p2, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 145
    invoke-virtual {p2}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p2

    sget-object p4, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Scroll target found: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p1}, Lio/sentry/internal/gestures/UiElement;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, p3, [Ljava/lang/Object;

    invoke-interface {p2, p4, v0, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->scrollState:Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;

    .line 149
    invoke-static {p2, p1}, Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;->access$700(Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;Lio/sentry/internal/gestures/UiElement;)V

    iget-object p0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->scrollState:Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;

    .line 150
    sget-object p1, Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;->Scroll:Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

    invoke-static {p0, p1}, Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;->access$202(Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;)Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

    :cond_2
    :goto_0
    return p3
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 6

    const-string v0, "onSingleTapUp"

    .line 101
    invoke-direct {p0, v0}, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->ensureWindowDecorView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 108
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sget-object v5, Lio/sentry/internal/gestures/UiElement$Type;->CLICKABLE:Lio/sentry/internal/gestures/UiElement$Type;

    .line 107
    invoke-static {v2, v0, v3, v4, v5}, Lio/sentry/android/core/internal/gestures/ViewUtils;->findTarget(Lio/sentry/android/core/SentryAndroidOptions;Landroid/view/View;FFLio/sentry/internal/gestures/UiElement$Type;)Lio/sentry/internal/gestures/UiElement;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 112
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v0, "Unable to find click target. No breadcrumb captured."

    new-array v2, v1, [Ljava/lang/Object;

    .line 113
    invoke-interface {p0, p1, v0, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 117
    :cond_1
    sget-object v2, Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;->Click:Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3, p1}, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->addBreadcrumb(Lio/sentry/internal/gestures/UiElement;Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;Ljava/util/Map;Landroid/view/MotionEvent;)V

    .line 118
    sget-object p1, Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;->Click:Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

    invoke-direct {p0, v0, p1}, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->startTracing(Lio/sentry/internal/gestures/UiElement;Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;)V

    :cond_2
    :goto_0
    return v1
.end method

.method public onUp(Landroid/view/MotionEvent;)V
    .locals 4

    const-string v0, "onUp"

    .line 65
    invoke-direct {p0, v0}, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->ensureWindowDecorView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->scrollState:Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;

    .line 66
    invoke-static {v1}, Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;->access$100(Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;)Lio/sentry/internal/gestures/UiElement;

    move-result-object v1

    if-eqz v0, :cond_2

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->scrollState:Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;

    .line 71
    invoke-static {v0}, Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;->access$200(Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;)Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

    move-result-object v0

    sget-object v2, Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;->Unknown:Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

    if-ne v0, v2, :cond_1

    iget-object p0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 73
    invoke-virtual {p0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Unable to define scroll type. No breadcrumb captured."

    .line 74
    invoke-interface {p0, p1, v1, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->scrollState:Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;

    .line 78
    invoke-static {v0, p1}, Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;->access$300(Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;Landroid/view/MotionEvent;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->scrollState:Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;

    .line 81
    invoke-static {v2}, Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;->access$200(Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;)Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

    move-result-object v2

    const-string v3, "direction"

    .line 82
    invoke-static {v3, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 79
    invoke-direct {p0, v1, v2, v0, p1}, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->addBreadcrumb(Lio/sentry/internal/gestures/UiElement;Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;Ljava/util/Map;Landroid/view/MotionEvent;)V

    iget-object p1, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->scrollState:Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;

    .line 84
    invoke-static {p1}, Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;->access$200(Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;)Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->startTracing(Lio/sentry/internal/gestures/UiElement;Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;)V

    iget-object p0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->scrollState:Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;

    .line 85
    invoke-static {p0}, Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;->access$400(Lio/sentry/android/core/internal/gestures/SentryGestureListener$ScrollState;)V

    :cond_2
    :goto_0
    return-void
.end method

.method stopTracing(Lio/sentry/SpanStatus;)V
    .locals 1

    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->activeTransaction:Lio/sentry/ITransaction;

    if-eqz v0, :cond_1

    .line 273
    invoke-interface {v0}, Lio/sentry/ITransaction;->getStatus()Lio/sentry/SpanStatus;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->activeTransaction:Lio/sentry/ITransaction;

    .line 276
    invoke-interface {v0, p1}, Lio/sentry/ITransaction;->finish(Lio/sentry/SpanStatus;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->activeTransaction:Lio/sentry/ITransaction;

    .line 278
    invoke-interface {p1}, Lio/sentry/ITransaction;->finish()V

    :cond_1
    :goto_0
    iget-object p1, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->hub:Lio/sentry/IHub;

    .line 281
    new-instance v0, Lio/sentry/android/core/internal/gestures/SentryGestureListener$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lio/sentry/android/core/internal/gestures/SentryGestureListener$$ExternalSyntheticLambda1;-><init>(Lio/sentry/android/core/internal/gestures/SentryGestureListener;)V

    invoke-interface {p1, v0}, Lio/sentry/IHub;->configureScope(Lio/sentry/ScopeCallback;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->activeTransaction:Lio/sentry/ITransaction;

    iget-object v0, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->activeUiElement:Lio/sentry/internal/gestures/UiElement;

    if-eqz v0, :cond_2

    iput-object p1, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->activeUiElement:Lio/sentry/internal/gestures/UiElement;

    .line 291
    :cond_2
    sget-object p1, Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;->Unknown:Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

    iput-object p1, p0, Lio/sentry/android/core/internal/gestures/SentryGestureListener;->activeEventType:Lio/sentry/android/core/internal/gestures/SentryGestureListener$GestureType;

    return-void
.end method
