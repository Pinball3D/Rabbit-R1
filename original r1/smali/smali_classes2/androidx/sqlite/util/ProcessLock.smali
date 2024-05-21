.class public final Landroidx/sqlite/util/ProcessLock;
.super Ljava/lang/Object;
.source "ProcessLock.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/sqlite/util/ProcessLock$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nProcessLock.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProcessLock.kt\nandroidx/sqlite/util/ProcessLock\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,101:1\n1#2:102\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0010\u0010\u000e\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007J\u0006\u0010\u0010\u001a\u00020\u000fR\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u00020\r8\u0002X\u0083\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Landroidx/sqlite/util/ProcessLock;",
        "",
        "name",
        "",
        "lockDir",
        "Ljava/io/File;",
        "processLock",
        "",
        "(Ljava/lang/String;Ljava/io/File;Z)V",
        "lockChannel",
        "Ljava/nio/channels/FileChannel;",
        "lockFile",
        "threadLock",
        "Ljava/util/concurrent/locks/Lock;",
        "lock",
        "",
        "unlock",
        "Companion",
        "sqlite-framework_release"
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
.field public static final Companion:Landroidx/sqlite/util/ProcessLock$Companion;

.field private static final TAG:Ljava/lang/String; = "SupportSQLiteLock"

.field private static final threadLocksMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/locks/Lock;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private lockChannel:Ljava/nio/channels/FileChannel;

.field private final lockFile:Ljava/io/File;

.field private final processLock:Z

.field private final threadLock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/sqlite/util/ProcessLock$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/sqlite/util/ProcessLock$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/sqlite/util/ProcessLock;->Companion:Landroidx/sqlite/util/ProcessLock$Companion;

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    sput-object v0, Landroidx/sqlite/util/ProcessLock;->threadLocksMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/File;Z)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lockDir"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Landroidx/sqlite/util/ProcessLock;->processLock:Z

    .line 58
    new-instance p3, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ".lck"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p3, p0, Landroidx/sqlite/util/ProcessLock;->lockFile:Ljava/io/File;

    sget-object p1, Landroidx/sqlite/util/ProcessLock;->Companion:Landroidx/sqlite/util/ProcessLock$Companion;

    .line 60
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    const-string p3, "lockFile.absolutePath"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Landroidx/sqlite/util/ProcessLock$Companion;->access$getThreadLock(Landroidx/sqlite/util/ProcessLock$Companion;Ljava/lang/String;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    iput-object p1, p0, Landroidx/sqlite/util/ProcessLock;->threadLock:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method public static final synthetic access$getThreadLocksMap$cp()Ljava/util/Map;
    .locals 1

    sget-object v0, Landroidx/sqlite/util/ProcessLock;->threadLocksMap:Ljava/util/Map;

    return-object v0
.end method

.method public static synthetic lock$default(Landroidx/sqlite/util/ProcessLock;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 68
    iget-boolean p1, p0, Landroidx/sqlite/util/ProcessLock;->processLock:Z

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/sqlite/util/ProcessLock;->lock(Z)V

    return-void
.end method


# virtual methods
.method public final lock(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/sqlite/util/ProcessLock;->threadLock:Ljava/util/concurrent/locks/Lock;

    .line 69
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    if-eqz p1, :cond_1

    :try_start_0
    iget-object p1, p0, Landroidx/sqlite/util/ProcessLock;->lockFile:Ljava/io/File;

    .line 73
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 74
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 75
    :cond_0
    new-instance p1, Ljava/io/FileOutputStream;

    iget-object v0, p0, Landroidx/sqlite/util/ProcessLock;->lockFile:Ljava/io/File;

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    iput-object p1, p0, Landroidx/sqlite/util/ProcessLock;->lockChannel:Ljava/nio/channels/FileChannel;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/sqlite/util/ProcessLock;->lockChannel:Ljava/nio/channels/FileChannel;

    const-string p0, "Unable to grab file lock."

    .line 78
    check-cast p1, Ljava/lang/Throwable;

    const-string v0, "SupportSQLiteLock"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public final unlock()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroidx/sqlite/util/ProcessLock;->lockChannel:Ljava/nio/channels/FileChannel;

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    iget-object p0, p0, Landroidx/sqlite/util/ProcessLock;->threadLock:Ljava/util/concurrent/locks/Lock;

    .line 90
    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method
