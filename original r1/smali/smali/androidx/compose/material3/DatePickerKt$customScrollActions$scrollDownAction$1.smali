.class final Landroidx/compose/material3/DatePickerKt$customScrollActions$scrollDownAction$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DatePicker.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/DatePickerKt;->customScrollActions(Landroidx/compose/foundation/lazy/grid/LazyGridState;Lkotlinx/coroutines/CoroutineScope;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "()Ljava/lang/Boolean;"
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
.field final synthetic $coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic $state:Landroidx/compose/foundation/lazy/grid/LazyGridState;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/lazy/grid/LazyGridState;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/DatePickerKt$customScrollActions$scrollDownAction$1;->$state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    iput-object p2, p0, Landroidx/compose/material3/DatePickerKt$customScrollActions$scrollDownAction$1;->$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Boolean;
    .locals 6

    iget-object v0, p0, Landroidx/compose/material3/DatePickerKt$customScrollActions$scrollDownAction$1;->$state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    .line 1877
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridState;->getCanScrollForward()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/compose/material3/DatePickerKt$customScrollActions$scrollDownAction$1;->$coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1880
    new-instance v3, Landroidx/compose/material3/DatePickerKt$customScrollActions$scrollDownAction$1$1;

    iget-object p0, p0, Landroidx/compose/material3/DatePickerKt$customScrollActions$scrollDownAction$1;->$state:Landroidx/compose/foundation/lazy/grid/LazyGridState;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Landroidx/compose/material3/DatePickerKt$customScrollActions$scrollDownAction$1$1;-><init>(Landroidx/compose/foundation/lazy/grid/LazyGridState;Lkotlin/coroutines/Continuation;)V

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    const/4 p0, 0x1

    .line 1883
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1876
    invoke-virtual {p0}, Landroidx/compose/material3/DatePickerKt$customScrollActions$scrollDownAction$1;->invoke()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
