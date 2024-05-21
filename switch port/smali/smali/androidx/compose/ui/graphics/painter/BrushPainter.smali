.class public final Landroidx/compose/ui/graphics/painter/BrushPainter;
.super Landroidx/compose/ui/graphics/painter/Painter;
.source "BrushPainter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0005\u001a\u00020\u0006H\u0014J\u0012\u0010\u0011\u001a\u00020\u00102\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0014J\u0013\u0010\u0012\u001a\u00020\u00102\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0096\u0002J\u0008\u0010\u0015\u001a\u00020\u0016H\u0016J\u0008\u0010\u0017\u001a\u00020\u0018H\u0016J\u000c\u0010\u0019\u001a\u00020\u001a*\u00020\u001bH\u0014R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u000b\u001a\u00020\u000c8VX\u0096\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000e\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006\u001c"
    }
    d2 = {
        "Landroidx/compose/ui/graphics/painter/BrushPainter;",
        "Landroidx/compose/ui/graphics/painter/Painter;",
        "brush",
        "Landroidx/compose/ui/graphics/Brush;",
        "(Landroidx/compose/ui/graphics/Brush;)V",
        "alpha",
        "",
        "getBrush",
        "()Landroidx/compose/ui/graphics/Brush;",
        "colorFilter",
        "Landroidx/compose/ui/graphics/ColorFilter;",
        "intrinsicSize",
        "Landroidx/compose/ui/geometry/Size;",
        "getIntrinsicSize-NH-jbRc",
        "()J",
        "applyAlpha",
        "",
        "applyColorFilter",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
        "onDraw",
        "",
        "Landroidx/compose/ui/graphics/drawscope/DrawScope;",
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
.field private alpha:F

.field private final brush:Landroidx/compose/ui/graphics/Brush;

.field private colorFilter:Landroidx/compose/ui/graphics/ColorFilter;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/graphics/Brush;)V
    .locals 1

    const-string v0, "brush"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Landroidx/compose/ui/graphics/painter/Painter;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/graphics/painter/BrushPainter;->brush:Landroidx/compose/ui/graphics/Brush;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Landroidx/compose/ui/graphics/painter/BrushPainter;->alpha:F

    return-void
.end method


# virtual methods
.method protected applyAlpha(F)Z
    .locals 0

    iput p1, p0, Landroidx/compose/ui/graphics/painter/BrushPainter;->alpha:F

    const/4 p0, 0x1

    return p0
.end method

.method protected applyColorFilter(Landroidx/compose/ui/graphics/ColorFilter;)Z
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/graphics/painter/BrushPainter;->colorFilter:Landroidx/compose/ui/graphics/ColorFilter;

    const/4 p0, 0x1

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 54
    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/graphics/painter/BrushPainter;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-object p0, p0, Landroidx/compose/ui/graphics/painter/BrushPainter;->brush:Landroidx/compose/ui/graphics/Brush;

    .line 56
    check-cast p1, Landroidx/compose/ui/graphics/painter/BrushPainter;

    iget-object p1, p1, Landroidx/compose/ui/graphics/painter/BrushPainter;->brush:Landroidx/compose/ui/graphics/Brush;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getBrush()Landroidx/compose/ui/graphics/Brush;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/graphics/painter/BrushPainter;->brush:Landroidx/compose/ui/graphics/Brush;

    return-object p0
.end method

.method public getIntrinsicSize-NH-jbRc()J
    .locals 2

    iget-object p0, p0, Landroidx/compose/ui/graphics/painter/BrushPainter;->brush:Landroidx/compose/ui/graphics/Brush;

    .line 36
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/Brush;->getIntrinsicSize-NH-jbRc()J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/graphics/painter/BrushPainter;->brush:Landroidx/compose/ui/graphics/Brush;

    .line 62
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/Brush;->hashCode()I

    move-result p0

    return p0
.end method

.method protected onDraw(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V
    .locals 13

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/compose/ui/graphics/painter/BrushPainter;->brush:Landroidx/compose/ui/graphics/Brush;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    iget v7, p0, Landroidx/compose/ui/graphics/painter/BrushPainter;->alpha:F

    const/4 v8, 0x0

    iget-object v9, p0, Landroidx/compose/ui/graphics/painter/BrushPainter;->colorFilter:Landroidx/compose/ui/graphics/ColorFilter;

    const/4 v10, 0x0

    const/16 v11, 0x56

    const/4 v12, 0x0

    move-object v1, p1

    .line 39
    invoke-static/range {v1 .. v12}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawRect-AsUm42w$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Brush;JJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BrushPainter(brush="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/ui/graphics/painter/BrushPainter;->brush:Landroidx/compose/ui/graphics/Brush;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
