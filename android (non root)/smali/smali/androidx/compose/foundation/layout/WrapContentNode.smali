.class final Landroidx/compose/foundation/layout/WrapContentNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "Size.kt"

# interfaces
.implements Landroidx/compose/ui/node/LayoutModifierNode;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0002\u0018\u00002\u00020\u00012\u00020\u0002B2\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0018\u0010\u0007\u001a\u0014\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000cJ)\u0010\u0019\u001a\u00020\u001a*\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001fH\u0016\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008 \u0010!R/\u0010\u0007\u001a\u0014\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\u0008X\u0086\u000e\u00f8\u0001\u0000\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018\u0082\u0002\u000b\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006\""
    }
    d2 = {
        "Landroidx/compose/foundation/layout/WrapContentNode;",
        "Landroidx/compose/ui/node/LayoutModifierNode;",
        "Landroidx/compose/ui/Modifier$Node;",
        "direction",
        "Landroidx/compose/foundation/layout/Direction;",
        "unbounded",
        "",
        "alignmentCallback",
        "Lkotlin/Function2;",
        "Landroidx/compose/ui/unit/IntSize;",
        "Landroidx/compose/ui/unit/LayoutDirection;",
        "Landroidx/compose/ui/unit/IntOffset;",
        "(Landroidx/compose/foundation/layout/Direction;ZLkotlin/jvm/functions/Function2;)V",
        "getAlignmentCallback",
        "()Lkotlin/jvm/functions/Function2;",
        "setAlignmentCallback",
        "(Lkotlin/jvm/functions/Function2;)V",
        "getDirection",
        "()Landroidx/compose/foundation/layout/Direction;",
        "setDirection",
        "(Landroidx/compose/foundation/layout/Direction;)V",
        "getUnbounded",
        "()Z",
        "setUnbounded",
        "(Z)V",
        "measure",
        "Landroidx/compose/ui/layout/MeasureResult;",
        "Landroidx/compose/ui/layout/MeasureScope;",
        "measurable",
        "Landroidx/compose/ui/layout/Measurable;",
        "constraints",
        "Landroidx/compose/ui/unit/Constraints;",
        "measure-3p2s80s",
        "(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;",
        "foundation-layout_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private alignmentCallback:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/ui/unit/IntSize;",
            "-",
            "Landroidx/compose/ui/unit/LayoutDirection;",
            "Landroidx/compose/ui/unit/IntOffset;",
            ">;"
        }
    .end annotation
.end field

.field private direction:Landroidx/compose/foundation/layout/Direction;

.field private unbounded:Z


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/layout/Direction;ZLkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/layout/Direction;",
            "Z",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/ui/unit/IntSize;",
            "-",
            "Landroidx/compose/ui/unit/LayoutDirection;",
            "Landroidx/compose/ui/unit/IntOffset;",
            ">;)V"
        }
    .end annotation

    const-string v0, "direction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "alignmentCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 987
    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/layout/WrapContentNode;->direction:Landroidx/compose/foundation/layout/Direction;

    iput-boolean p2, p0, Landroidx/compose/foundation/layout/WrapContentNode;->unbounded:Z

    iput-object p3, p0, Landroidx/compose/foundation/layout/WrapContentNode;->alignmentCallback:Lkotlin/jvm/functions/Function2;

    return-void
.end method


# virtual methods
.method public final getAlignmentCallback()Lkotlin/jvm/functions/Function2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/ui/unit/IntSize;",
            "Landroidx/compose/ui/unit/LayoutDirection;",
            "Landroidx/compose/ui/unit/IntOffset;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/foundation/layout/WrapContentNode;->alignmentCallback:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method

.method public final getDirection()Landroidx/compose/foundation/layout/Direction;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/layout/WrapContentNode;->direction:Landroidx/compose/foundation/layout/Direction;

    return-object p0
.end method

.method public final getUnbounded()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/foundation/layout/WrapContentNode;->unbounded:Z

    return p0
