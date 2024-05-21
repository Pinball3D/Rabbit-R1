.class final Landroidx/compose/animation/core/MutatorMutex$Mutator;
.super Ljava/lang/Object;
.source "InternalMutatorMutex.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/animation/core/MutatorMutex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Mutator"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u000e\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0000J\u0006\u0010\u000e\u001a\u00020\u000fR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0010"
    }
    d2 = {
        "Landroidx/compose/animation/core/MutatorMutex$Mutator;",
        "",
        "priority",
        "Landroidx/compose/animation/core/MutatePriority;",
        "job",
        "Lkotlinx/coroutines/Job;",
        "(Landroidx/compose/animation/core/MutatePriority;Lkotlinx/coroutines/Job;)V",
        "getJob",
        "()Lkotlinx/coroutines/Job;",
        "getPriority",
        "()Landroidx/compose/animation/core/MutatePriority;",
        "canInterrupt",
        "",
        "other",
        "cancel",
        "",
        "animation-core_release"
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
.field private final job:Lkotlinx/coroutines/Job;

.field private final priority:Landroidx/compose/animation/core/MutatePriority;


# direct methods
.method public constructor <init>(Landroidx/compose/animation/core/MutatePriority;Lkotlinx/coroutines/Job;)V
    .locals 1

    const-string v0, "priority"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "job"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/animation/core/MutatorMutex$Mutator;->priority:Landroidx/compose/animation/core/MutatePriority;

    iput-object p2, p0, Landroidx/compose/animation/core/MutatorMutex$Mutator;->job:Lkotlinx/coroutines/Job;

    return-void
.end method


# virtual methods
.method public final canInterrupt(Landroidx/compose/animation/core/MutatorMutex$Mutator;)Z
    .locals 1

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/animation/core/MutatorMutex$Mutator;->priority:Landroidx/compose/animation/core/MutatePriority;

    .line 87
    iget-object p1, p1, Landroidx/compose/animation/core/MutatorMutex$Mutator;->priority:Landroidx/compose/animation/core/MutatePriority;

    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p0, p1}, Landroidx/compose/animation/core/MutatePriority;->compareTo(Ljava/lang/Enum;)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final cancel()V
    .locals 1

    iget-object p0, p0, Landroidx/compose/animation/core/MutatorMutex$Mutator;->job:Lkotlinx/coroutines/Job;

    .line 89
    new-instance v0, Landroidx/compose/animation/core/MutationInterruptedException;

    invoke-direct {v0}, Landroidx/compose/animation/core/MutationInterruptedException;-><init>()V

    check-cast v0, Ljava/util/concurrent/CancellationException;

    invoke-interface {p0, v0}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method public final getJob()Lkotlinx/coroutines/Job;
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/core/MutatorMutex$Mutator;->job:Lkotlinx/coroutines/Job;

    return-object p0
.end method

.method public final getPriority()Landroidx/compose/animation/core/MutatePriority;
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/core/MutatorMutex$Mutator;->priority:Landroidx/compose/animation/core/MutatePriority;

    return-object p0
.end method
