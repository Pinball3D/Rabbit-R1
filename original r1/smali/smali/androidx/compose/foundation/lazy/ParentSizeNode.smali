.class final Landroidx/compose/foundation/lazy/ParentSizeNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "LazyItemScopeImpl.kt"

# interfaces
.implements Landroidx/compose/ui/node/LayoutModifierNode;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0002\u0018\u00002\u00020\u00012\u00020\u0002B1\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0010\u0008\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u0012\u0010\u0008\u0002\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\tJ)\u0010\u0014\u001a\u00020\u0015*\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0016\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u001b\u0010\u001cR\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\"\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\"\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u000f\"\u0004\u0008\u0013\u0010\u0011\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006\u001d"
    }
    d2 = {
        "Landroidx/compose/foundation/lazy/ParentSizeNode;",
        "Landroidx/compose/ui/node/LayoutModifierNode;",
        "Landroidx/compose/ui/Modifier$Node;",
        "fraction",
        "",
        "widthState",
        "Landroidx/compose/runtime/State;",
        "",
        "heightState",
        "(FLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V",
        "getFraction",
        "()F",
        "setFraction",
        "(F)V",
        "getHeightState",
        "()Landroidx/compose/runtime/State;",
        "setHeightState",
        "(Landroidx/compose/runtime/State;)V",
        "getWidthState",
        "setWidthState",
        "measure",
        "Landroidx/compose/ui/layout/MeasureResult;",
        "Landroidx/compose/ui/layout/MeasureScope;",
        "measurable",
        "Landroidx/compose/ui/layout/Measurable;",
        "constraints",
        "Landroidx/compose/ui/unit/Constraints;",
        "measure-3p2s80s",
        "(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;",
        "foundation_release"
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
.field private fraction:F

.field private heightState:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private widthState:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(FLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 123
    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    iput p1, p0, Landroidx/compose/foundation/lazy/ParentSizeNode;->fraction:F

    iput-object p2, p0, Landroidx/compose/foundation/lazy/ParentSizeNode;->widthState:Landroidx/compose/runtime/State;

    iput-object p3, p0, Landroidx/compose/foundation/lazy/ParentSizeNode;->heightState:Landroidx/compose/runtime/State;

    return-void
.end method

.method public synthetic constructor <init>(FLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v0

    .line 119
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/lazy/ParentSizeNode;-><init>(FLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V

    return-void
.end method


# virtual methods
.method public final getFraction()F
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/lazy/ParentSizeNode;->fraction:F

    return p0
.end method

.method public final getHeightState()Landroidx/compose/runtime/State;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/foundation/lazy/ParentSizeNode;->heightState:Landroidx/compose/runtime/State;

    return-object p0
.end method

.method public final getWidthState()Landroidx/compose/runtime/State;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/foundation/lazy/ParentSizeNode;->widthState:Landroidx/compose/runtime/State;

    return-object p0
.end method

.method public measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 7

    const-string v0, "$this$measure"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "measurable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/foundation/lazy/ParentSizeNode;->widthState:Landroidx/compose/runtime/State;

    const v1, 0x7fffffff

    if-eqz v0, :cond_0

    .line 130
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 131
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iget v2, p0, Landroidx/compose/foundation/lazy/ParentSizeNode;->fraction:F

    mul-float/2addr v0, v2

    invoke-static {v0}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Landroidx/compose/foundation/lazy/ParentSizeNode;->heightState:Landroidx/compose/runtime/State;

    if-eqz v2, :cond_1

    .line 138
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    if-eq v3, v1, :cond_1

    .line 139
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    iget p0, p0, Landroidx/compose/foundation/lazy/ParentSizeNode;->fraction:F

    mul-float/2addr v2, p0

    invoke-static {v2}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p0

    goto :goto_1

    :cond_1
    move p0, v1

    :goto_1
    if-eq v0, v1, :cond_2

    move v2, v0

    goto :goto_2

    .line 145
    :cond_2
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v2

    :goto_2
    if-eq p0, v1, :cond_3

    move v3, p0

    goto :goto_3

    .line 146
    :cond_3
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v3

    :goto_3
    if-eq v0, v1, :cond_4

    goto :goto_4

    .line 147
    :cond_4
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v0

    :goto_4
    if-eq p0, v1, :cond_5

    goto :goto_5

    .line 148
    :cond_5
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result p0

    .line 144
    :goto_5
    invoke-static {v2, v0, v3, p0}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints(IIII)J

    move-result-wide p3

    .line 150
    invoke-interface {p2, p3, p4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object p0

    .line 151
    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    new-instance p2, Landroidx/compose/foundation/lazy/ParentSizeNode$measure$1;

    invoke-direct {p2, p0}, Landroidx/compose/foundation/lazy/ParentSizeNode$measure$1;-><init>(Landroidx/compose/ui/layout/Placeable;)V

    move-object v4, p2

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0
.end method

.method public final setFraction(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/lazy/ParentSizeNode;->fraction:F

    return-void
.end method

.method public final setHeightState(Landroidx/compose/runtime/State;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/lazy/ParentSizeNode;->heightState:Landroidx/compose/runtime/State;

    return-void
.end method

.method public final setWidthState(Landroidx/compose/runtime/State;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/lazy/ParentSizeNode;->widthState:Landroidx/compose/runtime/State;

    return-void
.end method
