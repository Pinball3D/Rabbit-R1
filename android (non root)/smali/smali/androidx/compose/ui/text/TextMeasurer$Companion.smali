.class public final Landroidx/compose/ui/text/TextMeasurer$Companion;
.super Ljava/lang/Object;
.source "TextMeasurer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/text/TextMeasurer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002\u00a8\u0006\u0007"
    }
    d2 = {
        "Landroidx/compose/ui/text/TextMeasurer$Companion;",
        "",
        "()V",
        "layout",
        "Landroidx/compose/ui/text/TextLayoutResult;",
        "textLayoutInput",
        "Landroidx/compose/ui/text/TextLayoutInput;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/text/TextMeasurer$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$layout(Landroidx/compose/ui/text/TextMeasurer$Companion;Landroidx/compose/ui/text/TextLayoutInput;)Landroidx/compose/ui/text/TextLayoutResult;
    .locals 0

    .line 256
    invoke-direct {p0, p1}, Landroidx/compose/ui/text/TextMeasurer$Companion;->layout(Landroidx/compose/ui/text/TextLayoutInput;)Landroidx/compose/ui/text/TextLayoutResult;

    move-result-object p0

    return-object p0
.end method

.method private final layout(Landroidx/compose/ui/text/TextLayoutInput;)Landroidx/compose/ui/text/TextLayoutResult;
    .locals 17

    .line 268
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/TextLayoutInput;->getText()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v1

    .line 269
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/TextLayoutInput;->getStyle()Landroidx/compose/ui/text/TextStyle;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/TextLayoutInput;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/compose/ui/text/TextStyleKt;->resolveDefaults(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v2

    .line 270
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/TextLayoutInput;->getDensity()Landroidx/compose/ui/unit/Density;

    move-result-object v4

    .line 271
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/TextLayoutInput;->getFontFamilyResolver()Landroidx/compose/ui/text/font/FontFamily$Resolver;

    move-result-object v5

    .line 272
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/TextLayoutInput;->getPlaceholders()Ljava/util/List;

    move-result-object v3

    .line 267
    new-instance v7, Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    move-object v0, v7

    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/text/MultiParagraphIntrinsics;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;)V

    .line 275
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/TextLayoutInput;->getConstraints-msEJaDk()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v0

    .line 276
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/TextLayoutInput;->getSoftWrap()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/TextLayoutInput;->getOverflow-gIe3tQ8()I

    move-result v1

    sget-object v2, Landroidx/compose/ui/text/style/TextOverflow;->Companion:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/text/style/TextOverflow$Companion;->getEllipsis-gIe3tQ8()I

    move-result v2

    invoke-static {v1, v2}, Landroidx/compose/ui/text/style/TextOverflow;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 277
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/TextLayoutInput;->getConstraints-msEJaDk()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Constraints;->getHasBoundedWidth-impl(J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 278
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/TextLayoutInput;->getConstraints-msEJaDk()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v1

    goto :goto_0

    :cond_1
    const v1, 0x7fffffff

    .line 297
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/TextLayoutInput;->getSoftWrap()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/TextLayoutInput;->getOverflow-gIe3tQ8()I

    move-result v2

    sget-object v3, Landroidx/compose/ui/text/style/TextOverflow;->Companion:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/text/style/TextOverflow$Companion;->getEllipsis-gIe3tQ8()I

    move-result v3

    invoke-static {v2, v3}, Landroidx/compose/ui/text/style/TextOverflow;->equals-impl0(II)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    .line 298
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/TextLayoutInput;->getMaxLines()I

    move-result v2

    :goto_1
    move v10, v2

    if-ne v0, v1, :cond_3

    goto :goto_2

    .line 312
    :cond_3
    invoke-virtual {v7}, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->getMaxIntrinsicWidth()F

    move-result v2

    invoke-static {v2}, Landroidx/compose/ui/text/ParagraphKt;->ceilToInt(F)I

    move-result v2

    invoke-static {v2, v0, v1}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v1

    :goto_2
    move v12, v1

    .line 315
    new-instance v2, Landroidx/compose/ui/text/MultiParagraph;

    const/4 v11, 0x0

    const/4 v13, 0x0

    .line 317
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/TextLayoutInput;->getConstraints-msEJaDk()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v14

    const/4 v15, 0x5

    const/16 v16, 0x0

    invoke-static/range {v11 .. v16}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints$default(IIIIILjava/lang/Object;)J

    move-result-wide v8

    .line 320
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/TextLayoutInput;->getOverflow-gIe3tQ8()I

    move-result v0

    sget-object v1, Landroidx/compose/ui/text/style/TextOverflow;->Companion:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/text/style/TextOverflow$Companion;->getEllipsis-gIe3tQ8()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/ui/text/style/TextOverflow;->equals-impl0(II)Z

    move-result v11

    const/4 v12, 0x0

    move-object v6, v2

    .line 315
    invoke-direct/range {v6 .. v12}, Landroidx/compose/ui/text/MultiParagraph;-><init>(Landroidx/compose/ui/text/MultiParagraphIntrinsics;JIZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 323
    new-instance v6, Landroidx/compose/ui/text/TextLayoutResult;

    .line 326
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/text/TextLayoutInput;->getConstraints-msEJaDk()J

    move-result-wide v0

    .line 328
    invoke-virtual {v2}, Landroidx/compose/ui/text/MultiParagraph;->getWidth()F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-float v3, v3

    float-to-int v3, v3

    .line 329
    invoke-virtual {v2}, Landroidx/compose/ui/text/MultiParagraph;->getHeight()F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-float v4, v4

    float-to-int v4, v4

    .line 327
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntSizeKt;->IntSize(II)J

    move-result-wide v3

    .line 326
    invoke-static {v0, v1, v3, v4}, Landroidx/compose/ui/unit/ConstraintsKt;->constrain-4WqzIAM(JJ)J

    move-result-wide v3

    const/4 v5, 0x0

    move-object v0, v6

    move-object/from16 v1, p1

    .line 323
    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/text/TextLayoutResult;-><init>(Landroidx/compose/ui/text/TextLayoutInput;Landroidx/compose/ui/text/MultiParagraph;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v6
.end method
