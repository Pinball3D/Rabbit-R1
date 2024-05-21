.class public final Landroidx/room/AutoCloser;
.super Ljava/lang/Object;
.source "AutoCloser.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/AutoCloser$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAutoCloser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AutoCloser.kt\nandroidx/room/AutoCloser\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,227:1\n1#2:228\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000e\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0000\u0018\u0000 ?2\u00020\u0001:\u0001?B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0006\u00103\u001a\u000204J\u0006\u00105\u001a\u000204J%\u00106\u001a\u0002H7\"\u0004\u0008\u0000\u001072\u0012\u00108\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u0002H709\u00a2\u0006\u0002\u0010:J\u0006\u0010;\u001a\u00020\rJ\u000e\u0010<\u001a\u0002042\u0006\u0010\u0012\u001a\u00020\u0013J\u000e\u0010=\u001a\u0002042\u0006\u0010>\u001a\u00020\u000bR\u000e\u0010\t\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R \u0010\u000c\u001a\u0004\u0018\u00010\r8\u0000@\u0000X\u0081\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0013X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u000e\u0010\u0018\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u001c\u001a\u00020\u001d8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u001eR\u001e\u0010\u001f\u001a\u00020\u00038\u0000@\u0000X\u0081\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R\u000e\u0010$\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020\u001dX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010&\u001a\u0004\u0018\u00010\u000bX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010(\"\u0004\u0008)\u0010*R\u001e\u0010+\u001a\u00020,8\u0000@\u0000X\u0081\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008-\u0010.\"\u0004\u0008/\u00100R\u0014\u00101\u001a\u00020,8AX\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u00082\u0010.\u00a8\u0006@"
    }
    d2 = {
        "Landroidx/room/AutoCloser;",
        "",
        "autoCloseTimeoutAmount",
        "",
        "autoCloseTimeUnit",
        "Ljava/util/concurrent/TimeUnit;",
        "autoCloseExecutor",
        "Ljava/util/concurrent/Executor;",
        "(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/Executor;)V",
        "autoCloseTimeoutInMs",
        "autoCloser",
        "Ljava/lang/Runnable;",
        "delegateDatabase",
        "Landroidx/sqlite/db/SupportSQLiteDatabase;",
        "getDelegateDatabase$room_runtime_release",
        "()Landroidx/sqlite/db/SupportSQLiteDatabase;",
        "setDelegateDatabase$room_runtime_release",
        "(Landroidx/sqlite/db/SupportSQLiteDatabase;)V",
        "delegateOpenHelper",
        "Landroidx/sqlite/db/SupportSQLiteOpenHelper;",
        "getDelegateOpenHelper",
        "()Landroidx/sqlite/db/SupportSQLiteOpenHelper;",
        "setDelegateOpenHelper",
        "(Landroidx/sqlite/db/SupportSQLiteOpenHelper;)V",
        "executeAutoCloser",
        "executor",
        "handler",
        "Landroid/os/Handler;",
        "isActive",
        "",
        "()Z",
        "lastDecrementRefCountTimeStamp",
        "getLastDecrementRefCountTimeStamp$room_runtime_release",
        "()J",
        "setLastDecrementRefCountTimeStamp$room_runtime_release",
        "(J)V",
        "lock",
        "manuallyClosed",
        "onAutoCloseCallback",
        "getOnAutoCloseCallback$room_runtime_release",
        "()Ljava/lang/Runnable;",
        "setOnAutoCloseCallback$room_runtime_release",
        "(Ljava/lang/Runnable;)V",
        "refCount",
        "",
        "getRefCount$room_runtime_release",
        "()I",
        "setRefCount$room_runtime_release",
        "(I)V",
        "refCountForTest",
        "getRefCountForTest$room_runtime_release",
        "closeDatabaseIfOpen",
        "",
        "decrementCountAndScheduleClose",
        "executeRefCountingFunction",
        "V",
        "block",
        "Lkotlin/Function1;",
        "(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
        "incrementCountAndEnsureDbIsOpen",
        "init",
        "setAutoCloseCallback",
        "onAutoClose",
        "Companion",
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


# static fields
.field public static final Companion:Landroidx/room/AutoCloser$Companion;

.field public static final autoCloseBug:Ljava/lang/String; = "https://issuetracker.google.com/issues/new?component=413107&template=1096568"


# instance fields
.field private autoCloseTimeoutInMs:J

.field private final autoCloser:Ljava/lang/Runnable;

.field private delegateDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;

.field public delegateOpenHelper:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

.field private final executeAutoCloser:Ljava/lang/Runnable;

.field private final executor:Ljava/util/concurrent/Executor;

.field private final handler:Landroid/os/Handler;

.field private lastDecrementRefCountTimeStamp:J

.field private final lock:Ljava/lang/Object;

.field private manuallyClosed:Z

.field private onAutoCloseCallback:Ljava/lang/Runnable;

.field private refCount:I


# direct methods
.method public static synthetic $r8$lambda$IDlpiQzGERMyiJhLp9dqH94Jfq8(Landroidx/room/AutoCloser;)V
    .locals 0

    invoke-static {p0}, Landroidx/room/AutoCloser;->executeAutoCloser$lambda$0(Landroidx/room/AutoCloser;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Xeo1sT4yrRJFpXIV1D3OJ8zyhr8(Landroidx/room/AutoCloser;)V
    .locals 0

    invoke-static {p0}, Landroidx/room/AutoCloser;->autoCloser$lambda$3(Landroidx/room/AutoCloser;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/room/AutoCloser$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/room/AutoCloser$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/room/AutoCloser;->Companion:Landroidx/room/AutoCloser$Companion;

    return-void
.end method

.method public constructor <init>(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/Executor;)V
    .locals 2

    const-string v0, "autoCloseTimeUnit"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "autoCloseExecutor"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/room/AutoCloser;->handler:Landroid/os/Handler;

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/room/AutoCloser;->lock:Ljava/lang/Object;

    .line 52
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/room/AutoCloser;->autoCloseTimeoutInMs:J

    iput-object p4, p0, Landroidx/room/AutoCloser;->executor:Ljava/util/concurrent/Executor;

    .line 60
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/room/AutoCloser;->lastDecrementRefCountTimeStamp:J

    .line 68
    new-instance p1, Landroidx/room/AutoCloser$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Landroidx/room/AutoCloser$$ExternalSyntheticLambda0;-><init>(Landroidx/room/AutoCloser;)V

    iput-object p1, p0, Landroidx/room/AutoCloser;->executeAutoCloser:Ljava/lang/Runnable;

    .line 70
    new-instance p1, Landroidx/room/AutoCloser$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Landroidx/room/AutoCloser$$ExternalSyntheticLambda1;-><init>(Landroidx/room/AutoCloser;)V

    iput-object p1, p0, Landroidx/room/AutoCloser;->autoCloser:Ljava/lang/Runnable;

    return-void
.end method

.method private static final autoCloser$lambda$3(Landroidx/room/AutoCloser;)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Landroidx/room/AutoCloser;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 72
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Landroidx/room/AutoCloser;->lastDecrementRefCountTimeStamp:J

    sub-long/2addr v1, v3

    .line 73
    iget-wide v3, p0, Landroidx/room/AutoCloser;->autoCloseTimeoutInMs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 78
    monitor-exit v0

    return-void

    .line 80
    :cond_0
    :try_start_1
    iget v1, p0, Landroidx/room/AutoCloser;->refCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 84
    monitor-exit v0

    return-void

    .line 86
    :cond_1
    :try_start_2
    iget-object v1, p0, Landroidx/room/AutoCloser;->onAutoCloseCallback:Ljava/lang/Runnable;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    :cond_2
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_4

    .line 92
    iget-object v1, p0, Landroidx/room/AutoCloser;->delegateDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;

    if-eqz v1, :cond_3

    .line 93
    invoke-interface {v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 94
    invoke-interface {v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->close()V

    .line 97
    :cond_3
    iput-object v2, p0, Landroidx/room/AutoCloser;->delegateDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 98
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    monitor-exit v0

    return-void

    .line 86
    :cond_4
    :try_start_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "onAutoCloseCallback is null but it should have been set before use. Please file a bug against Room at: https://issuetracker.google.com/issues/new?component=413107&template=1096568"

    .line 87
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p0

    .line 71
    monitor-exit v0

    throw p0
.end method

.method private static final executeAutoCloser$lambda$0(Landroidx/room/AutoCloser;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Landroidx/room/AutoCloser;->executor:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Landroidx/room/AutoCloser;->autoCloser:Ljava/lang/Runnable;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final closeDatabaseIfOpen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/room/AutoCloser;->lock:Ljava/lang/Object;

    .line 185
    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroidx/room/AutoCloser;->manuallyClosed:Z

    iget-object v1, p0, Landroidx/room/AutoCloser;->delegateDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;

    if-eqz v1, :cond_0

    .line 187
    invoke-interface {v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->close()V

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/room/AutoCloser;->delegateDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 189
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final decrementCountAndScheduleClose()V
    .locals 5

    iget-object v0, p0, Landroidx/room/AutoCloser;->lock:Ljava/lang/Object;

    .line 160
    monitor-enter v0

    :try_start_0
    iget v1, p0, Landroidx/room/AutoCloser;->refCount:I

    if-lez v1, :cond_2

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroidx/room/AutoCloser;->refCount:I

    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/room/AutoCloser;->delegateDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 171
    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Landroidx/room/AutoCloser;->handler:Landroid/os/Handler;

    iget-object v2, p0, Landroidx/room/AutoCloser;->executeAutoCloser:Ljava/lang/Runnable;

    iget-wide v3, p0, Landroidx/room/AutoCloser;->autoCloseTimeoutInMs:J

    .line 173
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 175
    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    monitor-exit v0

    return-void

    :cond_2
    :try_start_2
    const-string p0, "ref count is 0 or lower but we\'re supposed to decrement"

    .line 161
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p0

    .line 160
    monitor-exit v0

    throw p0
.end method

.method public final executeRefCountingFunction(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/sqlite/db/SupportSQLiteDatabase;",
            "+TV;>;)TV;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    :try_start_0
    invoke-virtual {p0}, Landroidx/room/AutoCloser;->incrementCountAndEnsureDbIsOpen()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    invoke-virtual {p0}, Landroidx/room/AutoCloser;->decrementCountAndScheduleClose()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroidx/room/AutoCloser;->decrementCountAndScheduleClose()V

    throw p1
.end method

.method public final getDelegateDatabase$room_runtime_release()Landroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 0

    iget-object p0, p0, Landroidx/room/AutoCloser;->delegateDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;

    return-object p0
.end method

.method public final getDelegateOpenHelper()Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .locals 0

    iget-object p0, p0, Landroidx/room/AutoCloser;->delegateOpenHelper:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "delegateOpenHelper"

    .line 45
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getLastDecrementRefCountTimeStamp$room_runtime_release()J
    .locals 2

    iget-wide v0, p0, Landroidx/room/AutoCloser;->lastDecrementRefCountTimeStamp:J

    return-wide v0
.end method

.method public final getOnAutoCloseCallback$room_runtime_release()Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Landroidx/room/AutoCloser;->onAutoCloseCallback:Ljava/lang/Runnable;

    return-object p0
.end method

.method public final getRefCount$room_runtime_release()I
    .locals 0

    iget p0, p0, Landroidx/room/AutoCloser;->refCount:I

    return p0
.end method

.method public final getRefCountForTest$room_runtime_release()I
    .locals 1

    iget-object v0, p0, Landroidx/room/AutoCloser;->lock:Ljava/lang/Object;

    .line 210
    monitor-enter v0

    :try_start_0
    iget p0, p0, Landroidx/room/AutoCloser;->refCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final incrementCountAndEnsureDbIsOpen()Landroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 3

    iget-object v0, p0, Landroidx/room/AutoCloser;->lock:Ljava/lang/Object;

    .line 139
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/room/AutoCloser;->handler:Landroid/os/Handler;

    iget-object v2, p0, Landroidx/room/AutoCloser;->executeAutoCloser:Ljava/lang/Runnable;

    .line 142
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget v1, p0, Landroidx/room/AutoCloser;->refCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/room/AutoCloser;->refCount:I

    iget-boolean v1, p0, Landroidx/room/AutoCloser;->manuallyClosed:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/room/AutoCloser;->delegateDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;

    if-eqz v1, :cond_0

    .line 146
    invoke-interface {v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->isOpen()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 147
    monitor-exit v0

    return-object v1

    .line 150
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroidx/room/AutoCloser;->getDelegateOpenHelper()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v1

    invoke-interface {v1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Landroidx/room/AutoCloser;->delegateDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :cond_1
    :try_start_2
    const-string p0, "Attempting to open already closed database."

    .line 144
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p0

    .line 150
    monitor-exit v0

    throw p0
.end method

.method public final init(Landroidx/sqlite/db/SupportSQLiteOpenHelper;)V
    .locals 1

    const-string v0, "delegateOpenHelper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0, p1}, Landroidx/room/AutoCloser;->setDelegateOpenHelper(Landroidx/sqlite/db/SupportSQLiteOpenHelper;)V

    return-void
.end method

.method public final isActive()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/room/AutoCloser;->manuallyClosed:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final setAutoCloseCallback(Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "onAutoClose"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/room/AutoCloser;->onAutoCloseCallback:Ljava/lang/Runnable;

    return-void
.end method

.method public final setDelegateDatabase$room_runtime_release(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0

    iput-object p1, p0, Landroidx/room/AutoCloser;->delegateDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;

    return-void
.end method

.method public final setDelegateOpenHelper(Landroidx/sqlite/db/SupportSQLiteOpenHelper;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/room/AutoCloser;->delegateOpenHelper:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    return-void
.end method

.method public final setLastDecrementRefCountTimeStamp$room_runtime_release(J)V
    .locals 0

    iput-wide p1, p0, Landroidx/room/AutoCloser;->lastDecrementRefCountTimeStamp:J

    return-void
.end method

.method public final setOnAutoCloseCallback$room_runtime_release(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Landroidx/room/AutoCloser;->onAutoCloseCallback:Ljava/lang/Runnable;

    return-void
.end method

.method public final setRefCount$room_runtime_release(I)V
    .locals 0

    iput p1, p0, Landroidx/room/AutoCloser;->refCount:I

    return-void
.end method
