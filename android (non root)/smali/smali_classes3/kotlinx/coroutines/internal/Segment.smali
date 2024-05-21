.class public abstract Lkotlinx/coroutines/internal/Segment;
.super Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;
.source "ConcurrentLinkedList.kt"

# interfaces
.implements Lkotlinx/coroutines/NotCompleted;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lkotlinx/coroutines/internal/Segment<",
        "TS;>;>",
        "Lkotlinx/coroutines/internal/ConcurrentLinkedListNode<",
        "TS;>;",
        "Lkotlinx/coroutines/NotCompleted;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConcurrentLinkedList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/Segment\n+ 2 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/ConcurrentLinkedListKt\n*L\n1#1,269:1\n252#2,4:270\n*S KotlinDebug\n*F\n+ 1 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/Segment\n*L\n225#1:270,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008 \u0018\u0000*\u000e\u0008\u0000\u0010\u0001*\u0008\u0012\u0004\u0012\u0002H\u00010\u00002\u0008\u0012\u0004\u0012\u0002H\u00010\u00022\u00020\u0003B\u001f\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00018\u0000\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\r\u0010\u0012\u001a\u00020\rH\u0000\u00a2\u0006\u0002\u0008\u0013J\"\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00082\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u0019\u001a\u00020\u001aH&J\u0006\u0010\u001b\u001a\u00020\u0015J\r\u0010\u001c\u001a\u00020\rH\u0000\u00a2\u0006\u0002\u0008\u001dR\t\u0010\n\u001a\u00020\u000bX\u0082\u0004R\u0010\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u00020\r8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\u000eR\u0012\u0010\u000f\u001a\u00020\u0008X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u001e"
    }
    d2 = {
        "Lkotlinx/coroutines/internal/Segment;",
        "S",
        "Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;",
        "Lkotlinx/coroutines/NotCompleted;",
        "id",
        "",
        "prev",
        "pointers",
        "",
        "(JLkotlinx/coroutines/internal/Segment;I)V",
        "cleanedAndPointers",
        "Lkotlinx/atomicfu/AtomicInt;",
        "isRemoved",
        "",
        "()Z",
        "numberOfSlots",
        "getNumberOfSlots",
        "()I",
        "decPointers",
        "decPointers$kotlinx_coroutines_core",
        "onCancellation",
        "",
        "index",
        "cause",
        "",
        "context",
        "Lkotlin/coroutines/CoroutineContext;",
        "onSlotCleaned",
        "tryIncPointers",
        "tryIncPointers$kotlinx_coroutines_core",
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


# static fields
.field private static final cleanedAndPointers$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private volatile cleanedAndPointers:I
    .annotation runtime Lkotlin/jvm/Volatile;
    .end annotation
.end field

.field public final id:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lkotlinx/coroutines/internal/Segment;

    const-string v1, "cleanedAndPointers"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/internal/Segment;->cleanedAndPointers$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(JLkotlinx/coroutines/internal/Segment;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTS;I)V"
        }
    .end annotation

    .line 198
    check-cast p3, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    invoke-direct {p0, p3}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;-><init>(Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;)V

    iput-wide p1, p0, Lkotlinx/coroutines/internal/Segment;->id:J

    shl-int/lit8 p1, p4, 0x10

    iput p1, p0, Lkotlinx/coroutines/internal/Segment;->cleanedAndPointers:I

    return-void
.end method


# virtual methods
.method public final decPointers$kotlinx_coroutines_core()Z
    .locals 2

    sget-object v0, Lkotlinx/coroutines/internal/Segment;->cleanedAndPointers$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/high16 v1, -0x10000

    .line 228
    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->addAndGet(Ljava/lang/Object;I)I

    move-result v0

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/Segment;->getNumberOfSlots()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/Segment;->isTail()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public abstract getNumberOfSlots()I
.end method

.method public isRemoved()Z
    .locals 2

    sget-object v0, Lkotlinx/coroutines/internal/Segment;->cleanedAndPointers$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 222
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/Segment;->getNumberOfSlots()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/Segment;->isTail()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public abstract onCancellation(ILjava/lang/Throwable;Lkotlin/coroutines/CoroutineContext;)V
.end method

.method public final onSlotCleaned()V
    .locals 2

    sget-object v0, Lkotlinx/coroutines/internal/Segment;->cleanedAndPointers$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 247
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/Segment;->getNumberOfSlots()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/Segment;->remove()V

    :cond_0
    return-void
.end method

.method public final tryIncPointers$kotlinx_coroutines_core()Z
    .locals 3

    sget-object v0, Lkotlinx/coroutines/internal/Segment;->cleanedAndPointers$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 270
    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v1

    .line 225
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/Segment;->getNumberOfSlots()I

    move-result v2

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/Segment;->isTail()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/high16 v2, 0x10000

    add-int/2addr v2, v1

    .line 273
    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    :goto_1
    return p0
.end method
