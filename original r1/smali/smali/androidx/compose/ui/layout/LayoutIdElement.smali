.class final Landroidx/compose/ui/layout/LayoutIdElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "LayoutId.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement<",
        "Landroidx/compose/ui/layout/LayoutIdModifier;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0082\u0008\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\t\u0010\u0006\u001a\u00020\u0004H\u00c2\u0003J\u0013\u0010\u0007\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004H\u00c6\u0001J\u0008\u0010\u0008\u001a\u00020\u0002H\u0016J\u0013\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0004H\u00d6\u0003J\t\u0010\u000c\u001a\u00020\rH\u00d6\u0001J\t\u0010\u000e\u001a\u00020\u000fH\u00d6\u0001J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0002H\u0016J\u000c\u0010\u0013\u001a\u00020\u0011*\u00020\u0014H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Landroidx/compose/ui/layout/LayoutIdElement;",
        "Landroidx/compose/ui/node/ModifierNodeElement;",
        "Landroidx/compose/ui/layout/LayoutIdModifier;",
        "layoutId",
        "",
        "(Ljava/lang/Object;)V",
        "component1",
        "copy",
        "create",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "",
        "update",
        "",
        "node",
        "inspectableProperties",
        "Landroidx/compose/ui/platform/InspectorInfo;",
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
.field private final layoutId:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "layoutId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/layout/LayoutIdElement;->layoutId:Ljava/lang/Object;

    return-void
.end method

.method private final component1()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/layout/LayoutIdElement;->layoutId:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic copy$default(Landroidx/compose/ui/layout/LayoutIdElement;Ljava/lang/Object;ILjava/lang/Object;)Landroidx/compose/ui/layout/LayoutIdElement;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Landroidx/compose/ui/layout/LayoutIdElement;->layoutId:Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/ui/layout/LayoutIdElement;->copy(Ljava/lang/Object;)Landroidx/compose/ui/layout/LayoutIdElement;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final copy(Ljava/lang/Object;)Landroidx/compose/ui/layout/LayoutIdElement;
    .locals 0

    const-string p0, "layoutId"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Landroidx/compose/ui/layout/LayoutIdElement;

    invoke-direct {p0, p1}, Landroidx/compose/ui/layout/LayoutIdElement;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method

.method public bridge synthetic create()Landroidx/compose/ui/Modifier$Node;
    .locals 0

    .line 35
    invoke-virtual {p0}, Landroidx/compose/ui/layout/LayoutIdElement;->create()Landroidx/compose/ui/layout/LayoutIdModifier;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/Modifier$Node;

    return-object p0
.end method

.method public create()Landroidx/compose/ui/layout/LayoutIdModifier;
    .locals 1

    .line 38
    new-instance v0, Landroidx/compose/ui/layout/LayoutIdModifier;

    iget-object p0, p0, Landroidx/compose/ui/layout/LayoutIdElement;->layoutId:Ljava/lang/Object;

    invoke-direct {v0, p0}, Landroidx/compose/ui/layout/LayoutIdModifier;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/layout/LayoutIdElement;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/ui/layout/LayoutIdElement;

    iget-object p0, p0, Landroidx/compose/ui/layout/LayoutIdElement;->layoutId:Ljava/lang/Object;

    iget-object p1, p1, Landroidx/compose/ui/layout/LayoutIdElement;->layoutId:Ljava/lang/Object;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/layout/LayoutIdElement;->layoutId:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public inspectableProperties(Landroidx/compose/ui/platform/InspectorInfo;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutId"

    .line 45
    invoke-virtual {p1, v0}, Landroidx/compose/ui/platform/InspectorInfo;->setName(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/ui/layout/LayoutIdElement;->layoutId:Ljava/lang/Object;

    .line 46
    invoke-virtual {p1, p0}, Landroidx/compose/ui/platform/InspectorInfo;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LayoutIdElement(layoutId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/ui/layout/LayoutIdElement;->layoutId:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 0

    .line 35
    check-cast p1, Landroidx/compose/ui/layout/LayoutIdModifier;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/layout/LayoutIdElement;->update(Landroidx/compose/ui/layout/LayoutIdModifier;)V

    return-void
.end method

.method public update(Landroidx/compose/ui/layout/LayoutIdModifier;)V
    .locals 1

    const-string v0, "node"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/ui/layout/LayoutIdElement;->layoutId:Ljava/lang/Object;

    .line 41
    invoke-virtual {p1, p0}, Landroidx/compose/ui/layout/LayoutIdModifier;->setLayoutId$ui_release(Ljava/lang/Object;)V

    return-void
.end method
