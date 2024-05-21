.class final Landroidx/compose/ui/layout/MeasuringIntrinsics$DefaultIntrinsicMeasurable;
.super Ljava/lang/Object;
.source "LayoutModifier.kt"

# interfaces
.implements Landroidx/compose/ui/layout/Measurable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/layout/MeasuringIntrinsics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultIntrinsicMeasurable"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0000\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0002\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0014H\u0016J\u0010\u0010\u0016\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u0014H\u0016J\u001d\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0016\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0010\u0010\u001e\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0014H\u0016J\u0010\u0010\u001f\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u0014H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0016\u0010\r\u001a\u0004\u0018\u00010\u000e8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006 "
    }
    d2 = {
        "Landroidx/compose/ui/layout/MeasuringIntrinsics$DefaultIntrinsicMeasurable;",
        "Landroidx/compose/ui/layout/Measurable;",
        "measurable",
        "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
        "minMax",
        "Landroidx/compose/ui/layout/MeasuringIntrinsics$IntrinsicMinMax;",
        "widthHeight",
        "Landroidx/compose/ui/layout/MeasuringIntrinsics$IntrinsicWidthHeight;",
        "(Landroidx/compose/ui/layout/IntrinsicMeasurable;Landroidx/compose/ui/layout/MeasuringIntrinsics$IntrinsicMinMax;Landroidx/compose/ui/layout/MeasuringIntrinsics$IntrinsicWidthHeight;)V",
        "getMeasurable",
        "()Landroidx/compose/ui/layout/IntrinsicMeasurable;",
        "getMinMax",
        "()Landroidx/compose/ui/layout/MeasuringIntrinsics$IntrinsicMinMax;",
        "parentData",
        "",
        "getParentData",
        "()Ljava/lang/Object;",
        "getWidthHeight",
        "()Landroidx/compose/ui/layout/MeasuringIntrinsics$IntrinsicWidthHeight;",
        "maxIntrinsicHeight",
        "",
        "width",
        "maxIntrinsicWidth",
        "height",
        "measure",
        "Landroidx/compose/ui/layout/Placeable;",
        "constraints",
        "Landroidx/compose/ui/unit/Constraints;",
        "measure-BRTryo0",
        "(J)Landroidx/compose/ui/layout/Placeable;",
        "minIntrinsicHeight",
        "minIntrinsicWidth",
        "ui_release"
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
.field private final measurable:Landroidx/compose/ui/layout/IntrinsicMeasurable;

.field private final minMax:Landroidx/compose/ui/layout/MeasuringIntrinsics$IntrinsicMinMax;

.field private final widthHeight:Landroidx/compose/ui/layout/MeasuringIntrinsics$IntrinsicWidthHeight;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/layout/IntrinsicMeasurable;Landroidx/compose/ui/layout/MeasuringIntrinsics$IntrinsicMinMax;Landroidx/compose/ui/layout/MeasuringIntrinsics$IntrinsicWidthHeight;)V
    .locals 1

    const-string v0, "measurable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "minMax"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "widthHeight"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/layout/MeasuringIntrinsics$DefaultIntrinsicMeasurable;->measurable:Landroidx/compose/ui/layout/IntrinsicMeasurable;

    iput-object p2, p0, Landroidx/compose/ui/layout/MeasuringIntrinsics$DefaultIntrinsicMeasurable;->minMax:Landroidx/compose/ui/layout/MeasuringIntrinsics$IntrinsicMinMax;

    iput-object p3, p0, Landroidx/compose/ui/layout/MeasuringIntrinsics$DefaultIntrinsicMeasurable;->widthHeight:Landroidx/compose/ui/layout/MeasuringIntrinsics$IntrinsicWidthHeight;

    return-void
.end method


# virtual methods
.method public final getMeasurable()Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/layout/MeasuringIntrinsics$DefaultIntrinsicMeasurable;->measurable:Landroidx/compose/ui/layout/IntrinsicMeasurable;

    return-object p0
.end method

.method public final getMinMax()Landroidx/compose/ui/layout/MeasuringIntrinsics$IntrinsicMinMax;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/layout/MeasuringIntrinsics$DefaultIntrinsicMeasurable;->minMax:Landroidx/compose/ui/layout/MeasuringIntrinsics$IntrinsicMinMax;

    return-object p0
.end method

