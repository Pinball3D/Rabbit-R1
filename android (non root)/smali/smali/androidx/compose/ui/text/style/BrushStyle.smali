.class final Landroidx/compose/ui/text/style/BrushStyle;
.super Ljava/lang/Object;
.source "TextForegroundStyle.kt"

# interfaces
.implements Landroidx/compose/ui/text/style/TextForegroundStyle;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0082\u0008\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u0013\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\u0015\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u00d6\u0003J\t\u0010\u001a\u001a\u00020\u001bH\u00d6\u0001J\t\u0010\u001c\u001a\u00020\u001dH\u00d6\u0001R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\t\u001a\u00020\n8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR\u001d\u0010\r\u001a\u00020\u000e8VX\u0096\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006\u001e"
    }
    d2 = {
        "Landroidx/compose/ui/text/style/BrushStyle;",
        "Landroidx/compose/ui/text/style/TextForegroundStyle;",
        "value",
        "Landroidx/compose/ui/graphics/ShaderBrush;",
        "alpha",
        "",
        "(Landroidx/compose/ui/graphics/ShaderBrush;F)V",
        "getAlpha",
        "()F",
        "brush",
        "Landroidx/compose/ui/graphics/Brush;",
        "getBrush",
        "()Landroidx/compose/ui/graphics/Brush;",
        "color",
        "Landroidx/compose/ui/graphics/Color;",
        "getColor-0d7_KjU",
        "()J",
        "getValue",
        "()Landroidx/compose/ui/graphics/ShaderBrush;",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
        "ui-text_release"
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
.field private final alpha:F

.field private final value:Landroidx/compose/ui/graphics/ShaderBrush;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/graphics/ShaderBrush;F)V
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/text/style/BrushStyle;->value:Landroidx/compose/ui/graphics/ShaderBrush;

    iput p2, p0, Landroidx/compose/ui/text/style/BrushStyle;->alpha:F

    return-void
.end method

.method public static synthetic copy$default(Landroidx/compose/ui/text/style/BrushStyle;Landroidx/compose/ui/graphics/ShaderBrush;FILjava/lang/Object;)Landroidx/compose/ui/text/style/BrushStyle;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Landroidx/compose/ui/text/style/BrushStyle;->value:Landroidx/compose/ui/graphics/ShaderBrush;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget p2, p0, Landroidx/compose/ui/text/style/BrushStyle;->alpha:F

    :cond_1
    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/text/style/BrushStyle;->copy(Landroidx/compose/ui/graphics/ShaderBrush;F)Landroidx/compose/ui/text/style/BrushStyle;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Landroidx/compose/ui/graphics/ShaderBrush;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/style/BrushStyle;->value:Landroidx/compose/ui/graphics/ShaderBrush;

    return-object p0
.end method

.method public final component2()F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/text/style/BrushStyle;->alpha:F

    return p0
.end method

.method public final copy(Landroidx/compose/ui/graphics/ShaderBrush;F)Landroidx/compose/ui/text/style/BrushStyle;
    .locals 0

    const-string/jumbo p0, "value"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Landroidx/compose/ui/text/style/BrushStyle;

    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/text/style/BrushStyle;-><init>(Landroidx/compose/ui/graphics/ShaderBrush;F)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/text/style/BrushStyle;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/ui/text/style/BrushStyle;

    iget-object v1, p0, Landroidx/compose/ui/text/style/BrushStyle;->value:Landroidx/compose/ui/graphics/ShaderBrush;

    iget-object v3, p1, Landroidx/compose/ui/text/style/BrushStyle;->value:Landroidx/compose/ui/graphics/ShaderBrush;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget p0, p0, Landroidx/compose/ui/text/style/BrushStyle;->alpha:F

    iget p1, p1, Landroidx/compose/ui/text/style/BrushStyle;->alpha:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public getAlpha()F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/text/style/BrushStyle;->alpha:F

    return p0
.end method

.method public getBrush()Landroidx/compose/ui/graphics/Brush;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/style/BrushStyle;->value:Landroidx/compose/ui/graphics/ShaderBrush;

    .line 117
    check-cast p0, Landroidx/compose/ui/graphics/Brush;

    return-object p0
.end method

.method public getColor-0d7_KjU()J
    .locals 2

    .line 114
    sget-object p0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getValue()Landroidx/compose/ui/graphics/ShaderBrush;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/style/BrushStyle;->value:Landroidx/compose/ui/graphics/ShaderBrush;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/style/BrushStyle;->value:Landroidx/compose/ui/graphics/ShaderBrush;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/ShaderBrush;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Landroidx/compose/ui/text/style/BrushStyle;->alpha:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BrushStyle(value="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/compose/ui/text/style/BrushStyle;->value:Landroidx/compose/ui/graphics/ShaderBrush;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Landroidx/compose/ui/text/style/BrushStyle;->alpha:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
