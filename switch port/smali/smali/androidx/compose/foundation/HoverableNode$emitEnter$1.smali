.class final Landroidx/compose/foundation/HoverableNode$emitEnter$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "Hoverable.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/HoverableNode;->emitEnter(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.compose.foundation.HoverableNode"
    f = "Hoverable.kt"
    i = {
        0x0,
        0x0
    }
    l = {
        0x6c
    }
    m = "emitEnter"
    n = {
        "this",
        "interaction"
    }
    s = {
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Landroidx/compose/foundation/HoverableNode;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/HoverableNode;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/HoverableNode;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/foundation/HoverableNode$emitEnter$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/HoverableNode$emitEnter$1;->this$0:Landroidx/compose/foundation/HoverableNode;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Landroidx/compose/foundation/HoverableNode$emitEnter$1;->result:Ljava/lang/Object;

    iget p1, p0, Landroidx/compose/foundation/HoverableNode$emitEnter$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/compose/foundation/HoverableNode$emitEnter$1;->label:I

    iget-object p1, p0, Landroidx/compose/foundation/HoverableNode$emitEnter$1;->this$0:Landroidx/compose/foundation/HoverableNode;

    check-cast p0, Lkotlin/coroutines/Continuation;

    invoke-virtual {p1, p0}, Landroidx/compose/foundation/HoverableNode;->emitEnter(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
