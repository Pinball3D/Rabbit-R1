.class public final Landroidx/compose/foundation/layout/LayoutWeightNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "RowColumnImpl.kt"

# interfaces
.implements Landroidx/compose/ui/node/ParentDataModifierNode;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0016\u0010\u0010\u001a\u00020\u0011*\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0015"
    }
    d2 = {
        "Landroidx/compose/foundation/layout/LayoutWeightNode;",
        "Landroidx/compose/ui/node/ParentDataModifierNode;",
        "Landroidx/compose/ui/Modifier$Node;",
        "weight",
        "",
        "fill",
        "",
        "(FZ)V",
        "getFill",
        "()Z",
        "setFill",
        "(Z)V",
        "getWeight",
        "()F",
        "setWeight",
        "(F)V",
        "modifyParentData",
        "Landroidx/compose/foundation/layout/RowColumnParentData;",
        "Landroidx/compose/ui/unit/Density;",
        "parentData",
        "",
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
.field private fill:Z

.field private weight:F


# direct methods
.method public constructor <init>(FZ)V
    .locals 0

    .line 669
    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    iput p1, p0, Landroidx/compose/foundation/layout/LayoutWeightNode;->weight:F

    iput-boolean p2, p0, Landroidx/compose/foundation/layout/LayoutWeightNode;->fill:Z

    return-void
.end method


# virtual methods
.method public final getFill()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/foundation/layout/LayoutWeightNode;->fill:Z

    return p0
.end method

.method public final getWeight()F
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/LayoutWeightNode;->weight:F

    return p0
.end method

.method public modifyParentData(Landroidx/compose/ui/unit/Density;Ljava/lang/Object;)Landroidx/compose/foundation/layout/RowColumnParentData;
    .locals 6

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 671
    instance-of p1, p2, Landroidx/compose/foundation/layout/RowColumnParentData;

    if-eqz p1, :cond_0

    check-cast p2, Landroidx/compose/foundation/layout/RowColumnParentData;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_1

    new-instance p2, Landroidx/compose/foundation/layout/RowColumnParentData;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/layout/RowColumnParentData;-><init>(FZLandroidx/compose/foundation/layout/CrossAxisAlignment;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_1
    iget p1, p0, Landroidx/compose/foundation/layout/LayoutWeightNode;->weight:F

    .line 672
    invoke-virtual {p2, p1}, Landroidx/compose/foundation/layout/RowColumnParentData;->setWeight(F)V

    iget-boolean p0, p0, Landroidx/compose/foundation/layout/LayoutWeightNode;->fill:Z

    .line 673
    invoke-virtual {p2, p0}, Landroidx/compose/foundation/layout/RowColumnParentData;->setFill(Z)V

    return-object p2
.end method

.method public bridge synthetic modifyParentData(Landroidx/compose/ui/unit/Density;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 666
    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/layout/LayoutWeightNode;->modifyParentData(Landroidx/compose/ui/unit/Density;Ljava/lang/Object;)Landroidx/compose/foundation/layout/RowColumnParentData;

    move-result-object p0

    return-object p0
.end method

.method public final setFill(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/foundation/layout/LayoutWeightNode;->fill:Z

    return-void
.end method

.method public final setWeight(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/layout/LayoutWeightNode;->weight:F

    return-void
.end method
