.class public final Landroidx/compose/ui/text/platform/extensions/TextPaintExtensions_androidKt;
.super Ljava/lang/Object;
.source "TextPaintExtensions.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0000\u001a9\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\r\u0010\u000e\u001aS\u0010\u000f\u001a\u0004\u0018\u00010\u0004*\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00042&\u0010\u0012\u001a\"\u0012\u0006\u0012\u0004\u0018\u00010\u0014\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00180\u00132\u0006\u0010\u0019\u001a\u00020\u001a2\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008H\u0000\u00f8\u0001\u0001\u001a\u000c\u0010\u001b\u001a\u00020\u0008*\u00020\u0004H\u0000\u001a\u0016\u0010\u001c\u001a\u00020\u001d*\u00020\u00102\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0000\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006 "
    }
    d2 = {
        "correctBlurRadius",
        "",
        "blurRadius",
        "generateFallbackSpanStyle",
        "Landroidx/compose/ui/text/SpanStyle;",
        "letterSpacing",
        "Landroidx/compose/ui/unit/TextUnit;",
        "requiresLetterSpacing",
        "",
        "background",
        "Landroidx/compose/ui/graphics/Color;",
        "baselineShift",
        "Landroidx/compose/ui/text/style/BaselineShift;",
        "generateFallbackSpanStyle-62GTOB8",
        "(JZJLandroidx/compose/ui/text/style/BaselineShift;)Landroidx/compose/ui/text/SpanStyle;",
        "applySpanStyle",
        "Landroidx/compose/ui/text/platform/AndroidTextPaint;",
        "style",
        "resolveTypeface",
        "Lkotlin/Function4;",
        "Landroidx/compose/ui/text/font/FontFamily;",
        "Landroidx/compose/ui/text/font/FontWeight;",
        "Landroidx/compose/ui/text/font/FontStyle;",
        "Landroidx/compose/ui/text/font/FontSynthesis;",
        "Landroid/graphics/Typeface;",
        "density",
        "Landroidx/compose/ui/unit/Density;",
        "hasFontAttributes",
        "setTextMotion",
        "",
        "textMotion",
        "Landroidx/compose/ui/text/style/TextMotion;",
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
.method public static final applySpanStyle(Landroidx/compose/ui/text/platform/AndroidTextPaint;Landroidx/compose/ui/text/SpanStyle;Lkotlin/jvm/functions/Function4;Landroidx/compose/ui/unit/Density;Z)Landroidx/compose/ui/text/SpanStyle;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/text/platform/AndroidTextPaint;",
            "Landroidx/compose/ui/text/SpanStyle;",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Landroidx/compose/ui/text/font/FontFamily;",
            "-",
            "Landroidx/compose/ui/text/font/FontWeight;",
            "-",
            "Landroidx/compose/ui/text/font/FontStyle;",
            "-",
            "Landroidx/compose/ui/text/font/FontSynthesis;",
            "+",
            "Landroid/graphics/Typeface;",
            ">;",
            "Landroidx/compose/ui/unit/Density;",
            "Z)",
            "Landroidx/compose/ui/text/SpanStyle;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "style"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolveTypeface"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "density"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->getFontSize-XSAIIZE()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/TextUnit;->getType-UIouoOA(J)J

    move-result-wide v0

    .line 53
    sget-object v2, Landroidx/compose/ui/unit/TextUnitType;->Companion:Landroidx/compose/ui/unit/TextUnitType$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/unit/TextUnitType$Companion;->getSp-UIouoOA()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 54
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->getFontSize-XSAIIZE()J

    move-result-wide v0

    invoke-interface {p3, v0, v1}, Landroidx/compose/ui/unit/Density;->toPx--R2X_6o(J)F

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setTextSize(F)V

    goto :goto_0

    .line 56
    :cond_0
    sget-object v2, Landroidx/compose/ui/unit/TextUnitType;->Companion:Landroidx/compose/ui/unit/TextUnitType$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/unit/TextUnitType$Companion;->getEm-UIouoOA()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    invoke-virtual {p0}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->getTextSize()F

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->getFontSize-XSAIIZE()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {p0, v0}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setTextSize(F)V

    .line 62
    :cond_1
    :goto_0
    invoke-static {p1}, Landroidx/compose/ui/text/platform/extensions/TextPaintExtensions_androidKt;->hasFontAttributes(Landroidx/compose/ui/text/SpanStyle;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 64
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->getFontFamily()Landroidx/compose/ui/text/font/FontFamily;

    move-result-object v0

    .line 65
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->getFontWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v1

    if-nez v1, :cond_2

    sget-object v1, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getNormal()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v1

    .line 66
    :cond_2
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->getFontStyle-4Lr2A7w()Landroidx/compose/ui/text/font/FontStyle;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroidx/compose/ui/text/font/FontStyle;->unbox-impl()I

    move-result v2

    goto :goto_1

    :cond_3
    sget-object v2, Landroidx/compose/ui/text/font/FontStyle;->Companion:Landroidx/compose/ui/text/font/FontStyle$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/text/font/FontStyle$Companion;->getNormal-_-LCdwA()I

    move-result v2

    :goto_1
    invoke-static {v2}, Landroidx/compose/ui/text/font/FontStyle;->box-impl(I)Landroidx/compose/ui/text/font/FontStyle;

    move-result-object v2

    .line 67
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->getFontSynthesis-ZQGJjVo()Landroidx/compose/ui/text/font/FontSynthesis;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroidx/compose/ui/text/font/FontSynthesis;->unbox-impl()I

    move-result v3

    goto :goto_2

    :cond_4
    sget-object v3, Landroidx/compose/ui/text/font/FontSynthesis;->Companion:Landroidx/compose/ui/text/font/FontSynthesis$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/text/font/FontSynthesis$Companion;->getAll-GVVA2EU()I

    move-result v3

    :goto_2
    invoke-static {v3}, Landroidx/compose/ui/text/font/FontSynthesis;->box-impl(I)Landroidx/compose/ui/text/font/FontSynthesis;

    move-result-object v3

    .line 63
    invoke-interface {p2, v0, v1, v2, v3}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Typeface;

    invoke-virtual {p0, p2}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 71
    :cond_5
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->getLocaleList()Landroidx/compose/ui/text/intl/LocaleList;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->getLocaleList()Landroidx/compose/ui/text/intl/LocaleList;

    move-result-object p2

    sget-object v0, Landroidx/compose/ui/text/intl/LocaleList;->Companion:Landroidx/compose/ui/text/intl/LocaleList$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/intl/LocaleList$Companion;->getCurrent()Landroidx/compose/ui/text/intl/LocaleList;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 73
    sget-object p2, Landroidx/compose/ui/text/platform/extensions/LocaleListHelperMethods;->INSTANCE:Landroidx/compose/ui/text/platform/extensions/LocaleListHelperMethods;

    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->getLocaleList()Landroidx/compose/ui/text/intl/LocaleList;

    move-result-object v0

    invoke-virtual {p2, p0, v0}, Landroidx/compose/ui/text/platform/extensions/LocaleListHelperMethods;->setTextLocales(Landroidx/compose/ui/text/platform/AndroidTextPaint;Landroidx/compose/ui/text/intl/LocaleList;)V

    .line 84
    :cond_6
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->getFontFeatureSettings()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->getFontFeatureSettings()Ljava/lang/String;

    move-result-object p2

    const-string v0, ""

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 85
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->getFontFeatureSettings()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setFontFeatureSettings(Ljava/lang/String;)V

    .line 88
    :cond_7
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->getTextGeometricTransform()Landroidx/compose/ui/text/style/TextGeometricTransform;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 89
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->getTextGeometricTransform()Landroidx/compose/ui/text/style/TextGeometricTransform;

    move-result-object p2

    sget-object v0, Landroidx/compose/ui/text/style/TextGeometricTransform;->Companion:Landroidx/compose/ui/text/style/TextGeometricTransform$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextGeometricTransform$Companion;->getNone$ui_text_release()Landroidx/compose/ui/text/style/TextGeometricTransform;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    .line 91
    invoke-virtual {p0}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->getTextScaleX()F

    move-result p2

    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->getTextGeometricTransform()Landroidx/compose/ui/text/style/TextGeometricTransform;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextGeometricTransform;->getScaleX()F

    move-result v0

    mul-float/2addr p2, v0

    invoke-virtual {p0, p2}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setTextScaleX(F)V

    .line 92
    invoke-virtual {p0}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->getTextSkewX()F

    move-result p2

    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->getTextGeometricTransform()Landroidx/compose/ui/text/style/TextGeometricTransform;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextGeometricTransform;->getSkewX()F

    move-result v0

    add-float/2addr p2, v0

    invoke-virtual {p0, p2}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setTextSkewX(F)V

    .line 97
    :cond_8
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->getColor-0d7_KjU()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setColor-8_81llA(J)V

    .line 101
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->getBrush()Landroidx/compose/ui/graphics/Brush;

    move-result-object p2

    sget-object v0, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Size$Companion;->getUnspecified-NH-jbRc()J

    move-result-wide v0

    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->getAlpha()F

    move-result v2

    invoke-virtual {p0, p2, v0, v1, v2}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setBrush-12SF9DM(Landroidx/compose/ui/graphics/Brush;JF)V

    .line 102
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->getShadow()Landroidx/compose/ui/graphics/Shadow;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setShadow(Landroidx/compose/ui/graphics/Shadow;)V

    .line 103
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->getTextDecoration()Landroidx/compose/ui/text/style/TextDecoration;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setTextDecoration(Landroidx/compose/ui/text/style/TextDecoration;)V

    .line 104
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->getDrawStyle()Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setDrawStyle(Landroidx/compose/ui/graphics/drawscope/DrawStyle;)V

    .line 107
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->getLetterSpacing-XSAIIZE()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/TextUnit;->getType-UIouoOA(J)J

    move-result-wide v0

    sget-object p2, Landroidx/compose/ui/unit/TextUnitType;->Companion:Landroidx/compose/ui/unit/TextUnitType$Companion;

    invoke-virtual {p2}, Landroidx/compose/ui/unit/TextUnitType$Companion;->getSp-UIouoOA()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->getLetterSpacing-XSAIIZE()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    move-result p2

    const/4 v0, 0x0

    cmpg-float p2, p2, v0

    if-nez p2, :cond_9

    goto :goto_3

    .line 108
    :cond_9
    invoke-virtual {p0}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->getTextSize()F

    move-result p2

    invoke-virtual {p0}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->getTextScaleX()F

    move-result v1

    mul-float/2addr p2, v1

    .line 110
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->getLetterSpacing-XSAIIZE()J

    move-result-wide v1

    invoke-interface {p3, v1, v2}, Landroidx/compose/ui/unit/Density;->toPx--R2X_6o(J)F

    move-result p3

    cmpg-float v0, p2, v0

    if-nez v0, :cond_a

    goto :goto_4

    :cond_a
    div-float/2addr p3, p2

    .line 114
    invoke-virtual {p0, p3}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setLetterSpacing(F)V

    goto :goto_4

    .line 116
    :cond_b
    :goto_3
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->getLetterSpacing-XSAIIZE()J

    move-result-wide p2

    invoke-static {p2, p3}, Landroidx/compose/ui/unit/TextUnit;->getType-UIouoOA(J)J

    move-result-wide p2

    sget-object v0, Landroidx/compose/ui/unit/TextUnitType;->Companion:Landroidx/compose/ui/unit/TextUnitType$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/TextUnitType$Companion;->getEm-UIouoOA()J

    move-result-wide v0

    invoke-static {p2, p3, v0, v1}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 117
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->getLetterSpacing-XSAIIZE()J

    move-result-wide p2

    invoke-static {p2, p3}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setLetterSpacing(F)V

    .line 121
    :cond_c
    :goto_4
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->getLetterSpacing-XSAIIZE()J

    move-result-wide v0

    .line 123
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->getBackground-0d7_KjU()J

    move-result-wide v3

    .line 124
    invoke-virtual {p1}, Landroidx/compose/ui/text/SpanStyle;->getBaselineShift-5SSeXJ0()Landroidx/compose/ui/text/style/BaselineShift;

    move-result-object v5

    move v2, p4

    .line 120
    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/text/platform/extensions/TextPaintExtensions_androidKt;->generateFallbackSpanStyle-62GTOB8(JZJLandroidx/compose/ui/text/style/BaselineShift;)Landroidx/compose/ui/text/SpanStyle;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic applySpanStyle$default(Landroidx/compose/ui/text/platform/AndroidTextPaint;Landroidx/compose/ui/text/SpanStyle;Lkotlin/jvm/functions/Function4;Landroidx/compose/ui/unit/Density;ZILjava/lang/Object;)Landroidx/compose/ui/text/SpanStyle;
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 46
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/ui/text/platform/extensions/TextPaintExtensions_androidKt;->applySpanStyle(Landroidx/compose/ui/text/platform/AndroidTextPaint;Landroidx/compose/ui/text/SpanStyle;Lkotlin/jvm/functions/Function4;Landroidx/compose/ui/unit/Density;Z)Landroidx/compose/ui/text/SpanStyle;

    move-result-object p0

    return-object p0
.end method

.method public static final correctBlurRadius(F)F
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    :cond_0
    return p0
.end method

.method private static final generateFallbackSpanStyle-62GTOB8(JZJLandroidx/compose/ui/text/style/BaselineShift;)Landroidx/compose/ui/text/SpanStyle;
    .locals 31

    move-wide/from16 v0, p3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_1

    .line 137
    invoke-static/range {p0 .. p1}, Landroidx/compose/ui/unit/TextUnit;->getType-UIouoOA(J)J

    move-result-wide v4

    sget-object v6, Landroidx/compose/ui/unit/TextUnitType;->Companion:Landroidx/compose/ui/unit/TextUnitType$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/unit/TextUnitType$Companion;->getSp-UIouoOA()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Landroidx/compose/ui/unit/TextUnitType;->equals-impl0(JJ)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static/range {p0 .. p1}, Landroidx/compose/ui/unit/TextUnit;->getValue-impl(J)F

    move-result v4

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v3

    .line 141
    :goto_1
    sget-object v5, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v5

    invoke-static {v0, v1, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v5, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/Color$Companion;->getTransparent-0d7_KjU()J

    move-result-wide v5

    invoke-static {v0, v1, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v5

    if-nez v5, :cond_2

    move v5, v2

    goto :goto_2

    :cond_2
    move v5, v3

    :goto_2
    if-eqz p5, :cond_3

    .line 142
    sget-object v6, Landroidx/compose/ui/text/style/BaselineShift;->Companion:Landroidx/compose/ui/text/style/BaselineShift$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/text/style/BaselineShift$Companion;->getNone-y9eOQZs()F

    move-result v6

    invoke-virtual/range {p5 .. p5}, Landroidx/compose/ui/text/style/BaselineShift;->unbox-impl()F

    move-result v7

    invoke-static {v7, v6}, Landroidx/compose/ui/text/style/BaselineShift;->equals-impl0(FF)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_3
    const/4 v3, 0x0

    if-nez v4, :cond_4

    if-nez v5, :cond_4

    if-nez v2, :cond_4

    goto :goto_7

    :cond_4
    if-eqz v4, :cond_5

    move-wide/from16 v18, p0

    goto :goto_4

    .line 148
    :cond_5
    sget-object v4, Landroidx/compose/ui/unit/TextUnit;->Companion:Landroidx/compose/ui/unit/TextUnit$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/unit/TextUnit$Companion;->getUnspecified-XSAIIZE()J

    move-result-wide v6

    move-wide/from16 v18, v6

    :goto_4
    if-eqz v5, :cond_6

    goto :goto_5

    .line 149
    :cond_6
    sget-object v0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v0

    :goto_5
    move-wide/from16 v23, v0

    if-eqz v2, :cond_7

    move-object/from16 v20, p5

    goto :goto_6

    :cond_7
    move-object/from16 v20, v3

    .line 147
    :goto_6
    new-instance v3, Landroidx/compose/ui/text/SpanStyle;

    move-object v8, v3

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const v29, 0xf67f

    const/16 v30, 0x0

    invoke-direct/range {v8 .. v30}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/PlatformSpanStyle;Landroidx/compose/ui/graphics/drawscope/DrawStyle;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_7
    return-object v3
.end method

.method public static final hasFontAttributes(Landroidx/compose/ui/text/SpanStyle;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0}, Landroidx/compose/ui/text/SpanStyle;->getFontFamily()Landroidx/compose/ui/text/font/FontFamily;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/ui/text/SpanStyle;->getFontStyle-4Lr2A7w()Landroidx/compose/ui/text/font/FontStyle;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/ui/text/SpanStyle;->getFontWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static final setTextMotion(Landroidx/compose/ui/text/platform/AndroidTextPaint;Landroidx/compose/ui/text/style/TextMotion;)V
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 156
    sget-object p1, Landroidx/compose/ui/text/style/TextMotion;->Companion:Landroidx/compose/ui/text/style/TextMotion$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/text/style/TextMotion$Companion;->getStatic()Landroidx/compose/ui/text/style/TextMotion;

    move-result-object p1

    .line 157
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/text/style/TextMotion;->getSubpixelTextPositioning$ui_text_release()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    invoke-virtual {p0}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->getFlags()I

    move-result v0

    or-int/lit16 v0, v0, 0x80

    goto :goto_0

    .line 160
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, -0x81

    .line 157
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setFlags(I)V

    .line 162
    invoke-virtual {p1}, Landroidx/compose/ui/text/style/TextMotion;->getLinearity-4e0Vf04$ui_text_release()I

    move-result p1

    .line 163
    sget-object v0, Landroidx/compose/ui/text/style/TextMotion$Linearity;->Companion:Landroidx/compose/ui/text/style/TextMotion$Linearity$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextMotion$Linearity$Companion;->getLinear-4e0Vf04()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/compose/ui/text/style/TextMotion$Linearity;->equals-impl0(II)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 164
    invoke-virtual {p0}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->getFlags()I

    move-result p1

    or-int/lit8 p1, p1, 0x40

    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setFlags(I)V

    .line 165
    invoke-virtual {p0, v1}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setHinting(I)V

    goto :goto_1

    .line 167
    :cond_2
    sget-object v0, Landroidx/compose/ui/text/style/TextMotion$Linearity;->Companion:Landroidx/compose/ui/text/style/TextMotion$Linearity$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextMotion$Linearity$Companion;->getFontHinting-4e0Vf04()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/compose/ui/text/style/TextMotion$Linearity;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 168
    invoke-virtual {p0}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->getFlags()I

    const/4 p1, 0x1

    .line 169
    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setHinting(I)V

    goto :goto_1

    .line 171
    :cond_3
    sget-object v0, Landroidx/compose/ui/text/style/TextMotion$Linearity;->Companion:Landroidx/compose/ui/text/style/TextMotion$Linearity$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/style/TextMotion$Linearity$Companion;->getNone-4e0Vf04()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/compose/ui/text/style/TextMotion$Linearity;->equals-impl0(II)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 172
    invoke-virtual {p0}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->getFlags()I

    .line 173
    invoke-virtual {p0, v1}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->setHinting(I)V

    goto :goto_1

    .line 175
    :cond_4
    invoke-virtual {p0}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->getFlags()I

    :goto_1
    return-void
.end method
