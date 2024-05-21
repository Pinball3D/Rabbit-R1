.class final Lcom/google/zxing/aztec/encoder/State;
.super Ljava/lang/Object;
.source "State.java"


# static fields
.field static final INITIAL_STATE:Lcom/google/zxing/aztec/encoder/State;


# instance fields
.field private final binaryShiftByteCount:I

.field private final bitCount:I

.field private final mode:I

.field private final token:Lcom/google/zxing/aztec/encoder/Token;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 30
    new-instance v0, Lcom/google/zxing/aztec/encoder/State;

    sget-object v1, Lcom/google/zxing/aztec/encoder/Token;->EMPTY:Lcom/google/zxing/aztec/encoder/Token;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/zxing/aztec/encoder/State;-><init>(Lcom/google/zxing/aztec/encoder/Token;III)V

    sput-object v0, Lcom/google/zxing/aztec/encoder/State;->INITIAL_STATE:Lcom/google/zxing/aztec/encoder/State;

    return-void
.end method

.method private constructor <init>(Lcom/google/zxing/aztec/encoder/Token;III)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/aztec/encoder/State;->token:Lcom/google/zxing/aztec/encoder/Token;

    iput p2, p0, Lcom/google/zxing/aztec/encoder/State;->mode:I

    iput p3, p0, Lcom/google/zxing/aztec/encoder/State;->binaryShiftByteCount:I

    iput p4, p0, Lcom/google/zxing/aztec/encoder/State;->bitCount:I

    return-void
.end method

