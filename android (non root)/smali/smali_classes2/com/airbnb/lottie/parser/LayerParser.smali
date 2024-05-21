.class public Lcom/airbnb/lottie/parser/LayerParser;
.super Ljava/lang/Object;
.source "LayerParser.java"


# static fields
.field private static final EFFECTS_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

.field private static final NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

.field private static final TEXT_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 25

    const-string v0, "nm"

    const-string v1, "ind"

    const-string v2, "refId"

    const-string v3, "ty"

    const-string v4, "parent"

    const-string v5, "sw"

    const-string v6, "sh"

    const-string v7, "sc"

    const-string v8, "ks"

    const-string v9, "tt"

    const-string v10, "masksProperties"

    const-string v11, "shapes"

    const-string v12, "t"

    const-string v13, "ef"

    const-string v14, "sr"

    const-string v15, "st"

    const-string v16, "w"

    const-string v17, "h"

    const-string v18, "ip"

    const-string v19, "op"

    const-string v20, "tm"

    const-string v21, "cl"

    const-string v22, "hd"

    const-string v23, "ao"

    const-string v24, "bm"

    .line 30
    filled-new-array/range {v0 .. v24}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/LayerParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    const-string v0, "d"

    const-string v1, "a"

    .line 69
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/LayerParser;->TEXT_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    const-string v0, "ty"

    const-string v1, "nm"

    .line 74
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/LayerParser;->EFFECTS_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/layer/Layer;
    .locals 29

    move-object/from16 v2, p0

    .line 59
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/LottieComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v18

    .line 60
    new-instance v28, Lcom/airbnb/lottie/model/layer/Layer;

    move-object/from16 v0, v28

    .line 61
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const-string v3, "__container"

    const-wide/16 v4, -0x1

    sget-object v6, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->PRE_COMP:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    .line 62
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    new-instance v12, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    move-object v11, v12

    invoke-direct {v12}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;-><init>()V

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 64
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    move/from16 v17, v4

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    move/from16 v18, v4

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v21

    sget-object v22, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->NONE:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    sget-object v27, Lcom/airbnb/lottie/model/content/LBlendMode;->NORMAL:Lcom/airbnb/lottie/model/content/LBlendMode;

    const-wide/16 v4, -0x1

    invoke-direct/range {v0 .. v27}, Lcom/airbnb/lottie/model/layer/Layer;-><init>(Ljava/util/List;Lcom/airbnb/lottie/LottieComposition;Ljava/lang/String;JLcom/airbnb/lottie/model/layer/Layer$LayerType;JLjava/lang/String;Ljava/util/List;Lcom/airbnb/lottie/model/animatable/AnimatableTransform;IIIFFFFLcom/airbnb/lottie/model/animatable/AnimatableTextFrame;Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;Ljava/util/List;Lcom/airbnb/lottie/model/layer/Layer$MatteType;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;ZLcom/airbnb/lottie/model/content/BlurEffect;Lcom/airbnb/lottie/parser/DropShadowEffect;Lcom/airbnb/lottie/model/content/LBlendMode;)V

    return-object v28
.end method

