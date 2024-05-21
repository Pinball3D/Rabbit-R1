.class final Landroidx/compose/foundation/pager/PagerKt$HorizontalPager$3;
.super Lkotlin/jvm/internal/Lambda;
.source "Pager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/pager/PagerKt;->HorizontalPager-AlbwjTQ(ILandroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/pager/PageSize;IFLandroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;ZZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
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


# instance fields
.field final synthetic $$changed:I

.field final synthetic $$changed1:I

.field final synthetic $$default:I

.field final synthetic $beyondBoundsPageCount:I

.field final synthetic $contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

.field final synthetic $flingBehavior:Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;

.field final synthetic $key:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $pageContent:Lkotlin/jvm/functions/Function4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function4<",
            "Landroidx/compose/foundation/pager/PagerScope;",
            "Ljava/lang/Integer;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $pageCount:I

.field final synthetic $pageNestedScrollConnection:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

.field final synthetic $pageSize:Landroidx/compose/foundation/pager/PageSize;

.field final synthetic $pageSpacing:F

.field final synthetic $reverseLayout:Z

.field final synthetic $state:Landroidx/compose/foundation/pager/PagerState;

.field final synthetic $userScrollEnabled:Z

.field final synthetic $verticalAlignment:Landroidx/compose/ui/Alignment$Vertical;


