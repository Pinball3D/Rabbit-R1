.class public final Lkotlinx/coroutines/internal/ThreadLocalKt;
.super Ljava/lang/Object;
.source "ThreadLocal.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a&\u0010\u0000\u001a\u0012\u0012\u0004\u0012\u0002H\u00020\u0001j\u0008\u0012\u0004\u0012\u0002H\u0002`\u0003\"\u0004\u0008\u0000\u0010\u00022\u0006\u0010\u0004\u001a\u00020\u0005H\u0000*\u001e\u0008\u0000\u0010\u0006\u001a\u0004\u0008\u0000\u0010\u0002\"\u0008\u0012\u0004\u0012\u0002H\u00020\u00012\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\u00a8\u0006\u0007"
    }
    d2 = {
        "commonThreadLocal",
        "Ljava/lang/ThreadLocal;",
        "T",
        "Lkotlinx/coroutines/internal/CommonThreadLocal;",
        "name",
        "Lkotlinx/coroutines/internal/Symbol;",
        "CommonThreadLocal",
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
.method public static synthetic CommonThreadLocal$annotations()V
    .locals 0

    return-void
.end method

.method public static final commonThreadLocal(Lkotlinx/coroutines/internal/Symbol;)Ljava/lang/ThreadLocal;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/internal/Symbol;",
            ")",
            "Ljava/lang/ThreadLocal<",
            "TT;>;"
        }
    .end annotation

    .line 12
    new-instance p0, Ljava/lang/ThreadLocal;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-object p0
.end method