.method public getParentData()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/layout/MeasuringIntrinsics$DefaultIntrinsicMeasurable;->measurable:Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 199
    invoke-interface {p0}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->getParentData()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getWidthHeight()Landroidx/compose/ui/layout/MeasuringIntrinsics$IntrinsicWidthHeight;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/layout/MeasuringIntrinsics$DefaultIntrinsicMeasurable;->widthHeight:Landroidx/compose/ui/layout/MeasuringIntrinsics$IntrinsicWidthHeight;

    return-object p0
.end method

.method public maxIntrinsicHeight(I)I
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/layout/MeasuringIntrinsics$DefaultIntrinsicMeasurable;->measurable:Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 231
    invoke-interface {p0, p1}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->maxIntrinsicHeight(I)I

    move-result p0

    return p0
.end method

.method public maxIntrinsicWidth(I)I
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/layout/MeasuringIntrinsics$DefaultIntrinsicMeasurable;->measurable:Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 223
    invoke-interface {p0, p1}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->maxIntrinsicWidth(I)I

    move-result p0

    return p0
.end method

.method public measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/layout/MeasuringIntrinsics$DefaultIntrinsicMeasurable;->widthHeight:Landroidx/compose/ui/layout/MeasuringIntrinsics$IntrinsicWidthHeight;

    .line 202
    sget-object v1, Landroidx/compose/ui/layout/MeasuringIntrinsics$IntrinsicWidthHeight;->Width:Landroidx/compose/ui/layout/MeasuringIntrinsics$IntrinsicWidthHeight;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroidx/compose/ui/layout/MeasuringIntrinsics$DefaultIntrinsicMeasurable;->minMax:Landroidx/compose/ui/layout/MeasuringIntrinsics$IntrinsicMinMax;

    .line 203
    sget-object v1, Landroidx/compose/ui/layout/MeasuringIntrinsics$IntrinsicMinMax;->Max:Landroidx/compose/ui/layout/MeasuringIntrinsics$IntrinsicMinMax;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Landroidx/compose/ui/layout/MeasuringIntrinsics$DefaultIntrinsicMeasurable;->measurable:Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 204
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v0

    invoke-interface {p0, v0}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->maxIntrinsicWidth(I)I

    move-result p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/compose/ui/layout/MeasuringIntrinsics$DefaultIntrinsicMeasurable;->measurable:Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 206
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v0

    invoke-interface {p0, v0}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->minIntrinsicWidth(I)I

    move-result p0

    .line 208
    :goto_0
    new-instance v0, Landroidx/compose/ui/layout/MeasuringIntrinsics$EmptyPlaceable;

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result p1

    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/layout/MeasuringIntrinsics$EmptyPlaceable;-><init>(II)V

    check-cast v0, Landroidx/compose/ui/layout/Placeable;

    return-object v0

    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/layout/MeasuringIntrinsics$DefaultIntrinsicMeasurable;->minMax:Landroidx/compose/ui/layout/MeasuringIntrinsics$IntrinsicMinMax;

    .line 210
    sget-object v1, Landroidx/compose/ui/layout/MeasuringIntrinsics$IntrinsicMinMax;->Max:Landroidx/compose/ui/layout/MeasuringIntrinsics$IntrinsicMinMax;

    if-ne v0, v1, :cond_2

    iget-object p0, p0, Landroidx/compose/ui/layout/MeasuringIntrinsics$DefaultIntrinsicMeasurable;->measurable:Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 211
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v0

    invoke-interface {p0, v0}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->maxIntrinsicHeight(I)I

    move-result p0

    goto :goto_1

    :cond_2
    iget-object p0, p0, Landroidx/compose/ui/layout/MeasuringIntrinsics$DefaultIntrinsicMeasurable;->measurable:Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 213
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v0

    invoke-interface {p0, v0}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->minIntrinsicHeight(I)I

    move-result p0

    .line 215
    :goto_1
    new-instance v0, Landroidx/compose/ui/layout/MeasuringIntrinsics$EmptyPlaceable;

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result p1

    invoke-direct {v0, p1, p0}, Landroidx/compose/ui/layout/MeasuringIntrinsics$EmptyPlaceable;-><init>(II)V

    check-cast v0, Landroidx/compose/ui/layout/Placeable;

    return-object v0
.end method

.method public minIntrinsicHeight(I)I
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/layout/MeasuringIntrinsics$DefaultIntrinsicMeasurable;->measurable:Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 227
    invoke-interface {p0, p1}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->minIntrinsicHeight(I)I

    move-result p0

    return p0
.end method

.method public minIntrinsicWidth(I)I
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/layout/MeasuringIntrinsics$DefaultIntrinsicMeasurable;->measurable:Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 219
    invoke-interface {p0, p1}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->minIntrinsicWidth(I)I

    move-result p0

    return p0
.end method
