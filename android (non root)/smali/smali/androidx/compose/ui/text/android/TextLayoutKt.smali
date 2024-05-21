.class public final Landroidx/compose/ui/text/android/TextLayoutKt;
.super Ljava/lang/Object;
.source "TextLayout.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextLayout.kt\nandroidx/compose/ui/text/android/TextLayoutKt\n+ 2 InlineClassUtils.kt\nandroidx/compose/ui/text/android/InlineClassUtilsKt\n+ 3 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n*L\n1#1,1033:1\n25#2:1034\n26#3:1035\n26#3:1036\n*S KotlinDebug\n*F\n+ 1 TextLayout.kt\nandroidx/compose/ui/text/android/TextLayoutKt\n*L\n886#1:1034\n1024#1:1035\n1028#1:1036\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a \u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0007H\u0000\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\t\u001a\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0007H\u0000\u001a1\u0010\r\u001a\u0004\u0018\u00010\u000e*\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u000b2\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0014H\u0002\u00a2\u0006\u0002\u0010\u0016\u001a\"\u0010\u0017\u001a\u00020\u0003*\u00020\u000f2\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0014H\u0002\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0018\u001a\u0017\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0014*\u00020\u000fH\u0002\u00a2\u0006\u0002\u0010\u001a\u001a\u0014\u0010\u001b\u001a\u00020\u0003*\u00020\u000fH\u0002\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001c\u001a\u0014\u0010\u001d\u001a\u00020\u001e*\u00020\u001f2\u0006\u0010 \u001a\u00020\u0007H\u0000\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u0013\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00f8\u0001\u0000\u00a2\u0006\u0004\n\u0002\u0010\u0004\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006!"
    }
    d2 = {
        "SharedTextAndroidCanvas",
        "Landroidx/compose/ui/text/android/TextAndroidCanvas;",
        "ZeroVerticalPadding",
        "Landroidx/compose/ui/text/android/VerticalPaddings;",
        "J",
        "VerticalPaddings",
        "topPadding",
        "",
        "bottomPadding",
        "(II)J",
        "getTextDirectionHeuristic",
        "Landroid/text/TextDirectionHeuristic;",
        "textDirectionHeuristic",
        "getLastLineMetrics",
        "Landroid/graphics/Paint$FontMetricsInt;",
        "Landroidx/compose/ui/text/android/TextLayout;",
        "textPaint",
        "Landroid/text/TextPaint;",
        "frameworkTextDir",
        "lineHeightSpans",
        "",
        "Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;",
        "(Landroidx/compose/ui/text/android/TextLayout;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;[Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;)Landroid/graphics/Paint$FontMetricsInt;",
        "getLineHeightPaddings",
        "(Landroidx/compose/ui/text/android/TextLayout;[Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;)J",
        "getLineHeightSpans",
        "(Landroidx/compose/ui/text/android/TextLayout;)[Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;",
        "getVerticalPaddings",
        "(Landroidx/compose/ui/text/android/TextLayout;)J",
        "isLineEllipsized",
        "",
        "Landroid/text/Layout;",
        "lineIndex",
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
.field private static final SharedTextAndroidCanvas:Landroidx/compose/ui/text/android/TextAndroidCanvas;

.field private static final ZeroVerticalPadding:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 75
    new-instance v0, Landroidx/compose/ui/text/android/TextAndroidCanvas;

    invoke-direct {v0}, Landroidx/compose/ui/text/android/TextAndroidCanvas;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/android/TextLayoutKt;->SharedTextAndroidCanvas:Landroidx/compose/ui/text/android/TextAndroidCanvas;

    const/4 v0, 0x0

    .line 944
    invoke-static {v0, v0}, Landroidx/compose/ui/text/android/TextLayoutKt;->VerticalPaddings(II)J

    move-result-wide v0

    sput-wide v0, Landroidx/compose/ui/text/android/TextLayoutKt;->ZeroVerticalPadding:J

    return-void
.end method

.method public static final VerticalPaddings(II)J
    .locals 4

    int-to-long v0, p0

    const/16 p0, 0x20

    shl-long/2addr v0, p0

    int-to-long p0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    .line 886
    invoke-static {p0, p1}, Landroidx/compose/ui/text/android/VerticalPaddings;->constructor-impl(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic access$getLastLineMetrics(Landroidx/compose/ui/text/android/TextLayout;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;[Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;)Landroid/graphics/Paint$FontMetricsInt;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/text/android/TextLayoutKt;->getLastLineMetrics(Landroidx/compose/ui/text/android/TextLayout;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;[Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;)Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getLineHeightPaddings(Landroidx/compose/ui/text/android/TextLayout;[Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;)J
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/text/android/TextLayoutKt;->getLineHeightPaddings(Landroidx/compose/ui/text/android/TextLayout;[Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic access$getLineHeightSpans(Landroidx/compose/ui/text/android/TextLayout;)[Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/text/android/TextLayoutKt;->getLineHeightSpans(Landroidx/compose/ui/text/android/TextLayout;)[Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSharedTextAndroidCanvas$p()Landroidx/compose/ui/text/android/TextAndroidCanvas;
    .locals 1

    sget-object v0, Landroidx/compose/ui/text/android/TextLayoutKt;->SharedTextAndroidCanvas:Landroidx/compose/ui/text/android/TextAndroidCanvas;

    return-object v0
.end method

.method public static final synthetic access$getVerticalPaddings(Landroidx/compose/ui/text/android/TextLayout;)J
    .locals 2

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/text/android/TextLayoutKt;->getVerticalPaddings(Landroidx/compose/ui/text/android/TextLayout;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static final getLastLineMetrics(Landroidx/compose/ui/text/android/TextLayout;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;[Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;)Landroid/graphics/Paint$FontMetricsInt;
    .locals 29

    .line 975
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/android/TextLayout;->getLineCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 977
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/android/TextLayout;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/android/TextLayout;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v3

    if-ne v2, v3, :cond_2

    move-object/from16 v2, p3

    .line 978
    array-length v3, v2

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    xor-int/2addr v1, v3

    if-eqz v1, :cond_2

    .line 980
    new-instance v1, Landroid/text/SpannableString;

    const-string/jumbo v3, "\u200b"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-direct {v1, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 981
    invoke-static/range {p3 .. p3}, Lkotlin/collections/ArraysKt;->first([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;

    .line 984
    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v3

    if-eqz v0, :cond_1

    .line 985
    invoke-virtual {v2}, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->getTrimLastLineBottom()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v4

    goto :goto_1

    .line 988
    :cond_1
    invoke-virtual {v2}, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->getTrimLastLineBottom()Z

    move-result v0

    .line 982
    :goto_1
    invoke-virtual {v2, v4, v3, v0}, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->copy$ui_text_release(IIZ)Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;

    move-result-object v0

    .line 995
    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v2

    const/16 v3, 0x21

    .line 992
    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 999
    sget-object v5, Landroidx/compose/ui/text/android/StaticLayoutFactory;->INSTANCE:Landroidx/compose/ui/text/android/StaticLayoutFactory;

    .line 1002
    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v8

    .line 1006
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/android/TextLayout;->getIncludePadding()Z

    move-result v19

    .line 1007
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/text/android/TextLayout;->getFallbackLineSpacing()Z

    move-result v20

    .line 1000
    move-object v6, v1

    check-cast v6, Ljava/lang/CharSequence;

    const/4 v7, 0x0

    const v10, 0x7fffffff

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const v27, 0x1f9fc0

    const/16 v28, 0x0

    move-object/from16 v9, p1

    move-object/from16 v11, p2

    .line 999
    invoke-static/range {v5 .. v28}, Landroidx/compose/ui/text/android/StaticLayoutFactory;->create$default(Landroidx/compose/ui/text/android/StaticLayoutFactory;Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/TextDirectionHeuristic;Landroid/text/Layout$Alignment;ILandroid/text/TextUtils$TruncateAt;IFFIZZIIII[I[IILjava/lang/Object;)Landroid/text/StaticLayout;

    move-result-object v0

    .line 1010
    new-instance v1, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v1}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    .line 1011
    invoke-virtual {v0, v4}, Landroid/text/StaticLayout;->getLineAscent(I)I

    move-result v2

    iput v2, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 1012
    invoke-virtual {v0, v4}, Landroid/text/StaticLayout;->getLineDescent(I)I

    move-result v2

    iput v2, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 1013
    invoke-virtual {v0, v4}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v2

    iput v2, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 1014
    invoke-virtual {v0, v4}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v0

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    return-object v1

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private static final getLineHeightPaddings(Landroidx/compose/ui/text/android/TextLayout;[Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;)J
    .locals 5

    .line 953
    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    if-ge v0, p0, :cond_2

    aget-object v3, p1, v0

    .line 954
    invoke-virtual {v3}, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->getFirstAscentDiff()I

    move-result v4

    if-gez v4, :cond_0

    .line 955
    invoke-virtual {v3}, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->getFirstAscentDiff()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 957
    :cond_0
    invoke-virtual {v3}, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->getLastDescentDiff()I

    move-result v4

    if-gez v4, :cond_1

    .line 958
    invoke-virtual {v3}, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->getLastDescentDiff()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    if-nez v2, :cond_3

    sget-wide p0, Landroidx/compose/ui/text/android/TextLayoutKt;->ZeroVerticalPadding:J

    goto :goto_1

    .line 965
    :cond_3
    invoke-static {v1, v2}, Landroidx/compose/ui/text/android/TextLayoutKt;->VerticalPaddings(II)J

    move-result-wide p0

    :goto_1
    return-wide p0
.end method

.method private static final getLineHeightSpans(Landroidx/compose/ui/text/android/TextLayout;)[Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;
    .locals 3

    .line 1024
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spanned;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p0, v1, [Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;

    return-object p0

    .line 1025
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type android.text.Spanned"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/text/Spanned;

    .line 1026
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    const-class v2, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;

    .line 1025
    invoke-interface {v0, v1, p0, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;

    const-string v0, "lineHeightStyleSpans"

    .line 1028
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p0

    if-nez v0, :cond_1

    new-array p0, v1, [Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;

    :cond_1
    return-object p0
.end method

.method public static final getTextDirectionHeuristic(I)Landroid/text/TextDirectionHeuristic;
    .locals 2

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    const-string v1, "FIRSTSTRONG_LTR"

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    .line 842
    sget-object p0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 837
    :cond_0
    sget-object p0, Landroid/text/TextDirectionHeuristics;->LOCALE:Landroid/text/TextDirectionHeuristic;

    const-string v0, "LOCALE"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 840
    :cond_1
    sget-object p0, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    const-string v0, "ANYRTL_LTR"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 839
    :cond_2
    sget-object p0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    const-string v0, "FIRSTSTRONG_RTL"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 841
    :cond_3
    sget-object p0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 838
    :cond_4
    sget-object p0, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    const-string v0, "RTL"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 836
    :cond_5
    sget-object p0, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    const-string v0, "LTR"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method private static final getVerticalPaddings(Landroidx/compose/ui/text/android/TextLayout;)J
    .locals 7

    .line 900
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getIncludePadding()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->isFallbackLinespacingApplied$ui_text_release()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 902
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 903
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "paint"

    .line 905
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "text"

    .line 906
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 907
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getLayout()Landroid/text/Layout;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    .line 908
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getLayout()Landroid/text/Layout;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    .line 905
    invoke-static {v0, v1, v2, v4}, Landroidx/compose/ui/text/android/PaintExtensionsKt;->getCharSequenceBounds(Landroid/text/TextPaint;Ljava/lang/CharSequence;II)Landroid/graphics/Rect;

    move-result-object v2

    .line 910
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getLayout()Landroid/text/Layout;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/text/Layout;->getLineAscent(I)I

    move-result v3

    .line 914
    iget v4, v2, Landroid/graphics/Rect;->top:I

    if-ge v4, v3, :cond_1

    .line 915
    iget v4, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    goto :goto_0

    .line 917
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/Layout;->getTopPadding()I

    move-result v3

    .line 920
    :goto_0
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getLineCount()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    goto :goto_1

    .line 924
    :cond_2
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getLineCount()I

    move-result v2

    sub-int/2addr v2, v5

    .line 925
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getLayout()Landroid/text/Layout;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getLayout()Landroid/text/Layout;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v2

    invoke-static {v0, v1, v4, v2}, Landroidx/compose/ui/text/android/PaintExtensionsKt;->getCharSequenceBounds(Landroid/text/TextPaint;Ljava/lang/CharSequence;II)Landroid/graphics/Rect;

    move-result-object v2

    .line 927
    :goto_1
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getLineCount()I

    move-result v1

    sub-int/2addr v1, v5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v0

    .line 931
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    if-le v1, v0, :cond_3

    .line 932
    iget p0, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, v0

    goto :goto_2

    .line 934
    :cond_3
    invoke-virtual {p0}, Landroidx/compose/ui/text/android/TextLayout;->getLayout()Landroid/text/Layout;

    move-result-object p0

    invoke-virtual {p0}, Landroid/text/Layout;->getBottomPadding()I

    move-result p0

    :goto_2
    if-nez v3, :cond_4

    if-nez p0, :cond_4

    sget-wide v0, Landroidx/compose/ui/text/android/TextLayoutKt;->ZeroVerticalPadding:J

    goto :goto_3

    .line 940
    :cond_4
    invoke-static {v3, p0}, Landroidx/compose/ui/text/android/TextLayoutKt;->VerticalPaddings(II)J

    move-result-wide v0

    :goto_3
    return-wide v0

    :cond_5
    :goto_4
    sget-wide v0, Landroidx/compose/ui/text/android/TextLayoutKt;->ZeroVerticalPadding:J

    return-wide v0
.end method

.method public static final isLineEllipsized(Landroid/text/Layout;I)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1032
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
