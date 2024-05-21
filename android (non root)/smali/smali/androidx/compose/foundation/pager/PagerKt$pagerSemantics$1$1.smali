.class final Landroidx/compose/foundation/pager/PagerKt$pagerSemantics$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Pager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/pager/PagerKt$pagerSemantics$1;->invoke(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V
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
.field final synthetic $scope:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic $state:Landroidx/compose/foundation/pager/PagerState;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/pager/PagerState;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerKt$pagerSemantics$1$1;->$state:Landroidx/compose/foundation/pager/PagerState;

    iput-object p2, p0, Landroidx/compose/foundation/pager/PagerKt$pagerSemantics$1$1;->$scope:Lkotlinx/coroutines/CoroutineScope;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerKt$pagerSemantics$1$1;->$state:Landroidx/compose/foundation/pager/PagerState;

    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerKt$pagerSemantics$1$1;->$scope:Lkotlinx/coroutines/CoroutineScope;

    .line 869
    invoke-static {v0, p0}, Landroidx/compose/foundation/pager/PagerKt;->access$pagerSemantics$performBackwardPaging(Landroidx/compose/foundation/pager/PagerState;Lkotlinx/coroutines/CoroutineScope;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 869
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerKt$pagerSemantics$1$1;->invoke()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
