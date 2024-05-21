.class public final Landroidx/work/impl/background/greedy/TimeLimiter;
.super Ljava/lang/Object;
.source "TimeLimiter.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTimeLimiter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TimeLimiter.kt\nandroidx/work/impl/background/greedy/TimeLimiter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,45:1\n1#2:46\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u0001B!\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u000e\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000cJ\u000e\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000cR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Landroidx/work/impl/background/greedy/TimeLimiter;",
        "",
        "runnableScheduler",
        "Landroidx/work/RunnableScheduler;",
        "launcher",
        "Landroidx/work/impl/WorkLauncher;",
        "timeoutMs",
        "",
        "(Landroidx/work/RunnableScheduler;Landroidx/work/impl/WorkLauncher;J)V",
        "lock",
        "tracked",
        "",
        "Landroidx/work/impl/StartStopToken;",
        "Ljava/lang/Runnable;",
        "cancel",
        "",
        "token",
        "track",
        "work-runtime_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final launcher:Landroidx/work/impl/WorkLauncher;

.field private final lock:Ljava/lang/Object;

.field private final runnableScheduler:Landroidx/work/RunnableScheduler;

.field private final timeoutMs:J

.field private final tracked:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/work/impl/StartStopToken;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$-vpfYFCUMjLBVsa47nEhUzlZ9xY(Landroidx/work/impl/background/greedy/TimeLimiter;Landroidx/work/impl/StartStopToken;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/work/impl/background/greedy/TimeLimiter;->track$lambda$0(Landroidx/work/impl/background/greedy/TimeLimiter;Landroidx/work/impl/StartStopToken;)V

    return-void
.end method

.method public constructor <init>(Landroidx/work/RunnableScheduler;Landroidx/work/impl/WorkLauncher;)V
    .locals 8

    const-string v0, "runnableScheduler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "launcher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Landroidx/work/impl/background/greedy/TimeLimiter;-><init>(Landroidx/work/RunnableScheduler;Landroidx/work/impl/WorkLauncher;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroidx/work/RunnableScheduler;Landroidx/work/impl/WorkLauncher;J)V
    .locals 1

    const-string v0, "runnableScheduler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "launcher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/background/greedy/TimeLimiter;->runnableScheduler:Landroidx/work/RunnableScheduler;

    iput-object p2, p0, Landroidx/work/impl/background/greedy/TimeLimiter;->launcher:Landroidx/work/impl/WorkLauncher;

    iput-wide p3, p0, Landroidx/work/impl/background/greedy/TimeLimiter;->timeoutMs:J

    .line 30
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/background/greedy/TimeLimiter;->lock:Ljava/lang/Object;

    .line 31
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Landroidx/work/impl/background/greedy/TimeLimiter;->tracked:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/work/RunnableScheduler;Landroidx/work/impl/WorkLauncher;JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    .line 28
    sget-object p3, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 p4, 0x5a

    invoke-virtual {p3, p4, p5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p3

    .line 25
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/work/impl/background/greedy/TimeLimiter;-><init>(Landroidx/work/RunnableScheduler;Landroidx/work/impl/WorkLauncher;J)V

    return-void
.end method

.method private static final track$lambda$0(Landroidx/work/impl/background/greedy/TimeLimiter;Landroidx/work/impl/StartStopToken;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iget-object p0, p0, Landroidx/work/impl/background/greedy/TimeLimiter;->launcher:Landroidx/work/impl/WorkLauncher;

    const/4 v0, 0x3

    invoke-interface {p0, p1, v0}, Landroidx/work/impl/WorkLauncher;->stopWork(Landroidx/work/impl/StartStopToken;I)V

    return-void
.end method


# virtual methods
.method public final cancel(Landroidx/work/impl/StartStopToken;)V
    .locals 2

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/impl/background/greedy/TimeLimiter;->lock:Ljava/lang/Object;

    .line 42
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/background/greedy/TimeLimiter;->tracked:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/work/impl/background/greedy/TimeLimiter;->runnableScheduler:Landroidx/work/RunnableScheduler;

    invoke-interface {p0, p1}, Landroidx/work/RunnableScheduler;->cancel(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final track(Landroidx/work/impl/StartStopToken;)V
    .locals 3

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    new-instance v0, Landroidx/work/impl/background/greedy/TimeLimiter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/background/greedy/TimeLimiter$$ExternalSyntheticLambda0;-><init>(Landroidx/work/impl/background/greedy/TimeLimiter;Landroidx/work/impl/StartStopToken;)V

    iget-object v1, p0, Landroidx/work/impl/background/greedy/TimeLimiter;->lock:Ljava/lang/Object;

    .line 37
    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroidx/work/impl/background/greedy/TimeLimiter;->tracked:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    iget-object p1, p0, Landroidx/work/impl/background/greedy/TimeLimiter;->runnableScheduler:Landroidx/work/RunnableScheduler;

    iget-wide v1, p0, Landroidx/work/impl/background/greedy/TimeLimiter;->timeoutMs:J

    .line 38
    invoke-interface {p1, v1, v2, v0}, Landroidx/work/RunnableScheduler;->scheduleWithDelay(JLjava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p0

    .line 37
    monitor-exit v1

    throw p0
.end method
