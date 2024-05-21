.class public final Landroidx/compose/ui/text/font/FontSynthesis_androidKt;
.super Ljava/lang/Object;
.source "FontSynthesis.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a9\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0000\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\n\u0010\u000b\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006\u000c"
    }
    d2 = {
        "synthesizeTypeface",
        "",
        "Landroidx/compose/ui/text/font/FontSynthesis;",
        "typeface",
        "font",
        "Landroidx/compose/ui/text/font/Font;",
        "requestedWeight",
        "Landroidx/compose/ui/text/font/FontWeight;",
        "requestedStyle",
        "Landroidx/compose/ui/text/font/FontStyle;",
        "synthesizeTypeface-FxwP2eA",
        "(ILjava/lang/Object;Landroidx/compose/ui/text/font/Font;Landroidx/compose/ui/text/font/FontWeight;I)Ljava/lang/Object;",
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
.method public static final synthesizeTypeface-FxwP2eA(ILjava/lang/Object;Landroidx/compose/ui/text/font/Font;Landroidx/compose/ui/text/font/FontWeight;I)Ljava/lang/Object;
    .locals 4

    const-string/jumbo v0, "typeface"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "font"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestedWeight"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    instance-of v0, p1, Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    return-object p1

    .line 38
    :cond_0
    invoke-static {p0}, Landroidx/compose/ui/text/font/FontSynthesis;->isWeightOn-impl$ui_text_release(I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Landroidx/compose/ui/text/font/Font;->getWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v0

    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 39
    sget-object v0, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-static {v0}, Landroidx/compose/ui/text/font/AndroidFontUtils_androidKt;->getAndroidBold(Landroidx/compose/ui/text/font/FontWeight$Companion;)Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v0

    if-ltz v0, :cond_1

    invoke-interface {p2}, Landroidx/compose/ui/text/font/Font;->getWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v0

    sget-object v3, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-static {v3}, Landroidx/compose/ui/text/font/AndroidFontUtils_androidKt;->getAndroidBold(Landroidx/compose/ui/text/font/FontWeight$Companion;)Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v0

    if-gez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 41
    :goto_0
    invoke-static {p0}, Landroidx/compose/ui/text/font/FontSynthesis;->isStyleOn-impl$ui_text_release(I)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-interface {p2}, Landroidx/compose/ui/text/font/Font;->getStyle-_-LCdwA()I

    move-result p0

    invoke-static {p4, p0}, Landroidx/compose/ui/text/font/FontStyle;->equals-impl0(II)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    if-nez v1, :cond_3

    if-nez v0, :cond_3

    return-object p1

    :cond_3
    if-eqz v0, :cond_4

    .line 54
    invoke-virtual {p3}, Landroidx/compose/ui/text/font/FontWeight;->getWeight()I

    move-result p0

    goto :goto_2

    .line 57
    :cond_4
    invoke-interface {p2}, Landroidx/compose/ui/text/font/Font;->getWeight()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/text/font/FontWeight;->getWeight()I

    move-result p0

    :goto_2
    if-eqz v1, :cond_5

    .line 62
    sget-object p2, Landroidx/compose/ui/text/font/FontStyle;->Companion:Landroidx/compose/ui/text/font/FontStyle$Companion;

    invoke-virtual {p2}, Landroidx/compose/ui/text/font/FontStyle$Companion;->getItalic-_-LCdwA()I

    move-result p2

    invoke-static {p4, p2}, Landroidx/compose/ui/text/font/FontStyle;->equals-impl0(II)Z

    move-result p2

    goto :goto_3

    .line 65
    :cond_5
    invoke-interface {p2}, Landroidx/compose/ui/text/font/Font;->getStyle-_-LCdwA()I

    move-result p2

    sget-object p3, Landroidx/compose/ui/text/font/FontStyle;->Companion:Landroidx/compose/ui/text/font/FontStyle$Companion;

    invoke-virtual {p3}, Landroidx/compose/ui/text/font/FontStyle$Companion;->getItalic-_-LCdwA()I

    move-result p3

    invoke-static {p2, p3}, Landroidx/compose/ui/text/font/FontStyle;->equals-impl0(II)Z

    move-result p2

    .line 67
    :goto_3
    sget-object p3, Landroidx/compose/ui/text/font/TypefaceHelperMethodsApi28;->INSTANCE:Landroidx/compose/ui/text/font/TypefaceHelperMethodsApi28;

    check-cast p1, Landroid/graphics/Typeface;

    invoke-virtual {p3, p1, p0, p2}, Landroidx/compose/ui/text/font/TypefaceHelperMethodsApi28;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p0

    const-string p1, "if (Build.VERSION.SDK_IN\u2026ht, finalFontStyle)\n    }"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
