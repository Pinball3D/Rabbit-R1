.class public final Landroidx/compose/ui/layout/DefaultIntrinsicMeasurable;
.super Ljava/lang/Object;
.source "Layout.kt"

# interfaces
.implements Landroidx/compose/ui/layout/Measurable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0010H\u0016J\u0010\u0010\u0012\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0010H\u0016J\u001d\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0016\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0010\u0010\u001a\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0010H\u0016J\u0010\u0010\u001b\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0010H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000b\u001a\u0004\u0018\u00010\u000c8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006\u001c"
    }
    d2 = {
        "Landroidx/compose/ui/layout/DefaultIntrinsicMeasurable;",
        "Landroidx/compose/ui/layout/Measurable;",
        "measurable",
        "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
        "minMax",
        "Landroidx/compose/ui/layout/IntrinsicMinMax;",
        "widthHeight",
        "Landroidx/compose/ui/layout/IntrinsicWidthHeight;",
        "(Landroidx/compose/ui/layout/IntrinsicMeasurable;Landroidx/compose/ui/layout/IntrinsicMinMax;Landroidx/compose/ui/layout/IntrinsicWidthHeight;)V",
        "getMeasurable",
        "()Landroidx/compose/ui/layout/IntrinsicMeasurable;",
        "parentData",
        "",
        "getParentData",
        "()Ljava/lang/Object;",
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

.field private final minMax:Landroidx/compose/ui/layout/IntrinsicMinMax;

.field private final widthHeight:Landroidx/compose/ui/layout/IntrinsicWidthHeight;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/layout/IntrinsicMeasurable;Landroidx/compose/ui/layout/IntrinsicMinMax;Landroidx/compose/ui/layout/IntrinsicWidthHeight;)V
    .locals 1

    const-string v0, "measurable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "minMax"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "widthHeight"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/layout/DefaultIntrinsicMeasurable;->measurable:Landroidx/compose/ui/layout/IntrinsicMeasurable;

    iput-object p2, p0, Landroidx/compose/ui/layout/DefaultIntrinsicMeasurable;->minMax:Landroidx/compose/ui/layout/IntrinsicMinMax;

    iput-object p3, p0, Landroidx/compose/ui/layout/DefaultIntrinsicMeasurable;->widthHeight:Landroidx/compose/ui/layout/IntrinsicWidthHeight;

    return-void
.end method


# virtual methods
.method public final getMeasurable()Landroidx/compose/ui/layout/IntrinsicMeasurable;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/layout/DefaultIntrinsicMeasurable;->measurable:Landroidx/compose/ui/layout/IntrinsicMeasurable;

    return-object p0
.end method

.method public getParentData()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/layout/DefaultIntrinsicMeasurable;->measurable:Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 309
    invoke-interface {p0}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->getParentData()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public maxIntrinsicHeight(I)I
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/layout/DefaultIntrinsicMeasurable;->measurable:Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 341
    invoke-interface {p0, p1}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->maxIntrinsicHeight(I)I

    move-result p0

    return p0
.end method

.method public maxIntrinsicWidth(I)I
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/layout/DefaultIntrinsicMeasurable;->measurable:Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 333
    invoke-interface {p0, p1}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->maxIntrinsicWidth(I)I

    move-result p0

    return p0
.end method

.method public measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/layout/DefaultIntrinsicMeasurable;->widthHeight:Landroidx/compose/ui/layout/IntrinsicWidthHeight;

    .line 312
    sget-object v1, Landroidx/compose/ui/layout/IntrinsicWidthHeight;->Width:Landroidx/compose/ui/layout/IntrinsicWidthHeight;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroidx/compose/ui/layout/DefaultIntrinsicMeasurable;->minMax:Landroidx/compose/ui/layout/IntrinsicMinMax;

    .line 313
    sget-object v1, Landroidx/compose/ui/layout/IntrinsicMinMax;->Max:Landroidx/compose/ui/layout/IntrinsicMinMax;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Landroidx/compose/ui/layout/DefaultIntrinsicMeasurable;->measurable:Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 314
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v0

    invoke-interface {p0, v0}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->maxIntrinsicWidth(I)I

    move-result p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/compose/ui/layout/DefaultIntrinsicMeasurable;->measurable:Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 316
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v0

    invoke-interface {p0, v0}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->minIntrinsicWidth(I)I

    move-result p0

    .line 318
    :goto_0
    new-instance v0, Landroidx/compose/ui/layout/FixedSizeIntrinsicsPlaceable;

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result p1

    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/layout/FixedSizeIntrinsicsPlaceable;-><init>(II)V

    check-cast v0, Landroidx/compose/ui/layout/Placeable;

    return-object v0

    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/layout/DefaultIntrinsicMeasurable;->minMax:Landroidx/compose/ui/layout/IntrinsicMinMax;

    .line 320
    sget-object v1, Landroidx/compose/ui/layout/IntrinsicMinMax;->Max:Landroidx/compose/ui/layout/IntrinsicMinMax;

    if-ne v0, v1, :cond_2

    iget-object p0, p0, Landroidx/compose/ui/layout/DefaultIntrinsicMeasurable;->measurable:Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 321
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v0

    invoke-interface {p0, v0}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->maxIntrinsicHeight(I)I

    move-result p0

    goto :goto_1

    :cond_2
    iget-object p0, p0, Landroidx/compose/ui/layout/DefaultIntrinsicMeasurable;->measurable:Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 323
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v0

    invoke-interface {p0, v0}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->minIntrinsicHeight(I)I

    move-result p0

    .line 325
    :goto_1
    new-instance v0, Landroidx/compose/ui/layout/FixedSizeIntrinsicsPlaceable;

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result p1

    invoke-direct {v0, p1, p0}, Landroidx/compose/ui/layout/FixedSizeIntrinsicsPlaceable;-><init>(II)V

    check-cast v0, Landroidx/compose/ui/layout/Placeable;

    return-object v0
.end method

.method public minIntrinsicHeight(I)I
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/layout/DefaultIntrinsicMeasurable;->measurable:Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 337
    invoke-interface {p0, p1}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->minIntrinsicHeight(I)I

    move-result p0

    return p0
.end method

.method public minIntrinsicWidth(I)I
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/layout/DefaultIntrinsicMeasurable;->measurable:Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 329
    invoke-interface {p0, p1}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->minIntrinsicWidth(I)I

    move-result p0

    return p0
.end method
