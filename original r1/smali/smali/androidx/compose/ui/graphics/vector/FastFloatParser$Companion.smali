.class public final Landroidx/compose/ui/graphics/vector/FastFloatParser$Companion;
.super Ljava/lang/Object;
.source "FastFloatParser.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/graphics/vector/FastFloatParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFastFloatParser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FastFloatParser.kt\nandroidx/compose/ui/graphics/vector/FastFloatParser$Companion\n+ 2 FastFloatParser.kt\nandroidx/compose/ui/graphics/vector/FastFloatParserKt\n*L\n1#1,631:1\n590#2:632\n590#2:633\n592#2,5:634\n618#2,11:639\n592#2,5:650\n590#2:655\n592#2,5:656\n592#2,5:661\n590#2:666\n592#2,5:667\n592#2,5:672\n592#2,5:677\n592#2,5:682\n599#2,16:687\n*S KotlinDebug\n*F\n+ 1 FastFloatParser.kt\nandroidx/compose/ui/graphics/vector/FastFloatParser$Companion\n*L\n69#1:632\n77#1:633\n79#1:634,5\n95#1:639,11\n101#1:650,5\n102#1:655\n104#1:656,5\n117#1:661,5\n125#1:666\n129#1:667,5\n148#1:672,5\n163#1:677,5\n177#1:682,5\n224#1:687,16\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0014\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J&\u0010\r\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0013R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0019\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\n\u0002\u0010\nR\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006\u0014"
    }
    d2 = {
        "Landroidx/compose/ui/graphics/vector/FastFloatParser$Companion;",
        "",
        "()V",
        "FloatMaxExponent",
        "",
        "FloatMaxExponentNumber",
        "FloatMinExponent",
        "FloatSmallestExponent",
        "Mantissa64",
        "Lkotlin/ULongArray;",
        "[J",
        "PowersOfTen",
        "",
        "nextFloat",
        "s",
        "",
        "start",
        "end",
        "result",
        "Landroidx/compose/ui/graphics/vector/FloatResult;",
        "ui-graphics_release"
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

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/graphics/vector/FastFloatParser$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final nextFloat(Ljava/lang/String;IILandroidx/compose/ui/graphics/vector/FloatResult;)I
    .locals 26

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    const-string v4, "s"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "result"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v4, 0x7fc00000    # Float.NaN

    .line 53
    invoke-virtual {v3, v4}, Landroidx/compose/ui/graphics/vector/FloatResult;->setValue(F)V

    const/4 v4, 0x0

    .line 54
    invoke-virtual {v3, v4}, Landroidx/compose/ui/graphics/vector/FloatResult;->setValid(Z)V

    if-ne v1, v2, :cond_0

    return v1

    .line 59
    :cond_0
    invoke-virtual/range {p1 .. p2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2d

    if-ne v5, v6, :cond_1

    const/4 v8, 0x1

    goto :goto_0

    :cond_1
    move v8, v4

    :goto_0
    const/16 v9, 0x2e

    const/16 v10, 0xa

    if-eqz v8, :cond_4

    add-int/lit8 v5, v1, 0x1

    if-ne v5, v2, :cond_2

    return v5

    .line 68
    :cond_2
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v11

    add-int/lit8 v12, v11, -0x30

    int-to-char v12, v12

    if-ge v12, v10, :cond_3

    goto :goto_1

    :cond_3
    if-eq v11, v9, :cond_5

    return v5

    :cond_4
    move v11, v5

    move v5, v1

    :cond_5
    :goto_1
    move v14, v5

    const-wide/16 v15, 0x0

    :goto_2
    const-wide/16 v17, 0xa

    if-eq v14, v2, :cond_7

    add-int/lit8 v4, v11, -0x30

    int-to-char v7, v4

    if-ge v7, v10, :cond_7

    mul-long v15, v15, v17

    int-to-long v6, v4

    add-long/2addr v15, v6

    add-int/lit8 v14, v14, 0x1

    .line 634
    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ge v14, v6, :cond_6

    .line 635
    invoke-interface {v4, v14}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    move v11, v4

    goto :goto_3

    :cond_6
    const/4 v11, 0x0

    :goto_3
    const/4 v4, 0x0

    const/16 v6, 0x2d

    goto :goto_2

    :cond_7
    sub-int v4, v14, v5

    const/16 v6, 0x10

    if-eq v14, v2, :cond_e

    if-ne v11, v9, :cond_e

    add-int/lit8 v11, v14, 0x1

    move v9, v11

    :goto_4
    sub-int v12, v2, v9

    const/4 v13, 0x4

    if-lt v12, v13, :cond_9

    .line 639
    move-object v12, v0

    check-cast v12, Ljava/lang/CharSequence;

    invoke-interface {v12, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    move/from16 v20, v11

    int-to-long v10, v13

    add-int/lit8 v13, v9, 0x1

    .line 640
    invoke-interface {v12, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    move/from16 v21, v8

    int-to-long v7, v13

    shl-long/2addr v7, v6

    or-long/2addr v7, v10

    add-int/lit8 v10, v9, 0x2

    .line 641
    invoke-interface {v12, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    int-to-long v10, v10

    const/16 v13, 0x20

    shl-long/2addr v10, v13

    or-long/2addr v7, v10

    add-int/lit8 v10, v9, 0x3

    .line 642
    invoke-interface {v12, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    int-to-long v10, v10

    const/16 v12, 0x30

    shl-long/2addr v10, v12

    or-long/2addr v7, v10

    const-wide v10, 0x30003000300030L

    sub-long v10, v7, v10

    const-wide v12, 0x46004600460046L    # 2.447700077935472E-307

    add-long/2addr v7, v12

    or-long/2addr v7, v10

    const-wide v12, -0x7f007f007f0080L

    and-long/2addr v7, v12

    const-wide/16 v12, 0x0

    cmp-long v7, v7, v12

    if-eqz v7, :cond_8

    const/4 v7, -0x1

    goto :goto_5

    :cond_8
    const-wide v7, 0x3e80064000a0001L

    mul-long/2addr v10, v7

    const/16 v7, 0x30

    ushr-long/2addr v10, v7

    long-to-int v7, v10

    :goto_5
    if-ltz v7, :cond_a

    const-wide/16 v10, 0x2710

    mul-long/2addr v15, v10

    int-to-long v7, v7

    add-long/2addr v15, v7

    add-int/lit8 v9, v9, 0x4

    move/from16 v11, v20

    move/from16 v8, v21

    goto :goto_4

    :cond_9
    move/from16 v21, v8

    move/from16 v20, v11

    .line 650
    :cond_a
    move-object v7, v0

    check-cast v7, Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-ge v9, v8, :cond_b

    .line 651
    invoke-interface {v7, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    goto :goto_6

    :cond_b
    const/4 v8, 0x0

    :goto_6
    move v11, v8

    :goto_7
    if-eq v9, v2, :cond_d

    add-int/lit8 v8, v11, -0x30

    int-to-char v10, v8

    const/16 v12, 0xa

    if-ge v10, v12, :cond_d

    mul-long v15, v15, v17

    int-to-long v10, v8

    add-long/2addr v15, v10

    add-int/lit8 v9, v9, 0x1

    .line 656
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-ge v9, v8, :cond_c

    .line 657
    invoke-interface {v7, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    goto :goto_6

    :cond_c
    const/4 v11, 0x0

    goto :goto_7

    :cond_d
    sub-int v7, v20, v9

    sub-int/2addr v4, v7

    move/from16 v8, v20

    goto :goto_8

    :cond_e
    move/from16 v21, v8

    move v8, v14

    move v9, v8

    const/4 v7, 0x0

    :goto_8
    if-nez v4, :cond_f

    return v9

    :cond_f
    const/16 v10, 0x20

    or-int/2addr v11, v10

    const/16 v10, 0x65

    if-ne v11, v10, :cond_19

    add-int/lit8 v10, v9, 0x1

    .line 661
    move-object v11, v0

    check-cast v11, Ljava/lang/CharSequence;

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v13

    if-ge v10, v13, :cond_10

    .line 662
    invoke-interface {v11, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    const/16 v6, 0x2d

    goto :goto_9

    :cond_10
    const/16 v6, 0x2d

    const/4 v13, 0x0

    :goto_9
    if-ne v13, v6, :cond_11

    const/4 v6, 0x1

    goto :goto_a

    :cond_11
    const/4 v6, 0x0

    :goto_a
    if-nez v6, :cond_12

    const/16 v12, 0x2b

    if-ne v13, v12, :cond_13

    :cond_12
    add-int/lit8 v10, v9, 0x2

    .line 124
    :cond_13
    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/4 v13, 0x0

    :goto_b
    if-eq v10, v2, :cond_16

    const/16 v19, 0x30

    add-int/lit8 v12, v12, -0x30

    move-wide/from16 v22, v15

    int-to-char v15, v12

    const/16 v1, 0xa

    if-ge v15, v1, :cond_17

    const/16 v15, 0x400

    if-ge v13, v15, :cond_14

    mul-int/lit8 v13, v13, 0xa

    add-int/2addr v13, v12

    :cond_14
    add-int/lit8 v10, v10, 0x1

    .line 667
    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v12

    if-ge v10, v12, :cond_15

    .line 668
    invoke-interface {v11, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    goto :goto_c

    :cond_15
    const/4 v12, 0x0

    :goto_c
    move/from16 v1, p2

    move-wide/from16 v15, v22

    goto :goto_b

    :cond_16
    move-wide/from16 v22, v15

    :cond_17
    if-eqz v6, :cond_18

    neg-int v13, v13

    :cond_18
    add-int/2addr v7, v13

    goto :goto_d

    :cond_19
    move-wide/from16 v22, v15

    move v10, v9

    const/4 v13, 0x0

    :goto_d
    const/16 v1, 0x13

    if-le v4, v1, :cond_23

    .line 143
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move v11, v5

    :goto_e
    if-eq v10, v2, :cond_1d

    const/16 v12, 0x30

    const/16 v15, 0x2e

    if-eq v6, v12, :cond_1a

    if-ne v6, v15, :cond_1d

    :cond_1a
    if-ne v6, v12, :cond_1b

    add-int/lit8 v4, v4, -0x1

    :cond_1b
    const/4 v6, 0x1

    add-int/2addr v11, v6

    .line 672
    move-object v6, v0

    check-cast v6, Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v12

    if-ge v11, v12, :cond_1c

    .line 673
    invoke-interface {v6, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    goto :goto_e

    :cond_1c
    const/4 v6, 0x0

    goto :goto_e

    :cond_1d
    if-le v4, v1, :cond_23

    .line 156
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const-wide/16 v6, 0x0

    :goto_f
    const-wide v11, 0xde0b6b3a7640000L

    if-eq v5, v14, :cond_1f

    .line 160
    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v2

    invoke-static {v2, v3, v11, v12}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result v2

    if-gez v2, :cond_1f

    mul-long v6, v6, v17

    const/16 v2, 0x30

    sub-int/2addr v1, v2

    int-to-long v1, v1

    add-long/2addr v6, v1

    add-int/lit8 v5, v5, 0x1

    .line 677
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v5, v2, :cond_1e

    .line 678
    invoke-interface {v1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    goto :goto_10

    :cond_1e
    const/4 v1, 0x0

    :goto_10
    move-object/from16 v3, p4

    goto :goto_f

    .line 166
    :cond_1f
    invoke-static {v6, v7}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v1

    invoke-static {v1, v2, v11, v12}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result v1

    if-ltz v1, :cond_20

    sub-int/2addr v14, v5

    add-int v1, v14, v13

    const/4 v4, 0x1

    move-wide/from16 v24, v6

    move v7, v1

    move-wide/from16 v1, v24

    goto :goto_12

    .line 170
    :cond_20
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move-wide v15, v6

    move v2, v8

    :goto_11
    if-eq v2, v9, :cond_22

    .line 174
    invoke-static/range {v15 .. v16}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    invoke-static {v3, v4, v11, v12}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result v3

    if-gez v3, :cond_22

    mul-long v15, v15, v17

    const/16 v3, 0x30

    sub-int/2addr v1, v3

    int-to-long v4, v1

    add-long/2addr v15, v4

    add-int/lit8 v2, v2, 0x1

    .line 682
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v2, v4, :cond_21

    .line 683
    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    goto :goto_11

    :cond_21
    const/4 v1, 0x0

    goto :goto_11

    :cond_22
    sub-int/2addr v8, v2

    add-int v7, v8, v13

    move-wide v1, v15

    const/4 v4, 0x1

    goto :goto_12

    :cond_23
    move-wide/from16 v1, v22

    const/4 v4, 0x0

    :goto_12
    const/16 v3, -0xa

    if-gt v3, v7, :cond_26

    const/16 v3, 0xb

    if-ge v7, v3, :cond_26

    if-nez v4, :cond_26

    .line 187
    invoke-static {v1, v2}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v3

    const-wide/32 v5, 0x1000000

    invoke-static {v5, v6}, Lkotlin/ULong;->constructor-impl(J)J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result v3

    if-gtz v3, :cond_26

    long-to-float v0, v1

    if-gez v7, :cond_24

    .line 191
    invoke-static {}, Landroidx/compose/ui/graphics/vector/FastFloatParser;->access$getPowersOfTen$cp()[F

    move-result-object v1

    neg-int v2, v7

    aget v1, v1, v2

    div-float/2addr v0, v1

    goto :goto_13

    .line 193
    :cond_24
    invoke-static {}, Landroidx/compose/ui/graphics/vector/FastFloatParser;->access$getPowersOfTen$cp()[F

    move-result-object v1

    aget v1, v1, v7

    mul-float/2addr v0, v1

    :goto_13
    move-object/from16 v3, p4

    const/4 v1, 0x1

    .line 196
    invoke-virtual {v3, v1}, Landroidx/compose/ui/graphics/vector/FloatResult;->setValid(Z)V

    if-eqz v21, :cond_25

    neg-float v0, v0

    .line 197
    :cond_25
    invoke-virtual {v3, v0}, Landroidx/compose/ui/graphics/vector/FloatResult;->setValue(F)V

    return v10

    :cond_26
    move-object/from16 v3, p4

    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    if-nez v6, :cond_28

    const/4 v4, 0x1

    .line 206
    invoke-virtual {v3, v4}, Landroidx/compose/ui/graphics/vector/FloatResult;->setValid(Z)V

    if-eqz v21, :cond_27

    const/high16 v0, -0x80000000

    goto :goto_14

    :cond_27
    const/4 v0, 0x0

    .line 207
    :goto_14
    invoke-virtual {v3, v0}, Landroidx/compose/ui/graphics/vector/FloatResult;->setValue(F)V

    return v10

    :cond_28
    const/16 v4, -0x7e

    const-string/jumbo v5, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    if-gt v4, v7, :cond_2f

    const/16 v4, 0x80

    if-ge v7, v4, :cond_2f

    .line 220
    invoke-static {}, Landroidx/compose/ui/graphics/vector/FastFloatParser;->access$getMantissa64$cp()[J

    move-result-object v4

    add-int/lit16 v6, v7, 0x145

    invoke-static {v4, v6}, Lkotlin/ULongArray;->get-s-VKNKU([JI)J

    move-result-wide v8

    .line 221
    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v4

    shl-long/2addr v1, v4

    const-wide v11, 0xffffffffL

    and-long v13, v1, v11

    const/16 v6, 0x20

    ushr-long/2addr v1, v6

    and-long v15, v8, v11

    ushr-long/2addr v8, v6

    mul-long v17, v1, v8

    mul-long/2addr v8, v13

    mul-long/2addr v1, v15

    mul-long/2addr v13, v15

    ushr-long/2addr v13, v6

    add-long/2addr v1, v13

    and-long/2addr v11, v8

    add-long/2addr v1, v11

    ushr-long/2addr v1, v6

    add-long v17, v17, v1

    ushr-long v1, v8, v6

    add-long v17, v17, v1

    const/16 v1, 0x3f

    ushr-long v8, v17, v1

    long-to-int v2, v8

    add-int/lit8 v6, v2, 0x9

    ushr-long v8, v17, v6

    const/4 v6, 0x1

    xor-int/2addr v2, v6

    add-int/2addr v4, v2

    const-wide/16 v11, 0x1ff

    and-long v13, v17, v11

    cmp-long v2, v13, v11

    if-eqz v2, :cond_2e

    const-wide/16 v11, 0x0

    cmp-long v2, v13, v11

    const-wide/16 v13, 0x1

    if-nez v2, :cond_29

    const-wide/16 v15, 0x3

    and-long/2addr v15, v8

    cmp-long v2, v15, v13

    if-nez v2, :cond_29

    goto :goto_17

    :cond_29
    add-long/2addr v8, v13

    const/4 v2, 0x1

    ushr-long/2addr v8, v2

    const-wide/high16 v15, 0x20000000000000L

    cmp-long v2, v8, v15

    if-ltz v2, :cond_2a

    add-int/lit8 v4, v4, -0x1

    const-wide/high16 v8, 0x10000000000000L

    :cond_2a
    const-wide v15, -0x10000000000001L

    and-long/2addr v8, v15

    const-wide/32 v15, 0x3526a

    int-to-long v6, v7

    mul-long/2addr v6, v15

    const/16 v2, 0x10

    shr-long/2addr v6, v2

    const/16 v2, 0x400

    int-to-long v11, v2

    add-long/2addr v6, v11

    int-to-long v1, v1

    add-long/2addr v6, v1

    int-to-long v1, v4

    sub-long/2addr v6, v1

    cmp-long v1, v6, v13

    if-ltz v1, :cond_2d

    const-wide/16 v1, 0x7fe

    cmp-long v1, v6, v1

    if-lez v1, :cond_2b

    goto :goto_16

    :cond_2b
    const/16 v0, 0x34

    shl-long v0, v6, v0

    or-long/2addr v0, v8

    if-eqz v21, :cond_2c

    const-wide/high16 v12, -0x8000000000000000L

    goto :goto_15

    :cond_2c
    const-wide/16 v12, 0x0

    :goto_15
    or-long/2addr v0, v12

    const/4 v2, 0x1

    .line 262
    invoke-virtual {v3, v2}, Landroidx/compose/ui/graphics/vector/FloatResult;->setValid(Z)V

    .line 263
    sget-object v2, Lkotlin/jvm/internal/DoubleCompanionObject;->INSTANCE:Lkotlin/jvm/internal/DoubleCompanionObject;

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {v3, v0}, Landroidx/compose/ui/graphics/vector/FloatResult;->setValue(F)V

    return v10

    :cond_2d
    :goto_16
    move/from16 v1, p2

    .line 252
    :try_start_0
    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {v3, v0}, Landroidx/compose/ui/graphics/vector/FloatResult;->setValue(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    .line 254
    invoke-virtual {v3, v2}, Landroidx/compose/ui/graphics/vector/FloatResult;->setValid(Z)V

    return v10

    :catchall_0
    move-exception v0

    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Landroidx/compose/ui/graphics/vector/FloatResult;->setValid(Z)V

    throw v0

    :cond_2e
    :goto_17
    move/from16 v1, p2

    const/4 v2, 0x1

    .line 231
    :try_start_1
    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {v3, v0}, Landroidx/compose/ui/graphics/vector/FloatResult;->setValue(F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 233
    invoke-virtual {v3, v2}, Landroidx/compose/ui/graphics/vector/FloatResult;->setValid(Z)V

    return v10

    :catchall_1
    move-exception v0

    invoke-virtual {v3, v2}, Landroidx/compose/ui/graphics/vector/FloatResult;->setValid(Z)V

    throw v0

    :cond_2f
    move/from16 v1, p2

    .line 213
    :try_start_2
    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {v3, v0}, Landroidx/compose/ui/graphics/vector/FloatResult;->setValue(F)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v1, 0x1

    .line 215
    invoke-virtual {v3, v1}, Landroidx/compose/ui/graphics/vector/FloatResult;->setValid(Z)V

    return v10

    :catchall_2
    move-exception v0

    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Landroidx/compose/ui/graphics/vector/FloatResult;->setValid(Z)V

    throw v0
.end method
