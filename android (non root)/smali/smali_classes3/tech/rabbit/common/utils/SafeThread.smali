.class public abstract Ltech/rabbit/common/utils/SafeThread;
.super Ljava/lang/Thread;
.source "KotlinUtil.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008&\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\t\u001a\u00020\u0008H&J\u0008\u0010\n\u001a\u00020\u000bH&J\u0008\u0010\u000c\u001a\u00020\u000bH&J\u0008\u0010\r\u001a\u00020\u000bH\u0016J\u0006\u0010\u000e\u001a\u00020\u000bR\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Ltech/rabbit/common/utils/SafeThread;",
        "Ljava/lang/Thread;",
        "name",
        "",
        "loopInterval",
        "",
        "(Ljava/lang/String;J)V",
        "keepRunning",
        "",
        "loopTask",
        "postTask",
        "",
        "preTask",
        "run",
        "safeStop",
        "common_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private keepRunning:Z

.field private final loopInterval:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 398
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    iput-wide p2, p0, Ltech/rabbit/common/utils/SafeThread;->loopInterval:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Ltech/rabbit/common/utils/SafeThread;->keepRunning:Z

    return-void
.end method


# virtual methods
.method public abstract loopTask()Z
.end method

.method public abstract postTask()V
.end method

.method public abstract preTask()V
.end method

.method public run()V
    .locals 2

    .line 401
    invoke-virtual {p0}, Ltech/rabbit/common/utils/SafeThread;->preTask()V

    :goto_0
    iget-boolean v0, p0, Ltech/rabbit/common/utils/SafeThread;->keepRunning:Z

    if-eqz v0, :cond_0

    .line 402
    invoke-virtual {p0}, Ltech/rabbit/common/utils/SafeThread;->loopTask()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Ltech/rabbit/common/utils/SafeThread;->loopInterval:J

    .line 403
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 405
    :cond_0
    invoke-virtual {p0}, Ltech/rabbit/common/utils/SafeThread;->postTask()V

    return-void
.end method

.method public final safeStop()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Ltech/rabbit/common/utils/SafeThread;->keepRunning:Z

    return-void
.end method
