.class public final Landroidx/room/MultiInstanceInvalidationClient;
.super Ljava/lang/Object;
.source "MultiInstanceInvalidationClient.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMultiInstanceInvalidationClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MultiInstanceInvalidationClient.kt\nandroidx/room/MultiInstanceInvalidationClient\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,129:1\n37#2,2:130\n*S KotlinDebug\n*F\n+ 1 MultiInstanceInvalidationClient.kt\nandroidx/room/MultiInstanceInvalidationClient\n*L\n95#1:130,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJ\u0006\u00109\u001a\u00020:R\u0016\u0010\r\u001a\n \u000e*\u0004\u0018\u00010\u00030\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u000f\u001a\u00020\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\u0013\u001a\u00020\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001cR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001eR\u001a\u0010\u001f\u001a\u00020 X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$R\u0011\u0010%\u001a\u00020&\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010(R\u001c\u0010)\u001a\u0004\u0018\u00010*X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008+\u0010,\"\u0004\u0008-\u0010.R\u0011\u0010/\u001a\u000200\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00081\u00102R\u0011\u00103\u001a\u00020&\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00084\u0010(R\u0011\u00105\u001a\u000206\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00087\u00108\u00a8\u0006;"
    }
    d2 = {
        "Landroidx/room/MultiInstanceInvalidationClient;",
        "",
        "context",
        "Landroid/content/Context;",
        "name",
        "",
        "serviceIntent",
        "Landroid/content/Intent;",
        "invalidationTracker",
        "Landroidx/room/InvalidationTracker;",
        "executor",
        "Ljava/util/concurrent/Executor;",
        "(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroidx/room/InvalidationTracker;Ljava/util/concurrent/Executor;)V",
        "appContext",
        "kotlin.jvm.PlatformType",
        "callback",
        "Landroidx/room/IMultiInstanceInvalidationCallback;",
        "getCallback",
        "()Landroidx/room/IMultiInstanceInvalidationCallback;",
        "clientId",
        "",
        "getClientId",
        "()I",
        "setClientId",
        "(I)V",
        "getExecutor",
        "()Ljava/util/concurrent/Executor;",
        "getInvalidationTracker",
        "()Landroidx/room/InvalidationTracker;",
        "getName",
        "()Ljava/lang/String;",
        "observer",
        "Landroidx/room/InvalidationTracker$Observer;",
        "getObserver",
        "()Landroidx/room/InvalidationTracker$Observer;",
        "setObserver",
        "(Landroidx/room/InvalidationTracker$Observer;)V",
        "removeObserverRunnable",
        "Ljava/lang/Runnable;",
        "getRemoveObserverRunnable",
        "()Ljava/lang/Runnable;",
        "service",
        "Landroidx/room/IMultiInstanceInvalidationService;",
        "getService",
        "()Landroidx/room/IMultiInstanceInvalidationService;",
        "setService",
        "(Landroidx/room/IMultiInstanceInvalidationService;)V",
        "serviceConnection",
        "Landroid/content/ServiceConnection;",
        "getServiceConnection",
        "()Landroid/content/ServiceConnection;",
        "setUpRunnable",
        "getSetUpRunnable",
        "stopped",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "getStopped",
        "()Ljava/util/concurrent/atomic/AtomicBoolean;",
        "stop",
        "",
        "room-runtime_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final appContext:Landroid/content/Context;

.field private final callback:Landroidx/room/IMultiInstanceInvalidationCallback;

.field private clientId:I

.field private final executor:Ljava/util/concurrent/Executor;

.field private final invalidationTracker:Landroidx/room/InvalidationTracker;

.field private final name:Ljava/lang/String;

.field public observer:Landroidx/room/InvalidationTracker$Observer;

.field private final removeObserverRunnable:Ljava/lang/Runnable;

.field private service:Landroidx/room/IMultiInstanceInvalidationService;

.field private final serviceConnection:Landroid/content/ServiceConnection;

.field private final setUpRunnable:Ljava/lang/Runnable;

.field private final stopped:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static synthetic $r8$lambda$OUFtvTStWETjeJxrBwS2HtXq3VE(Landroidx/room/MultiInstanceInvalidationClient;)V
    .locals 0

    invoke-static {p0}, Landroidx/room/MultiInstanceInvalidationClient;->setUpRunnable$lambda$1(Landroidx/room/MultiInstanceInvalidationClient;)V

    return-void
.end method

.method public static synthetic $r8$lambda$at7cvPuqmY8Y6FAv2N0cZPhRid0(Landroidx/room/MultiInstanceInvalidationClient;)V
    .locals 0

    invoke-static {p0}, Landroidx/room/MultiInstanceInvalidationClient;->removeObserverRunnable$lambda$2(Landroidx/room/MultiInstanceInvalidationClient;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroidx/room/InvalidationTracker;Ljava/util/concurrent/Executor;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serviceIntent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "invalidationTracker"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/room/MultiInstanceInvalidationClient;->name:Ljava/lang/String;

    iput-object p4, p0, Landroidx/room/MultiInstanceInvalidationClient;->invalidationTracker:Landroidx/room/InvalidationTracker;

    iput-object p5, p0, Landroidx/room/MultiInstanceInvalidationClient;->executor:Ljava/util/concurrent/Executor;

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/room/MultiInstanceInvalidationClient;->appContext:Landroid/content/Context;

    .line 58
    new-instance p2, Landroidx/room/MultiInstanceInvalidationClient$callback$1;

    invoke-direct {p2, p0}, Landroidx/room/MultiInstanceInvalidationClient$callback$1;-><init>(Landroidx/room/MultiInstanceInvalidationClient;)V

    check-cast p2, Landroidx/room/IMultiInstanceInvalidationCallback;

    iput-object p2, p0, Landroidx/room/MultiInstanceInvalidationClient;->callback:Landroidx/room/IMultiInstanceInvalidationCallback;

    .line 64
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p5, 0x0

    invoke-direct {p2, p5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Landroidx/room/MultiInstanceInvalidationClient;->stopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 66
    new-instance p2, Landroidx/room/MultiInstanceInvalidationClient$serviceConnection$1;

    invoke-direct {p2, p0}, Landroidx/room/MultiInstanceInvalidationClient$serviceConnection$1;-><init>(Landroidx/room/MultiInstanceInvalidationClient;)V

    check-cast p2, Landroid/content/ServiceConnection;

    iput-object p2, p0, Landroidx/room/MultiInstanceInvalidationClient;->serviceConnection:Landroid/content/ServiceConnection;

    .line 79
    new-instance v0, Landroidx/room/MultiInstanceInvalidationClient$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroidx/room/MultiInstanceInvalidationClient$$ExternalSyntheticLambda0;-><init>(Landroidx/room/MultiInstanceInvalidationClient;)V

    iput-object v0, p0, Landroidx/room/MultiInstanceInvalidationClient;->setUpRunnable:Ljava/lang/Runnable;

    .line 90
    new-instance v0, Landroidx/room/MultiInstanceInvalidationClient$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Landroidx/room/MultiInstanceInvalidationClient$$ExternalSyntheticLambda1;-><init>(Landroidx/room/MultiInstanceInvalidationClient;)V

    iput-object v0, p0, Landroidx/room/MultiInstanceInvalidationClient;->removeObserverRunnable:Ljava/lang/Runnable;

    .line 94
    invoke-virtual {p4}, Landroidx/room/InvalidationTracker;->getTableIdLookup$room_runtime_release()Ljava/util/Map;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p4

    .line 95
    check-cast p4, Ljava/util/Collection;

    new-array p5, p5, [Ljava/lang/String;

    .line 131
    invoke-interface {p4, p5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p4

    const-string p5, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {p4, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    check-cast p4, [Ljava/lang/String;

    new-instance p5, Landroidx/room/MultiInstanceInvalidationClient$1;

    invoke-direct {p5, p0, p4}, Landroidx/room/MultiInstanceInvalidationClient$1;-><init>(Landroidx/room/MultiInstanceInvalidationClient;[Ljava/lang/String;)V

    check-cast p5, Landroidx/room/InvalidationTracker$Observer;

    invoke-virtual {p0, p5}, Landroidx/room/MultiInstanceInvalidationClient;->setObserver(Landroidx/room/InvalidationTracker$Observer;)V

    const/4 p0, 0x1

    .line 111
    invoke-virtual {p1, p3, p2, p0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method private static final removeObserverRunnable$lambda$2(Landroidx/room/MultiInstanceInvalidationClient;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Landroidx/room/MultiInstanceInvalidationClient;->invalidationTracker:Landroidx/room/InvalidationTracker;

    invoke-virtual {p0}, Landroidx/room/MultiInstanceInvalidationClient;->getObserver()Landroidx/room/InvalidationTracker$Observer;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/room/InvalidationTracker;->removeObserver(Landroidx/room/InvalidationTracker$Observer;)V

    return-void
.end method

.method private static final setUpRunnable$lambda$1(Landroidx/room/MultiInstanceInvalidationClient;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    :try_start_0
    iget-object v0, p0, Landroidx/room/MultiInstanceInvalidationClient;->service:Landroidx/room/IMultiInstanceInvalidationService;

    if-eqz v0, :cond_0

    .line 82
    iget-object v1, p0, Landroidx/room/MultiInstanceInvalidationClient;->callback:Landroidx/room/IMultiInstanceInvalidationCallback;

    iget-object v2, p0, Landroidx/room/MultiInstanceInvalidationClient;->name:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroidx/room/IMultiInstanceInvalidationService;->registerCallback(Landroidx/room/IMultiInstanceInvalidationCallback;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/room/MultiInstanceInvalidationClient;->clientId:I

    .line 83
    iget-object v0, p0, Landroidx/room/MultiInstanceInvalidationClient;->invalidationTracker:Landroidx/room/InvalidationTracker;

    invoke-virtual {p0}, Landroidx/room/MultiInstanceInvalidationClient;->getObserver()Landroidx/room/InvalidationTracker$Observer;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/room/InvalidationTracker;->addObserver(Landroidx/room/InvalidationTracker$Observer;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Cannot register multi-instance invalidation callback"

    .line 86
    check-cast p0, Ljava/lang/Throwable;

    const-string v1, "ROOM"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public final getCallback()Landroidx/room/IMultiInstanceInvalidationCallback;
    .locals 0

    iget-object p0, p0, Landroidx/room/MultiInstanceInvalidationClient;->callback:Landroidx/room/IMultiInstanceInvalidationCallback;

    return-object p0
.end method

.method public final getClientId()I
    .locals 0

    iget p0, p0, Landroidx/room/MultiInstanceInvalidationClient;->clientId:I

    return p0
.end method

.method public final getExecutor()Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Landroidx/room/MultiInstanceInvalidationClient;->executor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public final getInvalidationTracker()Landroidx/room/InvalidationTracker;
    .locals 0

    iget-object p0, p0, Landroidx/room/MultiInstanceInvalidationClient;->invalidationTracker:Landroidx/room/InvalidationTracker;

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/room/MultiInstanceInvalidationClient;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final getObserver()Landroidx/room/InvalidationTracker$Observer;
    .locals 0

    iget-object p0, p0, Landroidx/room/MultiInstanceInvalidationClient;->observer:Landroidx/room/InvalidationTracker$Observer;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "observer"

    .line 54
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getRemoveObserverRunnable()Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Landroidx/room/MultiInstanceInvalidationClient;->removeObserverRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public final getService()Landroidx/room/IMultiInstanceInvalidationService;
    .locals 0

    iget-object p0, p0, Landroidx/room/MultiInstanceInvalidationClient;->service:Landroidx/room/IMultiInstanceInvalidationService;

    return-object p0
.end method

.method public final getServiceConnection()Landroid/content/ServiceConnection;
    .locals 0

    iget-object p0, p0, Landroidx/room/MultiInstanceInvalidationClient;->serviceConnection:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method public final getSetUpRunnable()Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Landroidx/room/MultiInstanceInvalidationClient;->setUpRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public final getStopped()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Landroidx/room/MultiInstanceInvalidationClient;->stopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public final setClientId(I)V
    .locals 0

    iput p1, p0, Landroidx/room/MultiInstanceInvalidationClient;->clientId:I

    return-void
.end method

.method public final setObserver(Landroidx/room/InvalidationTracker$Observer;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/room/MultiInstanceInvalidationClient;->observer:Landroidx/room/InvalidationTracker$Observer;

    return-void
.end method

.method public final setService(Landroidx/room/IMultiInstanceInvalidationService;)V
    .locals 0

    iput-object p1, p0, Landroidx/room/MultiInstanceInvalidationClient;->service:Landroidx/room/IMultiInstanceInvalidationService;

    return-void
.end method

.method public final stop()V
    .locals 3

    iget-object v0, p0, Landroidx/room/MultiInstanceInvalidationClient;->stopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 119
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/room/MultiInstanceInvalidationClient;->invalidationTracker:Landroidx/room/InvalidationTracker;

    .line 120
    invoke-virtual {p0}, Landroidx/room/MultiInstanceInvalidationClient;->getObserver()Landroidx/room/InvalidationTracker$Observer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/room/InvalidationTracker;->removeObserver(Landroidx/room/InvalidationTracker$Observer;)V

    :try_start_0
    iget-object v0, p0, Landroidx/room/MultiInstanceInvalidationClient;->service:Landroidx/room/IMultiInstanceInvalidationService;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/room/MultiInstanceInvalidationClient;->callback:Landroidx/room/IMultiInstanceInvalidationCallback;

    iget v2, p0, Landroidx/room/MultiInstanceInvalidationClient;->clientId:I

    .line 122
    invoke-interface {v0, v1, v2}, Landroidx/room/IMultiInstanceInvalidationService;->unregisterCallback(Landroidx/room/IMultiInstanceInvalidationCallback;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Cannot unregister multi-instance invalidation callback"

    .line 124
    check-cast v0, Ljava/lang/Throwable;

    const-string v2, "ROOM"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    iget-object v0, p0, Landroidx/room/MultiInstanceInvalidationClient;->appContext:Landroid/content/Context;

    iget-object p0, p0, Landroidx/room/MultiInstanceInvalidationClient;->serviceConnection:Landroid/content/ServiceConnection;

    .line 126
    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_1
    return-void
.end method
