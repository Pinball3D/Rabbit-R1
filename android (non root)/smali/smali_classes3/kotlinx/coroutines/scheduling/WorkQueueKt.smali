.class public final Lkotlinx/coroutines/scheduling/WorkQueueKt;
.super Ljava/lang/Object;
.source "WorkQueue.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWorkQueue.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WorkQueue.kt\nkotlinx/coroutines/scheduling/WorkQueueKt\n+ 2 Tasks.kt\nkotlinx/coroutines/scheduling/TasksKt\n*L\n1#1,255:1\n90#2:256\n*S KotlinDebug\n*F\n+ 1 WorkQueue.kt\nkotlinx/coroutines/scheduling/WorkQueueKt\n*L\n25#1:256\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0001X\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0004\u001a\u00020\u0005X\u0080T\u00a2\u0006\u0002\n\u0000\"\u0012\u0010\u0006\u001a\u00060\u0001j\u0002`\u0007X\u0080T\u00a2\u0006\u0002\n\u0000\"\u0012\u0010\u0008\u001a\u00060\u0001j\u0002`\u0007X\u0080T\u00a2\u0006\u0002\n\u0000\"\u0012\u0010\t\u001a\u00060\u0001j\u0002`\u0007X\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\n\u001a\u00020\u0005X\u0080T\u00a2\u0006\u0002\n\u0000\"\u0019\u0010\u000b\u001a\u00020\u0001*\u00020\u000c8\u00c0\u0002X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000e*\u000c\u0008\u0000\u0010\u000f\"\u00020\u00012\u00020\u0001\u00a8\u0006\u0010"
    }
    d2 = {
        "BUFFER_CAPACITY",
        "",
        "BUFFER_CAPACITY_BASE",
        "MASK",
        "NOTHING_TO_STEAL",
        "",
        "STEAL_ANY",
        "Lkotlinx/coroutines/scheduling/StealingMode;",
        "STEAL_BLOCKING_ONLY",
        "STEAL_CPU_ONLY",
        "TASK_STOLEN",
        "maskForStealingMode",
        "Lkotlinx/coroutines/scheduling/Task;",
        "getMaskForStealingMode",
        "(Lkotlinx/coroutines/scheduling/Task;)I",
        "StealingMode",
        "kotlinx-coroutines-core"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final BUFFER_CAPACITY:I = 0x80

.field public static final BUFFER_CAPACITY_BASE:I = 0x7

.field public static final MASK:I = 0x7f

.field public static final NOTHING_TO_STEAL:J = -0x2L

.field public static final STEAL_ANY:I = 0x3

.field public static final STEAL_BLOCKING_ONLY:I = 0x1

.field public static final STEAL_CPU_ONLY:I = 0x2

.field public static final TASK_STOLEN:J = -0x1L


# direct methods
.method public static final getMaskForStealingMode(Lkotlinx/coroutines/scheduling/Task;)I
    .locals 1

    .line 256
    iget-object p0, p0, Lkotlinx/coroutines/scheduling/Task;->taskContext:Lkotlinx/coroutines/scheduling/TaskContext;

    invoke-interface {p0}, Lkotlinx/coroutines/scheduling/TaskContext;->getTaskMode()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0
.end method
