.class public final Lkotlinx/coroutines/DispatchersKt;
.super Ljava/lang/Object;
.source "Dispatchers.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0086T\u00a2\u0006\u0002\n\u0000\"\u001e\u0010\u0002\u001a\u00020\u0003*\u00020\u00048FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0005\u0010\u0006\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "IO_PARALLELISM_PROPERTY_NAME",
        "",
        "IO",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "Lkotlinx/coroutines/Dispatchers;",
        "getIO$annotations",
        "(Lkotlinx/coroutines/Dispatchers;)V",
        "getIO",
        "(Lkotlinx/coroutines/Dispatchers;)Lkotlinx/coroutines/CoroutineDispatcher;",
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
.field public static final IO_PARALLELISM_PROPERTY_NAME:Ljava/lang/String; = "kotlinx.coroutines.io.parallelism"


# direct methods
.method public static final synthetic getIO(Lkotlinx/coroutines/Dispatchers;)Lkotlinx/coroutines/CoroutineDispatcher;
    .locals 0

    .line 107
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getIO$annotations(Lkotlinx/coroutines/Dispatchers;)V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Should not be used directly"
    .end annotation

    return-void
.end method