# direct methods
.method constructor <init>(ILandroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/pager/PageSize;IFLandroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;ZZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Lkotlin/jvm/functions/Function4;III)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/foundation/pager/PagerState;",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "Landroidx/compose/foundation/pager/PageSize;",
            "IF",
            "Landroidx/compose/ui/Alignment$Vertical;",
            "Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;",
            "ZZ",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Landroidx/compose/foundation/pager/PagerScope;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;III)V"
        }
    .end annotation

    move-object v0, p0

    move v1, p1

    iput v1, v0, Landroidx/compose/foundation/pager/PagerKt$HorizontalPager$3;->$pageCount:I

    move-object v1, p2

    iput-object v1, v0, Landroidx/compose/foundation/pager/PagerKt$HorizontalPager$3;->$modifier:Landroidx/compose/ui/Modifier;

    move-object v1, p3

    iput-object v1, v0, Landroidx/compose/foundation/pager/PagerKt$HorizontalPager$3;->$state:Landroidx/compose/foundation/pager/PagerState;

    move-object v1, p4

    iput-object v1, v0, Landroidx/compose/foundation/pager/PagerKt$HorizontalPager$3;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    move-object v1, p5

    iput-object v1, v0, Landroidx/compose/foundation/pager/PagerKt$HorizontalPager$3;->$pageSize:Landroidx/compose/foundation/pager/PageSize;

    move v1, p6

    iput v1, v0, Landroidx/compose/foundation/pager/PagerKt$HorizontalPager$3;->$beyondBoundsPageCount:I

    move v1, p7

    iput v1, v0, Landroidx/compose/foundation/pager/PagerKt$HorizontalPager$3;->$pageSpacing:F

    move-object v1, p8

    iput-object v1, v0, Landroidx/compose/foundation/pager/PagerKt$HorizontalPager$3;->$verticalAlignment:Landroidx/compose/ui/Alignment$Vertical;

    move-object v1, p9

    iput-object v1, v0, Landroidx/compose/foundation/pager/PagerKt$HorizontalPager$3;->$flingBehavior:Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;

    move v1, p10

    iput-boolean v1, v0, Landroidx/compose/foundation/pager/PagerKt$HorizontalPager$3;->$userScrollEnabled:Z

    move v1, p11

    iput-boolean v1, v0, Landroidx/compose/foundation/pager/PagerKt$HorizontalPager$3;->$reverseLayout:Z

    move-object v1, p12

    iput-object v1, v0, Landroidx/compose/foundation/pager/PagerKt$HorizontalPager$3;->$key:Lkotlin/jvm/functions/Function1;

    move-object v1, p13

    iput-object v1, v0, Landroidx/compose/foundation/pager/PagerKt$HorizontalPager$3;->$pageNestedScrollConnection:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    move-object/from16 v1, p14

    iput-object v1, v0, Landroidx/compose/foundation/pager/PagerKt$HorizontalPager$3;->$pageContent:Lkotlin/jvm/functions/Function4;

    move/from16 v1, p15

    iput v1, v0, Landroidx/compose/foundation/pager/PagerKt$HorizontalPager$3;->$$changed:I

    move/from16 v1, p16

    iput v1, v0, Landroidx/compose/foundation/pager/PagerKt$HorizontalPager$3;->$$changed1:I

    move/from16 v1, p17

    iput v1, v0, Landroidx/compose/foundation/pager/PagerKt$HorizontalPager$3;->$$default:I

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/pager/PagerKt$HorizontalPager$3;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    iget v1, v0, Landroidx/compose/foundation/pager/PagerKt$HorizontalPager$3;->$pageCount:I

    iget-object v2, v0, Landroidx/compose/foundation/pager/PagerKt$HorizontalPager$3;->$modifier:Landroidx/compose/ui/Modifier;

    iget-object v3, v0, Landroidx/compose/foundation/pager/PagerKt$HorizontalPager$3;->$state:Landroidx/compose/foundation/pager/PagerState;

    iget-object v4, v0, Landroidx/compose/foundation/pager/PagerKt$HorizontalPager$3;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    iget-object v5, v0, Landroidx/compose/foundation/pager/PagerKt$HorizontalPager$3;->$pageSize:Landroidx/compose/foundation/pager/PageSize;

    iget v6, v0, Landroidx/compose/foundation/pager/PagerKt$HorizontalPager$3;->$beyondBoundsPageCount:I

    iget v7, v0, Landroidx/compose/foundation/pager/PagerKt$HorizontalPager$3;->$pageSpacing:F

    iget-object v8, v0, Landroidx/compose/foundation/pager/PagerKt$HorizontalPager$3;->$verticalAlignment:Landroidx/compose/ui/Alignment$Vertical;

    iget-object v9, v0, Landroidx/compose/foundation/pager/PagerKt$HorizontalPager$3;->$flingBehavior:Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;

    iget-boolean v10, v0, Landroidx/compose/foundation/pager/PagerKt$HorizontalPager$3;->$userScrollEnabled:Z

    iget-boolean v11, v0, Landroidx/compose/foundation/pager/PagerKt$HorizontalPager$3;->$reverseLayout:Z

    iget-object v12, v0, Landroidx/compose/foundation/pager/PagerKt$HorizontalPager$3;->$key:Lkotlin/jvm/functions/Function1;

    iget-object v13, v0, Landroidx/compose/foundation/pager/PagerKt$HorizontalPager$3;->$pageNestedScrollConnection:Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;

    iget-object v14, v0, Landroidx/compose/foundation/pager/PagerKt$HorizontalPager$3;->$pageContent:Lkotlin/jvm/functions/Function4;

    move/from16 p1, v1

    iget v1, v0, Landroidx/compose/foundation/pager/PagerKt$HorizontalPager$3;->$$changed:I

    or-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v16

    iget v1, v0, Landroidx/compose/foundation/pager/PagerKt$HorizontalPager$3;->$$changed1:I

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v17

    iget v0, v0, Landroidx/compose/foundation/pager/PagerKt$HorizontalPager$3;->$$default:I

    move/from16 v18, v0

    move/from16 v1, p1

    invoke-static/range {v1 .. v18}, Landroidx/compose/foundation/pager/PagerKt;->HorizontalPager-AlbwjTQ(ILandroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/pager/PageSize;IFLandroidx/compose/ui/Alignment$Vertical;Landroidx/compose/foundation/gestures/snapping/SnapFlingBehavior;ZZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Lkotlin/jvm/functions/Function4;Landroidx/compose/runtime/Composer;III)V

    return-void
.end method
