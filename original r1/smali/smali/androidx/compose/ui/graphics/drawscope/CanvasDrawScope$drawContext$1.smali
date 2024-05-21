.class public final Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;
.super Ljava/lang/Object;
.source "CanvasDrawScope.kt"

# interfaces
.implements Landroidx/compose/ui/graphics/drawscope/DrawContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001R\u0014\u0010\u0002\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R-\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u00078V@VX\u0096\u000e\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u000c\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\r\u001a\u00020\u000eX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006\u0011"
    }
    d2 = {
        "androidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1",
        "Landroidx/compose/ui/graphics/drawscope/DrawContext;",
        "canvas",
        "Landroidx/compose/ui/graphics/Canvas;",
        "getCanvas",
        "()Landroidx/compose/ui/graphics/Canvas;",
        "value",
        "Landroidx/compose/ui/geometry/Size;",
        "size",
        "getSize-NH-jbRc",
        "()J",
        "setSize-uvyYCjk",
        "(J)V",
        "transform",
        "Landroidx/compose/ui/graphics/drawscope/DrawTransform;",
        "getTransform",
        "()Landroidx/compose/ui/graphics/drawscope/DrawTransform;",
        "ui-graphics_release"
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
.field final synthetic this$0:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

.field private final transform:Landroidx/compose/ui/graphics/drawscope/DrawTransform;


# direct methods
.method constructor <init>(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->this$0:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    move-object p1, p0

    check-cast p1, Landroidx/compose/ui/graphics/drawscope/DrawContext;

    invoke-static {p1}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt;->access$asDrawTransform(Landroidx/compose/ui/graphics/drawscope/DrawContext;)Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->transform:Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    return-void
.end method


# virtual methods
.method public getCanvas()Landroidx/compose/ui/graphics/Canvas;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->this$0:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 73
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->getDrawParams()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    move-result-object p0

    return-object p0
.end method

.method public getSize-NH-jbRc()J
    .locals 2

    iget-object p0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->this$0:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 76
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->getDrawParams()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->getSize-NH-jbRc()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTransform()Landroidx/compose/ui/graphics/drawscope/DrawTransform;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->transform:Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    return-object p0
.end method

.method public setSize-uvyYCjk(J)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$drawContext$1;->this$0:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 78
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->getDrawParams()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setSize-uvyYCjk(J)V

    return-void
.end method
