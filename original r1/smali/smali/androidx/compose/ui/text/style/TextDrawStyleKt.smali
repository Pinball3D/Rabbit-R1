.class public final Landroidx/compose/ui/text/style/TextDrawStyleKt;
.super Ljava/lang/Object;
.source "TextForegroundStyle.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\u001a \u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0005H\u0000\u001a!\u0010\u0006\u001a\u00020\u0007*\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0005H\u0000\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\t\u0010\n\u001a\u001a\u0010\u000b\u001a\u00020\u0005*\u00020\u00052\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00050\rH\u0002\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006\u000e"
    }
    d2 = {
        "lerp",
        "Landroidx/compose/ui/text/style/TextForegroundStyle;",
        "start",
        "stop",
        "fraction",
        "",
        "modulate",
        "Landroidx/compose/ui/graphics/Color;",
        "alpha",
        "modulate-DxMtmZc",
        "(JF)J",
        "takeOrElse",
        "block",
        "Lkotlin/Function0;",
        "ui-text_release"
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
.method public static final synthetic access$takeOrElse(FLkotlin/jvm/functions/Function0;)F
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/text/style/TextDrawStyleKt;->takeOrElse(FLkotlin/jvm/functions/Function0;)F

    move-result p0

    return p0
.end method

.method public static final lerp(Landroidx/compose/ui/text/style/TextForegroundStyle;Landroidx/compose/ui/text/style/TextForegroundStyle;F)Landroidx/compose/ui/text/style/TextForegroundStyle;
    .locals 3

    const-string/jumbo v0, "start"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "stop"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    instance-of v0, p0, Landroidx/compose/ui/text/style/BrushStyle;

    if-nez v0, :cond_0

    instance-of v1, p1, Landroidx/compose/ui/text/style/BrushStyle;

    if-nez v1, :cond_0

    .line 130
    sget-object v0, Landroidx/compose/ui/text/style/TextForegroundStyle;->Companion:Landroidx/compose/ui/text/style/TextForegroundStyle$Companion;

    invoke-interface {p0}, Landroidx/compose/ui/text/style/TextForegroundStyle;->getColor-0d7_KjU()J

    move-result-wide v1

    invoke-interface {p1}, Landroidx/compose/ui/text/style/TextForegroundStyle;->getColor-0d7_KjU()J

    move-result-wide p0

    invoke-static {v1, v2, p0, p1, p2}, Landroidx/compose/ui/graphics/ColorKt;->lerp-jxsXWHM(JJF)J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Landroidx/compose/ui/text/style/TextForegroundStyle$Companion;->from-8_81llA(J)Landroidx/compose/ui/text/style/TextForegroundStyle;

    move-result-object p0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 131
    instance-of v0, p1, Landroidx/compose/ui/text/style/BrushStyle;

    if-eqz v0, :cond_1

    .line 132
    sget-object v0, Landroidx/compose/ui/text/style/TextForegroundStyle;->Companion:Landroidx/compose/ui/text/style/TextForegroundStyle$Companion;

    .line 133
    move-object v1, p0

    check-cast v1, Landroidx/compose/ui/text/style/BrushStyle;

    invoke-virtual {v1}, Landroidx/compose/ui/text/style/BrushStyle;->getBrush()Landroidx/compose/ui/graphics/Brush;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Landroidx/compose/ui/text/style/BrushStyle;

    invoke-virtual {v2}, Landroidx/compose/ui/text/style/BrushStyle;->getBrush()Landroidx/compose/ui/graphics/Brush;

    move-result-object v2

    invoke-static {v1, v2, p2}, Landroidx/compose/ui/text/SpanStyleKt;->lerpDiscrete(Ljava/lang/Object;Ljava/lang/Object;F)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/graphics/Brush;

    .line 134
    invoke-interface {p0}, Landroidx/compose/ui/text/style/TextForegroundStyle;->getAlpha()F

    move-result p0

    invoke-interface {p1}, Landroidx/compose/ui/text/style/TextForegroundStyle;->getAlpha()F

    move-result p1

    invoke-static {p0, p1, p2}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result p0

    .line 132
    invoke-virtual {v0, v1, p0}, Landroidx/compose/ui/text/style/TextForegroundStyle$Companion;->from(Landroidx/compose/ui/graphics/Brush;F)Landroidx/compose/ui/text/style/TextForegroundStyle;

    move-result-object p0

    goto :goto_0

    .line 137
    :cond_1
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/text/SpanStyleKt;->lerpDiscrete(Ljava/lang/Object;Ljava/lang/Object;F)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/text/style/TextForegroundStyle;

    :goto_0
    return-object p0
.end method

.method public static final modulate-DxMtmZc(JF)J
    .locals 9

    .line 142
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->getAlpha-impl(J)F

    move-result v0

    mul-float v3, v0, p2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xe

    const/4 v8, 0x0

    move-wide v1, p0

    invoke-static/range {v1 .. v8}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide p0

    :cond_1
    :goto_0
    return-wide p0
.end method

.method private static final takeOrElse(FLkotlin/jvm/functions/Function0;)F
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Float;",
            ">;)F"
        }
    .end annotation

    .line 147
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    :cond_0
    return p0
.end method
