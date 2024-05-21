.class final Lkotlinx/coroutines/sync/MutexImpl$SelectInstanceWithOwner;
.super Ljava/lang/Object;
.source "Mutex.kt"

# interfaces
.implements Lkotlinx/coroutines/selects/SelectInstanceInternal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/sync/MutexImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SelectInstanceWithOwner"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Q:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/selects/SelectInstanceInternal<",
        "TQ;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMutex.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Mutex.kt\nkotlinx/coroutines/sync/MutexImpl$SelectInstanceWithOwner\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,300:1\n1#2:301\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u0082\u0004\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B\u001d\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0002\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0011\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0096\u0001J\u001d\u0010\u000f\u001a\u00020\u000c2\n\u0010\u0010\u001a\u0006\u0012\u0002\u0008\u00030\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0096\u0001J\u0012\u0010\u0014\u001a\u00020\u000c2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0005H\u0016J\u001a\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00052\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0005H\u0016R\u0012\u0010\u0007\u001a\u00020\u0008X\u0096\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u0012\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00028\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lkotlinx/coroutines/sync/MutexImpl$SelectInstanceWithOwner;",
        "Q",
        "Lkotlinx/coroutines/selects/SelectInstanceInternal;",
        "select",
        "owner",
        "",
        "(Lkotlinx/coroutines/sync/MutexImpl;Lkotlinx/coroutines/selects/SelectInstanceInternal;Ljava/lang/Object;)V",
        "context",
        "Lkotlin/coroutines/CoroutineContext;",
        "getContext",
        "()Lkotlin/coroutines/CoroutineContext;",
        "disposeOnCompletion",
        "",
        "disposableHandle",
        "Lkotlinx/coroutines/DisposableHandle;",
        "invokeOnCancellation",
        "segment",
        "Lkotlinx/coroutines/internal/Segment;",
        "index",
        "",
        "selectInRegistrationPhase",
        "internalResult",
        "trySelect",
        "",
        "clauseObject",
        "result",
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
.field public final owner:Ljava/lang/Object;

.field public final select:Lkotlinx/coroutines/selects/SelectInstanceInternal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/selects/SelectInstanceInternal<",
            "TQ;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lkotlinx/coroutines/sync/MutexImpl;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/sync/MutexImpl;Lkotlinx/coroutines/selects/SelectInstanceInternal;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/selects/SelectInstanceInternal<",
            "TQ;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lkotlinx/coroutines/sync/MutexImpl$SelectInstanceWithOwner;->this$0:Lkotlinx/coroutines/sync/MutexImpl;

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lkotlinx/coroutines/sync/MutexImpl$SelectInstanceWithOwner;->select:Lkotlinx/coroutines/selects/SelectInstanceInternal;

    iput-object p3, p0, Lkotlinx/coroutines/sync/MutexImpl$SelectInstanceWithOwner;->owner:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public disposeOnCompletion(Lkotlinx/coroutines/DisposableHandle;)V
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/sync/MutexImpl$SelectInstanceWithOwner;->select:Lkotlinx/coroutines/selects/SelectInstanceInternal;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/selects/SelectInstanceInternal;->disposeOnCompletion(Lkotlinx/coroutines/DisposableHandle;)V

    return-void
.end method

.method public getContext()Lkotlin/coroutines/CoroutineContext;
    .locals 0

    iget-object p0, p0, Lkotlinx/coroutines/sync/MutexImpl$SelectInstanceWithOwner;->select:Lkotlinx/coroutines/selects/SelectInstanceInternal;

    invoke-interface {p0}, Lkotlinx/coroutines/selects/SelectInstanceInternal;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p0

    return-object p0
.end method

.method public invokeOnCancellation(Lkotlinx/coroutines/internal/Segment;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/internal/Segment<",
            "*>;I)V"
        }
    .end annotation

    iget-object p0, p0, Lkotlinx/coroutines/sync/MutexImpl$SelectInstanceWithOwner;->select:Lkotlinx/coroutines/selects/SelectInstanceInternal;

    invoke-interface {p0, p1, p2}, Lkotlinx/coroutines/selects/SelectInstanceInternal;->invokeOnCancellation(Lkotlinx/coroutines/internal/Segment;I)V

    return-void
.end method

.method public selectInRegistrationPhase(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lkotlinx/coroutines/sync/MutexImpl$SelectInstanceWithOwner;->this$0:Lkotlinx/coroutines/sync/MutexImpl;

    .line 285
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 301
    invoke-static {}, Lkotlinx/coroutines/sync/MutexImpl;->access$getOwner$FU$p()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    .line 285
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/sync/MutexKt;->access$getNO_OWNER$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    invoke-static {}, Lkotlinx/coroutines/sync/MutexImpl;->access$getOwner$FU$p()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    iget-object v1, p0, Lkotlinx/coroutines/sync/MutexImpl$SelectInstanceWithOwner;->this$0:Lkotlinx/coroutines/sync/MutexImpl;

    iget-object v2, p0, Lkotlinx/coroutines/sync/MutexImpl$SelectInstanceWithOwner;->owner:Ljava/lang/Object;

    .line 286
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, p0, Lkotlinx/coroutines/sync/MutexImpl$SelectInstanceWithOwner;->select:Lkotlinx/coroutines/selects/SelectInstanceInternal;

    .line 287
    invoke-interface {p0, p1}, Lkotlinx/coroutines/selects/SelectInstanceInternal;->selectInRegistrationPhase(Ljava/lang/Object;)V

    return-void
.end method

.method public trySelect(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lkotlinx/coroutines/sync/MutexImpl$SelectInstanceWithOwner;->this$0:Lkotlinx/coroutines/sync/MutexImpl;

    .line 278
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 301
    invoke-static {}, Lkotlinx/coroutines/sync/MutexImpl;->access$getOwner$FU$p()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    .line 278
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/sync/MutexKt;->access$getNO_OWNER$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/sync/MutexImpl$SelectInstanceWithOwner;->select:Lkotlinx/coroutines/selects/SelectInstanceInternal;

    .line 279
    invoke-interface {v0, p1, p2}, Lkotlinx/coroutines/selects/SelectInstanceInternal;->trySelect(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iget-object p2, p0, Lkotlinx/coroutines/sync/MutexImpl$SelectInstanceWithOwner;->this$0:Lkotlinx/coroutines/sync/MutexImpl;

    if-eqz p1, :cond_2

    .line 280
    invoke-static {}, Lkotlinx/coroutines/sync/MutexImpl;->access$getOwner$FU$p()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    iget-object p0, p0, Lkotlinx/coroutines/sync/MutexImpl$SelectInstanceWithOwner;->owner:Ljava/lang/Object;

    invoke-virtual {v0, p2, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return p1
.end method
