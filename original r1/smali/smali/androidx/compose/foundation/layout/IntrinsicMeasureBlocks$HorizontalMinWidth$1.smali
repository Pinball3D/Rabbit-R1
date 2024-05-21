.class final Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks$HorizontalMinWidth$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RowColumnImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Ljava/util/List<",
        "+",
        "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
        ">;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0010\u0000\u001a\u00020\u00012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0005\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u0001H\n\u00a2\u0006\u0004\u0008\u0007\u0010\u0008"
    }
    d2 = {
        "<anonymous>",
        "",
        "measurables",
        "",
        "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
        "availableHeight",
        "mainAxisSpacing",
        "invoke",
        "(Ljava/util/List;II)Ljava/lang/Integer;"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks$HorizontalMinWidth$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks$HorizontalMinWidth$1;

    invoke-direct {v0}, Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks$HorizontalMinWidth$1;-><init>()V

    sput-object v0, Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks$HorizontalMinWidth$1;->INSTANCE:Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks$HorizontalMinWidth$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/util/List;II)Ljava/lang/Integer;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;II)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    const-string p0, "measurables"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 438
    sget-object p0, Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks$HorizontalMinWidth$1$1;->INSTANCE:Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks$HorizontalMinWidth$1$1;

    move-object v1, p0

    check-cast v1, Lkotlin/jvm/functions/Function2;

    sget-object p0, Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks$HorizontalMinWidth$1$2;->INSTANCE:Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks$HorizontalMinWidth$1$2;

    move-object v2, p0

    check-cast v2, Lkotlin/jvm/functions/Function2;

    .line 444
    sget-object v5, Landroidx/compose/foundation/layout/LayoutOrientation;->Horizontal:Landroidx/compose/foundation/layout/LayoutOrientation;

    .line 445
    sget-object v6, Landroidx/compose/foundation/layout/LayoutOrientation;->Horizontal:Landroidx/compose/foundation/layout/LayoutOrientation;

    move-object v0, p1

    move v3, p2

    move v4, p3

    .line 438
    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/layout/RowColumnImplKt;->access$intrinsicSize(Ljava/util/List;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IILandroidx/compose/foundation/layout/LayoutOrientation;Landroidx/compose/foundation/layout/LayoutOrientation;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 437
    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks$HorizontalMinWidth$1;->invoke(Ljava/util/List;II)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
