.class public interface abstract Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;
.super Ljava/lang/Object;
.source "LazyLayoutSemantics.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008`\u0018\u00002\u00020\u0001J\u0019\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0007H\u00a6@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\rJ\u0008\u0010\u000e\u001a\u00020\u000fH&J\u0019\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u0012H\u00a6@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0013R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\t\u00f8\u0001\u0001\u0082\u0002\n\n\u0002\u0008\u0019\n\u0004\u0008!0\u0001\u00a8\u0006\u0014\u00c0\u0006\u0001"
    }
    d2 = {
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;",
        "",
        "canScrollForward",
        "",
        "getCanScrollForward",
        "()Z",
        "currentPosition",
        "",
        "getCurrentPosition",
        "()F",
        "animateScrollBy",
        "",
        "delta",
        "(FLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "collectionInfo",
        "Landroidx/compose/ui/semantics/CollectionInfo;",
        "scrollToItem",
        "index",
        "",
        "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "foundation_release"
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
.method public abstract animateScrollBy(FLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract collectionInfo()Landroidx/compose/ui/semantics/CollectionInfo;
.end method

.method public abstract getCanScrollForward()Z
.end method

.method public abstract getCurrentPosition()F
.end method

.method public abstract scrollToItem(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method
