.class public final Landroidx/compose/ui/text/android/LayoutIntrinsicsKt;
.super Ljava/lang/Object;
.source "LayoutIntrinsics.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLayoutIntrinsics.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LayoutIntrinsics.kt\nandroidx/compose/ui/text/android/LayoutIntrinsicsKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,171:1\n1855#2,2:172\n*S KotlinDebug\n*F\n+ 1 LayoutIntrinsics.kt\nandroidx/compose/ui/text/android/LayoutIntrinsicsKt\n*L\n142#1:172,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u001a\u0018\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0000\u001a \u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00012\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0005H\u0002\u00a8\u0006\u000b"
    }
    d2 = {
        "minIntrinsicWidth",
        "",
        "text",
        "",
        "paint",
        "Landroid/text/TextPaint;",
        "shouldIncreaseMaxIntrinsic",
        "",
        "desiredWidth",
        "charSequence",
        "textPaint",
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
.method public static synthetic $r8$lambda$DtXonrOPJPXM49GdHH_fq-Et3g0(Lkotlin/Pair;Lkotlin/Pair;)I
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/ui/text/android/LayoutIntrinsicsKt;->minIntrinsicWidth$lambda$0(Lkotlin/Pair;Lkotlin/Pair;)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$shouldIncreaseMaxIntrinsic(FLjava/lang/CharSequence;Landroid/text/TextPaint;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/text/android/LayoutIntrinsicsKt;->shouldIncreaseMaxIntrinsic(FLjava/lang/CharSequence;Landroid/text/TextPaint;)Z

    move-result p0

    return p0
.end method

.method public static final minIntrinsicWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F
    .locals 8

    const-string/jumbo v0, "text"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p1}, Landroid/text/TextPaint;->getTextLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/BreakIterator;->getLineInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    move-result-object v0

    .line 110
    new-instance v1, Landroidx/compose/ui/text/android/CharSequenceCharacterIterator;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3, v2}, Landroidx/compose/ui/text/android/CharSequenceCharacterIterator;-><init>(Ljava/lang/CharSequence;II)V

    check-cast v1, Ljava/text/CharacterIterator;

    invoke-virtual {v0, v1}, Ljava/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    .line 115
    new-instance v1, Ljava/util/PriorityQueue;

    .line 116
    new-instance v2, Landroidx/compose/ui/text/android/LayoutIntrinsicsKt$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroidx/compose/ui/text/android/LayoutIntrinsicsKt$$ExternalSyntheticLambda0;-><init>()V

    const/16 v4, 0xa

    .line 115
    invoke-direct {v1, v4, v2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 123
    invoke-virtual {v0}, Ljava/text/BreakIterator;->next()I

    move-result v2

    :goto_0
    move v7, v3

    move v3, v2

    move v2, v7

    const/4 v5, -0x1

    if-eq v3, v5, :cond_2

    .line 125
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->size()I

    move-result v5

    if-ge v5, v4, :cond_0

    .line 126
    new-instance v5, Lkotlin/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v5, v2, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v5}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 128
    :cond_0
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/Pair;

    if-eqz v5, :cond_1

    .line 129
    invoke-virtual {v5}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-virtual {v5}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    sub-int/2addr v6, v5

    sub-int v5, v3, v2

    if-ge v6, v5, :cond_1

    .line 130
    invoke-virtual {v1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    .line 131
    new-instance v5, Lkotlin/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v5, v2, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v5}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 137
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/text/BreakIterator;->next()I

    move-result v2

    goto :goto_0

    .line 142
    :cond_2
    check-cast v1, Ljava/lang/Iterable;

    .line 172
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/Pair;

    .line 142
    invoke-virtual {v2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {v2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 143
    invoke-static {p0, v3, v2, p1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v2

    .line 144
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_2

    :cond_3
    return v1
.end method

.method private static final minIntrinsicWidth$lambda$0(Lkotlin/Pair;Lkotlin/Pair;)I
    .locals 1

    .line 118
    invoke-virtual {p0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    sub-int/2addr v0, p0

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    sub-int/2addr p0, p1

    sub-int/2addr v0, p0

    return v0
.end method

.method private static final shouldIncreaseMaxIntrinsic(FLjava/lang/CharSequence;Landroid/text/TextPaint;)Z
    .locals 1

    const/4 v0, 0x0

    cmpg-float p0, p0, v0

    if-nez p0, :cond_0

    goto :goto_0

    .line 167
    :cond_0
    instance-of p0, p1, Landroid/text/Spanned;

    if-eqz p0, :cond_1

    .line 168
    check-cast p1, Landroid/text/Spanned;

    const-class p0, Landroidx/compose/ui/text/android/style/LetterSpacingSpanPx;

    invoke-static {p1, p0}, Landroidx/compose/ui/text/android/SpannedExtensionsKt;->hasSpan(Landroid/text/Spanned;Ljava/lang/Class;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 169
    const-class p0, Landroidx/compose/ui/text/android/style/LetterSpacingSpanEm;

    invoke-static {p1, p0}, Landroidx/compose/ui/text/android/SpannedExtensionsKt;->hasSpan(Landroid/text/Spanned;Ljava/lang/Class;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 170
    :cond_1
    invoke-virtual {p2}, Landroid/text/TextPaint;->getLetterSpacing()F

    move-result p0

    cmpg-float p0, p0, v0

    if-nez p0, :cond_2

    :goto_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
