.class public final Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;
.super Lcom/google/zxing/oned/rss/AbstractRSSReader;
.source "RSSExpandedReader.java"


# static fields
.field private static final EVEN_TOTAL_SUBSET:[I

.field private static final FINDER_PATTERNS:[[I

.field private static final FINDER_PATTERN_SEQUENCES:[[I

.field private static final FINDER_PAT_A:I = 0x0

.field private static final FINDER_PAT_B:I = 0x1

.field private static final FINDER_PAT_C:I = 0x2

.field private static final FINDER_PAT_D:I = 0x3

.field private static final FINDER_PAT_E:I = 0x4

.field private static final FINDER_PAT_F:I = 0x5

.field private static final GSUM:[I

.field private static final MAX_PAIRS:I = 0xb

.field private static final SYMBOL_WIDEST:[I

.field private static final WEIGHTS:[[I


# instance fields
.field private final pairs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;"
        }
    .end annotation
.end field

.field private final rows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedRow;",
            ">;"
        }
    .end annotation
.end field

.field private final startEnd:[I

.field private startFromEven:Z


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const/4 v0, 0x7

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x1

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v5

    sput-object v5, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->SYMBOL_WIDEST:[I

    const/16 v5, 0x68

    const/16 v6, 0xcc

    const/16 v7, 0x14

    const/16 v8, 0x34

    filled-new-array {v2, v7, v8, v5, v6}, [I

    move-result-object v5

    sput-object v5, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->EVEN_TOTAL_SUBSET:[I

    const/16 v5, 0xb84

    const/16 v6, 0xf94

    const/4 v8, 0x0

    const/16 v9, 0x15c

    const/16 v10, 0x56c

    filled-new-array {v8, v9, v10, v5, v6}, [I

    move-result-object v5

    sput-object v5, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->GSUM:[I

    const/4 v5, 0x6

    new-array v6, v5, [[I

    const/16 v9, 0x8

    filled-new-array {v4, v9, v2, v4}, [I

    move-result-object v10

    aput-object v10, v6, v8

    filled-new-array {v3, v5, v2, v4}, [I

    move-result-object v10

    aput-object v10, v6, v4

    filled-new-array {v3, v2, v5, v4}, [I

    move-result-object v10

    const/4 v11, 0x2

    aput-object v10, v6, v11

    filled-new-array {v3, v11, v9, v4}, [I

    move-result-object v10

    aput-object v10, v6, v3

    filled-new-array {v11, v5, v1, v4}, [I

    move-result-object v10

    aput-object v10, v6, v2

    const/16 v10, 0x9

    filled-new-array {v11, v11, v10, v4}, [I

    move-result-object v12

    aput-object v12, v6, v1

    sput-object v6, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->FINDER_PATTERNS:[[I

    const/16 v6, 0x17

    new-array v6, v6, [[I

    new-array v12, v9, [I

    fill-array-data v12, :array_0

    aput-object v12, v6, v8

    new-array v12, v9, [I

    fill-array-data v12, :array_1

    aput-object v12, v6, v4

    new-array v12, v9, [I

    fill-array-data v12, :array_2

    aput-object v12, v6, v11

    new-array v12, v9, [I

    fill-array-data v12, :array_3

    aput-object v12, v6, v3

    new-array v12, v9, [I

    fill-array-data v12, :array_4

    aput-object v12, v6, v2

    new-array v12, v9, [I

    fill-array-data v12, :array_5

    aput-object v12, v6, v1

    new-array v12, v9, [I

    fill-array-data v12, :array_6

    aput-object v12, v6, v5

    new-array v12, v9, [I

    fill-array-data v12, :array_7

    aput-object v12, v6, v0

    new-array v12, v9, [I

    fill-array-data v12, :array_8

    aput-object v12, v6, v9

    new-array v12, v9, [I

    fill-array-data v12, :array_9

    aput-object v12, v6, v10

    new-array v12, v9, [I

    fill-array-data v12, :array_a

    const/16 v13, 0xa

    aput-object v12, v6, v13

    new-array v12, v9, [I

    fill-array-data v12, :array_b

    const/16 v14, 0xb

    aput-object v12, v6, v14

    new-array v12, v9, [I

    fill-array-data v12, :array_c

    const/16 v15, 0xc

    aput-object v12, v6, v15

    new-array v12, v9, [I

    fill-array-data v12, :array_d

    const/16 v15, 0xd

    aput-object v12, v6, v15

    new-array v12, v9, [I

    fill-array-data v12, :array_e

    const/16 v15, 0xe

    aput-object v12, v6, v15

    new-array v12, v9, [I

    fill-array-data v12, :array_f

    const/16 v15, 0xf

    aput-object v12, v6, v15

    new-array v12, v9, [I

    fill-array-data v12, :array_10

    const/16 v15, 0x10

    aput-object v12, v6, v15

    new-array v12, v9, [I

    fill-array-data v12, :array_11

    const/16 v15, 0x11

    aput-object v12, v6, v15

    new-array v12, v9, [I

    fill-array-data v12, :array_12

    const/16 v15, 0x12

    aput-object v12, v6, v15

    new-array v12, v9, [I

    fill-array-data v12, :array_13

    const/16 v15, 0x13

    aput-object v12, v6, v15

    new-array v12, v9, [I

    fill-array-data v12, :array_14

    aput-object v12, v6, v7

    new-array v7, v9, [I

    fill-array-data v7, :array_15

    const/16 v12, 0x15

    aput-object v7, v6, v12

    new-array v7, v9, [I

    fill-array-data v7, :array_16

    const/16 v12, 0x16

    aput-object v7, v6, v12

    sput-object v6, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->WEIGHTS:[[I

    new-array v6, v13, [[I

    filled-new-array {v8, v8}, [I

    move-result-object v7

    aput-object v7, v6, v8

    filled-new-array {v8, v4, v4}, [I

    move-result-object v7

    aput-object v7, v6, v4

    filled-new-array {v8, v11, v4, v3}, [I

    move-result-object v7

    aput-object v7, v6, v11

    filled-new-array {v8, v2, v4, v3, v11}, [I

    move-result-object v4

    aput-object v4, v6, v3

    new-array v3, v5, [I

    fill-array-data v3, :array_17

    aput-object v3, v6, v2

    new-array v2, v0, [I

    fill-array-data v2, :array_18

    aput-object v2, v6, v1

    new-array v1, v9, [I

    fill-array-data v1, :array_19

    aput-object v1, v6, v5

    new-array v1, v10, [I

    fill-array-data v1, :array_1a

    aput-object v1, v6, v0

    new-array v0, v13, [I

    fill-array-data v0, :array_1b

    aput-object v0, v6, v9

    new-array v0, v14, [I

    fill-array-data v0, :array_1c

    aput-object v0, v6, v10

    sput-object v6, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->FINDER_PATTERN_SEQUENCES:[[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x3
        0x9
        0x1b
        0x51
        0x20
        0x60
        0x4d
    .end array-data

    :array_1
    .array-data 4
        0x14
        0x3c
        0xb4
        0x76
        0x8f
        0x7
        0x15
        0x3f
    .end array-data

    :array_2
    .array-data 4
        0xbd
        0x91
        0xd
        0x27
        0x75
        0x8c
        0xd1
        0xcd
    .end array-data

    :array_3
    .array-data 4
        0xc1
        0x9d
        0x31
        0x93
        0x13
        0x39
        0xab
        0x5b
    .end array-data

    :array_4
    .array-data 4
        0x3e
        0xba
        0x88
        0xc5
        0xa9
        0x55
        0x2c
        0x84
    .end array-data

    :array_5
    .array-data 4
        0xb9
        0x85
        0xbc
        0x8e
        0x4
        0xc
        0x24
        0x6c
    .end array-data

    :array_6
    .array-data 4
        0x71
        0x80
        0xad
        0x61
        0x50
        0x1d
        0x57
        0x32
    .end array-data

    :array_7
    .array-data 4
        0x96
        0x1c
        0x54
        0x29
        0x7b
        0x9e
        0x34
        0x9c
    .end array-data

    :array_8
    .array-data 4
        0x2e
        0x8a
        0xcb
        0xbb
        0x8b
        0xce
        0xc4
        0xa6
    .end array-data

    :array_9
    .array-data 4
        0x4c
        0x11
        0x33
        0x99
        0x25
        0x6f
        0x7a
        0x9b
    .end array-data

    :array_a
    .array-data 4
        0x2b
        0x81
        0xb0
        0x6a
        0x6b
        0x6e
        0x77
        0x92
    .end array-data

    :array_b
    .array-data 4
        0x10
        0x30
        0x90
        0xa
        0x1e
        0x5a
        0x3b
        0xb1
    .end array-data

    :array_c
    .array-data 4
        0x6d
        0x74
        0x89
        0xc8
        0xb2
        0x70
        0x7d
        0xa4
    .end array-data

    :array_d
    .array-data 4
        0x46
        0xd2
        0xd0
        0xca
        0xb8
        0x82
        0xb3
        0x73
    .end array-data

    :array_e
    .array-data 4
        0x86
        0xbf
        0x97
        0x1f
        0x5d
        0x44
        0xcc
        0xbe
    .end array-data

    :array_f
    .array-data 4
        0x94
        0x16
        0x42
        0xc6
        0xac
        0x5e
        0x47
        0x2
    .end array-data

    :array_10
    .array-data 4
        0x6
        0x12
        0x36
        0xa2
        0x40
        0xc0
        0x9a
        0x28
    .end array-data

    :array_11
    .array-data 4
        0x78
        0x95
        0x19
        0x4b
        0xe
        0x2a
        0x7e
        0xa7
    .end array-data

    :array_12
    .array-data 4
        0x4f
        0x1a
        0x4e
        0x17
        0x45
        0xcf
        0xc7
        0xaf
    .end array-data

    :array_13
    .array-data 4
        0x67
        0x62
        0x53
        0x26
        0x72
        0x83
        0xb6
        0x7c
    .end array-data

    :array_14
    .array-data 4
        0xa1
        0x3d
        0xb7
        0x7f
        0xaa
        0x58
        0x35
        0x9f
    .end array-data

    :array_15
    .array-data 4
        0x37
        0xa5
        0x49
        0x8
        0x18
        0x48
        0x5
        0xf
    .end array-data

    :array_16
    .array-data 4
        0x2d
        0x87
        0xc2
        0xa0
        0x3a
        0xae
        0x64
        0x59
    .end array-data

    :array_17
    .array-data 4
        0x0
        0x4
        0x1
        0x3
        0x3
        0x5
    .end array-data

    :array_18
    .array-data 4
        0x0
        0x4
        0x1
        0x3
        0x4
        0x5
        0x5
    .end array-data

    :array_19
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x2
        0x2
        0x3
        0x3
    .end array-data

    :array_1a
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x2
        0x2
        0x3
        0x4
        0x4
    .end array-data

    :array_1b
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x2
        0x2
        0x3
        0x4
        0x5
        0x5
    .end array-data

    :array_1c
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
        0x5
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 55
    invoke-direct {p0}, Lcom/google/zxing/oned/rss/AbstractRSSReader;-><init>()V

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    return-void
.end method

.method private adjustOddEvenCounts(I)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 672
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddCounts()[I

    move-result-object v0

    invoke-static {v0}, Lcom/google/zxing/common/detector/MathUtils;->sum([I)I

    move-result v0

    .line 673
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getEvenCounts()[I

    move-result-object v1

    invoke-static {v1}, Lcom/google/zxing/common/detector/MathUtils;->sum([I)I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0xd

    if-le v0, v5, :cond_0

    move v7, v3

    move v6, v4

    goto :goto_0

    :cond_0
    if-ge v0, v2, :cond_1

    move v6, v3

    move v7, v4

    goto :goto_0

    :cond_1
    move v6, v4

    move v7, v6

    :goto_0
    if-le v1, v5, :cond_2

    move v5, v3

    move v2, v4

    goto :goto_1

    :cond_2
    if-ge v1, v2, :cond_3

    move v2, v3

    move v5, v4

    goto :goto_1

    :cond_3
    move v2, v4

    move v5, v2

    :goto_1
    add-int v8, v0, v1

    sub-int/2addr v8, p1

    and-int/lit8 p1, v0, 0x1

    if-ne p1, v3, :cond_4

    move p1, v3

    goto :goto_2

    :cond_4
    move p1, v4

    :goto_2
    and-int/lit8 v9, v1, 0x1

    if-nez v9, :cond_5

    move v4, v3

    :cond_5
    const/4 v9, -0x1

    if-eq v8, v9, :cond_f

    if-eqz v8, :cond_a

    if-ne v8, v3, :cond_9

    if-eqz p1, :cond_7

    if-nez v4, :cond_6

    move v7, v3

    goto :goto_3

    .line 698
    :cond_6
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    :cond_7
    if-eqz v4, :cond_8

    move v5, v3

    goto :goto_3

    .line 703
    :cond_8
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    .line 742
    :cond_9
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    :cond_a
    if-eqz p1, :cond_d

    if-eqz v4, :cond_c

    if-ge v0, v1, :cond_b

    move v5, v3

    goto :goto_4

    :cond_b
    move v2, v3

    move v7, v2

    goto :goto_3

    .line 724
    :cond_c
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    :cond_d
    if-nez v4, :cond_e

    :goto_3
    move v3, v6

    goto :goto_4

    .line 736
    :cond_e
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    :cond_f
    if-eqz p1, :cond_11

    if-nez v4, :cond_10

    goto :goto_4

    .line 711
    :cond_10
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    :cond_11
    if-eqz v4, :cond_18

    move v2, v3

    goto :goto_3

    :goto_4
    if-eqz v3, :cond_13

    if-nez v7, :cond_12

    .line 749
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddCounts()[I

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddRoundingErrors()[F

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->increment([I[F)V

    goto :goto_5

    .line 747
    :cond_12
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    :cond_13
    :goto_5
    if-eqz v7, :cond_14

    .line 752
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddCounts()[I

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddRoundingErrors()[F

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->decrement([I[F)V

    :cond_14
    if-eqz v2, :cond_16

    if-nez v5, :cond_15

    .line 758
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getEvenCounts()[I

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddRoundingErrors()[F

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->increment([I[F)V

    goto :goto_6

    .line 756
    :cond_15
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    :cond_16
    :goto_6
    if-eqz v5, :cond_17

    .line 761
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getEvenCounts()[I

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getEvenRoundingErrors()[F

    move-result-object p0

    invoke-static {p1, p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->decrement([I[F)V

    :cond_17
    return-void

    .line 716
    :cond_18
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0
.end method

.method private checkChecksum()Z
    .locals 8

    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    const/4 v1, 0x0

    .line 367
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    .line 368
    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getLeftChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v2

    .line 369
    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v0

    if-nez v0, :cond_0

    return v1

    .line 375
    :cond_0
    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/DataCharacter;->getChecksumPortion()I

    move-result v0

    const/4 v3, 0x2

    const/4 v4, 0x1

    move v5, v4

    :goto_0
    iget-object v6, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    .line 378
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    iget-object v6, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    .line 379
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    .line 380
    invoke-virtual {v6}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getLeftChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/zxing/oned/rss/DataCharacter;->getChecksumPortion()I

    move-result v7

    add-int/2addr v0, v7

    add-int/lit8 v7, v3, 0x1

    .line 382
    invoke-virtual {v6}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 384
    invoke-virtual {v6}, Lcom/google/zxing/oned/rss/DataCharacter;->getChecksumPortion()I

    move-result v6

    add-int/2addr v0, v6

    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    :cond_1
    move v3, v7

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 389
    :cond_2
    rem-int/lit16 v0, v0, 0xd3

    add-int/lit8 v3, v3, -0x4

    mul-int/lit16 v3, v3, 0xd3

    add-int/2addr v3, v0

    .line 393
    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    move-result p0

    if-ne v3, p0, :cond_3

    return v4

    :cond_3
    return v1
.end method

.method private checkRows(Ljava/util/List;I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedRow;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    :goto_0
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    .line 217
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_3

    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    .line 218
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;

    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    .line 219
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 220
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;

    iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    .line 221
    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->getPairs()Ljava/util/List;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    .line 223
    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->getPairs()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    .line 225
    invoke-static {v1}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->isValidSequence(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 226
    invoke-direct {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->checkChecksum()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    return-object p0

    .line 230
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 231
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, p2, 0x1

    .line 234
    :try_start_0
    invoke-direct {p0, v1, v0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->checkRows(Ljava/util/List;I)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 241
    :cond_3
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0
.end method

.method private checkRows(Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    .line 190
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x19

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    iget-object p0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    .line 191
    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-object v2

    :cond_0
    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    .line 195
    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    .line 197
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 202
    :cond_1
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->checkRows(Ljava/util/List;I)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    .line 208
    invoke-static {p0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    :cond_2
    return-object v2
.end method

.method static constructResult(Ljava/util/List;)Lcom/google/zxing/Result;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 350
    invoke-static {p0}, Lcom/google/zxing/oned/rss/expanded/BitArrayBuilder;->buildBitArray(Ljava/util/List;)Lcom/google/zxing/common/BitArray;

    move-result-object v0

    .line 352
    invoke-static {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;->createDecoder(Lcom/google/zxing/common/BitArray;)Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;

    move-result-object v0

    .line 353
    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;->parseInformation()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 355
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/FinderPattern;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v2

    .line 356
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/FinderPattern;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object p0

    .line 358
    new-instance v3, Lcom/google/zxing/Result;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/ResultPoint;

    aget-object v6, v2, v1

    aput-object v6, v5, v1

    aget-object v2, v2, v4

    aput-object v2, v5, v4

    const/4 v2, 0x2

    aget-object v1, p0, v1

    aput-object v1, v5, v2

    const/4 v1, 0x3

    aget-object p0, p0, v4

    aput-object p0, v5, v1

    sget-object p0, Lcom/google/zxing/BarcodeFormat;->RSS_EXPANDED:Lcom/google/zxing/BarcodeFormat;

    const/4 v1, 0x0

    invoke-direct {v3, v0, v1, v5, p0}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    return-object v3
.end method

.method private findNextPair(Lcom/google/zxing/common/BitArray;Ljava/util/List;I)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 450
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getDecodeFinderCounters()[I

    move-result-object v0

    const/4 v1, 0x0

    .line 451
    aput v1, v0, v1

    const/4 v2, 0x1

    .line 452
    aput v1, v0, v2

    const/4 v3, 0x2

    .line 453
    aput v1, v0, v3

    const/4 v4, 0x3

    .line 454
    aput v1, v0, v4

    .line 456
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v5

    if-ltz p3, :cond_0

    goto :goto_0

    .line 461
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_1

    move p3, v1

    goto :goto_0

    .line 464
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    sub-int/2addr p3, v2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    .line 465
    invoke-virtual {p3}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object p3

    aget p3, p3, v2

    .line 467
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    rem-int/2addr p2, v3

    if-eqz p2, :cond_2

    move p2, v2

    goto :goto_1

    :cond_2
    move p2, v1

    :goto_1
    iget-boolean v6, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startFromEven:Z

    if-eqz v6, :cond_3

    xor-int/lit8 p2, p2, 0x1

    :cond_3
    move v6, v1

    :goto_2
    if-ge p3, v5, :cond_4

    .line 474
    invoke-virtual {p1, p3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v6

    xor-int/2addr v6, v2

    if-eqz v6, :cond_4

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_4
    move v8, v1

    move v7, v6

    move v6, p3

    :goto_3
    if-ge p3, v5, :cond_a

    .line 484
    invoke-virtual {p1, p3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v9

    if-eq v9, v7, :cond_5

    .line 485
    aget v9, v0, v8

    add-int/2addr v9, v2

    aput v9, v0, v8

    goto :goto_5

    :cond_5
    if-ne v8, v4, :cond_9

    if-eqz p2, :cond_6

    .line 489
    invoke-static {v0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->reverseCounters([I)V

    .line 492
    :cond_6
    invoke-static {v0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->isFinderPattern([I)Z

    move-result v9

    if-eqz v9, :cond_7

    iget-object p0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    .line 493
    aput v6, p0, v1

    .line 494
    aput p3, p0, v2

    return-void

    :cond_7
    if-eqz p2, :cond_8

    .line 499
    invoke-static {v0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->reverseCounters([I)V

    .line 502
    :cond_8
    aget v9, v0, v1

    aget v10, v0, v2

    add-int/2addr v9, v10

    add-int/2addr v6, v9

    .line 503
    aget v9, v0, v3

    aput v9, v0, v1

    .line 504
    aget v9, v0, v4

    aput v9, v0, v2

    .line 505
    aput v1, v0, v3

    .line 506
    aput v1, v0, v4

    add-int/lit8 v8, v8, -0x1

    goto :goto_4

    :cond_9
    add-int/lit8 v8, v8, 0x1

    .line 511
    :goto_4
    aput v2, v0, v8

    xor-int/lit8 v7, v7, 0x1

    :goto_5
    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    .line 515
    :cond_a
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0
.end method

.method private static getNextSecondBar(Lcom/google/zxing/common/BitArray;I)I
    .locals 1

    .line 398
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    move-result p1

    .line 400
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result p0

    goto :goto_0

    .line 402
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result p1

    .line 403
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method private static isNotA1left(Lcom/google/zxing/oned/rss/FinderPattern;ZZ)Z
    .locals 0

    .line 667
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    move-result p0

    if-nez p0, :cond_1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static isPartialRow(Ljava/lang/Iterable;Ljava/lang/Iterable;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;",
            "Ljava/lang/Iterable<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedRow;",
            ">;)Z"
        }
    .end annotation

    .line 320
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;

    .line 322
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    .line 324
    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->getPairs()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    .line 325
    invoke-virtual {v2, v4}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private static isValidSequence(Ljava/util/List;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;)Z"
        }
    .end annotation

    sget-object v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->FINDER_PATTERN_SEQUENCES:[[I

    .line 247
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    .line 248
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    array-length v6, v4

    if-gt v5, v6, :cond_2

    move v5, v2

    .line 250
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 251
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    invoke-virtual {v6}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    move-result v6

    aget v7, v4, v5

    if-eq v6, v7, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method private parseFoundFinderPattern(Lcom/google/zxing/common/BitArray;IZ)Lcom/google/zxing/oned/rss/FinderPattern;
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    .line 536
    aget p3, p3, v0

    sub-int/2addr p3, v1

    :goto_0
    if-ltz p3, :cond_0

    .line 538
    invoke-virtual {p1, p3}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_0
    add-int/2addr p3, v1

    iget-object p1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    .line 543
    aget v2, p1, v0

    sub-int/2addr v2, p3

    .line 545
    aget p1, p1, v1

    move v7, p1

    move v6, p3

    goto :goto_1

    :cond_1
    iget-object p3, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    .line 550
    aget v2, p3, v0

    .line 552
    aget p3, p3, v1

    add-int/2addr p3, v1

    invoke-virtual {p1, p3}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    move-result p1

    iget-object p3, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    .line 553
    aget p3, p3, v1

    sub-int p3, p1, p3

    move v7, p1

    move v6, v2

    move v2, p3

    .line 557
    :goto_1
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getDecodeFinderCounters()[I

    move-result-object p0

    .line 558
    array-length p1, p0

    sub-int/2addr p1, v1

    invoke-static {p0, v0, p0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 560
    aput v2, p0, v0

    :try_start_0
    sget-object p1, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->FINDER_PATTERNS:[[I

    .line 563
    invoke-static {p0, p1}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->parseFinderValue([I[[I)I

    move-result v4
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 567
    new-instance p0, Lcom/google/zxing/oned/rss/FinderPattern;

    filled-new-array {v6, v7}, [I

    move-result-object v5

    move-object v3, p0

    move v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/google/zxing/oned/rss/FinderPattern;-><init>(I[IIII)V

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static removePartialRows(Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;",
            "Ljava/util/Collection<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedRow;",
            ">;)V"
        }
    .end annotation

    .line 300
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 301
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;

    .line 302
    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->getPairs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 304
    invoke-virtual {v0}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->getPairs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    .line 305
    invoke-interface {p0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 312
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private static reverseCounters([I)V
    .locals 5

    .line 519
    array-length v0, p0

    const/4 v1, 0x0

    .line 520
    :goto_0
    div-int/lit8 v2, v0, 0x2

    if-ge v1, v2, :cond_0

    .line 521
    aget v2, p0, v1

    sub-int v3, v0, v1

    add-int/lit8 v3, v3, -0x1

    .line 522
    aget v4, p0, v3

    aput v4, p0, v1

    .line 523
    aput v2, p0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private storeRow(I)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    .line 271
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    .line 272
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;

    .line 273
    invoke-virtual {v3}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->getRowNumber()I

    move-result v4

    if-le v4, p1, :cond_0

    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    .line 274
    invoke-virtual {v3, v4}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->isEquivalent(Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    .line 277
    invoke-virtual {v3, v2}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;->isEquivalent(Ljava/util/List;)Z

    move-result v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v2, :cond_3

    :cond_2
    return-void

    :cond_3
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    .line 289
    invoke-static {v2, v3}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->isPartialRow(Ljava/lang/Iterable;Ljava/lang/Iterable;)Z

    move-result v2

    if-eqz v2, :cond_4

    return-void

    :cond_4
    iget-object v2, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    .line 293
    new-instance v3, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;

    iget-object v4, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    invoke-direct {v3, v4, p1, v0}, Lcom/google/zxing/oned/rss/expanded/ExpandedRow;-><init>(Ljava/util/List;IZ)V

    invoke-interface {v2, v1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    iget-object p0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    .line 295
    invoke-static {p1, p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->removePartialRows(Ljava/util/Collection;Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method decodeDataCharacter(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;ZZ)Lcom/google/zxing/oned/rss/DataCharacter;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    move-object v0, p1

    .line 574
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getDataCharacterCounters()[I

    move-result-object v1

    const/4 v2, 0x0

    .line 575
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    const/4 v3, 0x1

    if-eqz p4, :cond_0

    .line 578
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v4

    aget v4, v4, v2

    invoke-static {p1, v4, v1}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->recordPatternInReverse(Lcom/google/zxing/common/BitArray;I[I)V

    goto :goto_1

    .line 580
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v4

    aget v4, v4, v3

    invoke-static {p1, v4, v1}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    .line 582
    array-length v0, v1

    sub-int/2addr v0, v3

    move v4, v2

    :goto_0
    if-ge v4, v0, :cond_1

    .line 583
    aget v5, v1, v4

    .line 584
    aget v6, v1, v0

    aput v6, v1, v4

    .line 585
    aput v5, v1, v0

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 590
    :cond_1
    :goto_1
    invoke-static {v1}, Lcom/google/zxing/common/detector/MathUtils;->sum([I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v4, 0x41880000    # 17.0f

    div-float/2addr v0, v4

    .line 593
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v4

    aget v4, v4, v3

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v5

    aget v5, v5, v2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x41700000    # 15.0f

    div-float/2addr v4, v5

    sub-float v5, v0, v4

    .line 594
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    div-float/2addr v5, v4

    const v4, 0x3e99999a    # 0.3f

    cmpl-float v5, v5, v4

    if-gtz v5, :cond_e

    .line 598
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddCounts()[I

    move-result-object v5

    .line 599
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getEvenCounts()[I

    move-result-object v6

    .line 600
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getOddRoundingErrors()[F

    move-result-object v7

    .line 601
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getEvenRoundingErrors()[F

    move-result-object v8

    move v9, v2

    .line 603
    :goto_2
    array-length v10, v1

    if-ge v9, v10, :cond_7

    .line 604
    aget v10, v1, v9

    int-to-float v10, v10

    const/high16 v11, 0x3f800000    # 1.0f

    mul-float/2addr v10, v11

    div-float/2addr v10, v0

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v11, v10

    float-to-int v11, v11

    if-gtz v11, :cond_3

    cmpg-float v11, v10, v4

    if-ltz v11, :cond_2

    move v11, v3

    goto :goto_3

    .line 608
    :cond_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_3
    const/16 v12, 0x8

    if-le v11, v12, :cond_5

    const v11, 0x410b3333    # 8.7f

    cmpl-float v11, v10, v11

    if-gtz v11, :cond_4

    move v11, v12

    goto :goto_3

    .line 613
    :cond_4
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 617
    :cond_5
    :goto_3
    div-int/lit8 v12, v9, 0x2

    and-int/lit8 v13, v9, 0x1

    if-nez v13, :cond_6

    .line 619
    aput v11, v5, v12

    int-to-float v11, v11

    sub-float/2addr v10, v11

    .line 620
    aput v10, v7, v12

    goto :goto_4

    .line 622
    :cond_6
    aput v11, v6, v12

    int-to-float v11, v11

    sub-float/2addr v10, v11

    .line 623
    aput v10, v8, v12

    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_7
    const/16 v0, 0x11

    move-object v1, p0

    .line 627
    invoke-direct {p0, v0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->adjustOddEvenCounts(I)V

    .line 629
    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    move-result v0

    const/4 v1, 0x4

    mul-int/2addr v0, v1

    const/4 v4, 0x2

    if-eqz p3, :cond_8

    move v7, v2

    goto :goto_5

    :cond_8
    move v7, v4

    :goto_5
    add-int/2addr v0, v7

    xor-int/lit8 v7, p4, 0x1

    add-int/2addr v0, v7

    sub-int/2addr v0, v3

    .line 633
    array-length v7, v5

    sub-int/2addr v7, v3

    move v8, v2

    move v9, v8

    :goto_6
    if-ltz v7, :cond_a

    .line 634
    invoke-static/range {p2 .. p4}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->isNotA1left(Lcom/google/zxing/oned/rss/FinderPattern;ZZ)Z

    move-result v10

    if-eqz v10, :cond_9

    sget-object v10, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->WEIGHTS:[[I

    .line 635
    aget-object v10, v10, v0

    mul-int/lit8 v11, v7, 0x2

    aget v10, v10, v11

    .line 636
    aget v11, v5, v7

    mul-int/2addr v11, v10

    add-int/2addr v8, v11

    .line 638
    :cond_9
    aget v10, v5, v7

    add-int/2addr v9, v10

    add-int/lit8 v7, v7, -0x1

    goto :goto_6

    .line 641
    :cond_a
    array-length v7, v6

    sub-int/2addr v7, v3

    move v10, v2

    :goto_7
    if-ltz v7, :cond_c

    .line 642
    invoke-static/range {p2 .. p4}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->isNotA1left(Lcom/google/zxing/oned/rss/FinderPattern;ZZ)Z

    move-result v11

    if-eqz v11, :cond_b

    sget-object v11, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->WEIGHTS:[[I

    .line 643
    aget-object v11, v11, v0

    mul-int/lit8 v12, v7, 0x2

    add-int/2addr v12, v3

    aget v11, v11, v12

    .line 644
    aget v12, v6, v7

    mul-int/2addr v12, v11

    add-int/2addr v10, v12

    :cond_b
    add-int/lit8 v7, v7, -0x1

    goto :goto_7

    :cond_c
    add-int/2addr v8, v10

    and-int/lit8 v0, v9, 0x1

    if-nez v0, :cond_d

    const/16 v0, 0xd

    if-gt v9, v0, :cond_d

    if-lt v9, v1, :cond_d

    sub-int/2addr v0, v9

    .line 653
    div-int/2addr v0, v4

    sget-object v1, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->SYMBOL_WIDEST:[I

    .line 654
    aget v1, v1, v0

    rsub-int/lit8 v4, v1, 0x9

    .line 656
    invoke-static {v5, v1, v3}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v1

    .line 657
    invoke-static {v6, v4, v2}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v2

    sget-object v3, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->EVEN_TOTAL_SUBSET:[I

    .line 658
    aget v3, v3, v0

    sget-object v4, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->GSUM:[I

    .line 659
    aget v0, v4, v0

    mul-int/2addr v1, v3

    add-int/2addr v1, v2

    add-int/2addr v1, v0

    .line 662
    new-instance v0, Lcom/google/zxing/oned/rss/DataCharacter;

    invoke-direct {v0, v1, v8}, Lcom/google/zxing/oned/rss/DataCharacter;-><init>(II)V

    return-object v0

    .line 650
    :cond_d
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 595
    :cond_e
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method

.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    iget-object p3, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    .line 129
    invoke-interface {p3}, Ljava/util/List;->clear()V

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startFromEven:Z

    .line 132
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->decodeRow2pairs(ILcom/google/zxing/common/BitArray;)Ljava/util/List;

    move-result-object p3

    invoke-static {p3}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->constructResult(Ljava/util/List;)Lcom/google/zxing/Result;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    iget-object p3, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    .line 137
    invoke-interface {p3}, Ljava/util/List;->clear()V

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startFromEven:Z

    .line 139
    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->decodeRow2pairs(ILcom/google/zxing/common/BitArray;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->constructResult(Ljava/util/List;)Lcom/google/zxing/Result;

    move-result-object p0

    return-object p0
.end method

.method decodeRow2pairs(ILcom/google/zxing/common/BitArray;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x1

    if-nez v1, :cond_1

    :try_start_0
    iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    .line 153
    invoke-virtual {p0, p2, v3, p1}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->retrieveNextPair(Lcom/google/zxing/common/BitArray;Ljava/util/List;I)Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    .line 155
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 156
    :cond_0
    throw v1

    .line 164
    :cond_1
    invoke-direct {p0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->checkChecksum()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    return-object p0

    :cond_2
    iget-object p2, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    .line 168
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    xor-int/2addr p2, v2

    .line 169
    invoke-direct {p0, p1}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->storeRow(I)V

    if-eqz p2, :cond_4

    .line 173
    invoke-direct {p0, v0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->checkRows(Z)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    return-object p1

    .line 177
    :cond_3
    invoke-direct {p0, v2}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->checkRows(Z)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_4

    return-object p0

    .line 183
    :cond_4
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0
.end method

.method getRows()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedRow;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    return-object p0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->pairs:Ljava/util/List;

    .line 144
    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object p0, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->rows:Ljava/util/List;

    .line 145
    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method retrieveNextPair(Lcom/google/zxing/common/BitArray;Ljava/util/List;I)Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/List<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;I)",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 411
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-boolean v3, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startFromEven:Z

    if-eqz v3, :cond_1

    xor-int/lit8 v0, v0, 0x1

    :cond_1
    const/4 v3, -0x1

    move v4, v2

    .line 421
    :cond_2
    invoke-direct {p0, p1, p2, v3}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->findNextPair(Lcom/google/zxing/common/BitArray;Ljava/util/List;I)V

    .line 422
    invoke-direct {p0, p1, p3, v0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->parseFoundFinderPattern(Lcom/google/zxing/common/BitArray;IZ)Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v5

    if-nez v5, :cond_3

    iget-object v3, p0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->startEnd:[I

    .line 424
    aget v3, v3, v1

    invoke-static {p1, v3}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->getNextSecondBar(Lcom/google/zxing/common/BitArray;I)I

    move-result v3

    goto :goto_1

    :cond_3
    move v4, v1

    :goto_1
    if-nez v4, :cond_2

    .line 433
    invoke-virtual {p0, p1, v5, v0, v2}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->decodeDataCharacter(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;ZZ)Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object p3

    .line 435
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    invoke-virtual {p2}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->mustBeLast()Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_2

    .line 436
    :cond_4
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    .line 441
    :cond_5
    :goto_2
    :try_start_0
    invoke-virtual {p0, p1, v5, v0, v1}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;->decodeDataCharacter(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;ZZ)Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    const/4 p0, 0x0

    .line 445
    :goto_3
    new-instance p1, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    invoke-direct {p1, p3, p0, v5}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;-><init>(Lcom/google/zxing/oned/rss/DataCharacter;Lcom/google/zxing/oned/rss/DataCharacter;Lcom/google/zxing/oned/rss/FinderPattern;)V

    return-object p1
.end method
