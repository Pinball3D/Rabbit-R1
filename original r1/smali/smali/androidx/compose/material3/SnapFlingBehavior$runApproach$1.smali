.class final Landroidx/compose/material3/SnapFlingBehavior$runApproach$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SnapFlingBehavior.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/SnapFlingBehavior;->runApproach(Landroidx/compose/foundation/gestures/ScrollScope;FFLkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "androidx.compose.material3.SnapFlingBehavior"
    f = "SnapFlingBehavior.kt"
    i = {
        0x0
    }
    l = {
        0x9a
    }
    m = "runApproach"
    n = {
        "this"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Landroidx/compose/material3/SnapFlingBehavior;


# direct methods
.method constructor <init>(Landroidx/compose/material3/SnapFlingBehavior;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/SnapFlingBehavior;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/material3/SnapFlingBehavior$runApproach$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/SnapFlingBehavior$runApproach$1;->this$0:Landroidx/compose/material3/SnapFlingBehavior;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Landroidx/compose/material3/SnapFlingBehavior$runApproach$1;->result:Ljava/lang/Object;

    iget p1, p0, Landroidx/compose/material3/SnapFlingBehavior$runApproach$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/compose/material3/SnapFlingBehavior$runApproach$1;->label:I

    iget-object p1, p0, Landroidx/compose/material3/SnapFlingBehavior$runApproach$1;->this$0:Landroidx/compose/material3/SnapFlingBehavior;

    const/4 v0, 0x0

    check-cast p0, Lkotlin/coroutines/Continuation;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v0, p0}, Landroidx/compose/material3/SnapFlingBehavior;->access$runApproach(Landroidx/compose/material3/SnapFlingBehavior;Landroidx/compose/foundation/gestures/ScrollScope;FFLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