.method private static calculateBinaryShiftCost(Lcom/google/zxing/aztec/encoder/State;)I
    .locals 1

    .line 173
    iget p0, p0, Lcom/google/zxing/aztec/encoder/State;->binaryShiftByteCount:I

    const/16 v0, 0x3e

    if-le p0, v0, :cond_0

    const/16 p0, 0x15

    return p0

    :cond_0
    const/16 v0, 0x1f

    if-le p0, v0, :cond_1

    const/16 p0, 0x14

    return p0

    :cond_1
    if-lez p0, :cond_2

    const/16 p0, 0xa

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method addBinaryShiftChar(I)Lcom/google/zxing/aztec/encoder/State;
    .locals 5

    iget-object v0, p0, Lcom/google/zxing/aztec/encoder/State;->token:Lcom/google/zxing/aztec/encoder/Token;

    iget v1, p0, Lcom/google/zxing/aztec/encoder/State;->mode:I

    iget v2, p0, Lcom/google/zxing/aztec/encoder/State;->bitCount:I

    const/4 v3, 0x4

    if-eq v1, v3, :cond_0

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 109
    :cond_0
    sget-object v3, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->LATCH_TABLE:[[I

    aget-object v1, v3, v1

    const/4 v3, 0x0

    aget v1, v1, v3

    const v4, 0xffff

    and-int/2addr v4, v1

    shr-int/lit8 v1, v1, 0x10

    .line 110
    invoke-virtual {v0, v4, v1}, Lcom/google/zxing/aztec/encoder/Token;->add(II)Lcom/google/zxing/aztec/encoder/Token;

    move-result-object v0

    add-int/2addr v2, v1

    move v1, v3

    :cond_1
    iget p0, p0, Lcom/google/zxing/aztec/encoder/State;->binaryShiftByteCount:I

    if-eqz p0, :cond_4

    const/16 v3, 0x1f

    if-ne p0, v3, :cond_2

    goto :goto_0

    :cond_2
    const/16 v3, 0x3e

    if-ne p0, v3, :cond_3

    const/16 v3, 0x9

    goto :goto_1

    :cond_3
    const/16 v3, 0x8

    goto :goto_1

    :cond_4
    :goto_0
    const/16 v3, 0x12

    .line 117
    :goto_1
    new-instance v4, Lcom/google/zxing/aztec/encoder/State;

    add-int/lit8 p0, p0, 0x1

    add-int/2addr v2, v3

    invoke-direct {v4, v0, v1, p0, v2}, Lcom/google/zxing/aztec/encoder/State;-><init>(Lcom/google/zxing/aztec/encoder/Token;III)V

    iget p0, v4, Lcom/google/zxing/aztec/encoder/State;->binaryShiftByteCount:I

    const/16 v0, 0x81e

    if-ne p0, v0, :cond_5

    add-int/lit8 p1, p1, 0x1

    .line 120
    invoke-virtual {v4, p1}, Lcom/google/zxing/aztec/encoder/State;->endBinaryShift(I)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v4

    :cond_5
    return-object v4
.end method

.method endBinaryShift(I)Lcom/google/zxing/aztec/encoder/State;
    .locals 3

    iget v0, p0, Lcom/google/zxing/aztec/encoder/State;->binaryShiftByteCount:I

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    iget-object v1, p0, Lcom/google/zxing/aztec/encoder/State;->token:Lcom/google/zxing/aztec/encoder/Token;

    sub-int/2addr p1, v0

    .line 132
    invoke-virtual {v1, p1, v0}, Lcom/google/zxing/aztec/encoder/Token;->addBinaryShift(II)Lcom/google/zxing/aztec/encoder/Token;

    move-result-object p1

    .line 134
    new-instance v0, Lcom/google/zxing/aztec/encoder/State;

    iget v1, p0, Lcom/google/zxing/aztec/encoder/State;->mode:I

    const/4 v2, 0x0

    iget p0, p0, Lcom/google/zxing/aztec/encoder/State;->bitCount:I

    invoke-direct {v0, p1, v1, v2, p0}, Lcom/google/zxing/aztec/encoder/State;-><init>(Lcom/google/zxing/aztec/encoder/Token;III)V

    return-object v0
.end method

.method getBinaryShiftByteCount()I
    .locals 0

    iget p0, p0, Lcom/google/zxing/aztec/encoder/State;->binaryShiftByteCount:I

    return p0
.end method

.method getBitCount()I
    .locals 0

    iget p0, p0, Lcom/google/zxing/aztec/encoder/State;->bitCount:I

    return p0
.end method

.method getMode()I
    .locals 0

    iget p0, p0, Lcom/google/zxing/aztec/encoder/State;->mode:I

    return p0
.end method

.method getToken()Lcom/google/zxing/aztec/encoder/Token;
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/aztec/encoder/State;->token:Lcom/google/zxing/aztec/encoder/Token;

    return-object p0
.end method

.method isBetterThanOrEqualTo(Lcom/google/zxing/aztec/encoder/State;)Z
    .locals 3

    iget v0, p0, Lcom/google/zxing/aztec/encoder/State;->bitCount:I

    .line 140
    sget-object v1, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->LATCH_TABLE:[[I

    iget v2, p0, Lcom/google/zxing/aztec/encoder/State;->mode:I

    aget-object v1, v1, v2

    iget v2, p1, Lcom/google/zxing/aztec/encoder/State;->mode:I

    aget v1, v1, v2

    shr-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/zxing/aztec/encoder/State;->binaryShiftByteCount:I

    .line 141
    iget v2, p1, Lcom/google/zxing/aztec/encoder/State;->binaryShiftByteCount:I

    if-ge v1, v2, :cond_0

    .line 143
    invoke-static {p1}, Lcom/google/zxing/aztec/encoder/State;->calculateBinaryShiftCost(Lcom/google/zxing/aztec/encoder/State;)I

    move-result v1

    invoke-static {p0}, Lcom/google/zxing/aztec/encoder/State;->calculateBinaryShiftCost(Lcom/google/zxing/aztec/encoder/State;)I

    move-result p0

    sub-int/2addr v1, p0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    if-le v1, v2, :cond_1

    if-lez v2, :cond_1

    add-int/lit8 v0, v0, 0xa

    .line 148
    :cond_1
    :goto_0
    iget p0, p1, Lcom/google/zxing/aztec/encoder/State;->bitCount:I

    if-gt v0, p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method latchAndAppend(II)Lcom/google/zxing/aztec/encoder/State;
    .locals 3

    iget v0, p0, Lcom/google/zxing/aztec/encoder/State;->bitCount:I

    iget-object v1, p0, Lcom/google/zxing/aztec/encoder/State;->token:Lcom/google/zxing/aztec/encoder/Token;

    iget v2, p0, Lcom/google/zxing/aztec/encoder/State;->mode:I

    if-eq p1, v2, :cond_0

    .line 80
    sget-object v2, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->LATCH_TABLE:[[I

    iget p0, p0, Lcom/google/zxing/aztec/encoder/State;->mode:I

    aget-object p0, v2, p0

    aget p0, p0, p1

    const v2, 0xffff

    and-int/2addr v2, p0

    shr-int/lit8 p0, p0, 0x10

    .line 81
    invoke-virtual {v1, v2, p0}, Lcom/google/zxing/aztec/encoder/Token;->add(II)Lcom/google/zxing/aztec/encoder/Token;

    move-result-object v1

    add-int/2addr v0, p0

    :cond_0
    const/4 p0, 0x2

    if-ne p1, p0, :cond_1

    const/4 p0, 0x4

    goto :goto_0

    :cond_1
    const/4 p0, 0x5

    .line 85
    :goto_0
    invoke-virtual {v1, p2, p0}, Lcom/google/zxing/aztec/encoder/Token;->add(II)Lcom/google/zxing/aztec/encoder/Token;

    move-result-object p2

    .line 86
    new-instance v1, Lcom/google/zxing/aztec/encoder/State;

    const/4 v2, 0x0

    add-int/2addr v0, p0

    invoke-direct {v1, p2, p1, v2, v0}, Lcom/google/zxing/aztec/encoder/State;-><init>(Lcom/google/zxing/aztec/encoder/Token;III)V

    return-object v1
.end method

.method shiftAndAppend(II)Lcom/google/zxing/aztec/encoder/State;
    .locals 5

    iget-object v0, p0, Lcom/google/zxing/aztec/encoder/State;->token:Lcom/google/zxing/aztec/encoder/Token;

    iget v1, p0, Lcom/google/zxing/aztec/encoder/State;->mode:I

    const/4 v2, 0x2

    const/4 v3, 0x5

    if-ne v1, v2, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    move v1, v3

    .line 96
    :goto_0
    sget-object v2, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->SHIFT_TABLE:[[I

    iget v4, p0, Lcom/google/zxing/aztec/encoder/State;->mode:I

    aget-object v2, v2, v4

    aget p1, v2, p1

    invoke-virtual {v0, p1, v1}, Lcom/google/zxing/aztec/encoder/Token;->add(II)Lcom/google/zxing/aztec/encoder/Token;

    move-result-object p1

    .line 97
    invoke-virtual {p1, p2, v3}, Lcom/google/zxing/aztec/encoder/Token;->add(II)Lcom/google/zxing/aztec/encoder/Token;

    move-result-object p1

    .line 98
    new-instance p2, Lcom/google/zxing/aztec/encoder/State;

    iget v0, p0, Lcom/google/zxing/aztec/encoder/State;->mode:I

    iget p0, p0, Lcom/google/zxing/aztec/encoder/State;->bitCount:I

    add-int/2addr p0, v1

    add-int/2addr p0, v3

    const/4 v1, 0x0

    invoke-direct {p2, p1, v0, v1, p0}, Lcom/google/zxing/aztec/encoder/State;-><init>(Lcom/google/zxing/aztec/encoder/Token;III)V

    return-object p2
.end method

.method toBitArray([B)Lcom/google/zxing/common/BitArray;
    .locals 2

    .line 154
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 155
    array-length v1, p1

    invoke-virtual {p0, v1}, Lcom/google/zxing/aztec/encoder/State;->endBinaryShift(I)Lcom/google/zxing/aztec/encoder/State;

    move-result-object p0

    iget-object p0, p0, Lcom/google/zxing/aztec/encoder/State;->token:Lcom/google/zxing/aztec/encoder/Token;

    :goto_0
    if-eqz p0, :cond_0

    .line 156
    invoke-interface {v0, p0}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 155
    invoke-virtual {p0}, Lcom/google/zxing/aztec/encoder/Token;->getPrevious()Lcom/google/zxing/aztec/encoder/Token;

    move-result-object p0

    goto :goto_0

    .line 158
    :cond_0
    new-instance p0, Lcom/google/zxing/common/BitArray;

    invoke-direct {p0}, Lcom/google/zxing/common/BitArray;-><init>()V

    .line 160
    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/aztec/encoder/Token;

    .line 161
    invoke-virtual {v1, p0, p1}, Lcom/google/zxing/aztec/encoder/Token;->appendTo(Lcom/google/zxing/common/BitArray;[B)V

    goto :goto_1

    :cond_1
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 169
    sget-object v0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->MODE_NAMES:[Ljava/lang/String;

    iget v1, p0, Lcom/google/zxing/aztec/encoder/State;->mode:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/google/zxing/aztec/encoder/State;->bitCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget p0, p0, Lcom/google/zxing/aztec/encoder/State;->binaryShiftByteCount:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%s bits=%d bytes=%d"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
