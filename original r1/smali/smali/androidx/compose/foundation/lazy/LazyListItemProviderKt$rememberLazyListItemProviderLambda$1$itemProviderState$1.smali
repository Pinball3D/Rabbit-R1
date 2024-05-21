.class final Landroidx/compose/foundation/lazy/LazyListItemProviderKt$rememberLazyListItemProviderLambda$1$itemProviderState$1;
.super Lkotlin/jvm/internal/Lambda;
.source "LazyListItemProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/lazy/LazyListItemProviderKt;->rememberLazyListItemProviderLambda(Landroidx/compose/foundation/lazy/LazyListState;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)Lkotlin/jvm/functions/Function0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;",
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
.field final synthetic $intervalContentState:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/foundation/lazy/LazyListIntervalContent;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $scope:Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

.field final synthetic $state:Landroidx/compose/foundation/lazy/LazyListState;


# direct methods
.method constructor <init>(Landroidx/compose/runtime/State;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/lazy/LazyItemScopeImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/foundation/lazy/LazyListIntervalContent;",
            ">;",
            "Landroidx/compose/foundation/lazy/LazyListState;",
            "Landroidx/compose/foundation/lazy/LazyItemScopeImpl;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderKt$rememberLazyListItemProviderLambda$1$itemProviderState$1;->$intervalContentState:Landroidx/compose/runtime/State;

    iput-object p2, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderKt$rememberLazyListItemProviderLambda$1$itemProviderState$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    iput-object p3, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderKt$rememberLazyListItemProviderLambda$1$itemProviderState$1;->$scope:Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;
    .locals 4

    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderKt$rememberLazyListItemProviderLambda$1$itemProviderState$1;->$intervalContentState:Landroidx/compose/runtime/State;

    .line 52
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    .line 53
    new-instance v1, Landroidx/compose/foundation/lazy/layout/NearestRangeKeyIndexMap;

    iget-object v2, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderKt$rememberLazyListItemProviderLambda$1$itemProviderState$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/LazyListState;->getNearestRange$foundation_release()Lkotlin/ranges/IntRange;

    move-result-object v2

    move-object v3, v0

    check-cast v3, Landroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent;

    invoke-direct {v1, v2, v3}, Landroidx/compose/foundation/lazy/layout/NearestRangeKeyIndexMap;-><init>(Lkotlin/ranges/IntRange;Landroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent;)V

    .line 54
    new-instance v2, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;

    iget-object v3, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderKt$rememberLazyListItemProviderLambda$1$itemProviderState$1;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderKt$rememberLazyListItemProviderLambda$1$itemProviderState$1;->$scope:Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    .line 58
    check-cast v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    .line 54
    invoke-direct {v2, v3, v0, p0, v1}, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;-><init>(Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/lazy/LazyListIntervalContent;Landroidx/compose/foundation/lazy/LazyItemScopeImpl;Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;)V

    return-object v2
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 51
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListItemProviderKt$rememberLazyListItemProviderLambda$1$itemProviderState$1;->invoke()Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;

    move-result-object p0

    return-object p0
.end method
