.class final Landroidx/compose/runtime/Latch$await$2$2;
.super Lkotlin/jvm/internal/Lambda;
.source "Latch.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/runtime/Latch;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    value = "SMAP\nLatch.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Latch.kt\nandroidx/compose/runtime/Latch$await$2$2\n+ 2 ActualJvm.jvm.kt\nandroidx/compose/runtime/ActualJvm_jvmKt\n*L\n1#1,90:1\n70#2:91\n*S KotlinDebug\n*F\n+ 1 Latch.kt\nandroidx/compose/runtime/Latch$await$2$2\n*L\n84#1:91\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
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
.field final synthetic $co:Lkotlinx/coroutines/CancellableContinuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/CancellableContinuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroidx/compose/runtime/Latch;


# direct methods
.method constructor <init>(Landroidx/compose/runtime/Latch;Lkotlinx/coroutines/CancellableContinuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/Latch;",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/runtime/Latch$await$2$2;->this$0:Landroidx/compose/runtime/Latch;

    iput-object p2, p0, Landroidx/compose/runtime/Latch$await$2$2;->$co:Lkotlinx/coroutines/CancellableContinuation;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 83
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/Latch$await$2$2;->invoke(Ljava/lang/Throwable;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 1

    iget-object p1, p0, Landroidx/compose/runtime/Latch$await$2$2;->this$0:Landroidx/compose/runtime/Latch;

    .line 84
    invoke-static {p1}, Landroidx/compose/runtime/Latch;->access$getLock$p(Landroidx/compose/runtime/Latch;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Landroidx/compose/runtime/Latch$await$2$2;->this$0:Landroidx/compose/runtime/Latch;

    iget-object p0, p0, Landroidx/compose/runtime/Latch$await$2$2;->$co:Lkotlinx/coroutines/CancellableContinuation;

    .line 91
    monitor-enter p1

    .line 85
    :try_start_0
    invoke-static {v0}, Landroidx/compose/runtime/Latch;->access$getAwaiters$p(Landroidx/compose/runtime/Latch;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 86
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0
.end method
