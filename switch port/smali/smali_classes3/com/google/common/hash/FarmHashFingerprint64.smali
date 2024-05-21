.class final Lcom/google/common/hash/FarmHashFingerprint64;
.super Lcom/google/common/hash/AbstractNonStreamingHashFunction;
.source "FarmHashFingerprint64.java"


# annotations
.annotation runtime Lcom/google/common/hash/ElementTypesAreNonnullByDefault;
.end annotation


# static fields
.field static final FARMHASH_FINGERPRINT_64:Lcom/google/common/hash/HashFunction;

.field private static final K0:J = -0x3c5a37a36834ced9L

.field private static final K1:J = -0x4b6d499041670d8dL

.field private static final K2:J = -0x651e95c4d06fbfb1L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Lcom/google/common/hash/FarmHashFingerprint64;

    invoke-direct {v0}, Lcom/google/common/hash/FarmHashFingerprint64;-><init>()V

    sput-object v0, Lcom/google/common/hash/FarmHashFingerprint64;->FARMHASH_FINGERPRINT_64:Lcom/google/common/hash/HashFunction;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/google/common/hash/AbstractNonStreamingHashFunction;-><init>()V

    return-void
.end method

.method static fingerprint([BII)J
    .locals 1

    const/16 v0, 0x20

    if-gt p2, v0, :cond_1

    const/16 v0, 0x10

    if-gt p2, v0, :cond_0

    .line 72
    invoke-static {p0, p1, p2}, Lcom/google/common/hash/FarmHashFingerprint64;->hashLength0to16([BII)J

    move-result-wide p0

    return-wide p0

    .line 74
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/google/common/hash/FarmHashFingerprint64;->hashLength17to32([BII)J

    move-result-wide p0

    return-wide p0

    :cond_1
    const/16 v0, 0x40

    if-gt p2, v0, :cond_2

    .line 77
    invoke-static {p0, p1, p2}, Lcom/google/common/hash/FarmHashFingerprint64;->hashLength33To64([BII)J

    move-result-wide p0

    return-wide p0

    .line 79
    :cond_2
    invoke-static {p0, p1, p2}, Lcom/google/common/hash/FarmHashFingerprint64;->hashLength65Plus([BII)J

    move-result-wide p0

    return-wide p0
.end method

.method private static hashLength0to16([BII)J
    .locals 12

    const-wide v0, -0x651e95c4d06fbfb1L    # -3.35749372464804E-179

    const/16 v2, 0x8

    if-lt p2, v2, :cond_0

    mul-int/lit8 v3, p2, 0x2

    int-to-long v3, v3

    add-long v9, v3, v0

    .line 121
    invoke-static {p0, p1}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v3

    add-long/2addr v3, v0

    add-int/2addr p1, p2

    sub-int/2addr p1, v2

    .line 122
    invoke-static {p0, p1}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide p0

    const/16 p2, 0x25

    .line 123
    invoke-static {p0, p1, p2}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v0

    mul-long/2addr v0, v9

    add-long v5, v0, v3

    const/16 p2, 0x19

    .line 124
    invoke-static {v3, v4, p2}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v0

    add-long/2addr v0, p0

    mul-long v7, v0, v9

    .line 125
    invoke-static/range {v5 .. v10}, Lcom/google/common/hash/FarmHashFingerprint64;->hashLength16(JJJ)J

    move-result-wide p0

    return-wide p0

    :cond_0
    const/4 v3, 0x4

    if-lt p2, v3, :cond_1

    mul-int/lit8 v2, p2, 0x2

    int-to-long v4, v2

    add-long v10, v4, v0

    .line 129
    invoke-static {p0, p1}, Lcom/google/common/hash/LittleEndianByteArray;->load32([BI)I

    move-result v0

    int-to-long v0, v0

    const-wide v4, 0xffffffffL

    and-long/2addr v0, v4

    int-to-long v6, p2

    const/4 v2, 0x3

    shl-long/2addr v0, v2

    add-long/2addr v6, v0

    add-int/2addr p1, p2

    sub-int/2addr p1, v3

    .line 130
    invoke-static {p0, p1}, Lcom/google/common/hash/LittleEndianByteArray;->load32([BI)I

    move-result p0

    int-to-long p0, p0

    and-long v8, p0, v4

    invoke-static/range {v6 .. v11}, Lcom/google/common/hash/FarmHashFingerprint64;->hashLength16(JJJ)J

    move-result-wide p0

    return-wide p0

    :cond_1
    if-lez p2, :cond_2

    .line 133
    aget-byte v3, p0, p1

    shr-int/lit8 v4, p2, 0x1

    add-int/2addr v4, p1

    .line 134
    aget-byte v4, p0, v4

    add-int/lit8 v5, p2, -0x1

    add-int/2addr p1, v5

    .line 135
    aget-byte p0, p0, p1

    and-int/lit16 p1, v3, 0xff

    and-int/lit16 v3, v4, 0xff

    shl-int/lit8 v2, v3, 0x8

    add-int/2addr p1, v2

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x2

    add-int/2addr p2, p0

    int-to-long p0, p1

    mul-long/2addr p0, v0

    int-to-long v2, p2

    const-wide v4, -0x3c5a37a36834ced9L    # -7.848031385787155E17

    mul-long/2addr v2, v4

    xor-long/2addr p0, v2

    .line 138
    invoke-static {p0, p1}, Lcom/google/common/hash/FarmHashFingerprint64;->shiftMix(J)J

    move-result-wide p0

    mul-long/2addr p0, v0

    return-wide p0

    :cond_2
    return-wide v0
.end method

.method private static hashLength16(JJJ)J
    .locals 3

    xor-long/2addr p0, p2

    mul-long/2addr p0, p4

    const/16 v0, 0x2f

    ushr-long v1, p0, v0

    xor-long/2addr p0, v1

    xor-long/2addr p0, p2

    mul-long/2addr p0, p4

    ushr-long p2, p0, v0

    xor-long/2addr p0, p2

    mul-long/2addr p0, p4

    return-wide p0
.end method

.method private static hashLength17to32([BII)J
    .locals 17

    move-object/from16 v0, p0

    mul-int/lit8 v1, p2, 0x2

    int-to-long v1, v1

    const-wide v3, -0x651e95c4d06fbfb1L    # -3.35749372464804E-179

    add-long v9, v1, v3

    .line 145
    invoke-static/range {p0 .. p1}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v1

    const-wide v5, -0x4b6d499041670d8dL    # -1.9079014105469082E-55

    mul-long/2addr v1, v5

    add-int/lit8 v5, p1, 0x8

    .line 146
    invoke-static {v0, v5}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v5

    add-int v7, p1, p2

    add-int/lit8 v8, v7, -0x8

    .line 147
    invoke-static {v0, v8}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v11

    mul-long/2addr v11, v9

    add-int/lit8 v7, v7, -0x10

    .line 148
    invoke-static {v0, v7}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v7

    mul-long/2addr v7, v3

    add-long v13, v1, v5

    const/16 v0, 0x2b

    .line 150
    invoke-static {v13, v14, v0}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v13

    const/16 v0, 0x1e

    invoke-static {v11, v12, v0}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v15

    add-long/2addr v13, v15

    add-long/2addr v7, v13

    add-long/2addr v5, v3

    const/16 v0, 0x12

    invoke-static {v5, v6, v0}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v3

    add-long/2addr v1, v3

    add-long v0, v1, v11

    move-wide v5, v7

    move-wide v7, v0

    .line 149
    invoke-static/range {v5 .. v10}, Lcom/google/common/hash/FarmHashFingerprint64;->hashLength16(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private static hashLength33To64([BII)J
    .locals 20

    move-object/from16 v0, p0

    mul-int/lit8 v1, p2, 0x2

    int-to-long v1, v1

    const-wide v3, -0x651e95c4d06fbfb1L    # -3.35749372464804E-179

    add-long/2addr v1, v3

    .line 155
    invoke-static/range {p0 .. p1}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v5

    mul-long v11, v5, v3

    add-int/lit8 v5, p1, 0x8

    .line 156
    invoke-static {v0, v5}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v5

    add-int v13, p1, p2

    add-int/lit8 v7, v13, -0x8

    .line 157
    invoke-static {v0, v7}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v7

    mul-long/2addr v7, v1

    add-int/lit8 v9, v13, -0x10

    .line 158
    invoke-static {v0, v9}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v9

    mul-long/2addr v9, v3

    add-long v14, v11, v5

    const/16 v3, 0x2b

    .line 159
    invoke-static {v14, v15, v3}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v14

    const/16 v4, 0x1e

    invoke-static {v7, v8, v4}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v18

    add-long v14, v14, v18

    add-long/2addr v14, v9

    const-wide v9, -0x651e95c4d06fbfb1L    # -3.35749372464804E-179

    add-long/2addr v5, v9

    const/16 v9, 0x12

    .line 160
    invoke-static {v5, v6, v9}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v5

    add-long/2addr v5, v11

    add-long/2addr v7, v5

    move-wide v5, v14

    move-wide v9, v1

    invoke-static/range {v5 .. v10}, Lcom/google/common/hash/FarmHashFingerprint64;->hashLength16(JJJ)J

    move-result-wide v5

    add-int/lit8 v7, p1, 0x10

    .line 161
    invoke-static {v0, v7}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v7

    mul-long/2addr v7, v1

    add-int/lit8 v9, p1, 0x18

    .line 162
    invoke-static {v0, v9}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v9

    add-int/lit8 v4, v13, -0x20

    .line 163
    invoke-static {v0, v4}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v16

    add-long v14, v14, v16

    mul-long/2addr v14, v1

    add-int/lit8 v13, v13, -0x18

    .line 164
    invoke-static {v0, v13}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v16

    add-long v5, v5, v16

    mul-long/2addr v5, v1

    move-wide/from16 v16, v1

    add-long v0, v7, v9

    .line 166
    invoke-static {v0, v1, v3}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v0

    const/16 v2, 0x1e

    invoke-static {v14, v15, v2}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v2

    add-long/2addr v0, v2

    add-long/2addr v5, v0

    add-long/2addr v9, v11

    const/16 v0, 0x12

    invoke-static {v9, v10, v0}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v0

    add-long/2addr v7, v0

    add-long/2addr v7, v14

    move-wide/from16 v9, v16

    .line 165
    invoke-static/range {v5 .. v10}, Lcom/google/common/hash/FarmHashFingerprint64;->hashLength16(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private static hashLength65Plus([BII)J
    .locals 25

    move-object/from16 v7, p0

    const/16 v0, 0x51

    int-to-long v0, v0

    const-wide v8, -0x4b6d499041670d8dL    # -1.9079014105469082E-55

    mul-long v2, v0, v8

    const-wide/16 v4, 0x71

    add-long/2addr v2, v4

    const-wide v10, -0x651e95c4d06fbfb1L    # -3.35749372464804E-179

    mul-long v12, v2, v10

    add-long/2addr v12, v4

    .line 178
    invoke-static {v12, v13}, Lcom/google/common/hash/FarmHashFingerprint64;->shiftMix(J)J

    move-result-wide v4

    mul-long/2addr v4, v10

    const/4 v6, 0x2

    new-array v12, v6, [J

    new-array v13, v6, [J

    mul-long/2addr v0, v10

    .line 181
    invoke-static/range {p0 .. p1}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v10

    add-long/2addr v0, v10

    const/4 v10, 0x1

    add-int/lit8 v6, p2, -0x1

    .line 184
    div-int/lit8 v11, v6, 0x40

    mul-int/lit8 v11, v11, 0x40

    add-int v11, p1, v11

    and-int/lit8 v14, v6, 0x3f

    add-int v15, v11, v14

    add-int/lit8 v16, v15, -0x3f

    move/from16 v17, p1

    :goto_0
    add-long/2addr v0, v2

    const/16 v18, 0x0

    aget-wide v19, v12, v18

    add-long v0, v0, v19

    add-int/lit8 v6, v17, 0x8

    .line 187
    invoke-static {v7, v6}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v19

    add-long v0, v0, v19

    const/16 v6, 0x25

    invoke-static {v0, v1, v6}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v0

    mul-long/2addr v0, v8

    aget-wide v19, v12, v10

    add-long v2, v2, v19

    add-int/lit8 v6, v17, 0x30

    .line 188
    invoke-static {v7, v6}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v19

    add-long v2, v2, v19

    const/16 v6, 0x2a

    invoke-static {v2, v3, v6}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v2

    mul-long/2addr v2, v8

    aget-wide v19, v13, v10

    xor-long v19, v0, v19

    aget-wide v0, v12, v18

    add-int/lit8 v6, v17, 0x28

    .line 190
    invoke-static {v7, v6}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v21

    add-long v0, v0, v21

    add-long v21, v2, v0

    aget-wide v0, v13, v18

    add-long/2addr v4, v0

    const/16 v6, 0x21

    .line 191
    invoke-static {v4, v5, v6}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v0

    mul-long v23, v0, v8

    aget-wide v0, v12, v10

    mul-long v2, v0, v8

    aget-wide v0, v13, v18

    add-long v4, v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object v6, v12

    .line 192
    invoke-static/range {v0 .. v6}, Lcom/google/common/hash/FarmHashFingerprint64;->weakHashLength32WithSeeds([BIJJ[J)V

    add-int/lit8 v1, v17, 0x20

    aget-wide v2, v13, v10

    add-long v2, v23, v2

    add-int/lit8 v0, v17, 0x10

    .line 193
    invoke-static {v7, v0}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v4

    add-long v4, v21, v4

    move-object/from16 v0, p0

    move-object v6, v13

    invoke-static/range {v0 .. v6}, Lcom/google/common/hash/FarmHashFingerprint64;->weakHashLength32WithSeeds([BIJJ[J)V

    add-int/lit8 v0, v17, 0x40

    if-ne v0, v11, :cond_0

    const-wide/16 v0, 0xff

    and-long v0, v19, v0

    shl-long/2addr v0, v10

    add-long/2addr v8, v0

    aget-wide v0, v13, v18

    int-to-long v2, v14

    add-long/2addr v0, v2

    aput-wide v0, v13, v18

    aget-wide v2, v12, v18

    add-long/2addr v2, v0

    aput-wide v2, v12, v18

    aget-wide v0, v13, v18

    add-long/2addr v0, v2

    aput-wide v0, v13, v18

    add-long v23, v23, v21

    aget-wide v0, v12, v18

    add-long v23, v23, v0

    add-int/lit8 v0, v15, -0x37

    .line 205
    invoke-static {v7, v0}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v0

    add-long v0, v23, v0

    const/16 v2, 0x25

    invoke-static {v0, v1, v2}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v0

    mul-long/2addr v0, v8

    aget-wide v2, v12, v10

    add-long v21, v21, v2

    add-int/lit8 v2, v15, -0xf

    .line 206
    invoke-static {v7, v2}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v2

    add-long v2, v21, v2

    const/16 v4, 0x2a

    invoke-static {v2, v3, v4}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v2

    mul-long/2addr v2, v8

    aget-wide v4, v13, v10

    const-wide/16 v21, 0x9

    mul-long v4, v4, v21

    xor-long v23, v0, v4

    aget-wide v0, v12, v18

    mul-long v0, v0, v21

    add-int/lit8 v4, v15, -0x17

    .line 208
    invoke-static {v7, v4}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v4

    add-long/2addr v0, v4

    add-long v21, v2, v0

    aget-wide v0, v13, v18

    add-long v0, v19, v0

    const/16 v2, 0x21

    .line 209
    invoke-static {v0, v1, v2}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v0

    mul-long v19, v0, v8

    aget-wide v0, v12, v10

    mul-long v2, v0, v8

    aget-wide v0, v13, v18

    add-long v4, v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object v6, v12

    .line 210
    invoke-static/range {v0 .. v6}, Lcom/google/common/hash/FarmHashFingerprint64;->weakHashLength32WithSeeds([BIJJ[J)V

    add-int/lit8 v1, v15, -0x1f

    aget-wide v2, v13, v10

    add-long v2, v19, v2

    add-int/lit8 v15, v15, -0x2f

    .line 211
    invoke-static {v7, v15}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v4

    add-long v4, v21, v4

    move-object v6, v13

    invoke-static/range {v0 .. v6}, Lcom/google/common/hash/FarmHashFingerprint64;->weakHashLength32WithSeeds([BIJJ[J)V

    aget-wide v2, v12, v18

    aget-wide v4, v13, v18

    move-wide v6, v8

    .line 213
    invoke-static/range {v2 .. v7}, Lcom/google/common/hash/FarmHashFingerprint64;->hashLength16(JJJ)J

    move-result-wide v0

    invoke-static/range {v21 .. v22}, Lcom/google/common/hash/FarmHashFingerprint64;->shiftMix(J)J

    move-result-wide v2

    const-wide v4, -0x3c5a37a36834ced9L    # -7.848031385787155E17

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    add-long v0, v0, v23

    aget-wide v2, v12, v10

    aget-wide v4, v13, v10

    .line 214
    invoke-static/range {v2 .. v7}, Lcom/google/common/hash/FarmHashFingerprint64;->hashLength16(JJJ)J

    move-result-wide v2

    add-long v4, v2, v19

    move-wide v2, v0

    .line 212
    invoke-static/range {v2 .. v7}, Lcom/google/common/hash/FarmHashFingerprint64;->hashLength16(JJJ)J

    move-result-wide v0

    return-wide v0

    :cond_0
    move/from16 v17, v0

    move-wide/from16 v4, v19

    move-wide/from16 v2, v21

    move-wide/from16 v0, v23

    goto/16 :goto_0
.end method

.method private static shiftMix(J)J
    .locals 2

    const/16 v0, 0x2f

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method private static weakHashLength32WithSeeds([BIJJ[J)V
    .locals 6

    .line 103
    invoke-static {p0, p1}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v0

    add-int/lit8 v2, p1, 0x8

    .line 104
    invoke-static {p0, v2}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v2

    add-int/lit8 v4, p1, 0x10

    .line 105
    invoke-static {p0, v4}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide v4

    add-int/lit8 p1, p1, 0x18

    .line 106
    invoke-static {p0, p1}, Lcom/google/common/hash/LittleEndianByteArray;->load64([BI)J

    move-result-wide p0

    add-long/2addr p2, v0

    add-long/2addr p4, p2

    add-long/2addr p4, p0

    const/16 v0, 0x15

    .line 109
    invoke-static {p4, p5, v0}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide p4

    add-long/2addr v2, p2

    add-long/2addr v2, v4

    const/16 v0, 0x2c

    .line 113
    invoke-static {v2, v3, v0}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v0

    add-long/2addr p4, v0

    const/4 v0, 0x0

    add-long/2addr v2, p0

    .line 114
    aput-wide v2, p6, v0

    const/4 p0, 0x1

    add-long/2addr p4, p2

    .line 115
    aput-wide p4, p6, p0

    return-void
.end method


# virtual methods
.method public bits()I
    .locals 0

    const/16 p0, 0x40

    return p0
.end method

.method public hashBytes([BII)Lcom/google/common/hash/HashCode;
    .locals 1

    add-int p0, p2, p3

    .line 52
    array-length v0, p1

    invoke-static {p2, p0, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 53
    invoke-static {p1, p2, p3}, Lcom/google/common/hash/FarmHashFingerprint64;->fingerprint([BII)J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/common/hash/HashCode;->fromLong(J)Lcom/google/common/hash/HashCode;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    const-string p0, "Hashing.farmHashFingerprint64()"

    return-object p0
.end method
