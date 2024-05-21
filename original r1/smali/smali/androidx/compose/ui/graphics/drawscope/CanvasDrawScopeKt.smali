.class public final Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt;
.super Ljava/lang/Object;
.source "CanvasDrawScope.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u000c\u0010\u0002\u001a\u00020\u0003*\u00020\u0004H\u0002\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0005"
    }
    d2 = {
        "DefaultDensity",
        "Landroidx/compose/ui/unit/Density;",
        "asDrawTransform",
        "Landroidx/compose/ui/graphics/drawscope/DrawTransform;",
        "Landroidx/compose/ui/graphics/drawscope/DrawContext;",
        "ui-graphics_release"
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
.field private static final DefaultDensity:Landroidx/compose/ui/unit/Density;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 52
    invoke-static {v0, v0}, Landroidx/compose/ui/unit/DensityKt;->Density(FF)Landroidx/compose/ui/unit/Density;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt;->DefaultDensity:Landroidx/compose/ui/unit/Density;

    return-void
.end method

.method public static final synthetic access$asDrawTransform(Landroidx/compose/ui/graphics/drawscope/DrawContext;)Landroidx/compose/ui/graphics/drawscope/DrawTransform;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt;->asDrawTransform(Landroidx/compose/ui/graphics/drawscope/DrawContext;)Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getDefaultDensity$p()Landroidx/compose/ui/unit/Density;
    .locals 1

    sget-object v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt;->DefaultDensity:Landroidx/compose/ui/unit/Density;

    return-object v0
.end method

.method private static final asDrawTransform(Landroidx/compose/ui/graphics/drawscope/DrawContext;)Landroidx/compose/ui/graphics/drawscope/DrawTransform;
    .locals 1

    .line 749
    new-instance v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;

    invoke-direct {v0, p0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;-><init>(Landroidx/compose/ui/graphics/drawscope/DrawContext;)V

    check-cast v0, Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    return-object v0
.end method
