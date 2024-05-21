.class public final Lcom/google/zxing/client/result/ExpandedProductResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "ExpandedProductResultParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method

.method private static findAIvalue(ILjava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 176
    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x28

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 p0, p0, 0x1

    .line 182
    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 184
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    .line 185
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 186
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v3, 0x29

    if-ne v1, v3, :cond_1

    .line 188
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/16 v3, 0x30

    if-lt v1, v3, :cond_3

    const/16 v3, 0x39

    if-le v1, v3, :cond_2

    goto :goto_1

    .line 193
    :cond_2
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v2

    .line 195
    :cond_4
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static findValue(ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    .line 202
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 203
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x28

    if-ne v1, v2, :cond_0

    .line 207
    invoke-static {p1, p0}, Lcom/google/zxing/client/result/ExpandedProductResultParser;->findAIvalue(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 210
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 212
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 215
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ExpandedProductParsedResult;
    .locals 22

    .line 45
    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v0

    .line 46
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->RSS_EXPANDED:Lcom/google/zxing/BarcodeFormat;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return-object v2

    .line 50
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/google/zxing/client/result/ExpandedProductResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v4

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v5, v2

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    const/4 v3, 0x0

    .line 69
    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v3, v1, :cond_26

    .line 70
    invoke-static {v3, v4}, Lcom/google/zxing/client/result/ExpandedProductResultParser;->findAIvalue(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v2

    .line 76
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0x2

    add-int/lit8 v18, v18, 0x2

    add-int v3, v3, v18

    .line 77
    invoke-static {v3, v4}, Lcom/google/zxing/client/result/ExpandedProductResultParser;->findValue(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 78
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v20

    add-int v3, v3, v20

    .line 80
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v20

    move/from16 p1, v3

    const/16 v21, -0x1

    sparse-switch v20, :sswitch_data_0

    :goto_1
    move/from16 v19, v21

    goto/16 :goto_2

    :sswitch_0
    const-string v3, "3933"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    const/16 v19, 0x22

    goto/16 :goto_2

    :sswitch_1
    const-string v3, "3932"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    const/16 v19, 0x21

    goto/16 :goto_2

    :sswitch_2
    const-string v3, "3931"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    const/16 v19, 0x20

    goto/16 :goto_2

    :sswitch_3
    const-string v3, "3930"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_1

    :cond_5
    const/16 v19, 0x1f

    goto/16 :goto_2

    :sswitch_4
    const-string v3, "3923"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_1

    :cond_6
    const/16 v19, 0x1e

    goto/16 :goto_2

    :sswitch_5
    const-string v3, "3922"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_1

    :cond_7
    const/16 v19, 0x1d

    goto/16 :goto_2

    :sswitch_6
    const-string v3, "3921"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_1

    :cond_8
    const/16 v19, 0x1c

    goto/16 :goto_2

    :sswitch_7
    const-string v3, "3920"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_1

    :cond_9
    const/16 v19, 0x1b

    goto/16 :goto_2

    :sswitch_8
    const-string v3, "3209"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    goto :goto_1

    :cond_a
    const/16 v19, 0x1a

    goto/16 :goto_2

    :sswitch_9
    const-string v3, "3208"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    goto/16 :goto_1

    :cond_b
    const/16 v19, 0x19

    goto/16 :goto_2

    :sswitch_a
    const-string v3, "3207"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    goto/16 :goto_1

    :cond_c
    const/16 v19, 0x18

    goto/16 :goto_2

    :sswitch_b
    const-string v3, "3206"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    goto/16 :goto_1

    :cond_d
    const/16 v19, 0x17

    goto/16 :goto_2

    :sswitch_c
    const-string v3, "3205"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    goto/16 :goto_1

    :cond_e
    const/16 v19, 0x16

    goto/16 :goto_2

    :sswitch_d
    const-string v3, "3204"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    goto/16 :goto_1

    :cond_f
    const/16 v19, 0x15

    goto/16 :goto_2

    :sswitch_e
    const-string v3, "3203"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    goto/16 :goto_1

    :cond_10
    const/16 v19, 0x14

    goto/16 :goto_2

    :sswitch_f
    const-string v3, "3202"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    goto/16 :goto_1

    :cond_11
    const/16 v19, 0x13

    goto/16 :goto_2

    :sswitch_10
    const-string v3, "3201"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    goto/16 :goto_1

    :cond_12
    const/16 v19, 0x12

    goto/16 :goto_2

    :sswitch_11
    const-string v3, "3200"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    goto/16 :goto_1

    :cond_13
    const/16 v19, 0x11

    goto/16 :goto_2

    :sswitch_12
    const-string v3, "3109"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    goto/16 :goto_1

    :cond_14
    const/16 v19, 0x10

    goto/16 :goto_2

    :sswitch_13
    const-string v3, "3108"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    goto/16 :goto_1

    :cond_15
    const/16 v19, 0xf

    goto/16 :goto_2

    :sswitch_14
    const-string v3, "3107"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    goto/16 :goto_1

    :cond_16
    const/16 v19, 0xe

    goto/16 :goto_2

    :sswitch_15
    const-string v3, "3106"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    goto/16 :goto_1

    :cond_17
    const/16 v19, 0xd

    goto/16 :goto_2

    :sswitch_16
    const-string v3, "3105"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    goto/16 :goto_1

    :cond_18
    const/16 v19, 0xc

    goto/16 :goto_2

    :sswitch_17
    const-string v3, "3104"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    goto/16 :goto_1

    :cond_19
    const/16 v19, 0xb

    goto/16 :goto_2

    :sswitch_18
    const-string v3, "3103"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    goto/16 :goto_1

    :cond_1a
    const/16 v19, 0xa

    goto/16 :goto_2

    :sswitch_19
    const-string v3, "3102"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    goto/16 :goto_1

    :cond_1b
    const/16 v19, 0x9

    goto/16 :goto_2

    :sswitch_1a
    const-string v3, "3101"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    goto/16 :goto_1

    :cond_1c
    const/16 v19, 0x8

    goto/16 :goto_2

    :sswitch_1b
    const-string v3, "3100"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d

    goto/16 :goto_1

    :cond_1d
    const/16 v19, 0x7

    goto :goto_2

    :sswitch_1c
    const-string v3, "17"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    goto/16 :goto_1

    :cond_1e
    const/16 v19, 0x6

    goto :goto_2

    :sswitch_1d
    const-string v3, "15"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    goto/16 :goto_1

    :cond_1f
    const/16 v19, 0x5

    goto :goto_2

    :sswitch_1e
    const-string v3, "13"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    goto/16 :goto_1

    :cond_20
    const/16 v19, 0x4

    goto :goto_2

    :sswitch_1f
    const-string v3, "11"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21

    goto/16 :goto_1

    :cond_21
    const/16 v19, 0x3

    goto :goto_2

    :sswitch_20
    const-string v3, "10"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_24

    goto/16 :goto_1

    :sswitch_21
    const-string v3, "01"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    goto/16 :goto_1

    :cond_22
    const/16 v19, 0x1

    goto :goto_2

    :sswitch_22
    const-string v3, "00"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    goto/16 :goto_1

    :cond_23
    const/16 v19, 0x0

    :cond_24
    :goto_2
    packed-switch v19, :pswitch_data_0

    .line 153
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v3, p1

    goto/16 :goto_4

    .line 141
    :pswitch_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v15, 0x4

    if-ge v3, v15, :cond_25

    const/4 v3, 0x0

    return-object v3

    :cond_25
    const/4 v3, 0x0

    const/4 v15, 0x3

    .line 147
    invoke-virtual {v2, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    const/4 v3, 0x0

    .line 148
    invoke-virtual {v2, v3, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 149
    invoke-virtual {v1, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    move/from16 v3, p1

    move-object/from16 v15, v16

    const/4 v2, 0x0

    move-object/from16 v16, v1

    goto/16 :goto_0

    :pswitch_1
    const/4 v3, 0x0

    const/4 v15, 0x3

    .line 135
    invoke-virtual {v1, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    move/from16 v3, p1

    move-object v15, v2

    goto :goto_4

    :pswitch_2
    const/4 v3, 0x0

    const/4 v12, 0x3

    .line 128
    invoke-virtual {v1, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    const-string v13, "LB"

    goto :goto_3

    :pswitch_3
    const/4 v3, 0x0

    const/4 v12, 0x3

    .line 114
    invoke-virtual {v1, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    const-string v13, "KG"

    :goto_3
    move/from16 v3, p1

    move-object v12, v2

    goto :goto_4

    :pswitch_4
    move/from16 v3, p1

    move-object v11, v2

    goto :goto_4

    :pswitch_5
    move/from16 v3, p1

    move-object v10, v2

    goto :goto_4

    :pswitch_6
    move/from16 v3, p1

    move-object v9, v2

    goto :goto_4

    :pswitch_7
    move/from16 v3, p1

    move-object v8, v2

    goto :goto_4

    :pswitch_8
    move/from16 v3, p1

    move-object v7, v2

    goto :goto_4

    :pswitch_9
    move/from16 v3, p1

    move-object v5, v2

    goto :goto_4

    :pswitch_a
    move/from16 v3, p1

    move-object v6, v2

    :goto_4
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 158
    :cond_26
    new-instance v1, Lcom/google/zxing/client/result/ExpandedProductParsedResult;

    move-object v3, v1

    move-object/from16 v18, v0

    invoke-direct/range {v3 .. v18}, Lcom/google/zxing/client/result/ExpandedProductParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x600 -> :sswitch_22
        0x601 -> :sswitch_21
        0x61f -> :sswitch_20
        0x620 -> :sswitch_1f
        0x622 -> :sswitch_1e
        0x624 -> :sswitch_1d
        0x626 -> :sswitch_1c
        0x17ecde -> :sswitch_1b
        0x17ecdf -> :sswitch_1a
        0x17ece0 -> :sswitch_19
        0x17ece1 -> :sswitch_18
        0x17ece2 -> :sswitch_17
        0x17ece3 -> :sswitch_16
        0x17ece4 -> :sswitch_15
        0x17ece5 -> :sswitch_14
        0x17ece6 -> :sswitch_13
        0x17ece7 -> :sswitch_12
        0x17f09f -> :sswitch_11
        0x17f0a0 -> :sswitch_10
        0x17f0a1 -> :sswitch_f
        0x17f0a2 -> :sswitch_e
        0x17f0a3 -> :sswitch_d
        0x17f0a4 -> :sswitch_c
        0x17f0a5 -> :sswitch_b
        0x17f0a6 -> :sswitch_a
        0x17f0a7 -> :sswitch_9
        0x17f0a8 -> :sswitch_8
        0x180b24 -> :sswitch_7
        0x180b25 -> :sswitch_6
        0x180b26 -> :sswitch_5
        0x180b27 -> :sswitch_4
        0x180b43 -> :sswitch_3
        0x180b44 -> :sswitch_2
        0x180b45 -> :sswitch_1
        0x180b46 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/google/zxing/client/result/ExpandedProductResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ExpandedProductParsedResult;

    move-result-object p0

    return-object p0
.end method
