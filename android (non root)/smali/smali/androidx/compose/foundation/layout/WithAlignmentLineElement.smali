.class public final Landroidx/compose/foundation/layout/WithAlignmentLineElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "RowColumnImpl.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement<",
        "Landroidx/compose/foundation/layout/SiblingsAlignedNode$WithAlignmentLineNode;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u0008\u001a\u00020\u0002H\u0016J\u0013\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0096\u0002J\u0008\u0010\r\u001a\u00020\u000eH\u0016J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0002H\u0016J\u000c\u0010\u0012\u001a\u00020\u0010*\u00020\u0013H\u0016R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0014"
    }
    d2 = {
        "Landroidx/compose/foundation/layout/WithAlignmentLineElement;",
        "Landroidx/compose/ui/node/ModifierNodeElement;",
        "Landroidx/compose/foundation/layout/SiblingsAlignedNode$WithAlignmentLineNode;",
        "alignmentLine",
        "Landroidx/compose/ui/layout/AlignmentLine;",
        "(Landroidx/compose/ui/layout/AlignmentLine;)V",
        "getAlignmentLine",
        "()Landroidx/compose/ui/layout/AlignmentLine;",
        "create",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "update",
        "",
        "node",
        "inspectableProperties",
        "Landroidx/compose/ui/platform/InspectorInfo;",
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
.field private final alignmentLine:Landroidx/compose/ui/layout/AlignmentLine;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/layout/AlignmentLine;)V
    .locals 1

    const-string v0, "alignmentLine"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 704
    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/layout/WithAlignmentLineElement;->alignmentLine:Landroidx/compose/ui/layout/AlignmentLine;

    return-void
.end method


# virtual methods
.method public create()Landroidx/compose/foundation/layout/SiblingsAlignedNode$WithAlignmentLineNode;
    .locals 1

    .line 706
    new-instance v0, Landroidx/compose/foundation/layout/SiblingsAlignedNode$WithAlignmentLineNode;

    iget-object p0, p0, Landroidx/compose/foundation/layout/WithAlignmentLineElement;->alignmentLine:Landroidx/compose/ui/layout/AlignmentLine;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/layout/SiblingsAlignedNode$WithAlignmentLineNode;-><init>(Landroidx/compose/ui/layout/AlignmentLine;)V

    return-object v0
.end method

.method public bridge synthetic create()Landroidx/compose/ui/Modifier$Node;
    .locals 0

    .line 702
    invoke-virtual {p0}, Landroidx/compose/foundation/layout/WithAlignmentLineElement;->create()Landroidx/compose/foundation/layout/SiblingsAlignedNode$WithAlignmentLineNode;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/Modifier$Node;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 722
    :cond_0
    instance-of v0, p1, Landroidx/compose/foundation/layout/WithAlignmentLineElement;

    if-eqz v0, :cond_1

    check-cast p1, Landroidx/compose/foundation/layout/WithAlignmentLineElement;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    iget-object p0, p0, Landroidx/compose/foundation/layout/WithAlignmentLineElement;->alignmentLine:Landroidx/compose/ui/layout/AlignmentLine;

    .line 723
    iget-object p1, p1, Landroidx/compose/foundation/layout/WithAlignmentLineElement;->alignmentLine:Landroidx/compose/ui/layout/AlignmentLine;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final getAlignmentLine()Landroidx/compose/ui/layout/AlignmentLine;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/layout/WithAlignmentLineElement;->alignmentLine:Landroidx/compose/ui/layout/AlignmentLine;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/layout/WithAlignmentLineElement;->alignmentLine:Landroidx/compose/ui/layout/AlignmentLine;

    .line 718
    invoke-virtual {p0}, Landroidx/compose/ui/layout/AlignmentLine;->hashCode()I

    move-result p0

    return p0
.end method

.method public inspectableProperties(Landroidx/compose/ui/platform/InspectorInfo;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "alignBy"

    .line 714
    invoke-virtual {p1, v0}, Landroidx/compose/ui/platform/InspectorInfo;->setName(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/foundation/layout/WithAlignmentLineElement;->alignmentLine:Landroidx/compose/ui/layout/AlignmentLine;

    .line 715
    invoke-virtual {p1, p0}, Landroidx/compose/ui/platform/InspectorInfo;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public update(Landroidx/compose/foundation/layout/SiblingsAlignedNode$WithAlignmentLineNode;)V
    .locals 1

    const-string v0, "node"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/foundation/layout/WithAlignmentLineElement;->alignmentLine:Landroidx/compose/ui/layout/AlignmentLine;

    .line 710
    invoke-virtual {p1, p0}, Landroidx/compose/foundation/layout/SiblingsAlignedNode$WithAlignmentLineNode;->setAlignmentLine(Landroidx/compose/ui/layout/AlignmentLine;)V

    return-void
.end method

.method public bridge synthetic update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 0

    .line 702
    check-cast p1, Landroidx/compose/foundation/layout/SiblingsAlignedNode$WithAlignmentLineNode;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/layout/WithAlignmentLineElement;->update(Landroidx/compose/foundation/layout/SiblingsAlignedNode$WithAlignmentLineNode;)V

    return-void
.end method
