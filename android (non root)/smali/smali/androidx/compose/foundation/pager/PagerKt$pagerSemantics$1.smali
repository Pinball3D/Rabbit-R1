.class final Landroidx/compose/foundation/pager/PagerKt$pagerSemantics$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Pager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/pager/PagerKt;->pagerSemantics(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;",
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
.field final synthetic $isVertical:Z

.field final synthetic $scope:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic $state:Landroidx/compose/foundation/pager/PagerState;


# direct methods
.method constructor <init>(ZLandroidx/compose/foundation/pager/PagerState;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/foundation/pager/PagerKt$pagerSemantics$1;->$isVertical:Z

    iput-object p2, p0, Landroidx/compose/foundation/pager/PagerKt$pagerSemantics$1;->$state:Landroidx/compose/foundation/pager/PagerState;

    iput-object p3, p0, Landroidx/compose/foundation/pager/PagerKt$pagerSemantics$1;->$scope:Lkotlinx/coroutines/CoroutineScope;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 867
    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/pager/PagerKt$pagerSemantics$1;->invoke(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V
    .locals 5

    const-string v0, "$this$semantics"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/compose/foundation/pager/PagerKt$pagerSemantics$1;->$isVertical:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 869
    new-instance v0, Landroidx/compose/foundation/pager/PagerKt$pagerSemantics$1$1;

    iget-object v3, p0, Landroidx/compose/foundation/pager/PagerKt$pagerSemantics$1;->$state:Landroidx/compose/foundation/pager/PagerState;

    iget-object v4, p0, Landroidx/compose/foundation/pager/PagerKt$pagerSemantics$1;->$scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-direct {v0, v3, v4}, Landroidx/compose/foundation/pager/PagerKt$pagerSemantics$1$1;-><init>(Landroidx/compose/foundation/pager/PagerState;Lkotlinx/coroutines/CoroutineScope;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v2, v0, v1, v2}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->pageUp$default(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 870
    new-instance v0, Landroidx/compose/foundation/pager/PagerKt$pagerSemantics$1$2;

    iget-object v3, p0, Landroidx/compose/foundation/pager/PagerKt$pagerSemantics$1;->$state:Landroidx/compose/foundation/pager/PagerState;

    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerKt$pagerSemantics$1;->$scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-direct {v0, v3, p0}, Landroidx/compose/foundation/pager/PagerKt$pagerSemantics$1$2;-><init>(Landroidx/compose/foundation/pager/PagerState;Lkotlinx/coroutines/CoroutineScope;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v2, v0, v1, v2}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->pageDown$default(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    goto :goto_0

    .line 872
    :cond_0
    new-instance v0, Landroidx/compose/foundation/pager/PagerKt$pagerSemantics$1$3;

    iget-object v3, p0, Landroidx/compose/foundation/pager/PagerKt$pagerSemantics$1;->$state:Landroidx/compose/foundation/pager/PagerState;

    iget-object v4, p0, Landroidx/compose/foundation/pager/PagerKt$pagerSemantics$1;->$scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-direct {v0, v3, v4}, Landroidx/compose/foundation/pager/PagerKt$pagerSemantics$1$3;-><init>(Landroidx/compose/foundation/pager/PagerState;Lkotlinx/coroutines/CoroutineScope;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v2, v0, v1, v2}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->pageLeft$default(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 873
    new-instance v0, Landroidx/compose/foundation/pager/PagerKt$pagerSemantics$1$4;

    iget-object v3, p0, Landroidx/compose/foundation/pager/PagerKt$pagerSemantics$1;->$state:Landroidx/compose/foundation/pager/PagerState;

    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerKt$pagerSemantics$1;->$scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-direct {v0, v3, p0}, Landroidx/compose/foundation/pager/PagerKt$pagerSemantics$1$4;-><init>(Landroidx/compose/foundation/pager/PagerState;Lkotlinx/coroutines/CoroutineScope;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, v2, v0, v1, v2}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->pageRight$default(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method
