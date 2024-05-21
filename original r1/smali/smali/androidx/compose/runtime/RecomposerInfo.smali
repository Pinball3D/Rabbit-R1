.class public interface abstract Landroidx/compose/runtime/RecomposerInfo;
.super Ljava/lang/Object;
.source "Recomposer.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u0018\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000e\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u000f\u00c0\u0006\u0001"
    }
    d2 = {
        "Landroidx/compose/runtime/RecomposerInfo;",
        "",
        "changeCount",
        "",
        "getChangeCount",
        "()J",
        "hasPendingWork",
        "",
        "getHasPendingWork",
        "()Z",
        "state",
        "Lkotlinx/coroutines/flow/Flow;",
        "Landroidx/compose/runtime/Recomposer$State;",
        "getState",
        "()Lkotlinx/coroutines/flow/Flow;",
        "runtime_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract getChangeCount()J
.end method

.method public abstract getHasPendingWork()Z
.end method

.method public abstract getState()Lkotlinx/coroutines/flow/Flow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Landroidx/compose/runtime/Recomposer$State;",
            ">;"
        }
    .end annotation
.end method
