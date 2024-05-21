.class public Lcom/airbnb/lottie/parser/GradientColorParser;
.super Ljava/lang/Object;
.source "GradientColorParser.java"

# interfaces
.implements Lcom/airbnb/lottie/parser/ValueParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/parser/ValueParser<",
        "Lcom/airbnb/lottie/model/content/GradientColor;",
        ">;"
    }
.end annotation


# instance fields
.field private colorPoints:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    return-void
.end method

.method private addOpacityStopsToGradientIfNeeded(Lcom/airbnb/lottie/model/content/GradientColor;Ljava/util/List;)Lcom/airbnb/lottie/model/content/GradientColor;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/model/content/GradientColor;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)",
            "Lcom/airbnb/lottie/model/content/GradientColor;"
        }
    .end annotation

    iget v0, p0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    mul-int/lit8 v0, v0, 0x4

    .line 123
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, v0, :cond_0

    return-object p1

    .line 130
    :cond_0
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/content/GradientColor;->getPositions()[F

    move-result-object v1

    .line 131
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/content/GradientColor;->getColors()[I

    move-result-object v2

    .line 133
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    .line 134
    new-array v4, v3, [F

    .line 135
    new-array v3, v3, [F

    const/4 v5, 0x0

    move v6, v5

    .line 137
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v0, v7, :cond_2

    .line 138
    rem-int/lit8 v7, v0, 0x2

    if-nez v7, :cond_1

    .line 139
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    aput v7, v4, v6

    goto :goto_1

    .line 141
    :cond_1
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    aput v7, v3, v6

    add-int/lit8 v6, v6, 0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 148
    :cond_2
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/content/GradientColor;->getPositions()[F

    move-result-object p1

    invoke-static {p1, v4}, Lcom/airbnb/lottie/parser/GradientColorParser;->mergeUniqueElements([F[F)[F

    move-result-object p1

    .line 149
    array-length p2, p1

    .line 150
    new-array v0, p2, [I

    :goto_2
    if-ge v5, p2, :cond_6

    .line 153
    aget v6, p1, v5

    .line 154
    invoke-static {v1, v6}, Ljava/util/Arrays;->binarySearch([FF)I

    move-result v7

    .line 155
    invoke-static {v4, v6}, Ljava/util/Arrays;->binarySearch([FF)I

    move-result v8

    if-ltz v7, :cond_4

    if-lez v8, :cond_3

    goto :goto_3

    .line 165
    :cond_3
    aget v7, v2, v7

    invoke-direct {p0, v6, v7, v4, v3}, Lcom/airbnb/lottie/parser/GradientColorParser;->getColorInBetweenOpacityStops(FI[F[F)I

    move-result v6

    aput v6, v0, v5

    goto :goto_4

    :cond_4
    :goto_3
    if-gez v8, :cond_5

    add-int/lit8 v8, v8, 0x1

    neg-int v8, v8

    .line 162
    :cond_5
    aget v7, v3, v8

    invoke-virtual {p0, v6, v7, v1, v2}, Lcom/airbnb/lottie/parser/GradientColorParser;->getColorInBetweenColorStops(FF[F[I)I

    move-result v6

    aput v6, v0, v5

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 168
    :cond_6
    new-instance p0, Lcom/airbnb/lottie/model/content/GradientColor;

    invoke-direct {p0, p1, v0}, Lcom/airbnb/lottie/model/content/GradientColor;-><init>([F[I)V

    return-object p0
.end method

.method private getColorInBetweenOpacityStops(FI[F[F)I
    .locals 5

    .line 208
    array-length p0, p4

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/high16 v2, 0x437f0000    # 255.0f

    if-lt p0, v0, :cond_4

    aget p0, p3, v1

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_0

    goto :goto_2

    :cond_0
    const/4 p0, 0x1

    move v0, p0

    .line 215
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_3

    .line 216
    aget v1, p3, v0

    cmpg-float v3, v1, p1

    if-gez v3, :cond_1

    .line 217
    array-length v4, p3

    sub-int/2addr v4, p0

    if-eq v0, v4, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-gtz v3, :cond_2

    .line 222
    aget p0, p4, v0

    goto :goto_1

    :cond_2
    add-int/lit8 p0, v0, -0x1

    .line 225
    aget p3, p3, p0

    sub-float/2addr v1, p3

    sub-float/2addr p1, p3

    div-float/2addr p1, v1

    .line 228
    aget p0, p4, p0

    aget p3, p4, v0

    invoke-static {p0, p3, p1}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    move-result p0

    :goto_1
    mul-float/2addr p0, v2

    float-to-int p0, p0

    .line 230
    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result p1

    .line 231
    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result p3

    .line 232
    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result p2

    .line 233
    invoke-static {p0, p1, p3, p2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0

    .line 235
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unreachable code."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 209
    :cond_4
    :goto_2
    aget p0, p4, v1

    mul-float/2addr p0, v2

    float-to-int p0, p0

    .line 210
    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result p1

    .line 211
    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result p3

    .line 212
    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result p2

    .line 213
    invoke-static {p0, p1, p3, p2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method protected static mergeUniqueElements([F[F)[F
    .locals 9

    .line 242
    array-length v0, p0

    if-nez v0, :cond_0

    return-object p1

    .line 244
    :cond_0
    array-length v0, p1

    if-nez v0, :cond_1

    return-object p0

    .line 253
    :cond_1
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v1, v0, [F

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v2, v0, :cond_8

    .line 255
    array-length v6, p0

    const/high16 v7, 0x7fc00000    # Float.NaN

    if-ge v4, v6, :cond_2

    aget v6, p0, v4

    goto :goto_1

    :cond_2
    move v6, v7

    .line 256
    :goto_1
    array-length v8, p1

    if-ge v5, v8, :cond_3

    aget v7, p1, v5

    .line 258
    :cond_3
    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-nez v8, :cond_7

    cmpg-float v8, v6, v7

    if-gez v8, :cond_4

    goto :goto_3

    .line 261
    :cond_4
    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-nez v8, :cond_6

    cmpg-float v8, v7, v6

    if-gez v8, :cond_5

    goto :goto_2

    .line 265
    :cond_5
    aput v6, v1, v2

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 262
    :cond_6
    :goto_2
    aput v7, v1, v2

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 259
    :cond_7
    :goto_3
    aput v6, v1, v2

    add-int/lit8 v4, v4, 0x1

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_8
    if-nez v3, :cond_9

    return-object v1

    :cond_9
    sub-int/2addr v0, v3

    .line 276
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method getColorInBetweenColorStops(FF[F[I)I
    .locals 3

    .line 172
    array-length p0, p4

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-lt p0, v0, :cond_4

    aget p0, p3, v1

    cmpl-float p0, p1, p0

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    const/4 p0, 0x1

    move v0, p0

    .line 175
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_3

    .line 176
    aget v1, p3, v0

    cmpg-float v2, v1, p1

    if-gez v2, :cond_1

    .line 177
    array-length v2, p3

    sub-int/2addr v2, p0

    if-eq v0, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 180
    :cond_1
    array-length v2, p3

    sub-int/2addr v2, p0

    const/high16 p0, 0x437f0000    # 255.0f

    if-ne v0, v2, :cond_2

    cmpl-float v2, p1, v1

    if-ltz v2, :cond_2

    mul-float/2addr p2, p0

    float-to-int p0, p2

    .line 181
    aget p1, p4, v0

    .line 183
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result p1

    aget p2, p4, v0

    .line 184
    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result p2

    aget p3, p4, v0

    .line 185
    invoke-static {p3}, Landroid/graphics/Color;->blue(I)I

    move-result p3

    .line 181
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0

    :cond_2
    add-int/lit8 v2, v0, -0x1

    .line 189
    aget p3, p3, v2

    sub-float/2addr v1, p3

    sub-float/2addr p1, p3

    div-float/2addr p1, v1

    .line 193
    aget p3, p4, v0

    .line 194
    aget p4, p4, v2

    .line 195
    invoke-static {p1, p4, p3}, Lcom/airbnb/lottie/utils/GammaEvaluator;->evaluate(FII)I

    move-result p1

    mul-float/2addr p2, p0

    float-to-int p0, p2

    .line 198
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result p2

    .line 199
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result p3

    .line 200
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    .line 202
    invoke-static {p0, p2, p3, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0

    .line 204
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unreachable code."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 173
    :cond_4
    :goto_1
    aget p0, p4, v1

    return p0
.end method

.method public parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Lcom/airbnb/lottie/model/content/GradientColor;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 48
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 51
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->peek()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object v2

    sget-object v3, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->BEGIN_ARRAY:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v5

    :goto_0
    if-eqz v2, :cond_1

    .line 53
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 55
    :cond_1
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 56
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v6

    double-to-float v3, v6

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 58
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x4

    if-ne v3, v8, :cond_3

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v9

    if-nez v3, :cond_3

    const/4 v3, 0x0

    .line 62
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v1, v5, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput v7, v0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    :cond_3
    if-eqz v2, :cond_4

    .line 70
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    :cond_4
    iget v2, v0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_5

    .line 73
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    div-int/2addr v2, v8

    iput v2, v0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    :cond_5
    iget v2, v0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    .line 76
    new-array v3, v2, [F

    .line 77
    new-array v2, v2, [I

    move v9, v5

    move v10, v9

    :goto_2
    iget v11, v0, Lcom/airbnb/lottie/parser/GradientColorParser;->colorPoints:I

    mul-int/2addr v11, v8

    if-ge v5, v11, :cond_b

    .line 82
    div-int/lit8 v11, v5, 0x4

    .line 83
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    float-to-double v12, v12

    .line 84
    rem-int/lit8 v14, v5, 0x4

    if-eqz v14, :cond_9

    const-wide v15, 0x406fe00000000000L    # 255.0

    if-eq v14, v4, :cond_8

    if-eq v14, v7, :cond_7

    if-eq v14, v6, :cond_6

    goto :goto_3

    :cond_6
    mul-double/2addr v12, v15

    double-to-int v12, v12

    const/16 v13, 0xff

    .line 102
    invoke-static {v13, v9, v10, v12}, Landroid/graphics/Color;->argb(IIII)I

    move-result v12

    aput v12, v2, v11

    goto :goto_3

    :cond_7
    mul-double/2addr v12, v15

    double-to-int v10, v12

    goto :goto_3

    :cond_8
    mul-double/2addr v12, v15

    double-to-int v9, v12

    goto :goto_3

    :cond_9
    if-lez v11, :cond_a

    add-int/lit8 v14, v11, -0x1

    .line 88
    aget v14, v3, v14

    double-to-float v15, v12

    cmpl-float v14, v14, v15

    if-ltz v14, :cond_a

    const v12, 0x3c23d70a    # 0.01f

    add-float/2addr v15, v12

    .line 89
    aput v15, v3, v11

    goto :goto_3

    :cond_a
    double-to-float v12, v12

    .line 91
    aput v12, v3, v11

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 107
    :cond_b
    new-instance v4, Lcom/airbnb/lottie/model/content/GradientColor;

    invoke-direct {v4, v3, v2}, Lcom/airbnb/lottie/model/content/GradientColor;-><init>([F[I)V

    .line 108
    invoke-direct {v0, v4, v1}, Lcom/airbnb/lottie/parser/GradientColorParser;->addOpacityStopsToGradientIfNeeded(Lcom/airbnb/lottie/model/content/GradientColor;Ljava/util/List;)Lcom/airbnb/lottie/model/content/GradientColor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/parser/GradientColorParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;F)Lcom/airbnb/lottie/model/content/GradientColor;

    move-result-object p0

    return-object p0
.end method