.end method

.method public measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 11

    const-string v2, "$this$measure"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "measurable"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/compose/foundation/layout/WrapContentNode;->direction:Landroidx/compose/foundation/layout/Direction;

    .line 993
    sget-object v3, Landroidx/compose/foundation/layout/Direction;->Vertical:Landroidx/compose/foundation/layout/Direction;

    const/4 v4, 0x0

    if-eq v2, v3, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v2

    :goto_0
    iget-object v3, p0, Landroidx/compose/foundation/layout/WrapContentNode;->direction:Landroidx/compose/foundation/layout/Direction;

    .line 994
    sget-object v5, Landroidx/compose/foundation/layout/Direction;->Horizontal:Landroidx/compose/foundation/layout/Direction;

    if-eq v3, v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v4

    :goto_1
    iget-object v3, p0, Landroidx/compose/foundation/layout/WrapContentNode;->direction:Landroidx/compose/foundation/layout/Direction;

    .line 995
    sget-object v5, Landroidx/compose/foundation/layout/Direction;->Vertical:Landroidx/compose/foundation/layout/Direction;

    const v7, 0x7fffffff

    if-eq v3, v5, :cond_2

    iget-boolean v3, p0, Landroidx/compose/foundation/layout/WrapContentNode;->unbounded:Z

    if-eqz v3, :cond_2

    move v3, v7

    goto :goto_2

    .line 998
    :cond_2
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v3

    :goto_2
    iget-object v5, p0, Landroidx/compose/foundation/layout/WrapContentNode;->direction:Landroidx/compose/foundation/layout/Direction;

    .line 1000
    sget-object v8, Landroidx/compose/foundation/layout/Direction;->Horizontal:Landroidx/compose/foundation/layout/Direction;

    if-eq v5, v8, :cond_3

    iget-boolean v5, p0, Landroidx/compose/foundation/layout/WrapContentNode;->unbounded:Z

    if-eqz v5, :cond_3

    goto :goto_3

    .line 1003
    :cond_3
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v7

    .line 992
    :goto_3
    invoke-static {v2, v3, v4, v7}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints(IIII)J

    move-result-wide v2

    .line 1006
    invoke-interface {p2, v2, v3}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v3

    .line 1007
    invoke-virtual {v3}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v0

    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v2

    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v4

    invoke-static {v0, v2, v4}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v7

    .line 1008
    invoke-virtual {v3}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v0

    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v2

    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v4

    invoke-static {v0, v2, v4}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v8

    const/4 v9, 0x0

    .line 1009
    new-instance v10, Landroidx/compose/foundation/layout/WrapContentNode$measure$1;

    move-object v0, v10

    move-object v1, p0

    move v2, v7

    move v4, v8

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/layout/WrapContentNode$measure$1;-><init>(Landroidx/compose/foundation/layout/WrapContentNode;ILandroidx/compose/ui/layout/Placeable;ILandroidx/compose/ui/layout/MeasureScope;)V

    move-object v0, v10

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x4

    const/4 v2, 0x0

    move-object v3, p1

    move v4, v7

    move v5, v8

    move-object v6, v9

    move-object v7, v0

    move v8, v1

    move-object v9, v2

    invoke-static/range {v3 .. v9}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0
.end method

.method public final setAlignmentCallback(Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/ui/unit/IntSize;",
            "-",
            "Landroidx/compose/ui/unit/LayoutDirection;",
            "Landroidx/compose/ui/unit/IntOffset;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/compose/foundation/layout/WrapContentNode;->alignmentCallback:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public final setDirection(Landroidx/compose/foundation/layout/Direction;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/compose/foundation/layout/WrapContentNode;->direction:Landroidx/compose/foundation/layout/Direction;

    return-void
.end method

.method public final setUnbounded(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/foundation/layout/WrapContentNode;->unbounded:Z

    return-void
.end method
