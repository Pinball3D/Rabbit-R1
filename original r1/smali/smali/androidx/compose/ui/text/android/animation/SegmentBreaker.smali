.class public final Landroidx/compose/ui/text/android/animation/SegmentBreaker;
.super Ljava/lang/Object;
.source "SegmentBreaker.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/text/android/animation/SegmentBreaker$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSegmentBreaker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SegmentBreaker.kt\nandroidx/compose/ui/text/android/animation/SegmentBreaker\n+ 2 TempListUtils.kt\nandroidx/compose/ui/text/android/TempListUtilsKt\n*L\n1#1,312:1\n34#2,6:313\n73#2,11:319\n73#2,11:330\n*S KotlinDebug\n*F\n+ 1 SegmentBreaker.kt\nandroidx/compose/ui/text/android/animation/SegmentBreaker\n*L\n66#1:313,6\n226#1:319,11\n275#1:330,11\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c1\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\u0002J\u001c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\nJ\u001e\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u0016\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\u0002J\u001e\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u000eH\u0002J\u0016\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\u0002J\u001e\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u000eH\u0002J$\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000eJ\u001e\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0002\u00a8\u0006\u0019"
    }
    d2 = {
        "Landroidx/compose/ui/text/android/animation/SegmentBreaker;",
        "",
        "()V",
        "breakInWords",
        "",
        "",
        "layoutHelper",
        "Landroidx/compose/ui/text/android/LayoutHelper;",
        "breakOffsets",
        "segmentType",
        "Landroidx/compose/ui/text/android/animation/SegmentType;",
        "breakSegmentWithChar",
        "Landroidx/compose/ui/text/android/animation/Segment;",
        "dropSpaces",
        "",
        "breakSegmentWithDocument",
        "breakSegmentWithLine",
        "breakSegmentWithParagraph",
        "breakSegmentWithWord",
        "breakSegments",
        "breakWithBreakIterator",
        "text",
        "",
        "breaker",
        "Ljava/text/BreakIterator;",
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


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/text/android/animation/SegmentBreaker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/text/android/animation/SegmentBreaker;

    invoke-direct {v0}, Landroidx/compose/ui/text/android/animation/SegmentBreaker;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/android/animation/SegmentBreaker;->INSTANCE:Landroidx/compose/ui/text/android/animation/SegmentBreaker;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final breakInWords(Landroidx/compose/ui/text/android/LayoutHelper;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/text/android/LayoutHelper;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 62
    invoke-virtual {p1}, Landroidx/compose/ui/text/android/LayoutHelper;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string/jumbo v1, "text"

    .line 63
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Ljava/text/BreakIterator;->getLineInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    move-result-object v1

    const-string v2, "getLineInstance(Locale.getDefault())"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Landroidx/compose/ui/text/android/animation/SegmentBreaker;->breakWithBreakIterator(Ljava/lang/CharSequence;Ljava/text/BreakIterator;)Ljava/util/List;

    move-result-object p0

    .line 65
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 314
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    .line 315
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 316
    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 66
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/text/android/LayoutHelper;->getParagraphCount()I

    move-result p0

    move v1, v2

    :goto_1
    if-ge v1, p0, :cond_3

    .line 70
    invoke-virtual {p1, v1}, Landroidx/compose/ui/text/android/LayoutHelper;->analyzeBidi(I)Ljava/text/Bidi;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_3

    .line 71
    :cond_1
    invoke-virtual {p1, v1}, Landroidx/compose/ui/text/android/LayoutHelper;->getParagraphStart(I)I

    move-result v4

    .line 72
    invoke-virtual {v3}, Ljava/text/Bidi;->getRunCount()I

    move-result v5

    move v6, v2

    :goto_2
    if-ge v6, v5, :cond_2

    .line 73
    invoke-virtual {v3, v6}, Ljava/text/Bidi;->getRunStart(I)I

    move-result v7

    add-int/2addr v7, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 76
    :cond_3
    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final breakSegmentWithChar(Landroidx/compose/ui/text/android/LayoutHelper;Z)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/text/android/LayoutHelper;",
            "Z)",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/android/animation/Segment;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 274
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 275
    sget-object v2, Landroidx/compose/ui/text/android/animation/SegmentType;->Character:Landroidx/compose/ui/text/android/animation/SegmentType;

    move-object/from16 v3, p0

    invoke-virtual {v3, v0, v2}, Landroidx/compose/ui/text/android/animation/SegmentBreaker;->breakOffsets(Landroidx/compose/ui/text/android/LayoutHelper;Landroidx/compose/ui/text/android/animation/SegmentType;)Ljava/util/List;

    move-result-object v2

    .line 331
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    goto/16 :goto_5

    .line 332
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/List;

    const/4 v5, 0x0

    .line 333
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 335
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v7

    move v8, v5

    :goto_0
    if-ge v8, v7, :cond_6

    add-int/lit8 v8, v8, 0x1

    .line 336
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 337
    move-object v10, v9

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v13

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v12

    .line 276
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/android/LayoutHelper;->getLayout()Landroid/text/Layout;

    move-result-object v6

    if-eqz p2, :cond_1

    add-int/lit8 v10, v12, 0x1

    if-ne v13, v10, :cond_1

    .line 279
    invoke-virtual {v6}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    invoke-virtual {v0, v10}, Landroidx/compose/ui/text/android/LayoutHelper;->isLineEndSpace(C)Z

    move-result v10

    if-eqz v10, :cond_1

    goto :goto_4

    .line 282
    :cond_1
    invoke-static {v6, v12, v5}, Landroidx/compose/ui/text/android/LayoutCompatKt;->getLineForOffset(Landroid/text/Layout;IZ)I

    move-result v10

    .line 283
    invoke-virtual {v6, v10}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v11

    const/4 v14, -0x1

    if-ne v11, v14, :cond_2

    move v11, v4

    goto :goto_1

    :cond_2
    move v11, v5

    .line 284
    :goto_1
    invoke-virtual {v6, v12}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v14

    if-ne v14, v11, :cond_3

    move v15, v4

    goto :goto_2

    :cond_3
    move v15, v5

    .line 286
    :goto_2
    invoke-virtual {v0, v12, v15, v5}, Landroidx/compose/ui/text/android/LayoutHelper;->getHorizontalPosition(IZZ)F

    move-result v15

    move-object/from16 v16, v6

    float-to-double v5, v15

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-float v5, v5

    float-to-int v5, v5

    if-ne v14, v11, :cond_4

    move v6, v4

    goto :goto_3

    :cond_4
    const/4 v6, 0x0

    .line 293
    :goto_3
    invoke-virtual {v0, v13, v6, v4}, Landroidx/compose/ui/text/android/LayoutHelper;->getHorizontalPosition(IZZ)F

    move-result v6

    float-to-double v14, v6

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-float v6, v14

    float-to-int v6, v6

    .line 300
    new-instance v15, Landroidx/compose/ui/text/android/animation/Segment;

    .line 303
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v14

    move-object/from16 v11, v16

    .line 304
    invoke-virtual {v11, v10}, Landroid/text/Layout;->getLineTop(I)I

    move-result v16

    .line 305
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 306
    invoke-virtual {v11, v10}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v17

    move-object v11, v15

    move-object v6, v15

    move/from16 v15, v16

    move/from16 v16, v5

    .line 300
    invoke-direct/range {v11 .. v17}, Landroidx/compose/ui/text/android/animation/Segment;-><init>(IIIIII)V

    .line 299
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    :goto_4
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 337
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v6, v9

    const/4 v5, 0x0

    goto/16 :goto_0

    .line 331
    :cond_5
    :goto_5
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    :cond_6
    return-object v1
.end method

.method private final breakSegmentWithDocument(Landroidx/compose/ui/text/android/LayoutHelper;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/text/android/LayoutHelper;",
            ")",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/android/animation/Segment;",
            ">;"
        }
    .end annotation

    .line 166
    new-instance p0, Landroidx/compose/ui/text/android/animation/Segment;

    const/4 v1, 0x0

    .line 168
    invoke-virtual {p1}, Landroidx/compose/ui/text/android/LayoutHelper;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 171
    invoke-virtual {p1}, Landroidx/compose/ui/text/android/LayoutHelper;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v5

    .line 172
    invoke-virtual {p1}, Landroidx/compose/ui/text/android/LayoutHelper;->getLayout()Landroid/text/Layout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/text/Layout;->getHeight()I

    move-result v6

    move-object v0, p0

    .line 166
    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/text/android/animation/Segment;-><init>(IIIIII)V

    .line 165
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final breakSegmentWithLine(Landroidx/compose/ui/text/android/LayoutHelper;Z)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/text/android/LayoutHelper;",
            "Z)",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/android/animation/Segment;",
            ">;"
        }
    .end annotation

    .line 203
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    check-cast p0, Ljava/util/List;

    .line 204
    invoke-virtual {p1}, Landroidx/compose/ui/text/android/LayoutHelper;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 205
    invoke-virtual {p1}, Landroidx/compose/ui/text/android/LayoutHelper;->getLayout()Landroid/text/Layout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_2

    .line 207
    new-instance v10, Landroidx/compose/ui/text/android/animation/Segment;

    .line 208
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .line 209
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    if-eqz p2, :cond_0

    .line 210
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v3

    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-float v3, v6

    float-to-int v3, v3

    move v6, v3

    goto :goto_1

    :cond_0
    move v6, v1

    .line 211
    :goto_1
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v7

    if-eqz p2, :cond_1

    .line 212
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineRight(I)F

    move-result v3

    float-to-double v8, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-float v3, v8

    float-to-int v3, v3

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v3

    :goto_2
    move v8, v3

    .line 213
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v9

    move-object v3, v10

    .line 207
    invoke-direct/range {v3 .. v9}, Landroidx/compose/ui/text/android/animation/Segment;-><init>(IIIIII)V

    .line 206
    invoke-interface {p0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method private final breakSegmentWithParagraph(Landroidx/compose/ui/text/android/LayoutHelper;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/text/android/LayoutHelper;",
            ")",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/android/animation/Segment;",
            ">;"
        }
    .end annotation

    .line 178
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    check-cast p0, Ljava/util/List;

    .line 179
    invoke-virtual {p1}, Landroidx/compose/ui/text/android/LayoutHelper;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 180
    invoke-virtual {p1}, Landroidx/compose/ui/text/android/LayoutHelper;->getParagraphCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    .line 181
    invoke-virtual {p1, v3}, Landroidx/compose/ui/text/android/LayoutHelper;->getParagraphStart(I)I

    move-result v5

    .line 182
    invoke-virtual {p1, v3}, Landroidx/compose/ui/text/android/LayoutHelper;->getParagraphEnd(I)I

    move-result v6

    .line 183
    invoke-static {v0, v5, v2}, Landroidx/compose/ui/text/android/LayoutCompatKt;->getLineForOffset(Landroid/text/Layout;IZ)I

    move-result v4

    const/4 v7, 0x1

    .line 184
    invoke-static {v0, v6, v7}, Landroidx/compose/ui/text/android/LayoutCompatKt;->getLineForOffset(Landroid/text/Layout;IZ)I

    move-result v7

    .line 186
    new-instance v11, Landroidx/compose/ui/text/android/animation/Segment;

    const/4 v8, 0x0

    .line 190
    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v9

    .line 191
    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v10

    .line 192
    invoke-virtual {v0, v7}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v12

    move-object v4, v11

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v12

    .line 186
    invoke-direct/range {v4 .. v10}, Landroidx/compose/ui/text/android/animation/Segment;-><init>(IIIIII)V

    .line 185
    invoke-interface {p0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private final breakSegmentWithWord(Landroidx/compose/ui/text/android/LayoutHelper;Z)Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/text/android/LayoutHelper;",
            "Z)",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/android/animation/Segment;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 224
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/android/LayoutHelper;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 225
    invoke-virtual {v1}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float v2, v2

    float-to-int v2, v2

    .line 226
    sget-object v3, Landroidx/compose/ui/text/android/animation/SegmentType;->Word:Landroidx/compose/ui/text/android/animation/SegmentType;

    move-object/from16 v4, p0

    invoke-virtual {v4, v0, v3}, Landroidx/compose/ui/text/android/animation/SegmentBreaker;->breakOffsets(Landroidx/compose/ui/text/android/LayoutHelper;Landroidx/compose/ui/text/android/animation/SegmentType;)Ljava/util/List;

    move-result-object v3

    .line 320
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    goto/16 :goto_5

    .line 321
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/List;

    const/4 v6, 0x0

    .line 322
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 324
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v8

    move v9, v6

    :goto_0
    if-ge v9, v8, :cond_8

    add-int/lit8 v9, v9, 0x1

    .line 325
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 326
    move-object v11, v10

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    move-result v14

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v13

    .line 227
    invoke-static {v1, v13, v6}, Landroidx/compose/ui/text/android/LayoutCompatKt;->getLineForOffset(Landroid/text/Layout;IZ)I

    move-result v7

    .line 228
    invoke-virtual {v1, v7}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_1

    move v11, v5

    goto :goto_1

    :cond_1
    move v11, v6

    .line 229
    :goto_1
    invoke-virtual {v1, v13}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v12

    if-ne v12, v11, :cond_2

    move v15, v5

    goto :goto_2

    :cond_2
    move v15, v6

    .line 231
    :goto_2
    invoke-virtual {v0, v13, v15, v6}, Landroidx/compose/ui/text/android/LayoutHelper;->getHorizontalPosition(IZZ)F

    move-result v15

    move/from16 v16, v7

    float-to-double v6, v15

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-float v6, v6

    float-to-int v6, v6

    if-ne v12, v11, :cond_3

    move v7, v5

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    .line 238
    :goto_3
    invoke-virtual {v0, v14, v7, v5}, Landroidx/compose/ui/text/android/LayoutHelper;->getHorizontalPosition(IZZ)F

    move-result v7

    move v15, v6

    float-to-double v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-float v5, v5

    float-to-int v5, v5

    move v6, v15

    .line 246
    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 247
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    if-eqz p2, :cond_5

    if-eqz v14, :cond_5

    .line 248
    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    add-int/lit8 v15, v14, -0x1

    invoke-interface {v6, v15}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/16 v15, 0x20

    if-ne v6, v15, :cond_5

    move/from16 v6, v16

    .line 249
    invoke-virtual {v1, v6}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v15

    if-eq v15, v14, :cond_6

    if-eqz v12, :cond_4

    add-int/2addr v7, v2

    goto :goto_4

    :cond_4
    sub-int/2addr v5, v2

    goto :goto_4

    :cond_5
    move/from16 v6, v16

    :cond_6
    :goto_4
    move/from16 v17, v5

    move v15, v7

    .line 259
    new-instance v5, Landroidx/compose/ui/text/android/animation/Segment;

    .line 263
    invoke-virtual {v1, v6}, Landroid/text/Layout;->getLineTop(I)I

    move-result v16

    .line 265
    invoke-virtual {v1, v6}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v18

    move-object v12, v5

    .line 259
    invoke-direct/range {v12 .. v18}, Landroidx/compose/ui/text/android/animation/Segment;-><init>(IIIIII)V

    .line 326
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v7, v10

    const/4 v5, 0x1

    const/4 v6, 0x0

    goto/16 :goto_0

    .line 320
    :cond_7
    :goto_5
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    :cond_8
    return-object v4
.end method

.method private final breakWithBreakIterator(Ljava/lang/CharSequence;Ljava/text/BreakIterator;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/text/BreakIterator;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 80
    new-instance p0, Landroidx/compose/ui/text/android/CharSequenceCharacterIterator;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Landroidx/compose/ui/text/android/CharSequenceCharacterIterator;-><init>(Ljava/lang/CharSequence;II)V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Integer;

    .line 82
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 83
    check-cast p0, Ljava/text/CharacterIterator;

    invoke-virtual {p2, p0}, Ljava/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    .line 84
    :goto_0
    invoke-virtual {p2}, Ljava/text/BreakIterator;->next()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    .line 85
    invoke-virtual {p2}, Ljava/text/BreakIterator;->current()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p1
.end method


# virtual methods
.method public final breakOffsets(Landroidx/compose/ui/text/android/LayoutHelper;Landroidx/compose/ui/text/android/animation/SegmentType;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/text/android/LayoutHelper;",
            "Landroidx/compose/ui/text/android/animation/SegmentType;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "layoutHelper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "segmentType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p1}, Landroidx/compose/ui/text/android/LayoutHelper;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 101
    sget-object v2, Landroidx/compose/ui/text/android/animation/SegmentBreaker$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Landroidx/compose/ui/text/android/animation/SegmentType;->ordinal()I

    move-result p2

    aget p2, v2, p2

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq p2, v3, :cond_4

    if-eq p2, v2, :cond_3

    const/4 v2, 0x3

    if-eq p2, v2, :cond_2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    const/4 p1, 0x5

    if-ne p2, p1, :cond_0

    const-string/jumbo p1, "text"

    .line 119
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-static {p1}, Ljava/text/BreakIterator;->getCharacterInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    move-result-object p1

    const-string p2, "getCharacterInstance(Locale.getDefault())"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    invoke-direct {p0, v1, p1}, Landroidx/compose/ui/text/android/animation/SegmentBreaker;->breakWithBreakIterator(Ljava/lang/CharSequence;Ljava/text/BreakIterator;)Ljava/util/List;

    move-result-object p0

    goto :goto_2

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 117
    :cond_1
    invoke-direct {p0, p1}, Landroidx/compose/ui/text/android/animation/SegmentBreaker;->breakInWords(Landroidx/compose/ui/text/android/LayoutHelper;)Ljava/util/List;

    move-result-object p0

    goto :goto_2

    :cond_2
    new-array p0, v3, [Ljava/lang/Integer;

    .line 111
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v4

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 112
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result p1

    :goto_0
    if-ge v4, p1, :cond_5

    .line 113
    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineEnd(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    new-array p0, v3, [Ljava/lang/Integer;

    .line 104
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p0, v4

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 105
    invoke-virtual {p1}, Landroidx/compose/ui/text/android/LayoutHelper;->getParagraphCount()I

    move-result p2

    :goto_1
    if-ge v4, p2, :cond_5

    .line 106
    invoke-virtual {p1, v4}, Landroidx/compose/ui/text/android/LayoutHelper;->getParagraphEnd(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    new-array p0, v2, [Ljava/lang/Integer;

    .line 102
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v4

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v3

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    :cond_5
    :goto_2
    return-object p0
.end method

.method public final breakSegments(Landroidx/compose/ui/text/android/LayoutHelper;Landroidx/compose/ui/text/android/animation/SegmentType;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/text/android/LayoutHelper;",
            "Landroidx/compose/ui/text/android/animation/SegmentType;",
            "Z)",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/android/animation/Segment;",
            ">;"
        }
    .end annotation

    const-string v0, "layoutHelper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "segmentType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    sget-object v0, Landroidx/compose/ui/text/android/animation/SegmentBreaker$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Landroidx/compose/ui/text/android/animation/SegmentType;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    .line 160
    invoke-direct {p0, p1, p3}, Landroidx/compose/ui/text/android/animation/SegmentBreaker;->breakSegmentWithChar(Landroidx/compose/ui/text/android/LayoutHelper;Z)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 159
    :cond_1
    invoke-direct {p0, p1, p3}, Landroidx/compose/ui/text/android/animation/SegmentBreaker;->breakSegmentWithWord(Landroidx/compose/ui/text/android/LayoutHelper;Z)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    .line 158
    :cond_2
    invoke-direct {p0, p1, p3}, Landroidx/compose/ui/text/android/animation/SegmentBreaker;->breakSegmentWithLine(Landroidx/compose/ui/text/android/LayoutHelper;Z)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    .line 157
    :cond_3
    invoke-direct {p0, p1}, Landroidx/compose/ui/text/android/animation/SegmentBreaker;->breakSegmentWithParagraph(Landroidx/compose/ui/text/android/LayoutHelper;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    .line 156
    :cond_4
    invoke-direct {p0, p1}, Landroidx/compose/ui/text/android/animation/SegmentBreaker;->breakSegmentWithDocument(Landroidx/compose/ui/text/android/LayoutHelper;)Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method
