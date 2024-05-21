.class public final Landroidx/compose/foundation/relocation/BringIntoViewResponder_androidKt;
.super Ljava/lang/Object;
.source "BringIntoViewResponder.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u000c\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0000\u001a\u000c\u0010\u0003\u001a\u00020\u0004*\u00020\u0005H\u0002\u00a8\u0006\u0006"
    }
    d2 = {
        "defaultBringIntoViewParent",
        "Landroidx/compose/foundation/relocation/BringIntoViewParent;",
        "Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;",
        "toRect",
        "Landroid/graphics/Rect;",
        "Landroidx/compose/ui/geometry/Rect;",
        "foundation_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final synthetic access$toRect(Landroidx/compose/ui/geometry/Rect;)Landroid/graphics/Rect;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/foundation/relocation/BringIntoViewResponder_androidKt;->toRect(Landroidx/compose/ui/geometry/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static final defaultBringIntoViewParent(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;)Landroidx/compose/foundation/relocation/BringIntoViewParent;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    new-instance v0, Landroidx/compose/foundation/relocation/BringIntoViewResponder_androidKt$defaultBringIntoViewParent$1;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/relocation/BringIntoViewResponder_androidKt$defaultBringIntoViewParent$1;-><init>(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;)V

    check-cast v0, Landroidx/compose/foundation/relocation/BringIntoViewParent;

    return-object v0
.end method

.method private static final toRect(Landroidx/compose/ui/geometry/Rect;)Landroid/graphics/Rect;
    .locals 4

    .line 37
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    move-result p0

    float-to-int p0, p0

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method
