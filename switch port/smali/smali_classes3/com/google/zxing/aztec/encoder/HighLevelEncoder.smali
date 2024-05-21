.class public final Lcom/google/zxing/aztec/encoder/HighLevelEncoder;
.super Ljava/lang/Object;
.source "HighLevelEncoder.java"


# static fields
.field private static final CHAR_MAP:[[I

.field static final LATCH_TABLE:[[I

.field static final MODE_DIGIT:I = 0x2

.field static final MODE_LOWER:I = 0x1

.field static final MODE_MIXED:I = 0x3

.field static final MODE_NAMES:[Ljava/lang/String;

.field static final MODE_PUNCT:I = 0x4

.field static final MODE_UPPER:I

.field static final SHIFT_TABLE:[[I


# instance fields
.field private final text:[B


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v0, "MIXED"

    const-string v1, "PUNCT"

    const-string v2, "UPPER"

    const-string v3, "LOWER"

    const-string v4, "DIGIT"

    .line 42
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->MODE_NAMES:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v1, v0, [[I

    const/4 v2, 0x0

    const v3, 0x5001c

    const v4, 0x5001e

    const v5, 0x5001d

    const v6, 0xa03be

    filled-new-array {v2, v3, v4, v5, v6}, [I

    move-result-object v7

    aput-object v7, v1, v2

    const v7, 0x901ee

    filled-new-array {v7, v2, v4, v5, v6}, [I

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v1, v8

    const v7, 0x901dd

    const v9, 0xe3bbe

    const v10, 0x4000e

    const v11, 0x901dc

    filled-new-array {v10, v11, v2, v7, v9}, [I

    move-result-object v7

    const/4 v9, 0x2

    aput-object v7, v1, v9

    filled-new-array {v5, v3, v6, v2, v4}, [I

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v1, v4

    const v3, 0xa03fe

    const v5, 0xa03fd

    const v6, 0x5001f

    const v7, 0xa03fc

    filled-new-array {v6, v7, v3, v5, v2}, [I

    move-result-object v3

    const/4 v5, 0x4

    aput-object v3, v1, v5

    sput-object v1, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->LATCH_TABLE:[[I

    const/16 v1, 0x100

    filled-new-array {v0, v1}, [I

    move-result-object v0

    .line 96
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    sput-object v0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    .line 98
    aget-object v0, v0, v2

    const/16 v1, 0x20

    aput v8, v0, v1

    const/16 v0, 0x41

    :goto_0
    const/16 v3, 0x5a

    if-gt v0, v3, :cond_0

    sget-object v3, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    .line 100
    aget-object v3, v3, v2

    add-int/lit8 v6, v0, -0x3f

    aput v6, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    .line 102
    aget-object v0, v0, v8

    aput v8, v0, v1

    const/16 v0, 0x61

    :goto_1
    const/16 v3, 0x7a

    if-gt v0, v3, :cond_1

    sget-object v3, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    .line 104
    aget-object v3, v3, v8

    add-int/lit8 v6, v0, -0x5f

    aput v6, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    .line 106
    aget-object v0, v0, v9

    aput v8, v0, v1

    const/16 v0, 0x30

    :goto_2
    const/16 v1, 0x39

    if-gt v0, v1, :cond_2

    sget-object v1, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    .line 108
    aget-object v1, v1, v9

    add-int/lit8 v3, v0, -0x2e

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    sget-object v0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    .line 110
    aget-object v0, v0, v9

    const/16 v1, 0x2c

    const/16 v3, 0xc

    aput v3, v0, v1

    const/16 v1, 0xd

    const/16 v3, 0x2e

    .line 111
    aput v1, v0, v3

    const/16 v0, 0x1c

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    move v3, v2

    :goto_3
    if-ge v3, v0, :cond_3

    sget-object v6, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    .line 118
    aget-object v6, v6, v4

    aget v7, v1, v3

    aput v3, v6, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    const/16 v1, 0x1f

    new-array v3, v1, [I

    fill-array-data v3, :array_1

    move v6, v2

    :goto_4
    if-ge v6, v1, :cond_5

    .line 126
    aget v7, v3, v6

    if-lez v7, :cond_4

    sget-object v10, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    .line 127
    aget-object v10, v10, v5

    aput v6, v10, v7

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_5
    const/4 v1, 0x6

    filled-new-array {v1, v1}, [I

    move-result-object v1

    .line 134
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    sput-object v1, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->SHIFT_TABLE:[[I

    .line 136
    array-length v3, v1

    move v6, v2

    :goto_5
    if-ge v6, v3, :cond_6

    aget-object v7, v1, v6

    const/4 v10, -0x1

    .line 137
    invoke-static {v7, v10}, Ljava/util/Arrays;->fill([II)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_6
    sget-object v1, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->SHIFT_TABLE:[[I

    .line 139
    aget-object v3, v1, v2

    aput v2, v3, v5

    .line 141
    aget-object v3, v1, v8

    aput v2, v3, v5

    .line 142
    aput v0, v3, v2

    .line 144
    aget-object v0, v1, v4

    aput v2, v0, v5

    .line 146
    aget-object v0, v1, v9

    aput v2, v0, v5

    const/16 v1, 0xf

    .line 147
    aput v1, v0, v2

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x20
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x40
        0x5c
        0x5e
        0x5f
        0x60
        0x7c
        0x7e
        0x7f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0xd
        0x0
        0x0
        0x0
        0x0
        0x21
        0x27
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x29
        0x2a
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x3a
        0x3b
        0x3c
        0x3d
        0x3e
        0x3f
        0x5b
        0x5d
        0x7b
        0x7d
    .end array-data
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->text:[B

    return-void
.end method

.method private static simplifyStates(Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/zxing/aztec/encoder/State;",
            ">;)",
            "Ljava/util/Collection<",
            "Lcom/google/zxing/aztec/encoder/State;",
            ">;"
        }
    .end annotation

    .line 286
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 287
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/aztec/encoder/State;

    .line 289
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 290
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/aztec/encoder/State;

    .line 291
    invoke-virtual {v3, v1}, Lcom/google/zxing/aztec/encoder/State;->isBetterThanOrEqualTo(Lcom/google/zxing/aztec/encoder/State;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 295
    :cond_1
    invoke-virtual {v1, v3}, Lcom/google/zxing/aztec/encoder/State;->isBetterThanOrEqualTo(Lcom/google/zxing/aztec/encoder/State;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 296
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 300
    :cond_2
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private updateStateForChar(Lcom/google/zxing/aztec/encoder/State;ILjava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/aztec/encoder/State;",
            "I",
            "Ljava/util/Collection<",
            "Lcom/google/zxing/aztec/encoder/State;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->text:[B

    .line 216
    aget-byte p0, p0, p2

    and-int/lit16 p0, p0, 0xff

    int-to-char p0, p0

    sget-object v0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    .line 217
    invoke-virtual {p1}, Lcom/google/zxing/aztec/encoder/State;->getMode()I

    move-result v1

    aget-object v0, v0, v1

    aget v0, v0, p0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v2, 0x0

    :goto_1
    const/4 v3, 0x4

    if-gt v1, v3, :cond_5

    sget-object v3, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    .line 220
    aget-object v3, v3, v1

    aget v3, v3, p0

    if-lez v3, :cond_4

    if-nez v2, :cond_1

    .line 224
    invoke-virtual {p1, p2}, Lcom/google/zxing/aztec/encoder/State;->endBinaryShift(I)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v2

    :cond_1
    if-eqz v0, :cond_2

    .line 227
    invoke-virtual {p1}, Lcom/google/zxing/aztec/encoder/State;->getMode()I

    move-result v4

    if-eq v1, v4, :cond_2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_3

    .line 232
    :cond_2
    invoke-virtual {v2, v1, v3}, Lcom/google/zxing/aztec/encoder/State;->latchAndAppend(II)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v4

    .line 233
    invoke-interface {p3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_3
    if-nez v0, :cond_4

    sget-object v4, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->SHIFT_TABLE:[[I

    .line 236
    invoke-virtual {p1}, Lcom/google/zxing/aztec/encoder/State;->getMode()I

    move-result v5

    aget-object v4, v4, v5

    aget v4, v4, v1

    if-ltz v4, :cond_4

    .line 239
    invoke-virtual {v2, v1, v3}, Lcom/google/zxing/aztec/encoder/State;->shiftAndAppend(II)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v3

    .line 240
    invoke-interface {p3, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 244
    :cond_5
    invoke-virtual {p1}, Lcom/google/zxing/aztec/encoder/State;->getBinaryShiftByteCount()I

    move-result v0

    if-gtz v0, :cond_6

    sget-object v0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    invoke-virtual {p1}, Lcom/google/zxing/aztec/encoder/State;->getMode()I

    move-result v1

    aget-object v0, v0, v1

    aget p0, v0, p0

    if-nez p0, :cond_7

    .line 248
    :cond_6
    invoke-virtual {p1, p2}, Lcom/google/zxing/aztec/encoder/State;->addBinaryShiftChar(I)Lcom/google/zxing/aztec/encoder/State;

    move-result-object p0

    .line 249
    invoke-interface {p3, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method private static updateStateForPair(Lcom/google/zxing/aztec/encoder/State;IILjava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/aztec/encoder/State;",
            "II",
            "Ljava/util/Collection<",
            "Lcom/google/zxing/aztec/encoder/State;",
            ">;)V"
        }
    .end annotation

    .line 262
    invoke-virtual {p0, p1}, Lcom/google/zxing/aztec/encoder/State;->endBinaryShift(I)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v0

    const/4 v1, 0x4

    .line 264
    invoke-virtual {v0, v1, p2}, Lcom/google/zxing/aztec/encoder/State;->latchAndAppend(II)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 265
    invoke-virtual {p0}, Lcom/google/zxing/aztec/encoder/State;->getMode()I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 268
    invoke-virtual {v0, v1, p2}, Lcom/google/zxing/aztec/encoder/State;->shiftAndAppend(II)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq p2, v2, :cond_1

    if-ne p2, v1, :cond_2

    :cond_1
    rsub-int/lit8 p2, p2, 0x10

    const/4 v1, 0x2

    .line 273
    invoke-virtual {v0, v1, p2}, Lcom/google/zxing/aztec/encoder/State;->latchAndAppend(II)Lcom/google/zxing/aztec/encoder/State;

    move-result-object p2

    .line 274
    invoke-virtual {p2, v1, v3}, Lcom/google/zxing/aztec/encoder/State;->latchAndAppend(II)Lcom/google/zxing/aztec/encoder/State;

    move-result-object p2

    .line 275
    invoke-interface {p3, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 277
    :cond_2
    invoke-virtual {p0}, Lcom/google/zxing/aztec/encoder/State;->getBinaryShiftByteCount()I

    move-result p2

    if-lez p2, :cond_3

    .line 280
    invoke-virtual {p0, p1}, Lcom/google/zxing/aztec/encoder/State;->addBinaryShiftChar(I)Lcom/google/zxing/aztec/encoder/State;

    move-result-object p0

    add-int/2addr p1, v3

    invoke-virtual {p0, p1}, Lcom/google/zxing/aztec/encoder/State;->addBinaryShiftChar(I)Lcom/google/zxing/aztec/encoder/State;

    move-result-object p0

    .line 281
    invoke-interface {p3, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method private updateStateListForChar(Ljava/lang/Iterable;I)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/zxing/aztec/encoder/State;",
            ">;I)",
            "Ljava/util/Collection<",
            "Lcom/google/zxing/aztec/encoder/State;",
            ">;"
        }
    .end annotation

    .line 205
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 206
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/aztec/encoder/State;

    .line 207
    invoke-direct {p0, v1, p2, v0}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->updateStateForChar(Lcom/google/zxing/aztec/encoder/State;ILjava/util/Collection;)V

    goto :goto_0

    .line 209
    :cond_0
    invoke-static {v0}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->simplifyStates(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method private static updateStateListForPair(Ljava/lang/Iterable;II)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/zxing/aztec/encoder/State;",
            ">;II)",
            "Ljava/util/Collection<",
            "Lcom/google/zxing/aztec/encoder/State;",
            ">;"
        }
    .end annotation

    .line 254
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 255
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/aztec/encoder/State;

    .line 256
    invoke-static {v1, p1, p2, v0}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->updateStateForPair(Lcom/google/zxing/aztec/encoder/State;IILjava/util/Collection;)V

    goto :goto_0

    .line 258
    :cond_0
    invoke-static {v0}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->simplifyStates(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public encode()Lcom/google/zxing/common/BitArray;
    .locals 8

    .line 160
    sget-object v0, Lcom/google/zxing/aztec/encoder/State;->INITIAL_STATE:Lcom/google/zxing/aztec/encoder/State;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->text:[B

    .line 161
    array-length v4, v3

    if-ge v2, v4, :cond_7

    add-int/lit8 v4, v2, 0x1

    .line 163
    array-length v5, v3

    if-ge v4, v5, :cond_0

    aget-byte v5, v3, v4

    goto :goto_1

    :cond_0
    move v5, v1

    .line 164
    :goto_1
    aget-byte v3, v3, v2

    const/16 v6, 0xd

    if-eq v3, v6, :cond_5

    const/16 v6, 0x2c

    const/16 v7, 0x20

    if-eq v3, v6, :cond_4

    const/16 v6, 0x2e

    if-eq v3, v6, :cond_3

    const/16 v6, 0x3a

    if-eq v3, v6, :cond_2

    :cond_1
    move v3, v1

    goto :goto_2

    :cond_2
    if-ne v5, v7, :cond_1

    const/4 v3, 0x5

    goto :goto_2

    :cond_3
    if-ne v5, v7, :cond_1

    const/4 v3, 0x3

    goto :goto_2

    :cond_4
    if-ne v5, v7, :cond_1

    const/4 v3, 0x4

    goto :goto_2

    :cond_5
    const/16 v3, 0xa

    if-ne v5, v3, :cond_1

    const/4 v3, 0x2

    :goto_2
    if-lez v3, :cond_6

    .line 183
    invoke-static {v0, v2, v3}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->updateStateListForPair(Ljava/lang/Iterable;II)Ljava/util/Collection;

    move-result-object v0

    move v2, v4

    goto :goto_3

    .line 187
    :cond_6
    invoke-direct {p0, v0, v2}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->updateStateListForChar(Ljava/lang/Iterable;I)Ljava/util/Collection;

    move-result-object v0

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 191
    :cond_7
    new-instance v1, Lcom/google/zxing/aztec/encoder/HighLevelEncoder$1;

    invoke-direct {v1, p0}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder$1;-><init>(Lcom/google/zxing/aztec/encoder/HighLevelEncoder;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/aztec/encoder/State;

    iget-object p0, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->text:[B

    .line 198
    invoke-virtual {v0, p0}, Lcom/google/zxing/aztec/encoder/State;->toBitArray([B)Lcom/google/zxing/common/BitArray;

    move-result-object p0

    return-object p0
.end method
