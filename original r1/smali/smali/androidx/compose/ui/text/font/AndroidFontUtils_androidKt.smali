.class public final Landroidx/compose/ui/text/font/AndroidFontUtils_androidKt;
.super Ljava/lang/Object;
.source "AndroidFontUtils.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u001a%\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00012\u0006\u0010\u0008\u001a\u00020\tH\u0000\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\n\u0010\u000b\u001a\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\rH\u0000\"\u0018\u0010\u0000\u001a\u00020\u0001*\u00020\u00028@X\u0080\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0004\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006\u000f"
    }
    d2 = {
        "AndroidBold",
        "Landroidx/compose/ui/text/font/FontWeight;",
        "Landroidx/compose/ui/text/font/FontWeight$Companion;",
        "getAndroidBold",
        "(Landroidx/compose/ui/text/font/FontWeight$Companion;)Landroidx/compose/ui/text/font/FontWeight;",
        "getAndroidTypefaceStyle",
        "",
        "fontWeight",
        "fontStyle",
        "Landroidx/compose/ui/text/font/FontStyle;",
        "getAndroidTypefaceStyle-FO1MlWM",
        "(Landroidx/compose/ui/text/font/FontWeight;I)I",
        "isBold",
        "",
        "isItalic",
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
.method public static final getAndroidBold(Landroidx/compose/ui/text/font/FontWeight$Companion;)Landroidx/compose/ui/text/font/FontWeight;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getW600()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object p0

    return-object p0
.end method

.method public static final getAndroidTypefaceStyle(ZZ)I
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    const/4 p0, 0x2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final getAndroidTypefaceStyle-FO1MlWM(Landroidx/compose/ui/text/font/FontWeight;I)I
    .locals 1

    const-string v0, "fontWeight"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    sget-object v0, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-static {v0}, Landroidx/compose/ui/text/font/AndroidFontUtils_androidKt;->getAndroidBold(Landroidx/compose/ui/text/font/FontWeight$Companion;)Landroidx/compose/ui/text/font/FontWeight;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/compose/ui/text/font/FontWeight;->compareTo(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 37
    :goto_0
    sget-object v0, Landroidx/compose/ui/text/font/FontStyle;->Companion:Landroidx/compose/ui/text/font/FontStyle$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/text/font/FontStyle$Companion;->getItalic-_-LCdwA()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/compose/ui/text/font/FontStyle;->equals-impl0(II)Z

    move-result p1

    .line 38
    invoke-static {p0, p1}, Landroidx/compose/ui/text/font/AndroidFontUtils_androidKt;->getAndroidTypefaceStyle(ZZ)I

    move-result p0

    return p0
.end method
