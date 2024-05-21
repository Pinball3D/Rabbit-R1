.class public final Landroidx/compose/runtime/AtomicInt;
.super Ljava/lang/Object;
.source "ActualJvm.jvm.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0003J\u0006\u0010\u000b\u001a\u00020\u0003J\u000e\u0010\u000c\u001a\u00020\r2\u0006\u0010\u0002\u001a\u00020\u0003R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000e"
    }
    d2 = {
        "Landroidx/compose/runtime/AtomicInt;",
        "",
        "value",
        "",
        "(I)V",
        "delegate",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "getDelegate",
        "()Ljava/util/concurrent/atomic/AtomicInteger;",
        "add",
        "amount",
        "get",
        "set",
        "",
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


# instance fields
.field private final delegate:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Landroidx/compose/runtime/AtomicInt;->delegate:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public final add(I)I
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/AtomicInt;->delegate:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 94
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result p0

    return p0
.end method

.method public final get()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/AtomicInt;->delegate:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 92
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method public final getDelegate()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/AtomicInt;->delegate:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method public final set(I)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/AtomicInt;->delegate:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 93
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method
