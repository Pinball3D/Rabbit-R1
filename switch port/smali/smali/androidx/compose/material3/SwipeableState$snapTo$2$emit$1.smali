.class final Landroidx/compose/material3/SwipeableState$snapTo$2$emit$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "Swipeable.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/SwipeableState$snapTo$2;->emit(Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "androidx.compose.material3.SwipeableState$snapTo$2"
    f = "Swipeable.kt"
    i = {
        0x0
    }
    l = {
        0x13c
    }
    m = "emit"
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

.field final synthetic this$0:Landroidx/compose/material3/SwipeableState$snapTo$2;


# direct methods
.method constructor <init>(Landroidx/compose/material3/SwipeableState$snapTo$2;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/SwipeableState$snapTo$2;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/material3/SwipeableState$snapTo$2$emit$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/SwipeableState$snapTo$2$emit$1;->this$0:Landroidx/compose/material3/SwipeableState$snapTo$2;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Landroidx/compose/material3/SwipeableState$snapTo$2$emit$1;->result:Ljava/lang/Object;

    iget p1, p0, Landroidx/compose/material3/SwipeableState$snapTo$2$emit$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/compose/material3/SwipeableState$snapTo$2$emit$1;->label:I

    iget-object p1, p0, Landroidx/compose/material3/SwipeableState$snapTo$2$emit$1;->this$0:Landroidx/compose/material3/SwipeableState$snapTo$2;

    const/4 v0, 0x0

    check-cast p0, Lkotlin/coroutines/Continuation;

    invoke-virtual {p1, v0, p0}, Landroidx/compose/material3/SwipeableState$snapTo$2;->emit(Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
