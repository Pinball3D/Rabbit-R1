.class final Lkotlinx/coroutines/sync/SemaphoreSegment;
.super Lkotlinx/coroutines/internal/Segment;
.source "Semaphore.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlinx/coroutines/internal/Segment<",
        "Lkotlinx/coroutines/sync/SemaphoreSegment;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSemaphore.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Semaphore.kt\nkotlinx/coroutines/sync/SemaphoreSegment\n*L\n1#1,397:1\n371#1,2:398\n*S KotlinDebug\n*F\n+ 1 Semaphore.kt\nkotlinx/coroutines/sync/SemaphoreSegment\n*L\n384#1:398,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0000\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J%\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00062\u0008\u0010\u0011\u001a\u0004\u0018\u00010\n2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\nH\u0086\u0008J\u0013\u0010\u0013\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0010\u001a\u00020\u0006H\u0086\u0008J\u001d\u0010\u0014\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0010\u001a\u00020\u00062\u0008\u0010\u0012\u001a\u0004\u0018\u00010\nH\u0086\u0008J\"\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0010\u001a\u00020\u00062\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\u001b\u0010\u001b\u001a\u00020\u00162\u0006\u0010\u0010\u001a\u00020\u00062\u0008\u0010\u0012\u001a\u0004\u0018\u00010\nH\u0086\u0008J\u0008\u0010\u001c\u001a\u00020\u001dH\u0016R\u000e\u0010\u0008\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\tR\u0014\u0010\u000b\u001a\u00020\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u001e"
    }
    d2 = {
        "Lkotlinx/coroutines/sync/SemaphoreSegment;",
        "Lkotlinx/coroutines/internal/Segment;",
        "id",
        "",
        "prev",
        "pointers",
        "",
        "(JLkotlinx/coroutines/sync/SemaphoreSegment;I)V",
        "acquirers",
        "Lkotlinx/atomicfu/AtomicArray;",
        "",
        "numberOfSlots",
        "getNumberOfSlots",
        "()I",
        "cas",
        "",
        "index",
        "expected",
        "value",
        "get",
        "getAndSet",
        "onCancellation",
        "",
        "cause",
        "",
        "context",
        "Lkotlin/coroutines/CoroutineContext;",
        "set",
        "toString",
        "",
        "kotlinx-coroutines-core"
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
.field private final acquirers:Ljava/util/concurrent/atomic/AtomicReferenceArray;


# direct methods
.method public constructor <init>(JLkotlinx/coroutines/sync/SemaphoreSegment;I)V
    .locals 0

    .line 362
    check-cast p3, Lkotlinx/coroutines/internal/Segment;

    invoke-direct {p0, p1, p2, p3, p4}, Lkotlinx/coroutines/internal/Segment;-><init>(JLkotlinx/coroutines/internal/Segment;I)V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 363
    invoke-static {}, Lkotlinx/coroutines/sync/SemaphoreKt;->access$getSEGMENT_SIZE$p()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object p1, p0, Lkotlinx/coroutines/sync/SemaphoreSegment;->acquirers:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    return-void
.end method


# virtual methods
.method public final cas(ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 375
    invoke-virtual {p0}, Lkotlinx/coroutines/sync/SemaphoreSegment;->getAcquirers()Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 0

    .line 367
    invoke-virtual {p0}, Lkotlinx/coroutines/sync/SemaphoreSegment;->getAcquirers()Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getAcquirers()Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/sync/SemaphoreSegment;->acquirers:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    return-object p0
.end method

.method public final getAndSet(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 378
    invoke-virtual {p0}, Lkotlinx/coroutines/sync/SemaphoreSegment;->getAcquirers()Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getNumberOfSlots()I
    .locals 0

    .line 364
    invoke-static {}, Lkotlinx/coroutines/sync/SemaphoreKt;->access$getSEGMENT_SIZE$p()I

    move-result p0

    return p0
.end method

.method public onCancellation(ILjava/lang/Throwable;Lkotlin/coroutines/CoroutineContext;)V
    .locals 0

    .line 384
    invoke-static {}, Lkotlinx/coroutines/sync/SemaphoreKt;->access$getCANCELLED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object p2

    .line 398
    invoke-virtual {p0}, Lkotlinx/coroutines/sync/SemaphoreSegment;->getAcquirers()Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 386
    invoke-virtual {p0}, Lkotlinx/coroutines/sync/SemaphoreSegment;->onSlotCleaned()V

    return-void
.end method

.method public final set(ILjava/lang/Object;)V
    .locals 0

    .line 371
    invoke-virtual {p0}, Lkotlinx/coroutines/sync/SemaphoreSegment;->getAcquirers()Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SemaphoreSegment[id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lkotlinx/coroutines/sync/SemaphoreSegment;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hashCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lkotlinx/coroutines/sync/SemaphoreSegment;->hashCode()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x5d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
