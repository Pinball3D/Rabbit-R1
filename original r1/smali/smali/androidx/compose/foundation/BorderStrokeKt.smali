.class public final Landroidx/compose/foundation/BorderStrokeKt;
.super Ljava/lang/Object;
.source "BorderStroke.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a%\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0007\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006\u0008"
    }
    d2 = {
        "BorderStroke",
        "Landroidx/compose/foundation/BorderStroke;",
        "width",
        "Landroidx/compose/ui/unit/Dp;",
        "color",
        "Landroidx/compose/ui/graphics/Color;",
        "BorderStroke-cXLIe8U",
        "(FJ)Landroidx/compose/foundation/BorderStroke;",
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
.method public static final BorderStroke-cXLIe8U(FJ)Landroidx/compose/foundation/BorderStroke;
    .locals 3

    .line 72
    new-instance v0, Landroidx/compose/foundation/BorderStroke;

    new-instance v1, Landroidx/compose/ui/graphics/SolidColor;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v1, Landroidx/compose/ui/graphics/Brush;

    invoke-direct {v0, p0, v1, v2}, Landroidx/compose/foundation/BorderStroke;-><init>(FLandroidx/compose/ui/graphics/Brush;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
