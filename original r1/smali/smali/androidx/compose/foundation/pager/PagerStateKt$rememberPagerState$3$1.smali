.class final Landroidx/compose/foundation/pager/PagerStateKt$rememberPagerState$3$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PagerState.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/pager/PagerStateKt;->rememberPagerState(IFLandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/pager/PagerState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroidx/compose/foundation/pager/PagerStateImpl;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/compose/foundation/pager/PagerStateImpl;",
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
.field final synthetic $initialPage:I

.field final synthetic $initialPageOffsetFraction:F


# direct methods
.method constructor <init>(IF)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/pager/PagerStateKt$rememberPagerState$3$1;->$initialPage:I

    iput p2, p0, Landroidx/compose/foundation/pager/PagerStateKt$rememberPagerState$3$1;->$initialPageOffsetFraction:F

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/compose/foundation/pager/PagerStateImpl;
    .locals 3

    .line 119
    new-instance v0, Landroidx/compose/foundation/pager/PagerStateImpl;

    iget v1, p0, Landroidx/compose/foundation/pager/PagerStateKt$rememberPagerState$3$1;->$initialPage:I

    iget p0, p0, Landroidx/compose/foundation/pager/PagerStateKt$rememberPagerState$3$1;->$initialPageOffsetFraction:F

    .line 122
    sget-object v2, Landroidx/compose/foundation/pager/PagerStateKt$rememberPagerState$3$1$1;->INSTANCE:Landroidx/compose/foundation/pager/PagerStateKt$rememberPagerState$3$1$1;

    check-cast v2, Lkotlin/jvm/functions/Function0;

    .line 119
    invoke-direct {v0, v1, p0, v2}, Landroidx/compose/foundation/pager/PagerStateImpl;-><init>(IFLkotlin/jvm/functions/Function0;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 118
    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerStateKt$rememberPagerState$3$1;->invoke()Landroidx/compose/foundation/pager/PagerStateImpl;

    move-result-object p0

    return-object p0
.end method
