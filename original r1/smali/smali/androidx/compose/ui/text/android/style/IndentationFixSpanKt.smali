.class public final Landroidx/compose/ui/text/android/style/IndentationFixSpanKt;
.super Ljava/lang/Object;
.source "IndentationFixSpan.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/text/android/style/IndentationFixSpanKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u001e\u0010\u0002\u001a\u00020\u0003*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008H\u0000\u001a\u001e\u0010\t\u001a\u00020\u0003*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008H\u0000\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "EllipsisChar",
        "",
        "getEllipsizedLeftPadding",
        "",
        "Landroid/text/Layout;",
        "lineIndex",
        "",
        "paint",
        "Landroid/graphics/Paint;",
        "getEllipsizedRightPadding",
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


# static fields
.field private static final EllipsisChar:Ljava/lang/String; = "\u2026"


# direct methods
.method public static final getEllipsizedLeftPadding(Landroid/text/Layout;ILandroid/graphics/Paint;)F
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v0

    .line 84
    invoke-static {p0, p1}, Landroidx/compose/ui/text/android/TextLayoutKt;->isLineEllipsized(Landroid/text/Layout;I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 85
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    cmpg-float v1, v0, v2

    if-gez v1, :cond_2

    .line 88
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v1

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 89
    invoke-virtual {p0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    sub-float/2addr v1, v0

    const-string/jumbo v2, "\u2026"

    .line 90
    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p2

    add-float/2addr v1, p2

    .line 92
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Landroidx/compose/ui/text/android/style/IndentationFixSpanKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result p1

    aget p1, p2, p1

    if-ne p1, v3, :cond_1

    .line 94
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-virtual {p0}, Landroid/text/Layout;->getWidth()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr p0, v1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p0, p2

    goto :goto_1

    .line 97
    :cond_1
    :goto_0
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-virtual {p0}, Landroid/text/Layout;->getWidth()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr p0, v1

    :goto_1
    add-float/2addr p1, p0

    return p1

    :cond_2
    return v2
.end method

.method public static synthetic getEllipsizedLeftPadding$default(Landroid/text/Layout;ILandroid/graphics/Paint;ILjava/lang/Object;)F
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 82
    invoke-virtual {p0}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object p2

    const-string/jumbo p3, "this.paint"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/graphics/Paint;

    :cond_0
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/text/android/style/IndentationFixSpanKt;->getEllipsizedLeftPadding(Landroid/text/Layout;ILandroid/graphics/Paint;)F

    move-result p0

    return p0
.end method

.method public static final getEllipsizedRightPadding(Landroid/text/Layout;ILandroid/graphics/Paint;)F
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    invoke-static {p0, p1}, Landroidx/compose/ui/text/android/TextLayoutKt;->isLineEllipsized(Landroid/text/Layout;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 115
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 116
    invoke-virtual {p0}, Landroid/text/Layout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 118
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 119
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    .line 120
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v1

    sub-float/2addr v1, v0

    const-string/jumbo v0, "\u2026"

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p2

    add-float/2addr v1, p2

    .line 122
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/compose/ui/text/android/style/IndentationFixSpanKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 124
    invoke-virtual {p0}, Landroid/text/Layout;->getWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineRight(I)F

    move-result p1

    sub-float/2addr p2, p1

    invoke-virtual {p0}, Landroid/text/Layout;->getWidth()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr p0, v1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p0, p1

    goto :goto_1

    .line 127
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/text/Layout;->getWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineRight(I)F

    move-result p1

    sub-float/2addr p2, p1

    invoke-virtual {p0}, Landroid/text/Layout;->getWidth()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr p0, v1

    :goto_1
    sub-float/2addr p2, p0

    return p2

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic getEllipsizedRightPadding$default(Landroid/text/Layout;ILandroid/graphics/Paint;ILjava/lang/Object;)F
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 113
    invoke-virtual {p0}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object p2

    const-string/jumbo p3, "this.paint"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/graphics/Paint;

    :cond_0
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/text/android/style/IndentationFixSpanKt;->getEllipsizedRightPadding(Landroid/text/Layout;ILandroid/graphics/Paint;)F

    move-result p0

    return p0
.end method
