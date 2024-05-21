.class public final Landroidx/compose/foundation/layout/VerticalAlignElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "RowColumnImpl.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement<",
        "Landroidx/compose/foundation/layout/VerticalAlignNode;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u0008\u001a\u00020\u0002H\u0016J\u0013\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0096\u0002J\u0008\u0010\r\u001a\u00020\u000eH\u0016J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0002H\u0016J\u000c\u0010\u0012\u001a\u00020\u0010*\u00020\u0013H\u0016R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0014"
    }
    d2 = {
        "Landroidx/compose/foundation/layout/VerticalAlignElement;",
        "Landroidx/compose/ui/node/ModifierNodeElement;",
        "Landroidx/compose/foundation/layout/VerticalAlignNode;",
        "alignment",
        "Landroidx/compose/ui/Alignment$Vertical;",
        "(Landroidx/compose/ui/Alignment$Vertical;)V",
        "getAlignment",
        "()Landroidx/compose/ui/Alignment$Vertical;",
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
.field private final alignment:Landroidx/compose/ui/Alignment$Vertical;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/Alignment$Vertical;)V
    .locals 1

    const-string v0, "alignment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 789
    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/layout/VerticalAlignElement;->alignment:Landroidx/compose/ui/Alignment$Vertical;

    return-void
.end method


# virtual methods
.method public create()Landroidx/compose/foundation/layout/VerticalAlignNode;
    .locals 1

    .line 791
    new-instance v0, Landroidx/compose/foundation/layout/VerticalAlignNode;

    iget-object p0, p0, Landroidx/compose/foundation/layout/VerticalAlignElement;->alignment:Landroidx/compose/ui/Alignment$Vertical;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/layout/VerticalAlignNode;-><init>(Landroidx/compose/ui/Alignment$Vertical;)V

    return-object v0
.end method

.method public bridge synthetic create()Landroidx/compose/ui/Modifier$Node;
    .locals 0

    .line 787
    invoke-virtual {p0}, Landroidx/compose/foundation/layout/VerticalAlignElement;->create()Landroidx/compose/foundation/layout/VerticalAlignNode;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/Modifier$Node;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 807
    :cond_0
    instance-of v0, p1, Landroidx/compose/foundation/layout/VerticalAlignElement;

    if-eqz v0, :cond_1

    check-cast p1, Landroidx/compose/foundation/layout/VerticalAlignElement;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    iget-object p0, p0, Landroidx/compose/foundation/layout/VerticalAlignElement;->alignment:Landroidx/compose/ui/Alignment$Vertical;

    .line 808
    iget-object p1, p1, Landroidx/compose/foundation/layout/VerticalAlignElement;->alignment:Landroidx/compose/ui/Alignment$Vertical;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final getAlignment()Landroidx/compose/ui/Alignment$Vertical;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/layout/VerticalAlignElement;->alignment:Landroidx/compose/ui/Alignment$Vertical;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/layout/VerticalAlignElement;->alignment:Landroidx/compose/ui/Alignment$Vertical;

    .line 803
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public inspectableProperties(Landroidx/compose/ui/platform/InspectorInfo;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "align"

    .line 799
    invoke-virtual {p1, v0}, Landroidx/compose/ui/platform/InspectorInfo;->setName(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/foundation/layout/VerticalAlignElement;->alignment:Landroidx/compose/ui/Alignment$Vertical;

    .line 800
    invoke-virtual {p1, p0}, Landroidx/compose/ui/platform/InspectorInfo;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public update(Landroidx/compose/foundation/layout/VerticalAlignNode;)V
    .locals 1

    const-string v0, "node"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/foundation/layout/VerticalAlignElement;->alignment:Landroidx/compose/ui/Alignment$Vertical;

    .line 795
    invoke-virtual {p1, p0}, Landroidx/compose/foundation/layout/VerticalAlignNode;->setVertical(Landroidx/compose/ui/Alignment$Vertical;)V

    return-void
.end method

.method public bridge synthetic update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 0

    .line 787
    check-cast p1, Landroidx/compose/foundation/layout/VerticalAlignNode;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/layout/VerticalAlignElement;->update(Landroidx/compose/foundation/layout/VerticalAlignNode;)V

    return-void
.end method
