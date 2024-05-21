.class public final Landroidx/compose/ui/graphics/GraphicsLayerScopeKt;
.super Ljava/lang/Object;
.source "GraphicsLayerScope.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u001a\u0006\u0010\u0007\u001a\u00020\u0008\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0086T\u00a2\u0006\u0002\n\u0000\"\u0016\u0010\u0002\u001a\u00020\u0003\u00f8\u0001\u0000\u00a2\u0006\n\n\u0002\u0010\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\t"
    }
    d2 = {
        "DefaultCameraDistance",
        "",
        "DefaultShadowColor",
        "Landroidx/compose/ui/graphics/Color;",
        "getDefaultShadowColor",
        "()J",
        "J",
        "GraphicsLayerScope",
        "Landroidx/compose/ui/graphics/GraphicsLayerScope;",
        "ui_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final DefaultCameraDistance:F = 8.0f

.field private static final DefaultShadowColor:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    sget-object v0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v0

    sput-wide v0, Landroidx/compose/ui/graphics/GraphicsLayerScopeKt;->DefaultShadowColor:J

    return-void
.end method

.method public static final GraphicsLayerScope()Landroidx/compose/ui/graphics/GraphicsLayerScope;
    .locals 1

    .line 223
    new-instance v0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;-><init>()V

    check-cast v0, Landroidx/compose/ui/graphics/GraphicsLayerScope;

    return-object v0
.end method

.method public static final getDefaultShadowColor()J
    .locals 2

    sget-wide v0, Landroidx/compose/ui/graphics/GraphicsLayerScopeKt;->DefaultShadowColor:J

    return-wide v0
.end method
