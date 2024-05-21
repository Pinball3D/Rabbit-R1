.class final Landroidx/compose/foundation/ClickableSemanticsElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "Clickable.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement<",
        "Landroidx/compose/foundation/ClickableSemanticsNode;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001BL\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\u000e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\n\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0008\u0012\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000eJ\u0008\u0010\u000f\u001a\u00020\u0002H\u0016J\u0013\u0010\u0010\u001a\u00020\u00042\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0096\u0002J\u0008\u0010\u0013\u001a\u00020\u0014H\u0016J\u0010\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u0002H\u0016J\u000c\u0010\u0017\u001a\u00020\u000b*\u00020\u0018H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0019\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0002\n\u0000\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006\u0019"
    }
    d2 = {
        "Landroidx/compose/foundation/ClickableSemanticsElement;",
        "Landroidx/compose/ui/node/ModifierNodeElement;",
        "Landroidx/compose/foundation/ClickableSemanticsNode;",
        "enabled",
        "",
        "role",
        "Landroidx/compose/ui/semantics/Role;",
        "onLongClickLabel",
        "",
        "onLongClick",
        "Lkotlin/Function0;",
        "",
        "onClickLabel",
        "onClick",
        "(ZLandroidx/compose/ui/semantics/Role;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "create",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "update",
        "node",
        "inspectableProperties",
        "Landroidx/compose/ui/platform/InspectorInfo;",
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
.field private final enabled:Z

.field private final onClick:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final onClickLabel:Ljava/lang/String;

.field private final onLongClick:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final onLongClickLabel:Ljava/lang/String;

.field private final role:Landroidx/compose/ui/semantics/Role;


# direct methods
.method private constructor <init>(ZLandroidx/compose/ui/semantics/Role;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroidx/compose/ui/semantics/Role;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onClick"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 747
    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    iput-boolean p1, p0, Landroidx/compose/foundation/ClickableSemanticsElement;->enabled:Z

    iput-object p2, p0, Landroidx/compose/foundation/ClickableSemanticsElement;->role:Landroidx/compose/ui/semantics/Role;

    iput-object p3, p0, Landroidx/compose/foundation/ClickableSemanticsElement;->onLongClickLabel:Ljava/lang/String;

    iput-object p4, p0, Landroidx/compose/foundation/ClickableSemanticsElement;->onLongClick:Lkotlin/jvm/functions/Function0;

    iput-object p5, p0, Landroidx/compose/foundation/ClickableSemanticsElement;->onClickLabel:Ljava/lang/String;

    iput-object p6, p0, Landroidx/compose/foundation/ClickableSemanticsElement;->onClick:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public synthetic constructor <init>(ZLandroidx/compose/ui/semantics/Role;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroidx/compose/foundation/ClickableSemanticsElement;-><init>(ZLandroidx/compose/ui/semantics/Role;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method


# virtual methods
.method public create()Landroidx/compose/foundation/ClickableSemanticsNode;
    .locals 8

    iget-boolean v1, p0, Landroidx/compose/foundation/ClickableSemanticsElement;->enabled:Z

    iget-object v3, p0, Landroidx/compose/foundation/ClickableSemanticsElement;->role:Landroidx/compose/ui/semantics/Role;

    iget-object v5, p0, Landroidx/compose/foundation/ClickableSemanticsElement;->onLongClickLabel:Ljava/lang/String;

    iget-object v6, p0, Landroidx/compose/foundation/ClickableSemanticsElement;->onLongClick:Lkotlin/jvm/functions/Function0;

    iget-object v2, p0, Landroidx/compose/foundation/ClickableSemanticsElement;->onClickLabel:Ljava/lang/String;

    iget-object v4, p0, Landroidx/compose/foundation/ClickableSemanticsElement;->onClick:Lkotlin/jvm/functions/Function0;

    .line 748
    new-instance p0, Landroidx/compose/foundation/ClickableSemanticsNode;

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Landroidx/compose/foundation/ClickableSemanticsNode;-><init>(ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method

.method public bridge synthetic create()Landroidx/compose/ui/Modifier$Node;
    .locals 0

    .line 740
    invoke-virtual {p0}, Landroidx/compose/foundation/ClickableSemanticsElement;->create()Landroidx/compose/foundation/ClickableSemanticsNode;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/Modifier$Node;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 775
    :cond_0
    instance-of v1, p1, Landroidx/compose/foundation/ClickableSemanticsElement;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-boolean v1, p0, Landroidx/compose/foundation/ClickableSemanticsElement;->enabled:Z

    .line 777
    check-cast p1, Landroidx/compose/foundation/ClickableSemanticsElement;

    iget-boolean v3, p1, Landroidx/compose/foundation/ClickableSemanticsElement;->enabled:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Landroidx/compose/foundation/ClickableSemanticsElement;->role:Landroidx/compose/ui/semantics/Role;

    .line 778
    iget-object v3, p1, Landroidx/compose/foundation/ClickableSemanticsElement;->role:Landroidx/compose/ui/semantics/Role;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Landroidx/compose/foundation/ClickableSemanticsElement;->onLongClickLabel:Ljava/lang/String;

    .line 779
    iget-object v3, p1, Landroidx/compose/foundation/ClickableSemanticsElement;->onLongClickLabel:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Landroidx/compose/foundation/ClickableSemanticsElement;->onLongClick:Lkotlin/jvm/functions/Function0;

    .line 780
    iget-object v3, p1, Landroidx/compose/foundation/ClickableSemanticsElement;->onLongClick:Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Landroidx/compose/foundation/ClickableSemanticsElement;->onClickLabel:Ljava/lang/String;

    .line 781
    iget-object v3, p1, Landroidx/compose/foundation/ClickableSemanticsElement;->onClickLabel:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object p0, p0, Landroidx/compose/foundation/ClickableSemanticsElement;->onClick:Lkotlin/jvm/functions/Function0;

    .line 782
    iget-object p1, p1, Landroidx/compose/foundation/ClickableSemanticsElement;->onClick:Lkotlin/jvm/functions/Function0;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-boolean v0, p0, Landroidx/compose/foundation/ClickableSemanticsElement;->enabled:Z

    .line 764
    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/compose/foundation/ClickableSemanticsElement;->role:Landroidx/compose/ui/semantics/Role;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 765
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/compose/foundation/ClickableSemanticsElement;->onLongClickLabel:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 766
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/compose/foundation/ClickableSemanticsElement;->onLongClick:Lkotlin/jvm/functions/Function0;

    if-eqz v1, :cond_2

    .line 767
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/compose/foundation/ClickableSemanticsElement;->onClickLabel:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 768
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Landroidx/compose/foundation/ClickableSemanticsElement;->onClick:Lkotlin/jvm/functions/Function0;

    .line 769
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public inspectableProperties(Landroidx/compose/ui/platform/InspectorInfo;)V
    .locals 0

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public update(Landroidx/compose/foundation/ClickableSemanticsNode;)V
    .locals 8

    const-string v0, "node"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v2, p0, Landroidx/compose/foundation/ClickableSemanticsElement;->enabled:Z

    iget-object v3, p0, Landroidx/compose/foundation/ClickableSemanticsElement;->onClickLabel:Ljava/lang/String;

    iget-object v4, p0, Landroidx/compose/foundation/ClickableSemanticsElement;->role:Landroidx/compose/ui/semantics/Role;

    iget-object v5, p0, Landroidx/compose/foundation/ClickableSemanticsElement;->onClick:Lkotlin/jvm/functions/Function0;

    iget-object v6, p0, Landroidx/compose/foundation/ClickableSemanticsElement;->onLongClickLabel:Ljava/lang/String;

    iget-object v7, p0, Landroidx/compose/foundation/ClickableSemanticsElement;->onLongClick:Lkotlin/jvm/functions/Function0;

    move-object v1, p1

    .line 758
    invoke-virtual/range {v1 .. v7}, Landroidx/compose/foundation/ClickableSemanticsNode;->update-UMe6uN4(ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public bridge synthetic update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 0

    .line 740
    check-cast p1, Landroidx/compose/foundation/ClickableSemanticsNode;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/ClickableSemanticsElement;->update(Landroidx/compose/foundation/ClickableSemanticsNode;)V

    return-void
.end method
