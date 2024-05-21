.class final Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner$tryResume$token$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Mutex.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner;->tryResume(Lkotlin/Unit;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Throwable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMutex.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Mutex.kt\nkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner$tryResume$token$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,300:1\n1#2:301\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lkotlinx/coroutines/sync/MutexImpl;

.field final synthetic this$1:Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/sync/MutexImpl;Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner$tryResume$token$1;->this$0:Lkotlinx/coroutines/sync/MutexImpl;

    iput-object p2, p0, Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner$tryResume$token$1;->this$1:Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 252
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner$tryResume$token$1;->invoke(Ljava/lang/Throwable;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 2

    iget-object p1, p0, Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner$tryResume$token$1;->this$0:Lkotlinx/coroutines/sync/MutexImpl;

    iget-object v0, p0, Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner$tryResume$token$1;->this$1:Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner;

    .line 253
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 301
    invoke-static {}, Lkotlinx/coroutines/sync/MutexImpl;->access$getOwner$FU$p()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    .line 253
    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlinx/coroutines/sync/MutexKt;->access$getNO_OWNER$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    if-eq p1, v1, :cond_1

    iget-object v0, v0, Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner;->owner:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    invoke-static {}, Lkotlinx/coroutines/sync/MutexImpl;->access$getOwner$FU$p()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object p1

    iget-object v0, p0, Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner$tryResume$token$1;->this$0:Lkotlinx/coroutines/sync/MutexImpl;

    iget-object v1, p0, Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner$tryResume$token$1;->this$1:Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner;

    .line 254
    iget-object v1, v1, Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner;->owner:Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner$tryResume$token$1;->this$0:Lkotlinx/coroutines/sync/MutexImpl;

    iget-object p0, p0, Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner$tryResume$token$1;->this$1:Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner;

    .line 255
    iget-object p0, p0, Lkotlinx/coroutines/sync/MutexImpl$CancellableContinuationWithOwner;->owner:Ljava/lang/Object;

    invoke-virtual {p1, p0}, Lkotlinx/coroutines/sync/MutexImpl;->unlock(Ljava/lang/Object;)V

    return-void
.end method
