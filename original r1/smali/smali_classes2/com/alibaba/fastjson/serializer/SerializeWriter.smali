.class public final Lcom/alibaba/fastjson/serializer/SerializeWriter;
.super Ljava/io/Writer;
.source "SerializeWriter.java"


# static fields
.field public static final DIGITS:[C

.field static final DigitOnes:[C

.field static final DigitTens:[C

.field static final ascii_chars:[C

.field private static final bufLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[C>;"
        }
    .end annotation
.end field

.field static final digits:[C

.field static final replaceChars:[C

.field static final sizeTable:[I

.field static final specicalFlags_doubleQuotes:[B

.field static final specicalFlags_singleQuotes:[B


# instance fields
.field protected buf:[C

.field protected count:I

.field protected features:I

.field protected final writer:Ljava/io/Writer;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 40
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bufLocal:Ljava/lang/ThreadLocal;

    const/16 v0, 0xa

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->sizeTable:[I

    const/16 v1, 0x24

    new-array v1, v1, [C

    fill-array-data v1, :array_1

    sput-object v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->digits:[C

    const/16 v1, 0x64

    new-array v2, v1, [C

    fill-array-data v2, :array_2

    sput-object v2, Lcom/alibaba/fastjson/serializer/SerializeWriter;->DigitTens:[C

    new-array v1, v1, [C

    fill-array-data v1, :array_3

    sput-object v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->DigitOnes:[C

    const/16 v1, 0x60

    new-array v1, v1, [C

    fill-array-data v1, :array_4

    sput-object v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->ascii_chars:[C

    const/16 v1, 0xa1

    new-array v2, v1, [B

    sput-object v2, Lcom/alibaba/fastjson/serializer/SerializeWriter;->specicalFlags_doubleQuotes:[B

    new-array v1, v1, [B

    sput-object v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->specicalFlags_singleQuotes:[B

    const/16 v3, 0x5d

    new-array v3, v3, [C

    sput-object v3, Lcom/alibaba/fastjson/serializer/SerializeWriter;->replaceChars:[C

    const/4 v3, 0x0

    const/4 v4, 0x4

    aput-byte v4, v2, v3

    const/4 v5, 0x1

    aput-byte v4, v2, v5

    const/4 v6, 0x2

    aput-byte v4, v2, v6

    const/4 v7, 0x3

    aput-byte v4, v2, v7

    aput-byte v4, v2, v4

    const/4 v8, 0x5

    aput-byte v4, v2, v8

    const/4 v9, 0x6

    aput-byte v4, v2, v9

    const/4 v10, 0x7

    aput-byte v4, v2, v10

    const/16 v11, 0x8

    aput-byte v5, v2, v11

    const/16 v12, 0x9

    aput-byte v5, v2, v12

    aput-byte v5, v2, v0

    const/16 v13, 0xb

    aput-byte v4, v2, v13

    const/16 v14, 0xc

    aput-byte v5, v2, v14

    const/16 v15, 0xd

    aput-byte v5, v2, v15

    const/16 v16, 0x22

    aput-byte v5, v2, v16

    const/16 v17, 0x5c

    aput-byte v5, v2, v17

    aput-byte v4, v1, v3

    aput-byte v4, v1, v5

    aput-byte v4, v1, v6

    aput-byte v4, v1, v7

    aput-byte v4, v1, v4

    aput-byte v4, v1, v8

    aput-byte v4, v1, v9

    aput-byte v4, v1, v10

    aput-byte v5, v1, v11

    aput-byte v5, v1, v12

    aput-byte v5, v1, v0

    aput-byte v4, v1, v13

    aput-byte v5, v1, v14

    aput-byte v5, v1, v15

    aput-byte v5, v1, v17

    const/16 v2, 0x27

    aput-byte v5, v1, v2

    const/16 v1, 0xe

    :goto_0
    const/16 v2, 0x1f

    if-gt v1, v2, :cond_0

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializeWriter;->specicalFlags_doubleQuotes:[B

    .line 1099
    aput-byte v4, v2, v1

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializeWriter;->specicalFlags_singleQuotes:[B

    .line 1100
    aput-byte v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v1, 0x7f

    :goto_1
    const/16 v2, 0xa0

    if-ge v1, v2, :cond_1

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializeWriter;->specicalFlags_doubleQuotes:[B

    .line 1104
    aput-byte v4, v2, v1

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializeWriter;->specicalFlags_singleQuotes:[B

    .line 1105
    aput-byte v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->replaceChars:[C

    const/16 v2, 0x30

    .line 1108
    aput-char v2, v1, v3

    const/16 v2, 0x31

    .line 1109
    aput-char v2, v1, v5

    const/16 v2, 0x32

    .line 1110
    aput-char v2, v1, v6

    const/16 v2, 0x33

    .line 1111
    aput-char v2, v1, v7

    const/16 v2, 0x34

    .line 1112
    aput-char v2, v1, v4

    const/16 v2, 0x35

    .line 1113
    aput-char v2, v1, v8

    const/16 v2, 0x36

    .line 1114
    aput-char v2, v1, v9

    const/16 v2, 0x37

    .line 1115
    aput-char v2, v1, v10

    const/16 v2, 0x62

    .line 1116
    aput-char v2, v1, v11

    const/16 v2, 0x74

    .line 1117
    aput-char v2, v1, v12

    const/16 v2, 0x6e

    .line 1118
    aput-char v2, v1, v0

    const/16 v0, 0x76

    .line 1119
    aput-char v0, v1, v13

    const/16 v0, 0x66

    .line 1120
    aput-char v0, v1, v14

    const/16 v0, 0x72

    .line 1121
    aput-char v0, v1, v15

    .line 1122
    aput-char v16, v1, v16

    const/16 v0, 0x27

    .line 1123
    aput-char v0, v1, v0

    const/16 v0, 0x2f

    .line 1124
    aput-char v0, v1, v0

    .line 1125
    aput-char v17, v1, v17

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_5

    sput-object v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->DIGITS:[C

    return-void

    :array_0
    .array-data 4
        0x9
        0x63
        0x3e7
        0x270f
        0x1869f
        0xf423f
        0x98967f
        0x5f5e0ff
        0x3b9ac9ff
        0x7fffffff
    .end array-data

    :array_1
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
    .end array-data

    :array_2
    .array-data 2
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x30s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x31s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x32s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x33s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x34s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x35s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x36s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x37s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x38s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
        0x39s
    .end array-data

    :array_3
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
    .end array-data

    :array_4
    .array-data 2
        0x30s
        0x30s
        0x30s
        0x31s
        0x30s
        0x32s
        0x30s
        0x33s
        0x30s
        0x34s
        0x30s
        0x35s
        0x30s
        0x36s
        0x30s
        0x37s
        0x30s
        0x38s
        0x30s
        0x39s
        0x30s
        0x41s
        0x30s
        0x42s
        0x30s
        0x43s
        0x30s
        0x44s
        0x30s
        0x45s
        0x30s
        0x46s
        0x31s
        0x30s
        0x31s
        0x31s
        0x31s
        0x32s
        0x31s
        0x33s
        0x31s
        0x34s
        0x31s
        0x35s
        0x31s
        0x36s
        0x31s
        0x37s
        0x31s
        0x38s
        0x31s
        0x39s
        0x31s
        0x41s
        0x31s
        0x42s
        0x31s
        0x43s
        0x31s
        0x44s
        0x31s
        0x45s
        0x31s
        0x46s
        0x32s
        0x30s
        0x32s
        0x31s
        0x32s
        0x32s
        0x32s
        0x33s
        0x32s
        0x34s
        0x32s
        0x35s
        0x32s
        0x36s
        0x32s
        0x37s
        0x32s
        0x38s
        0x32s
        0x39s
        0x32s
        0x41s
        0x32s
        0x42s
        0x32s
        0x43s
        0x32s
        0x44s
        0x32s
        0x45s
        0x32s
        0x46s
    .end array-data

    :array_5
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    .line 47
    move-object v1, v0

    check-cast v1, Ljava/io/Writer;

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Ljava/io/Writer;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 88
    invoke-direct {p0, v0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Ljava/io/Writer;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    .line 52
    sget p1, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    iput p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object p1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bufLocal:Ljava/lang/ThreadLocal;

    .line 54
    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 57
    invoke-virtual {p1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    if-nez p1, :cond_1

    const/16 p1, 0x400

    new-array p1, p1, [C

    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;I)V
    .locals 1

    .line 91
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-lez p2, :cond_0

    .line 97
    new-array p1, p2, [C

    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    return-void

    .line 95
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Negative initial size: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/io/Writer;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
    .locals 2

    .line 69
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    sget-object p1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bufLocal:Ljava/lang/ThreadLocal;

    .line 72
    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 74
    invoke-virtual {p1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    if-nez p1, :cond_1

    const/16 p1, 0x400

    new-array p1, p1, [C

    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 81
    :cond_1
    array-length p1, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_2

    aget-object v1, p3, v0

    .line 82
    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iput p2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    return-void
.end method

.method public varargs constructor <init>([Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 66
    invoke-direct {p0, v0, v1, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Ljava/io/Writer;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    return-void
.end method

.method protected static getChars(JI[C)V
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    neg-long p0, p0

    const/16 v0, 0x2d

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-wide/32 v1, 0x7fffffff

    cmp-long v1, p0, v1

    if-lez v1, :cond_1

    const-wide/16 v1, 0x64

    .line 999
    div-long v1, p0, v1

    const/4 v3, 0x6

    shl-long v3, v1, v3

    const/4 v5, 0x5

    shl-long v5, v1, v5

    add-long/2addr v3, v5

    const/4 v5, 0x2

    shl-long v5, v1, v5

    add-long/2addr v3, v5

    sub-long/2addr p0, v3

    long-to-int p0, p0

    add-int/lit8 p1, p2, -0x1

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializeWriter;->DigitOnes:[C

    .line 1003
    aget-char v3, v3, p0

    aput-char v3, p3, p1

    add-int/lit8 p2, p2, -0x2

    sget-object p1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->DigitTens:[C

    .line 1004
    aget-char p0, p1, p0

    aput-char p0, p3, p2

    move-wide p0, v1

    goto :goto_0

    :cond_1
    long-to-int p0, p0

    :goto_1
    const/high16 p1, 0x10000

    if-lt p0, p1, :cond_2

    .line 1011
    div-int/lit8 p1, p0, 0x64

    shl-int/lit8 v1, p1, 0x6

    shl-int/lit8 v2, p1, 0x5

    add-int/2addr v1, v2

    shl-int/lit8 v2, p1, 0x2

    add-int/2addr v1, v2

    sub-int/2addr p0, v1

    add-int/lit8 v1, p2, -0x1

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializeWriter;->DigitOnes:[C

    .line 1015
    aget-char v2, v2, p0

    aput-char v2, p3, v1

    add-int/lit8 p2, p2, -0x2

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->DigitTens:[C

    .line 1016
    aget-char p0, v1, p0

    aput-char p0, p3, p2

    move p0, p1

    goto :goto_1

    :cond_2
    :goto_2
    const p1, 0xcccd

    mul-int/2addr p1, p0

    ushr-int/lit8 p1, p1, 0x13

    shl-int/lit8 v1, p1, 0x3

    shl-int/lit8 v2, p1, 0x1

    add-int/2addr v1, v2

    sub-int/2addr p0, v1

    add-int/lit8 v1, p2, -0x1

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializeWriter;->digits:[C

    .line 1024
    aget-char p0, v2, p0

    aput-char p0, p3, v1

    if-nez p1, :cond_4

    if-eqz v0, :cond_3

    add-int/lit8 p2, p2, -0x2

    .line 1029
    aput-char v0, p3, p2

    :cond_3
    return-void

    :cond_4
    move p0, p1

    move p2, v1

    goto :goto_2
.end method

.method private writeKeyWithDoubleQuoteIfHasSpecial(Ljava/lang/String;)V
    .locals 14

    .line 774
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v1, v0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 776
    array-length v3, v3

    const/16 v4, 0x5c

    const/16 v5, 0x3a

    const/4 v6, 0x0

    const/16 v7, 0x22

    if-le v1, v3, :cond_8

    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v3, :cond_7

    if-nez v0, :cond_0

    .line 779
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 780
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 781
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    return-void

    :cond_0
    move v1, v6

    :goto_0
    if-ge v1, v0, :cond_2

    .line 787
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sget-object v8, Lcom/alibaba/fastjson/serializer/SerializeWriter;->specicalFlags_doubleQuotes:[B

    .line 788
    array-length v9, v8

    if-ge v3, v9, :cond_1

    aget-byte v3, v8, v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v2, v6

    :goto_1
    if-eqz v2, :cond_3

    .line 795
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :cond_3
    :goto_2
    if-ge v6, v0, :cond_5

    .line 798
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializeWriter;->specicalFlags_doubleQuotes:[B

    .line 799
    array-length v8, v3

    if-ge v1, v8, :cond_4

    aget-byte v3, v3, v1

    if-eqz v3, :cond_4

    .line 800
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializeWriter;->replaceChars:[C

    .line 801
    aget-char v1, v3, v1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_3

    .line 803
    :cond_4
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    if-eqz v2, :cond_6

    .line 807
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 809
    :cond_6
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    return-void

    .line 812
    :cond_7
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    :cond_8
    if-nez v0, :cond_a

    iget p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v0, p1, 0x3

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 817
    array-length v1, v1

    if-le v0, v1, :cond_9

    add-int/lit8 p1, p1, 0x3

    .line 818
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    :cond_9
    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v1, v0, 0x1

    .line 820
    aput-char v7, p1, v0

    add-int/lit8 v2, v0, 0x2

    .line 821
    aput-char v7, p1, v1

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 822
    aput-char v5, p1, v2

    return-void

    :cond_a
    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int v8, v3, v0

    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 829
    invoke-virtual {p1, v6, v0, v9, v3}, Ljava/lang/String;->getChars(II[CI)V

    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move p1, v3

    move v0, v6

    :goto_4
    if-ge p1, v8, :cond_f

    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 835
    aget-char v10, v9, p1

    sget-object v11, Lcom/alibaba/fastjson/serializer/SerializeWriter;->specicalFlags_doubleQuotes:[B

    .line 836
    array-length v12, v11

    if-ge v10, v12, :cond_e

    aget-byte v11, v11, v10

    if-eqz v11, :cond_e

    if-nez v0, :cond_c

    add-int/lit8 v1, v1, 0x3

    .line 839
    array-length v0, v9

    if-le v1, v0, :cond_b

    .line 840
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    :cond_b
    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v9, p1, 0x1

    add-int/lit8 v11, p1, 0x3

    sub-int v12, v8, p1

    sub-int/2addr v12, v2

    .line 844
    invoke-static {v0, v9, v0, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 845
    invoke-static {v0, v6, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 846
    aput-char v7, v0, v3

    .line 847
    aput-char v4, v0, v9

    add-int/lit8 p1, p1, 0x2

    sget-object v9, Lcom/alibaba/fastjson/serializer/SerializeWriter;->replaceChars:[C

    .line 848
    aget-char v9, v9, v10

    aput-char v9, v0, p1

    add-int/lit8 v8, v8, 0x2

    iget v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v9, v9, -0x2

    .line 850
    aput-char v7, v0, v9

    move v0, v2

    goto :goto_5

    :cond_c
    add-int/lit8 v1, v1, 0x1

    .line 855
    array-length v9, v9

    if-le v1, v9, :cond_d

    .line 856
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    :cond_d
    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v11, p1, 0x1

    add-int/lit8 v12, p1, 0x2

    sub-int v13, v8, p1

    .line 860
    invoke-static {v9, v11, v9, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 861
    aput-char v4, v9, p1

    sget-object p1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->replaceChars:[C

    .line 862
    aget-char p1, p1, v10

    aput-char p1, v9, v11

    add-int/lit8 v8, v8, 0x1

    move p1, v11

    :cond_e
    :goto_5
    add-int/2addr p1, v2

    goto :goto_4

    :cond_f
    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget p0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    sub-int/2addr p0, v2

    .line 868
    aput-char v5, p1, p0

    return-void
.end method

.method private writeKeyWithSingleQuoteIfHasSpecial(Ljava/lang/String;)V
    .locals 14

    .line 872
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v1, v0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 874
    array-length v3, v3

    const/16 v4, 0x5c

    const/16 v5, 0x3a

    const/4 v6, 0x0

    const/16 v7, 0x27

    if-le v1, v3, :cond_8

    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v3, :cond_7

    if-nez v0, :cond_0

    .line 877
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 878
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 879
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    return-void

    :cond_0
    move v1, v6

    :goto_0
    if-ge v1, v0, :cond_2

    .line 885
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sget-object v8, Lcom/alibaba/fastjson/serializer/SerializeWriter;->specicalFlags_singleQuotes:[B

    .line 886
    array-length v9, v8

    if-ge v3, v9, :cond_1

    aget-byte v3, v8, v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v2, v6

    :goto_1
    if-eqz v2, :cond_3

    .line 893
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :cond_3
    :goto_2
    if-ge v6, v0, :cond_5

    .line 896
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializeWriter;->specicalFlags_singleQuotes:[B

    .line 897
    array-length v8, v3

    if-ge v1, v8, :cond_4

    aget-byte v3, v3, v1

    if-eqz v3, :cond_4

    .line 898
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializeWriter;->replaceChars:[C

    .line 899
    aget-char v1, v3, v1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_3

    .line 901
    :cond_4
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    if-eqz v2, :cond_6

    .line 905
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 907
    :cond_6
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    return-void

    .line 911
    :cond_7
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    :cond_8
    if-nez v0, :cond_a

    iget p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v0, p1, 0x3

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 916
    array-length v1, v1

    if-le v0, v1, :cond_9

    add-int/lit8 p1, p1, 0x3

    .line 917
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    :cond_9
    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v1, v0, 0x1

    .line 919
    aput-char v7, p1, v0

    add-int/lit8 v2, v0, 0x2

    .line 920
    aput-char v7, p1, v1

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 921
    aput-char v5, p1, v2

    return-void

    :cond_a
    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int v8, v3, v0

    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 928
    invoke-virtual {p1, v6, v0, v9, v3}, Ljava/lang/String;->getChars(II[CI)V

    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    move p1, v3

    move v0, v6

    :goto_4
    if-ge p1, v8, :cond_f

    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 934
    aget-char v10, v9, p1

    sget-object v11, Lcom/alibaba/fastjson/serializer/SerializeWriter;->specicalFlags_singleQuotes:[B

    .line 935
    array-length v12, v11

    if-ge v10, v12, :cond_e

    aget-byte v11, v11, v10

    if-eqz v11, :cond_e

    if-nez v0, :cond_c

    add-int/lit8 v1, v1, 0x3

    .line 938
    array-length v0, v9

    if-le v1, v0, :cond_b

    .line 939
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    :cond_b
    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v9, p1, 0x1

    add-int/lit8 v11, p1, 0x3

    sub-int v12, v8, p1

    sub-int/2addr v12, v2

    .line 943
    invoke-static {v0, v9, v0, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 944
    invoke-static {v0, v6, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 945
    aput-char v7, v0, v3

    .line 946
    aput-char v4, v0, v9

    add-int/lit8 p1, p1, 0x2

    sget-object v9, Lcom/alibaba/fastjson/serializer/SerializeWriter;->replaceChars:[C

    .line 947
    aget-char v9, v9, v10

    aput-char v9, v0, p1

    add-int/lit8 v8, v8, 0x2

    iget v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v9, v9, -0x2

    .line 949
    aput-char v7, v0, v9

    move v0, v2

    goto :goto_5

    :cond_c
    add-int/lit8 v1, v1, 0x1

    .line 954
    array-length v9, v9

    if-le v1, v9, :cond_d

    .line 955
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    :cond_d
    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v11, p1, 0x1

    add-int/lit8 v12, p1, 0x2

    sub-int v13, v8, p1

    .line 959
    invoke-static {v9, v11, v9, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 960
    aput-char v4, v9, p1

    sget-object p1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->replaceChars:[C

    .line 961
    aget-char p1, p1, v10

    aput-char p1, v9, v11

    add-int/lit8 v8, v8, 0x1

    move p1, v11

    :cond_e
    :goto_5
    add-int/2addr p1, v2

    goto :goto_4

    :cond_f
    iget-object p0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    sub-int/2addr v1, v2

    .line 967
    aput-char v5, p0, v1

    return-void
.end method


# virtual methods
.method public append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .locals 0

    .line 244
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "null"

    goto :goto_0

    .line 232
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const/4 v0, 0x0

    .line 233
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;II)V

    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;II)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .locals 0

    if-nez p1, :cond_0

    const-string p1, "null"

    .line 238
    :cond_0
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 239
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;II)V

    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/io/Writer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;II)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;II)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object p0

    return-object p0
.end method

.method public close()V
    .locals 3

    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    if-lez v0, :cond_0

    .line 274
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V

    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 276
    array-length v1, v0

    const/16 v2, 0x2000

    if-gt v1, v2, :cond_1

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->bufLocal:Ljava/lang/ThreadLocal;

    .line 277
    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    return-void
.end method

.method public config(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V
    .locals 0

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    .line 102
    iget p1, p1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    .line 104
    iget p1, p1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    :goto_0
    return-void
.end method

.method protected expandCapacity(I)V
    .locals 3

    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 168
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    if-ge v1, p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    .line 173
    :goto_0
    new-array p1, p1, [C

    iget v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v2, 0x0

    .line 174
    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    return-void
.end method

.method public flush()V
    .locals 4

    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v3, 0x0

    .line 976
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/Writer;->write([CII)V

    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    .line 977
    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    iput v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 980
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
    .locals 0

    iget p0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    .line 109
    iget p1, p1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toBytes(Ljava/lang/String;)[B
    .locals 3

    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    const-string p1, "UTF-8"

    .line 258
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget p0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 260
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    const-string v0, "toBytes error"

    invoke-direct {p1, v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 250
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "writer not null"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 265
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v2, 0x0

    iget p0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-direct {v0, v1, v2, p0}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public write(I)V
    .locals 3

    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 117
    array-length v2, v2

    if-le v0, v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v2, :cond_0

    .line 119
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_0

    .line 121
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    int-to-char p1, p1

    .line 125
    aput-char p1, v0, v2

    iput v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    .line 285
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 289
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;II)V

    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 4

    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v0, p3

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 187
    array-length v1, v1

    if-le v0, v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v1, :cond_0

    .line 189
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 192
    array-length v1, v0

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    sub-int/2addr v1, v2

    add-int v3, p2, v1

    .line 193
    invoke-virtual {p1, p2, v3, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    iget-object p2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 194
    array-length p2, p2

    iput p2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 195
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V

    sub-int/2addr p3, v1

    iget-object p2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 198
    array-length p2, p2

    if-gt p3, p2, :cond_1

    move v0, p3

    move p2, v3

    goto :goto_1

    :cond_1
    move p2, v3

    goto :goto_0

    :cond_2
    :goto_1
    add-int/2addr p3, p2

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 202
    invoke-virtual {p1, p2, p3, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    return-void
.end method

.method public write(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "true"

    goto :goto_0

    :cond_0
    const-string p1, "false"

    .line 662
    :goto_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    return-void
.end method

.method public write([CII)V
    .locals 3

    if-ltz p2, :cond_3

    .line 137
    array-length v0, p1

    if-gt p2, v0, :cond_3

    if-ltz p3, :cond_3

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_3

    if-ltz v0, :cond_3

    if-nez p3, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v0, p3

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 148
    array-length v1, v1

    if-le v0, v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v1, :cond_1

    .line 150
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 153
    array-length v1, v0

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    sub-int/2addr v1, v2

    .line 154
    invoke-static {p1, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 155
    array-length v0, v0

    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 156
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->flush()V

    sub-int/2addr p3, v1

    add-int/2addr p2, v1

    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 159
    array-length v0, v0

    if-gt p3, v0, :cond_1

    move v0, p3

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 163
    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    return-void

    .line 142
    :cond_3
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public writeByteArray([B)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 328
    array-length v2, v1

    iget v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    .line 330
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v4, v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    if-eqz v3, :cond_1

    const/16 v6, 0x27

    goto :goto_1

    :cond_1
    const/16 v6, 0x22

    :goto_1
    if-nez v2, :cond_3

    if-eqz v3, :cond_2

    const-string v1, "\'\'"

    goto :goto_2

    :cond_2
    const-string v1, "\"\""

    .line 335
    :goto_2
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    return-void

    .line 339
    :cond_3
    sget-object v3, Lcom/alibaba/fastjson/parser/JSONLexer;->CA:[C

    .line 341
    div-int/lit8 v7, v2, 0x3

    mul-int/lit8 v7, v7, 0x3

    add-int/lit8 v8, v2, -0x1

    .line 342
    div-int/lit8 v9, v8, 0x3

    add-int/2addr v9, v5

    const/4 v10, 0x2

    shl-int/2addr v9, v10

    iget v11, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v9, v11

    add-int/lit8 v12, v9, 0x2

    iget-object v13, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 346
    array-length v13, v13

    const/16 v14, 0x3d

    if-le v12, v13, :cond_9

    iget-object v13, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v13, :cond_8

    .line 348
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    move v5, v4

    :goto_3
    if-ge v5, v7, :cond_4

    add-int/lit8 v9, v5, 0x1

    .line 352
    aget-byte v11, v1, v5

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x10

    add-int/lit8 v12, v5, 0x2

    aget-byte v9, v1, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v9, v11

    add-int/lit8 v5, v5, 0x3

    aget-byte v11, v1, v12

    and-int/lit16 v11, v11, 0xff

    or-int/2addr v9, v11

    ushr-int/lit8 v11, v9, 0x12

    and-int/lit8 v11, v11, 0x3f

    .line 355
    aget-char v11, v3, v11

    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    ushr-int/lit8 v11, v9, 0xc

    and-int/lit8 v11, v11, 0x3f

    .line 356
    aget-char v11, v3, v11

    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    ushr-int/lit8 v11, v9, 0x6

    and-int/lit8 v11, v11, 0x3f

    .line 357
    aget-char v11, v3, v11

    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    and-int/lit8 v9, v9, 0x3f

    .line 358
    aget-char v9, v3, v9

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_3

    :cond_4
    sub-int/2addr v2, v7

    if-lez v2, :cond_7

    .line 365
    aget-byte v5, v1, v7

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0xa

    if-ne v2, v10, :cond_5

    aget-byte v1, v1, v8

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v4, v1, 0x2

    :cond_5
    or-int v1, v5, v4

    shr-int/lit8 v4, v1, 0xc

    .line 368
    aget-char v4, v3, v4

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    ushr-int/lit8 v4, v1, 0x6

    and-int/lit8 v4, v4, 0x3f

    .line 369
    aget-char v4, v3, v4

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    if-ne v2, v10, :cond_6

    and-int/lit8 v1, v1, 0x3f

    .line 370
    aget-char v1, v3, v1

    goto :goto_4

    :cond_6
    move v1, v14

    :goto_4
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 371
    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 374
    :cond_7
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    return-void

    .line 377
    :cond_8
    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    :cond_9
    iput v12, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    iget-object v12, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v13, v11, 0x1

    .line 380
    aput-char v6, v12, v11

    move v11, v4

    :goto_5
    if-ge v11, v7, :cond_a

    add-int/lit8 v12, v11, 0x1

    .line 385
    aget-byte v15, v1, v11

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v15, v15, 0x10

    add-int/lit8 v16, v11, 0x2

    aget-byte v12, v1, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v12, v15

    add-int/lit8 v11, v11, 0x3

    aget-byte v15, v1, v16

    and-int/lit16 v15, v15, 0xff

    or-int/2addr v12, v15

    iget-object v15, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v16, v13, 0x1

    ushr-int/lit8 v17, v12, 0x12

    and-int/lit8 v17, v17, 0x3f

    .line 388
    aget-char v17, v3, v17

    aput-char v17, v15, v13

    add-int/lit8 v17, v13, 0x2

    ushr-int/lit8 v18, v12, 0xc

    and-int/lit8 v18, v18, 0x3f

    .line 389
    aget-char v18, v3, v18

    aput-char v18, v15, v16

    add-int/lit8 v16, v13, 0x3

    ushr-int/lit8 v18, v12, 0x6

    and-int/lit8 v18, v18, 0x3f

    .line 390
    aget-char v18, v3, v18

    aput-char v18, v15, v17

    add-int/lit8 v13, v13, 0x4

    and-int/lit8 v12, v12, 0x3f

    .line 391
    aget-char v12, v3, v12

    aput-char v12, v15, v16

    goto :goto_5

    :cond_a
    sub-int/2addr v2, v7

    if-lez v2, :cond_d

    .line 398
    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0xa

    if-ne v2, v10, :cond_b

    aget-byte v1, v1, v8

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v4, v1, 0x2

    :cond_b
    or-int v1, v7, v4

    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v7, v9, -0x3

    shr-int/lit8 v8, v1, 0xc

    .line 401
    aget-char v8, v3, v8

    aput-char v8, v4, v7

    add-int/lit8 v7, v9, -0x2

    ushr-int/lit8 v8, v1, 0x6

    and-int/lit8 v8, v8, 0x3f

    .line 402
    aget-char v8, v3, v8

    aput-char v8, v4, v7

    add-int/lit8 v7, v9, -0x1

    if-ne v2, v10, :cond_c

    and-int/lit8 v1, v1, 0x3f

    .line 403
    aget-char v1, v3, v1

    goto :goto_6

    :cond_c
    move v1, v14

    :goto_6
    aput-char v1, v4, v7

    .line 404
    aput-char v14, v4, v9

    :cond_d
    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/2addr v9, v5

    .line 406
    aput-char v6, v0, v9

    return-void
.end method

.method public writeFieldName(Ljava/lang/String;Z)V
    .locals 3

    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    .line 757
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v1

    const/16 v1, 0x3a

    if-eqz v0, :cond_1

    iget p2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    .line 758
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->QuoteFieldNames:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr p2, v0

    if-eqz p2, :cond_0

    .line 759
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithSingleQuote(Ljava/lang/String;)V

    .line 760
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_0

    .line 762
    :cond_0
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeKeyWithSingleQuoteIfHasSpecial(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    .line 765
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->QuoteFieldNames:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v2, v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_2

    .line 766
    invoke-virtual {p0, p1, v1, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;CZ)V

    goto :goto_0

    .line 768
    :cond_2
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeKeyWithDoubleQuoteIfHasSpecial(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public writeInt(I)V
    .locals 5

    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_0

    const-string p1, "-2147483648"

    .line 294
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    return-void

    :cond_0
    if-gez p1, :cond_1

    neg-int v0, p1

    goto :goto_0

    :cond_1
    move v0, p1

    :goto_0
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializeWriter;->sizeTable:[I

    .line 301
    aget v3, v3, v2

    if-gt v0, v3, :cond_5

    add-int/lit8 v0, v2, 0x1

    if-gez p1, :cond_2

    add-int/lit8 v0, v2, 0x2

    :cond_2
    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v2, v0

    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 311
    array-length v3, v3

    if-le v2, v3, :cond_4

    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v3, :cond_3

    .line 313
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_2

    .line 315
    :cond_3
    new-array v2, v0, [C

    int-to-long v3, p1

    .line 316
    invoke-static {v3, v4, v0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->getChars(JI[C)V

    .line 317
    invoke-virtual {p0, v2, v1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write([CII)V

    return-void

    :cond_4
    :goto_2
    int-to-long v0, p1

    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 322
    invoke-static {v0, v1, v2, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->getChars(JI[C)V

    iput v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    return-void

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public writeLong(J)V
    .locals 11

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-string p1, "-9223372036854775808"

    .line 411
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    neg-long v1, p1

    goto :goto_0

    :cond_1
    move-wide v1, p1

    :goto_0
    const-wide/16 v3, 0xa

    const/4 v5, 0x1

    move-wide v6, v3

    :goto_1
    const/16 v8, 0x13

    const/4 v9, 0x0

    if-ge v5, v8, :cond_3

    cmp-long v10, v1, v6

    if-gez v10, :cond_2

    goto :goto_2

    :cond_2
    mul-long/2addr v6, v3

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    move v5, v9

    :goto_2
    if-nez v5, :cond_4

    goto :goto_3

    :cond_4
    move v8, v5

    :goto_3
    if-gez v0, :cond_5

    add-int/lit8 v8, v8, 0x1

    :cond_5
    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v0, v8

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 434
    array-length v1, v1

    if-le v0, v1, :cond_7

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v1, :cond_6

    .line 436
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    goto :goto_4

    .line 438
    :cond_6
    new-array v0, v8, [C

    .line 439
    invoke-static {p1, p2, v8, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->getChars(JI[C)V

    .line 440
    invoke-virtual {p0, v0, v9, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write([CII)V

    return-void

    :cond_7
    :goto_4
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 445
    invoke-static {p1, p2, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->getChars(JI[C)V

    iput v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    return-void
.end method

.method public writeNull()V
    .locals 1

    const-string v0, "null"

    .line 451
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    return-void
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    .line 666
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 667
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithSingleQuote(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 669
    invoke-virtual {p0, p1, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;CZ)V

    :goto_0
    return-void
.end method

.method protected writeStringWithDoubleQuote(Ljava/lang/String;CZ)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    if-nez v1, :cond_1

    .line 456
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    if-eqz v2, :cond_0

    .line 458
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :cond_0
    return-void

    .line 463
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v4, v3

    add-int/lit8 v5, v4, 0x2

    if-eqz v2, :cond_2

    add-int/lit8 v5, v4, 0x3

    :cond_2
    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 469
    array-length v4, v4

    const/16 v6, 0x2f

    const/4 v7, 0x0

    const/16 v8, 0x22

    const/16 v9, 0x5c

    if-le v5, v4, :cond_9

    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v4, :cond_8

    .line 471
    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 473
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v7, v3, :cond_6

    .line 474
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializeWriter;->specicalFlags_doubleQuotes:[B

    .line 476
    array-length v5, v4

    if-ge v3, v5, :cond_3

    aget-byte v4, v4, v3

    if-nez v4, :cond_4

    :cond_3
    if-ne v3, v6, :cond_5

    iget v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v5, v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_5

    .line 479
    :cond_4
    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializeWriter;->replaceChars:[C

    .line 480
    aget-char v3, v4, v3

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_1

    .line 484
    :cond_5
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 487
    :cond_6
    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    if-eqz v2, :cond_7

    .line 489
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :cond_7
    return-void

    .line 493
    :cond_8
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    :cond_9
    iget v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v10, v4, 0x1

    add-int v11, v10, v3

    iget-object v12, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 499
    aput-char v8, v12, v4

    .line 500
    invoke-virtual {v1, v7, v3, v12, v10}, Ljava/lang/String;->getChars(II[CI)V

    iput v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    if-eqz p3, :cond_1e

    const/4 v4, -0x1

    move v14, v4

    move v15, v14

    move v12, v7

    move v13, v10

    :goto_2
    const/16 v3, 0x2028

    if-ge v13, v11, :cond_14

    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 510
    aget-char v8, v8, v13

    if-ne v8, v3, :cond_b

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v5, v5, 0x4

    if-ne v14, v4, :cond_a

    :goto_3
    move v12, v8

    move v14, v13

    move v15, v14

    goto :goto_6

    :cond_a
    :goto_4
    move v12, v8

    move v15, v13

    goto :goto_6

    :cond_b
    const/16 v3, 0x5d

    if-lt v8, v3, :cond_d

    const/16 v3, 0x7f

    if-lt v8, v3, :cond_13

    const/16 v3, 0xa0

    if-ge v8, v3, :cond_13

    if-ne v14, v4, :cond_c

    move v14, v13

    :cond_c
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v5, v5, 0x4

    goto :goto_4

    :cond_d
    const/16 v3, 0x20

    if-ne v8, v3, :cond_e

    goto :goto_6

    :cond_e
    if-ne v8, v6, :cond_f

    iget v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    .line 542
    sget-object v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v6, v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v3, v6

    if-eqz v3, :cond_f

    goto :goto_5

    :cond_f
    const/16 v3, 0x23

    if-le v8, v3, :cond_10

    if-eq v8, v9, :cond_10

    goto :goto_6

    :cond_10
    const/16 v3, 0x1f

    if-le v8, v3, :cond_11

    if-eq v8, v9, :cond_11

    const/16 v3, 0x22

    if-ne v8, v3, :cond_13

    :cond_11
    :goto_5
    add-int/lit8 v7, v7, 0x1

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializeWriter;->specicalFlags_doubleQuotes:[B

    .line 558
    array-length v6, v3

    if-ge v8, v6, :cond_12

    aget-byte v3, v3, v8

    const/4 v6, 0x4

    if-ne v3, v6, :cond_12

    add-int/lit8 v5, v5, 0x4

    :cond_12
    if-ne v14, v4, :cond_a

    goto :goto_3

    :cond_13
    :goto_6
    add-int/lit8 v13, v13, 0x1

    const/16 v6, 0x2f

    const/16 v8, 0x22

    goto :goto_2

    :cond_14
    if-lez v7, :cond_1e

    add-int/2addr v5, v7

    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 572
    array-length v4, v4

    if-le v5, v4, :cond_15

    .line 573
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    :cond_15
    iput v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/16 v4, 0x75

    const/4 v5, 0x1

    if-ne v7, v5, :cond_18

    if-ne v12, v3, :cond_16

    add-int/lit8 v1, v15, 0x1

    add-int/lit8 v3, v15, 0x6

    sub-int/2addr v11, v15

    sub-int/2addr v11, v5

    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 582
    invoke-static {v5, v1, v5, v3, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 583
    aput-char v9, v3, v15

    .line 584
    aput-char v4, v3, v1

    add-int/lit8 v1, v15, 0x2

    const/16 v4, 0x32

    .line 585
    aput-char v4, v3, v1

    add-int/lit8 v1, v15, 0x3

    const/16 v5, 0x30

    .line 586
    aput-char v5, v3, v1

    add-int/lit8 v1, v15, 0x4

    .line 587
    aput-char v4, v3, v1

    add-int/lit8 v15, v15, 0x5

    const/16 v1, 0x38

    .line 588
    aput-char v1, v3, v15

    goto/16 :goto_b

    :cond_16
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->specicalFlags_doubleQuotes:[B

    .line 591
    array-length v3, v1

    if-ge v12, v3, :cond_17

    aget-byte v1, v1, v12

    const/4 v3, 0x4

    if-ne v1, v3, :cond_17

    add-int/lit8 v1, v15, 0x1

    add-int/lit8 v3, v15, 0x6

    sub-int/2addr v11, v15

    const/4 v5, 0x1

    sub-int/2addr v11, v5

    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 596
    invoke-static {v5, v1, v5, v3, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 599
    aput-char v9, v3, v15

    add-int/lit8 v5, v15, 0x2

    .line 600
    aput-char v4, v3, v1

    add-int/lit8 v1, v15, 0x3

    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializeWriter;->DIGITS:[C

    ushr-int/lit8 v6, v12, 0xc

    and-int/lit8 v6, v6, 0xf

    .line 601
    aget-char v6, v4, v6

    aput-char v6, v3, v5

    add-int/lit8 v5, v15, 0x4

    ushr-int/lit8 v6, v12, 0x8

    and-int/lit8 v6, v6, 0xf

    .line 602
    aget-char v6, v4, v6

    aput-char v6, v3, v1

    add-int/lit8 v15, v15, 0x5

    ushr-int/lit8 v1, v12, 0x4

    and-int/lit8 v1, v1, 0xf

    .line 603
    aget-char v1, v4, v1

    aput-char v1, v3, v5

    and-int/lit8 v1, v12, 0xf

    .line 604
    aget-char v1, v4, v1

    aput-char v1, v3, v15

    const/4 v5, 0x1

    goto/16 :goto_b

    :cond_17
    add-int/lit8 v1, v15, 0x1

    add-int/lit8 v3, v15, 0x2

    sub-int/2addr v11, v15

    const/4 v5, 0x1

    sub-int/2addr v11, v5

    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 609
    invoke-static {v4, v1, v4, v3, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 610
    aput-char v9, v3, v15

    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializeWriter;->replaceChars:[C

    .line 611
    aget-char v4, v4, v12

    aput-char v4, v3, v1

    goto/16 :goto_b

    :cond_18
    if-le v7, v5, :cond_1e

    sub-int v5, v14, v10

    .line 617
    :goto_7
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_1e

    .line 618
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    sget-object v7, Lcom/alibaba/fastjson/serializer/SerializeWriter;->specicalFlags_doubleQuotes:[B

    .line 620
    array-length v8, v7

    if-ge v6, v8, :cond_1a

    aget-byte v8, v7, v6

    if-nez v8, :cond_19

    goto :goto_8

    :cond_19
    const/16 v8, 0x2f

    goto :goto_9

    :cond_1a
    :goto_8
    const/16 v8, 0x2f

    if-ne v6, v8, :cond_1c

    iget v10, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v11, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v11, v11, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v10, v11

    if-eqz v10, :cond_1c

    :goto_9
    iget-object v10, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v11, v14, 0x1

    .line 623
    aput-char v9, v10, v14

    .line 624
    aget-byte v7, v7, v6

    const/4 v12, 0x4

    if-ne v7, v12, :cond_1b

    add-int/lit8 v7, v14, 0x2

    .line 625
    aput-char v4, v10, v11

    add-int/lit8 v11, v14, 0x3

    sget-object v13, Lcom/alibaba/fastjson/serializer/SerializeWriter;->DIGITS:[C

    ushr-int/lit8 v15, v6, 0xc

    and-int/lit8 v15, v15, 0xf

    .line 626
    aget-char v15, v13, v15

    aput-char v15, v10, v7

    add-int/lit8 v7, v14, 0x4

    ushr-int/lit8 v15, v6, 0x8

    and-int/lit8 v15, v15, 0xf

    .line 627
    aget-char v15, v13, v15

    aput-char v15, v10, v11

    add-int/lit8 v11, v14, 0x5

    ushr-int/lit8 v15, v6, 0x4

    and-int/lit8 v15, v15, 0xf

    .line 628
    aget-char v15, v13, v15

    aput-char v15, v10, v7

    add-int/lit8 v14, v14, 0x6

    and-int/lit8 v6, v6, 0xf

    .line 629
    aget-char v6, v13, v6

    aput-char v6, v10, v11

    goto :goto_a

    :cond_1b
    add-int/lit8 v14, v14, 0x2

    sget-object v7, Lcom/alibaba/fastjson/serializer/SerializeWriter;->replaceChars:[C

    .line 632
    aget-char v6, v7, v6

    aput-char v6, v10, v11

    goto :goto_a

    :cond_1c
    const/4 v12, 0x4

    if-ne v6, v3, :cond_1d

    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v14, 0x1

    .line 637
    aput-char v9, v7, v14

    add-int/lit8 v11, v14, 0x2

    .line 638
    aput-char v4, v7, v10

    add-int/lit8 v10, v14, 0x3

    sget-object v13, Lcom/alibaba/fastjson/serializer/SerializeWriter;->DIGITS:[C

    ushr-int/lit8 v15, v6, 0xc

    and-int/lit8 v15, v15, 0xf

    .line 639
    aget-char v15, v13, v15

    aput-char v15, v7, v11

    add-int/lit8 v11, v14, 0x4

    ushr-int/lit8 v15, v6, 0x8

    and-int/lit8 v15, v15, 0xf

    .line 640
    aget-char v15, v13, v15

    aput-char v15, v7, v10

    add-int/lit8 v10, v14, 0x5

    ushr-int/lit8 v15, v6, 0x4

    and-int/lit8 v15, v15, 0xf

    .line 641
    aget-char v15, v13, v15

    aput-char v15, v7, v11

    add-int/lit8 v14, v14, 0x6

    and-int/lit8 v6, v6, 0xf

    .line 642
    aget-char v6, v13, v6

    aput-char v6, v7, v10

    goto :goto_a

    :cond_1d
    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v10, v14, 0x1

    .line 645
    aput-char v6, v7, v14

    move v14, v10

    :goto_a
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_7

    :cond_1e
    :goto_b
    if-eqz v2, :cond_1f

    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v3, v0, -0x2

    const/16 v4, 0x22

    .line 654
    aput-char v4, v1, v3

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    .line 655
    aput-char v2, v1, v0

    goto :goto_c

    :cond_1f
    const/4 v3, 0x1

    const/16 v4, 0x22

    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    sub-int/2addr v0, v3

    .line 657
    aput-char v4, v1, v0

    :goto_c
    return-void
.end method

.method protected writeStringWithSingleQuote(Ljava/lang/String;)V
    .locals 14

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v1, 0x4

    add-int/2addr p1, v1

    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 676
    array-length v2, v2

    if-le p1, v2, :cond_0

    .line 677
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const-string v4, "null"

    .line 679
    invoke-virtual {v4, v0, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    iput p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    return-void

    .line 684
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 686
    array-length v3, v3

    const/16 v4, 0x2f

    const/16 v5, 0xd

    const/16 v6, 0x5c

    const/16 v7, 0x27

    if-le v2, v3, :cond_6

    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-eqz v3, :cond_5

    .line 688
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 689
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 690
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-le v1, v5, :cond_3

    if-eq v1, v6, :cond_3

    if-eq v1, v7, :cond_3

    if-ne v1, v4, :cond_2

    iget v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    .line 691
    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v3, v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_2

    goto :goto_1

    .line 696
    :cond_2
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_2

    .line 693
    :cond_3
    :goto_1
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializeWriter;->replaceChars:[C

    .line 694
    aget-char v1, v2, v1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 699
    :cond_4
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    return-void

    .line 702
    :cond_5
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    :cond_6
    iget v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    add-int/lit8 v8, v3, 0x1

    add-int v9, v8, v1

    iget-object v10, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 708
    aput-char v7, v10, v3

    .line 709
    invoke-virtual {p1, v0, v1, v10, v8}, Ljava/lang/String;->getChars(II[CI)V

    iput v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 p1, -0x1

    move v10, p1

    move v1, v0

    move v3, v8

    :goto_3
    if-ge v3, v9, :cond_9

    iget-object v11, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 716
    aget-char v11, v11, v3

    if-le v11, v5, :cond_7

    if-eq v11, v6, :cond_7

    if-eq v11, v7, :cond_7

    if-ne v11, v4, :cond_8

    iget v12, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    .line 717
    sget-object v13, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v13, v13, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v12, v13

    if-eqz v12, :cond_8

    :cond_7
    add-int/lit8 v0, v0, 0x1

    move v10, v3

    move v1, v11

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_9
    add-int/2addr v2, v0

    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 726
    array-length v3, v3

    if-le v2, v3, :cond_a

    .line 727
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->expandCapacity(I)V

    :cond_a
    iput v2, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_b

    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v0, v10, 0x1

    add-int/lit8 v3, v10, 0x2

    sub-int/2addr v9, v10

    sub-int/2addr v9, v2

    .line 732
    invoke-static {p1, v0, p1, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 733
    aput-char v6, p1, v10

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializeWriter;->replaceChars:[C

    .line 734
    aget-char v1, v3, v1

    aput-char v1, p1, v0

    goto :goto_5

    :cond_b
    if-le v0, v2, :cond_e

    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v3, v10, 0x1

    add-int/lit8 v11, v10, 0x2

    sub-int v12, v9, v10

    sub-int/2addr v12, v2

    .line 736
    invoke-static {v0, v3, v0, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 737
    aput-char v6, v0, v10

    sget-object v11, Lcom/alibaba/fastjson/serializer/SerializeWriter;->replaceChars:[C

    .line 738
    aget-char v1, v11, v1

    aput-char v1, v0, v3

    add-int/2addr v9, v2

    add-int/2addr v10, p1

    :goto_4
    if-lt v10, v8, :cond_e

    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 741
    aget-char p1, p1, v10

    if-le p1, v5, :cond_c

    if-eq p1, v6, :cond_c

    if-eq p1, v7, :cond_c

    if-ne p1, v4, :cond_d

    iget v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    .line 743
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteSlashAsSpecial:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_d

    :cond_c
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    add-int/lit8 v1, v10, 0x1

    add-int/lit8 v3, v10, 0x2

    sub-int v11, v9, v10

    sub-int/2addr v11, v2

    .line 745
    invoke-static {v0, v1, v0, v3, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    .line 746
    aput-char v6, v0, v10

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializeWriter;->replaceChars:[C

    .line 747
    aget-char p1, v3, p1

    aput-char p1, v0, v1

    add-int/lit8 v9, v9, 0x1

    :cond_d
    add-int/lit8 v10, v10, -0x1

    goto :goto_4

    :cond_e
    :goto_5
    iget-object p1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    iget p0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    sub-int/2addr p0, v2

    .line 753
    aput-char v7, p1, p0

    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 220
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeTo(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v0, :cond_0

    .line 227
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v2, 0x0

    iget p0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    invoke-direct {v0, v1, v2, p0}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 228
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    return-void

    .line 225
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "writer not null"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public writeTo(Ljava/io/Writer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writer:Ljava/io/Writer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->buf:[C

    const/4 v1, 0x0

    iget p0, p0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->count:I

    .line 216
    invoke-virtual {p1, v0, v1, p0}, Ljava/io/Writer;->write([CII)V

    return-void

    .line 214
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "writer not null"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
