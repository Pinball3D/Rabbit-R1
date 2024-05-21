.class public Lio/sentry/android/core/internal/util/FirstDrawDoneListener;
.super Ljava/lang/Object;
.source "FirstDrawDoneListener.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;


# instance fields
.field private final callback:Ljava/lang/Runnable;

.field private final mainThreadHandler:Landroid/os/Handler;

.field private final viewReference:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 2

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lio/sentry/android/core/internal/util/FirstDrawDoneListener;->mainThreadHandler:Landroid/os/Handler;

    .line 101
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/sentry/android/core/internal/util/FirstDrawDoneListener;->viewReference:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p2, p0, Lio/sentry/android/core/internal/util/FirstDrawDoneListener;->callback:Ljava/lang/Runnable;

    return-void
.end method

.method private static isAliveAndAttached(Landroid/view/View;)Z
    .locals 1

    .line 129
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$registerForNextDraw$0(Landroid/view/Window;Landroid/view/Window$Callback;Ljava/lang/Runnable;Lio/sentry/android/core/BuildInfoProvider;)V
    .locals 1

    .line 60
    invoke-virtual {p0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p0, p1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 64
    invoke-static {v0, p2, p3}, Lio/sentry/android/core/internal/util/FirstDrawDoneListener;->registerForNextDraw(Landroid/view/View;Ljava/lang/Runnable;Lio/sentry/android/core/BuildInfoProvider;)V

    :cond_0
    return-void
.end method

.method public static registerForNextDraw(Landroid/app/Activity;Ljava/lang/Runnable;Lio/sentry/android/core/BuildInfoProvider;)V
    .locals 4

    .line 49
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 51
    invoke-virtual {p0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    invoke-static {v0, p1, p2}, Lio/sentry/android/core/internal/util/FirstDrawDoneListener;->registerForNextDraw(Landroid/view/View;Ljava/lang/Runnable;Lio/sentry/android/core/BuildInfoProvider;)V

    goto :goto_1

    .line 55
    :cond_0
    invoke-virtual {p0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 56
    new-instance v1, Lio/sentry/android/core/performance/WindowContentChangedCallback;

    if-eqz v0, :cond_1

    move-object v2, v0

    goto :goto_0

    .line 58
    :cond_1
    new-instance v2, Lio/sentry/android/core/internal/gestures/NoOpWindowCallback;

    invoke-direct {v2}, Lio/sentry/android/core/internal/gestures/NoOpWindowCallback;-><init>()V

    :goto_0
    new-instance v3, Lio/sentry/android/core/internal/util/FirstDrawDoneListener$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v0, p1, p2}, Lio/sentry/android/core/internal/util/FirstDrawDoneListener$$ExternalSyntheticLambda1;-><init>(Landroid/view/Window;Landroid/view/Window$Callback;Ljava/lang/Runnable;Lio/sentry/android/core/BuildInfoProvider;)V

    invoke-direct {v1, v2, v3}, Lio/sentry/android/core/performance/WindowContentChangedCallback;-><init>(Landroid/view/Window$Callback;Ljava/lang/Runnable;)V

    .line 56
    invoke-virtual {p0, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static registerForNextDraw(Landroid/view/View;Ljava/lang/Runnable;Lio/sentry/android/core/BuildInfoProvider;)V
    .locals 1

    .line 76
    new-instance v0, Lio/sentry/android/core/internal/util/FirstDrawDoneListener;

    invoke-direct {v0, p0, p1}, Lio/sentry/android/core/internal/util/FirstDrawDoneListener;-><init>(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 80
    invoke-virtual {p2}, Lio/sentry/android/core/BuildInfoProvider;->getSdkInfoVersion()I

    move-result p1

    const/16 p2, 0x1a

    if-ge p1, p2, :cond_0

    .line 81
    invoke-static {p0}, Lio/sentry/android/core/internal/util/FirstDrawDoneListener;->isAliveAndAttached(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 82
    new-instance p1, Lio/sentry/android/core/internal/util/FirstDrawDoneListener$1;

    invoke-direct {p1, v0}, Lio/sentry/android/core/internal/util/FirstDrawDoneListener$1;-><init>(Lio/sentry/android/core/internal/util/FirstDrawDoneListener;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    :goto_0
    return-void
.end method


# virtual methods
.method synthetic lambda$onDraw$1$io-sentry-android-core-internal-util-FirstDrawDoneListener(Landroid/view/View;)V
    .locals 0

    .line 115
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    return-void
.end method

.method public onDraw()V
    .locals 3

    iget-object v0, p0, Lio/sentry/android/core/internal/util/FirstDrawDoneListener;->viewReference:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    .line 108
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 114
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lio/sentry/android/core/internal/util/FirstDrawDoneListener$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lio/sentry/android/core/internal/util/FirstDrawDoneListener$$ExternalSyntheticLambda0;-><init>(Lio/sentry/android/core/internal/util/FirstDrawDoneListener;Landroid/view/View;)V

    .line 115
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lio/sentry/android/core/internal/util/FirstDrawDoneListener;->mainThreadHandler:Landroid/os/Handler;

    iget-object p0, p0, Lio/sentry/android/core/internal/util/FirstDrawDoneListener;->callback:Ljava/lang/Runnable;

    .line 116
    invoke-virtual {v0, p0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method
