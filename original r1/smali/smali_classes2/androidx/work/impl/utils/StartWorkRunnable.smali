.class public final Landroidx/work/impl/utils/StartWorkRunnable;
.super Ljava/lang/Object;
.source "StartWorkRunnable.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\t\u001a\u00020\nH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Landroidx/work/impl/utils/StartWorkRunnable;",
        "Ljava/lang/Runnable;",
        "processor",
        "Landroidx/work/impl/Processor;",
        "startStopToken",
        "Landroidx/work/impl/StartStopToken;",
        "runtimeExtras",
        "Landroidx/work/WorkerParameters$RuntimeExtras;",
        "(Landroidx/work/impl/Processor;Landroidx/work/impl/StartStopToken;Landroidx/work/WorkerParameters$RuntimeExtras;)V",
        "run",
        "",
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
.field private final processor:Landroidx/work/impl/Processor;

.field private final runtimeExtras:Landroidx/work/WorkerParameters$RuntimeExtras;

.field private final startStopToken:Landroidx/work/impl/StartStopToken;


# direct methods
.method public constructor <init>(Landroidx/work/impl/Processor;Landroidx/work/impl/StartStopToken;Landroidx/work/WorkerParameters$RuntimeExtras;)V
    .locals 1

    const-string v0, "processor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "startStopToken"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/utils/StartWorkRunnable;->processor:Landroidx/work/impl/Processor;

    iput-object p2, p0, Landroidx/work/impl/utils/StartWorkRunnable;->startStopToken:Landroidx/work/impl/StartStopToken;

    iput-object p3, p0, Landroidx/work/impl/utils/StartWorkRunnable;->runtimeExtras:Landroidx/work/WorkerParameters$RuntimeExtras;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroidx/work/impl/utils/StartWorkRunnable;->processor:Landroidx/work/impl/Processor;

    iget-object v1, p0, Landroidx/work/impl/utils/StartWorkRunnable;->startStopToken:Landroidx/work/impl/StartStopToken;

    iget-object p0, p0, Landroidx/work/impl/utils/StartWorkRunnable;->runtimeExtras:Landroidx/work/WorkerParameters$RuntimeExtras;

    .line 34
    invoke-virtual {v0, v1, p0}, Landroidx/work/impl/Processor;->startWork(Landroidx/work/impl/StartStopToken;Landroidx/work/WorkerParameters$RuntimeExtras;)Z

    return-void
.end method
