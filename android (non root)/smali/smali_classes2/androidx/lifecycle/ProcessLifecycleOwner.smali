.class public final Landroidx/lifecycle/ProcessLifecycleOwner;
.super Ljava/lang/Object;
.source "ProcessLifecycleOwner.kt"

# interfaces
.implements Landroidx/lifecycle/LifecycleOwner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/ProcessLifecycleOwner$Api29Impl;,
        Landroidx/lifecycle/ProcessLifecycleOwner$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 \'2\u00020\u0001:\u0002&\'B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\r\u0010\u0015\u001a\u00020\u0016H\u0000\u00a2\u0006\u0002\u0008\u0017J\r\u0010\u0018\u001a\u00020\u0016H\u0000\u00a2\u0006\u0002\u0008\u0019J\r\u0010\u001a\u001a\u00020\u0016H\u0000\u00a2\u0006\u0002\u0008\u001bJ\r\u0010\u001c\u001a\u00020\u0016H\u0000\u00a2\u0006\u0002\u0008\u001dJ\u0015\u0010\u001e\u001a\u00020\u00162\u0006\u0010\u001f\u001a\u00020 H\u0000\u00a2\u0006\u0002\u0008!J\r\u0010\"\u001a\u00020\u0016H\u0000\u00a2\u0006\u0002\u0008#J\r\u0010$\u001a\u00020\u0016H\u0000\u00a2\u0006\u0002\u0008%R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u00020\n8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006("
    }
    d2 = {
        "Landroidx/lifecycle/ProcessLifecycleOwner;",
        "Landroidx/lifecycle/LifecycleOwner;",
        "()V",
        "delayedPauseRunnable",
        "Ljava/lang/Runnable;",
        "handler",
        "Landroid/os/Handler;",
        "initializationListener",
        "Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;",
        "lifecycle",
        "Landroidx/lifecycle/Lifecycle;",
        "getLifecycle",
        "()Landroidx/lifecycle/Lifecycle;",
        "pauseSent",
        "",
        "registry",
        "Landroidx/lifecycle/LifecycleRegistry;",
        "resumedCounter",
        "",
        "startedCounter",
        "stopSent",
        "activityPaused",
        "",
        "activityPaused$lifecycle_process_release",
        "activityResumed",
        "activityResumed$lifecycle_process_release",
        "activityStarted",
        "activityStarted$lifecycle_process_release",
        "activityStopped",
        "activityStopped$lifecycle_process_release",
        "attach",
        "context",
        "Landroid/content/Context;",
        "attach$lifecycle_process_release",
        "dispatchPauseIfNeeded",
        "dispatchPauseIfNeeded$lifecycle_process_release",
        "dispatchStopIfNeeded",
        "dispatchStopIfNeeded$lifecycle_process_release",
        "Api29Impl",
        "Companion",
        "lifecycle-process_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Landroidx/lifecycle/ProcessLifecycleOwner$Companion;

.field public static final TIMEOUT_MS:J = 0x2bcL

.field private static final newInstance:Landroidx/lifecycle/ProcessLifecycleOwner;


# instance fields
.field private final delayedPauseRunnable:Ljava/lang/Runnable;

.field private handler:Landroid/os/Handler;

.field private final initializationListener:Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;

.field private pauseSent:Z

.field private final registry:Landroidx/lifecycle/LifecycleRegistry;

.field private resumedCounter:I

.field private startedCounter:I

.field private stopSent:Z


# direct methods
.method public static synthetic $r8$lambda$8RHFmaqBQY2MpEYiTr99NwPTGEU(Landroidx/lifecycle/ProcessLifecycleOwner;)V
    .locals 0

    invoke-static {p0}, Landroidx/lifecycle/ProcessLifecycleOwner;->delayedPauseRunnable$lambda$0(Landroidx/lifecycle/ProcessLifecycleOwner;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/lifecycle/ProcessLifecycleOwner$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/lifecycle/ProcessLifecycleOwner$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/lifecycle/ProcessLifecycleOwner;->Companion:Landroidx/lifecycle/ProcessLifecycleOwner$Companion;

    .line 75
    new-instance v0, Landroidx/lifecycle/ProcessLifecycleOwner;

    invoke-direct {v0}, Landroidx/lifecycle/ProcessLifecycleOwner;-><init>()V

    sput-object v0, Landroidx/lifecycle/ProcessLifecycleOwner;->newInstance:Landroidx/lifecycle/ProcessLifecycleOwner;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->pauseSent:Z

    iput-boolean v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->stopSent:Z

    .line 54
    new-instance v0, Landroidx/lifecycle/LifecycleRegistry;

    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    invoke-direct {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    iput-object v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->registry:Landroidx/lifecycle/LifecycleRegistry;

    .line 55
    new-instance v0, Landroidx/lifecycle/ProcessLifecycleOwner$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroidx/lifecycle/ProcessLifecycleOwner$$ExternalSyntheticLambda0;-><init>(Landroidx/lifecycle/ProcessLifecycleOwner;)V

    iput-object v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->delayedPauseRunnable:Ljava/lang/Runnable;

    .line 60
    new-instance v0, Landroidx/lifecycle/ProcessLifecycleOwner$initializationListener$1;

    invoke-direct {v0, p0}, Landroidx/lifecycle/ProcessLifecycleOwner$initializationListener$1;-><init>(Landroidx/lifecycle/ProcessLifecycleOwner;)V

    check-cast v0, Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;

    iput-object v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->initializationListener:Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;

    return-void
.end method

.method public static final synthetic access$getInitializationListener$p(Landroidx/lifecycle/ProcessLifecycleOwner;)Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;
    .locals 0

    .line 47
    iget-object p0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->initializationListener:Landroidx/lifecycle/ReportFragment$ActivityInitializationListener;

    return-object p0
.end method

.method public static final synthetic access$getNewInstance$cp()Landroidx/lifecycle/ProcessLifecycleOwner;
    .locals 1

    sget-object v0, Landroidx/lifecycle/ProcessLifecycleOwner;->newInstance:Landroidx/lifecycle/ProcessLifecycleOwner;

    return-object v0
.end method

.method private static final delayedPauseRunnable$lambda$0(Landroidx/lifecycle/ProcessLifecycleOwner;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Landroidx/lifecycle/ProcessLifecycleOwner;->dispatchPauseIfNeeded$lifecycle_process_release()V

    .line 57
    invoke-virtual {p0}, Landroidx/lifecycle/ProcessLifecycleOwner;->dispatchStopIfNeeded$lifecycle_process_release()V

    return-void
.end method

.method public static final get()Landroidx/lifecycle/LifecycleOwner;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/lifecycle/ProcessLifecycleOwner;->Companion:Landroidx/lifecycle/ProcessLifecycleOwner$Companion;

    invoke-virtual {v0}, Landroidx/lifecycle/ProcessLifecycleOwner$Companion;->get()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    return-object v0
.end method

.method public static final init$lifecycle_process_release(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroidx/lifecycle/ProcessLifecycleOwner;->Companion:Landroidx/lifecycle/ProcessLifecycleOwner$Companion;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/ProcessLifecycleOwner$Companion;->init$lifecycle_process_release(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final activityPaused$lifecycle_process_release()V
    .locals 3

    iget v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->resumedCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->resumedCounter:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->handler:Landroid/os/Handler;

    .line 117
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->delayedPauseRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x2bc

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final activityResumed$lifecycle_process_release()V
    .locals 2

    iget v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->resumedCounter:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->resumedCounter:I

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->pauseSent:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->registry:Landroidx/lifecycle/LifecycleRegistry;

    .line 106
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->pauseSent:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->handler:Landroid/os/Handler;

    .line 109
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->delayedPauseRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final activityStarted$lifecycle_process_release()V
    .locals 2

    iget v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->startedCounter:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->startedCounter:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->stopSent:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->registry:Landroidx/lifecycle/LifecycleRegistry;

    .line 97
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->stopSent:Z

    :cond_0
    return-void
.end method

.method public final activityStopped$lifecycle_process_release()V
    .locals 1

    iget v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->startedCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->startedCounter:I

    .line 123
    invoke-virtual {p0}, Landroidx/lifecycle/ProcessLifecycleOwner;->dispatchStopIfNeeded$lifecycle_process_release()V

    return-void
.end method

.method public final attach$lifecycle_process_release(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->handler:Landroid/os/Handler;

    iget-object v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->registry:Landroidx/lifecycle/LifecycleRegistry;

    .line 143
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 144
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.app.Application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/app/Application;

    .line 145
    new-instance v0, Landroidx/lifecycle/ProcessLifecycleOwner$attach$1;

    invoke-direct {v0, p0}, Landroidx/lifecycle/ProcessLifecycleOwner$attach$1;-><init>(Landroidx/lifecycle/ProcessLifecycleOwner;)V

    check-cast v0, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public final dispatchPauseIfNeeded$lifecycle_process_release()V
    .locals 1

    iget v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->resumedCounter:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->pauseSent:Z

    iget-object p0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->registry:Landroidx/lifecycle/LifecycleRegistry;

    .line 129
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    :cond_0
    return-void
.end method

.method public final dispatchStopIfNeeded$lifecycle_process_release()V
    .locals 2

    iget v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->startedCounter:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->pauseSent:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->registry:Landroidx/lifecycle/LifecycleRegistry;

    .line 135
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->stopSent:Z

    :cond_0
    return-void
.end method

.method public getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 0

    iget-object p0, p0, Landroidx/lifecycle/ProcessLifecycleOwner;->registry:Landroidx/lifecycle/LifecycleRegistry;

    .line 189
    check-cast p0, Landroidx/lifecycle/Lifecycle;

    return-object p0
.end method
