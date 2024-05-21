.class final Landroidx/compose/foundation/pager/PagerState$currentPageOffsetFraction$2;
.super Lkotlin/jvm/internal/Lambda;
.source "PagerState.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/pager/PagerState;-><init>(IF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPagerState.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PagerState.kt\nandroidx/compose/foundation/pager/PagerState$currentPageOffsetFraction$2\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,684:1\n116#2,2:685\n33#2,6:687\n118#2:693\n*S KotlinDebug\n*F\n+ 1 PagerState.kt\nandroidx/compose/foundation/pager/PagerState$currentPageOffsetFraction$2\n*L\n359#1:685,2\n359#1:687,6\n359#1:693\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "()Ljava/lang/Float;"
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
.field final synthetic this$0:Landroidx/compose/foundation/pager/PagerState;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/pager/PagerState;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/pager/PagerState$currentPageOffsetFraction$2;->this$0:Landroidx/compose/foundation/pager/PagerState;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Float;
    .locals 8

    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerState$currentPageOffsetFraction$2;->this$0:Landroidx/compose/foundation/pager/PagerState;

    .line 359
    invoke-virtual {v0}, Landroidx/compose/foundation/pager/PagerState;->getLayoutInfo$foundation_release()Landroidx/compose/foundation/pager/PagerLayoutInfo;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/foundation/pager/PagerLayoutInfo;->getVisiblePagesInfo()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/foundation/pager/PagerState$currentPageOffsetFraction$2;->this$0:Landroidx/compose/foundation/pager/PagerState;

    .line 688
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    .line 689
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 686
    move-object v6, v5

    check-cast v6, Landroidx/compose/foundation/pager/PageInfo;

    .line 359
    invoke-interface {v6}, Landroidx/compose/foundation/pager/PageInfo;->getIndex()I

    move-result v6

    invoke-virtual {v1}, Landroidx/compose/foundation/pager/PagerState;->getCurrentPage()I

    move-result v7

    if-ne v6, v7, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_1
    check-cast v5, Landroidx/compose/foundation/pager/PageInfo;

    if-eqz v5, :cond_2

    invoke-interface {v5}, Landroidx/compose/foundation/pager/PageInfo;->getOffset()I

    move-result v3

    :cond_2
    iget-object v0, p0, Landroidx/compose/foundation/pager/PagerState$currentPageOffsetFraction$2;->this$0:Landroidx/compose/foundation/pager/PagerState;

    .line 360
    invoke-static {v0}, Landroidx/compose/foundation/pager/PagerState;->access$getPageAvailableSpace(Landroidx/compose/foundation/pager/PagerState;)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-nez v1, :cond_3

    iget-object p0, p0, Landroidx/compose/foundation/pager/PagerState$currentPageOffsetFraction$2;->this$0:Landroidx/compose/foundation/pager/PagerState;

    .line 363
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getInitialPageOffsetFraction()F

    move-result p0

    goto :goto_2

    :cond_3
    neg-int p0, v3

    int-to-float p0, p0

    div-float/2addr p0, v0

    const/high16 v0, -0x41000000    # -0.5f

    const/high16 v1, 0x3f000000    # 0.5f

    .line 365
    invoke-static {p0, v0, v1}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p0

    :goto_2
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 357
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState$currentPageOffsetFraction$2;->invoke()Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