.method public static parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/layer/Layer;
    .locals 42
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 102
    sget-object v1, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->NONE:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    .line 103
    sget-object v2, Lcom/airbnb/lottie/model/content/LBlendMode;->NORMAL:Lcom/airbnb/lottie/model/content/LBlendMode;

    .line 109
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 110
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 112
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    const-string v3, "UNSET"

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    .line 287
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    const-wide/16 v13, -0x1

    const/high16 v15, 0x3f800000    # 1.0f

    .line 294
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    move-object/from16 v33, v1

    move-object/from16 v38, v2

    move-object/from16 v20, v4

    move-object/from16 v23, v20

    move-object/from16 v31, v23

    move-object/from16 v32, v31

    move-object/from16 v34, v32

    move-object/from16 v36, v34

    move-object/from16 v37, v36

    move-wide/from16 v17, v5

    move v6, v9

    move/from16 v24, v6

    move/from16 v25, v24

    move/from16 v26, v25

    move/from16 v35, v26

    move/from16 v19, v11

    move/from16 v28, v19

    move/from16 v29, v28

    move/from16 v30, v29

    move/from16 v39, v30

    move-wide/from16 v21, v13

    move/from16 v27, v15

    move-object v13, v3

    move-object/from16 v14, v37

    move-object v15, v14

    .line 113
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    sget-object v1, Lcom/airbnb/lottie/parser/LayerParser;->NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 114
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v1

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    .line 278
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    .line 279
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_0

    .line 269
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v1

    .line 270
    invoke-static {}, Lcom/airbnb/lottie/model/content/LBlendMode;->values()[Lcom/airbnb/lottie/model/content/LBlendMode;

    move-result-object v2

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 271
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unsupported Blend Mode: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    .line 272
    sget-object v38, Lcom/airbnb/lottie/model/content/LBlendMode;->NORMAL:Lcom/airbnb/lottie/model/content/LBlendMode;

    goto :goto_0

    .line 275
    :cond_0
    invoke-static {}, Lcom/airbnb/lottie/model/content/LBlendMode;->values()[Lcom/airbnb/lottie/model/content/LBlendMode;

    move-result-object v2

    aget-object v38, v2, v1

    goto :goto_0

    .line 266
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v1

    if-ne v1, v2, :cond_1

    move v6, v2

    goto :goto_0

    :cond_1
    move v6, v9

    goto :goto_0

    .line 263
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextBoolean()Z

    move-result v35

    goto :goto_0

    .line 260
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v14

    goto :goto_0

    .line 257
    :pswitch_4
    invoke-static {v0, v7, v9}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseFloat(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v34

    goto :goto_0

    .line 254
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v1

    double-to-float v1, v1

    move/from16 v39, v1

    goto :goto_0

    .line 251
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v1

    double-to-float v1, v1

    move/from16 v19, v1

    goto :goto_0

    .line 248
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v1

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v3

    float-to-double v3, v3

    mul-double/2addr v1, v3

    double-to-float v1, v1

    move/from16 v30, v1

    goto :goto_0

    .line 245
    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v1

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v3

    float-to-double v3, v3

    mul-double/2addr v1, v3

    double-to-float v1, v1

    move/from16 v29, v1

    goto/16 :goto_0

    .line 242
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v1

    double-to-float v1, v1

    move/from16 v28, v1

    goto/16 :goto_0

    .line 239
    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v1

    double-to-float v1, v1

    move/from16 v27, v1

    goto/16 :goto_0

    .line 207
    :pswitch_b
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 208
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 209
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 210
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    .line 211
    :cond_2
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v3, Lcom/airbnb/lottie/parser/LayerParser;->EFFECTS_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 212
    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v3

    if-eqz v3, :cond_4

    if-eq v3, v2, :cond_3

    .line 226
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    .line 227
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_2

    .line 222
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    .line 223
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 214
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v3

    const/16 v4, 0x1d

    if-ne v3, v4, :cond_5

    .line 216
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/BlurEffectParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/BlurEffect;

    move-result-object v36

    goto :goto_2

    :cond_5
    const/16 v4, 0x19

    if-ne v3, v4, :cond_2

    .line 218
    new-instance v3, Lcom/airbnb/lottie/parser/DropShadowEffectParser;

    invoke-direct {v3}, Lcom/airbnb/lottie/parser/DropShadowEffectParser;-><init>()V

    invoke-virtual {v3, v0, v7}, Lcom/airbnb/lottie/parser/DropShadowEffectParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/parser/DropShadowEffect;

    move-result-object v37

    goto :goto_2

    .line 231
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    goto :goto_1

    .line 233
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    .line 234
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Lottie doesn\'t support layer effects. If you are using them for  fills, strokes, trim paths etc. then try adding them directly as contents  in your shape. Found: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 183
    :pswitch_c
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginObject()V

    .line 184
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    sget-object v1, Lcom/airbnb/lottie/parser/LayerParser;->TEXT_NAMES:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    .line 185
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->selectName(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v1

    if-eqz v1, :cond_b

    if-eq v1, v2, :cond_8

    .line 200
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipName()V

    .line 201
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_3

    .line 190
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 191
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 192
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableTextPropertiesParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;

    move-result-object v1

    move-object/from16 v32, v1

    .line 194
    :cond_9
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 195
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->skipValue()V

    goto :goto_4

    .line 197
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    goto :goto_3

    .line 187
    :cond_b
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->parseDocumentData(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    move-result-object v31

    goto :goto_3

    .line 204
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    goto/16 :goto_0

    .line 173
    :pswitch_d
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 174
    :cond_d
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 175
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/ContentModelParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ContentModel;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 177
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 180
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    goto/16 :goto_0

    .line 165
    :pswitch_e
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->beginArray()V

    .line 166
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 167
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/MaskParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/Mask;

    move-result-object v1

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 169
    :cond_f
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v7, v1}, Lcom/airbnb/lottie/LottieComposition;->incrementMatteOrMaskCount(I)V

    .line 170
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endArray()V

    goto/16 :goto_0

    .line 148
    :pswitch_f
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v1

    .line 149
    invoke-static {}, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->values()[Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    move-result-object v3

    array-length v3, v3

    if-lt v1, v3, :cond_10

    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unsupported matte type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 153
    :cond_10
    invoke-static {}, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->values()[Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    move-result-object v3

    aget-object v33, v3, v1

    .line 154
    sget-object v1, Lcom/airbnb/lottie/parser/LayerParser$1;->$SwitchMap$com$airbnb$lottie$model$layer$Layer$MatteType:[I

    invoke-virtual/range {v33 .. v33}, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->ordinal()I

    move-result v3

    aget v1, v1, v3

    if-eq v1, v2, :cond_12

    const/4 v3, 0x2

    if-eq v1, v3, :cond_11

    goto :goto_7

    :cond_11
    const-string v1, "Unsupported matte type: Luma Inverted"

    .line 159
    invoke-virtual {v7, v1}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    goto :goto_7

    :cond_12
    const-string v1, "Unsupported matte type: Luma"

    .line 156
    invoke-virtual {v7, v1}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    .line 162
    :goto_7
    invoke-virtual {v7, v2}, Lcom/airbnb/lottie/LottieComposition;->incrementMatteOrMaskCount(I)V

    goto/16 :goto_0

    .line 145
    :pswitch_10
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->parse(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    move-result-object v15

    goto/16 :goto_0

    .line 142
    :pswitch_11
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v26

    goto/16 :goto_0

    .line 139
    :pswitch_12
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    move/from16 v25, v1

    goto/16 :goto_0

    .line 136
    :pswitch_13
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->dpScale()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    move/from16 v24, v1

    goto/16 :goto_0

    .line 133
    :pswitch_14
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v1

    int-to-long v1, v1

    move-wide/from16 v21, v1

    goto/16 :goto_0

    .line 125
    :pswitch_15
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v1

    .line 126
    sget-object v2, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->UNKNOWN:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    invoke-virtual {v2}, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->ordinal()I

    move-result v2

    if-ge v1, v2, :cond_13

    .line 127
    invoke-static {}, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->values()[Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    move-result-object v2

    aget-object v20, v2, v1

    goto/16 :goto_0

    .line 129
    :cond_13
    sget-object v20, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->UNKNOWN:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    goto/16 :goto_0

    .line 122
    :pswitch_16
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_0

    .line 119
    :pswitch_17
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextInt()I

    move-result v1

    int-to-long v1, v1

    move-wide/from16 v17, v1

    goto/16 :goto_0

    .line 116
    :pswitch_18
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_0

    .line 282
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->endObject()V

    .line 284
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    cmpl-float v0, v19, v11

    if-lez v0, :cond_15

    .line 287
    new-instance v5, Lcom/airbnb/lottie/value/Keyframe;

    const/4 v4, 0x0

    const/16 v40, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v41

    move-object v0, v5

    move-object/from16 v1, p1

    move-object v2, v12

    move-object v3, v12

    move-object v11, v5

    move/from16 v5, v40

    move-object/from16 v40, v10

    move v10, v6

    move-object/from16 v6, v41

    invoke-direct/range {v0 .. v6}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 288
    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    goto :goto_8

    :cond_15
    move-object/from16 v40, v10

    move v10, v6

    move v0, v11

    :goto_8
    cmpl-float v0, v39, v0

    if-lez v0, :cond_16

    goto :goto_9

    .line 292
    :cond_16
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/LottieComposition;->getEndFrame()F

    move-result v0

    move/from16 v39, v0

    .line 293
    :goto_9
    new-instance v11, Lcom/airbnb/lottie/value/Keyframe;

    const/4 v4, 0x0

    .line 294
    invoke-static/range {v39 .. v39}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    move-object v0, v11

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    move-object/from16 v3, v16

    move/from16 v5, v19

    invoke-direct/range {v0 .. v6}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 295
    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    new-instance v11, Lcom/airbnb/lottie/value/Keyframe;

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 298
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    move-object v0, v11

    move-object v2, v12

    move-object v3, v12

    move/from16 v5, v39

    invoke-direct/range {v0 .. v6}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 299
    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, ".ai"

    .line 301
    invoke-virtual {v13, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "ai"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_17
    const-string v0, "Convert your Illustrator layers to shape layers."

    .line 302
    invoke-virtual {v7, v0}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    :cond_18
    if-eqz v10, :cond_1a

    if-nez v15, :cond_19

    .line 307
    new-instance v15, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    invoke-direct {v15}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;-><init>()V

    .line 309
    :cond_19
    invoke-virtual {v15, v10}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->setAutoOrient(Z)V

    :cond_1a
    move-object v11, v15

    .line 311
    new-instance v39, Lcom/airbnb/lottie/model/layer/Layer;

    move-object/from16 v0, v39

    move-object v1, v8

    move-object/from16 v2, p1

    move-object v3, v13

    move-wide/from16 v4, v17

    move-object/from16 v6, v20

    move-wide/from16 v7, v21

    move-object/from16 v21, v9

    move-object/from16 v9, v23

    move-object/from16 v10, v40

    move/from16 v12, v24

    move/from16 v13, v25

    move/from16 v14, v26

    move/from16 v15, v27

    move/from16 v16, v28

    move/from16 v17, v29

    move/from16 v18, v30

    move-object/from16 v19, v31

    move-object/from16 v20, v32

    move-object/from16 v22, v33

    move-object/from16 v23, v34

    move/from16 v24, v35

    move-object/from16 v25, v36

    move-object/from16 v26, v37

    move-object/from16 v27, v38

    invoke-direct/range {v0 .. v27}, Lcom/airbnb/lottie/model/layer/Layer;-><init>(Ljava/util/List;Lcom/airbnb/lottie/LottieComposition;Ljava/lang/String;JLcom/airbnb/lottie/model/layer/Layer$LayerType;JLjava/lang/String;Ljava/util/List;Lcom/airbnb/lottie/model/animatable/AnimatableTransform;IIIFFFFLcom/airbnb/lottie/model/animatable/AnimatableTextFrame;Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;Ljava/util/List;Lcom/airbnb/lottie/model/layer/Layer$MatteType;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;ZLcom/airbnb/lottie/model/content/BlurEffect;Lcom/airbnb/lottie/parser/DropShadowEffect;Lcom/airbnb/lottie/model/content/LBlendMode;)V

    return-object v39

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
