.class public final Lkotlinx/coroutines/stream/StreamKt;
.super Ljava/lang/Object;
.source "Stream.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u001c\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "consumeAsFlow",
        "Lkotlinx/coroutines/flow/Flow;",
        "T",
        "Ljava/util/stream/Stream;",
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


# direct methods
.method public static final consumeAsFlow(Ljava/util/stream/Stream;)Lkotlinx/coroutines/flow/Flow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/Stream<",
            "TT;>;)",
            "Lkotlinx/coroutines/flow/Flow<",
            "TT;>;"
        }
    .end annotation

    .line 17
    new-instance v0, Lkotlinx/coroutines/stream/StreamFlow;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/stream/StreamFlow;-><init>(Ljava/util/stream/Stream;)V

    check-cast v0, Lkotlinx/coroutines/flow/Flow;

    return-object v0
.end method
