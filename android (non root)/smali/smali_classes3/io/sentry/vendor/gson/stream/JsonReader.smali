.class public Lio/sentry/vendor/gson/stream/JsonReader;
.super Ljava/lang/Object;
.source "JsonReader.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final MIN_INCOMPLETE_INTEGER:J = -0xcccccccccccccccL

.field private static final NUMBER_CHAR_DECIMAL:I = 0x3

.field private static final NUMBER_CHAR_DIGIT:I = 0x2

.field private static final NUMBER_CHAR_EXP_DIGIT:I = 0x7

.field private static final NUMBER_CHAR_EXP_E:I = 0x5

.field private static final NUMBER_CHAR_EXP_SIGN:I = 0x6

.field private static final NUMBER_CHAR_FRACTION_DIGIT:I = 0x4

.field private static final NUMBER_CHAR_NONE:I = 0x0

.field private static final NUMBER_CHAR_SIGN:I = 0x1

.field private static final PEEKED_BEGIN_ARRAY:I = 0x3

.field private static final PEEKED_BEGIN_OBJECT:I = 0x1

.field private static final PEEKED_BUFFERED:I = 0xb

.field private static final PEEKED_DOUBLE_QUOTED:I = 0x9

.field private static final PEEKED_DOUBLE_QUOTED_NAME:I = 0xd

.field private static final PEEKED_END_ARRAY:I = 0x4

.field private static final PEEKED_END_OBJECT:I = 0x2

.field private static final PEEKED_EOF:I = 0x11

.field private static final PEEKED_FALSE:I = 0x6

.field private static final PEEKED_LONG:I = 0xf

.field private static final PEEKED_NONE:I = 0x0

.field private static final PEEKED_NULL:I = 0x7

.field private static final PEEKED_NUMBER:I = 0x10

.field private static final PEEKED_SINGLE_QUOTED:I = 0x8

.field private static final PEEKED_SINGLE_QUOTED_NAME:I = 0xc

.field private static final PEEKED_TRUE:I = 0x5

.field private static final PEEKED_UNQUOTED:I = 0xa

.field private static final PEEKED_UNQUOTED_NAME:I = 0xe


# instance fields
.field private final buffer:[C

.field private final in:Ljava/io/Reader;

.field private lenient:Z

.field private limit:I

.field private lineNumber:I

.field private lineStart:I

.field private pathIndices:[I

.field private pathNames:[Ljava/lang/String;

.field peeked:I

.field private peekedLong:J

.field private peekedNumberLength:I

.field private peekedString:Ljava/lang/String;

.field private pos:I

.field private stack:[I

.field private stackSize:I


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 4

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->lenient:Z

    const/16 v1, 0x400

    new-array v1, v1, [C

    iput-object v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->buffer:[C

    iput v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    iput v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->limit:I

    iput v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->lineNumber:I

    iput v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->lineStart:I

    iput v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    const/16 v1, 0x20

    new-array v2, v1, [I

    iput-object v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->stack:[I

    const/4 v3, 0x1

    iput v3, p0, Lio/sentry/vendor/gson/stream/JsonReader;->stackSize:I

    const/4 v3, 0x6

    aput v3, v2, v0

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    new-array v0, v1, [I

    iput-object v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pathIndices:[I

    if-eqz p1, :cond_0

    iput-object p1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->in:Ljava/io/Reader;

    return-void

    .line 298
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "in == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private checkLenient()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->lenient:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    .line 1411
    invoke-direct {p0, v0}, Lio/sentry/vendor/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method private consumeNonExecutePrefix()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1578
    invoke-direct {p0, v0}, Lio/sentry/vendor/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    iget v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    add-int/lit8 v2, v0, 0x4

    iget v3, p0, Lio/sentry/vendor/gson/stream/JsonReader;->limit:I

    const/4 v4, 0x5

    if-le v2, v3, :cond_0

    .line 1582
    invoke-direct {p0, v4}, Lio/sentry/vendor/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->buffer:[C

    .line 1587
    aget-char v1, v2, v1

    const/16 v3, 0x29

    if-ne v1, v3, :cond_2

    aget-char v1, v2, v0

    const/16 v3, 0x5d

    if-ne v1, v3, :cond_2

    add-int/lit8 v1, v0, 0x1

    aget-char v1, v2, v1

    const/16 v3, 0x7d

    if-ne v1, v3, :cond_2

    add-int/lit8 v1, v0, 0x2

    aget-char v1, v2, v1

    const/16 v3, 0x27

    if-ne v1, v3, :cond_2

    add-int/lit8 v0, v0, 0x3

    aget-char v0, v2, v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    add-int/2addr v0, v4

    iput v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    :cond_2
    :goto_0
    return-void
.end method

.method private fillBuffer(I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->lineStart:I

    iget v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    sub-int/2addr v1, v2

    iput v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->lineStart:I

    iget v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->limit:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    sub-int/2addr v1, v2

    iput v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->limit:I

    .line 1290
    invoke-static {v0, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    iput v3, p0, Lio/sentry/vendor/gson/stream/JsonReader;->limit:I

    :goto_0
    iput v3, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    :cond_1
    iget-object v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->in:Ljava/io/Reader;

    iget v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->limit:I

    .line 1297
    array-length v4, v0

    sub-int/2addr v4, v2

    invoke-virtual {v1, v0, v2, v4}, Ljava/io/Reader;->read([CII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    iget v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->limit:I

    add-int/2addr v2, v1

    iput v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->limit:I

    iget v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->lineNumber:I

    const/4 v4, 0x1

    if-nez v1, :cond_2

    iget v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->lineStart:I

    if-nez v1, :cond_2

    if-lez v2, :cond_2

    .line 1301
    aget-char v5, v0, v3

    const v6, 0xfeff

    if-ne v5, v6, :cond_2

    iget v5, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    add-int/2addr v5, v4

    iput v5, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->lineStart:I

    add-int/lit8 p1, p1, 0x1

    :cond_2
    if-lt v2, p1, :cond_1

    return v4

    :cond_3
    return v3
.end method

.method private isLiteral(C)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_1

    const/16 v0, 0xd

    if-eq p1, v0, :cond_1

    const/16 v0, 0x20

    if-eq p1, v0, :cond_1

    const/16 v0, 0x23

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2c

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2f

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3d

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7b

    if-eq p1, v0, :cond_1

    const/16 v0, 0x7d

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3a

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3b

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x1

    return p0

    .line 758
    :cond_0
    :pswitch_0
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->checkLenient()V

    :cond_1
    :pswitch_1
    const/4 p0, 0x0

    return p0

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private nextNonWhitespace(Z)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    iget v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->limit:I

    :goto_0
    const/4 v3, 0x1

    if-ne v1, v2, :cond_2

    iput v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    .line 1335
    invoke-direct {p0, v3}, Lio/sentry/vendor/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez p1, :cond_0

    const/4 p0, -0x1

    return p0

    .line 1403
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "End of input"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    iget v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->limit:I

    :cond_2
    add-int/lit8 v4, v1, 0x1

    .line 1342
    aget-char v5, v0, v1

    const/16 v6, 0xa

    if-ne v5, v6, :cond_3

    iget v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->lineNumber:I

    add-int/2addr v1, v3

    iput v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->lineNumber:I

    iput v4, p0, Lio/sentry/vendor/gson/stream/JsonReader;->lineStart:I

    goto/16 :goto_1

    :cond_3
    const/16 v6, 0x20

    if-eq v5, v6, :cond_b

    const/16 v6, 0xd

    if-eq v5, v6, :cond_b

    const/16 v6, 0x9

    if-ne v5, v6, :cond_4

    goto :goto_1

    :cond_4
    const/16 v6, 0x2f

    if-ne v5, v6, :cond_9

    iput v4, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    const/4 v7, 0x2

    if-ne v4, v2, :cond_5

    iput v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    .line 1355
    invoke-direct {p0, v7}, Lio/sentry/vendor/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v1

    iget v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    add-int/2addr v2, v3

    iput v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    if-nez v1, :cond_5

    return v5

    .line 1362
    :cond_5
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->checkLenient()V

    iget v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    .line 1363
    aget-char v2, v0, v1

    const/16 v3, 0x2a

    if-eq v2, v3, :cond_7

    if-eq v2, v6, :cond_6

    return v5

    :cond_6
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    .line 1378
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->skipToEndOfLine()V

    iget v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    iget v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->limit:I

    goto :goto_0

    :cond_7
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    const-string v1, "*/"

    .line 1368
    invoke-direct {p0, v1}, Lio/sentry/vendor/gson/stream/JsonReader;->skipTo(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    add-int/2addr v1, v7

    iget v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->limit:I

    goto/16 :goto_0

    :cond_8
    const-string p1, "Unterminated comment"

    .line 1369
    invoke-direct {p0, p1}, Lio/sentry/vendor/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    :cond_9
    const/16 v1, 0x23

    if-ne v5, v1, :cond_a

    iput v4, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    .line 1393
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->checkLenient()V

    .line 1394
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->skipToEndOfLine()V

    iget v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    iget v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->limit:I

    goto/16 :goto_0

    :cond_a
    iput v4, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    return v5

    :cond_b
    :goto_1
    move v1, v4

    goto/16 :goto_0
.end method

.method private nextQuotedValue(C)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->buffer:[C

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    iget v3, p0, Lio/sentry/vendor/gson/stream/JsonReader;->limit:I

    :goto_1
    move v4, v3

    move v3, v2

    :goto_2
    const/16 v5, 0x10

    const/4 v6, 0x1

    if-ge v2, v4, :cond_5

    add-int/lit8 v7, v2, 0x1

    .line 1002
    aget-char v2, v0, v2

    if-ne v2, p1, :cond_1

    iput v7, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    sub-int/2addr v7, v3

    sub-int/2addr v7, v6

    if-nez v1, :cond_0

    .line 1008
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0, v3, v7}, Ljava/lang/String;-><init>([CII)V

    return-object p0

    .line 1010
    :cond_0
    invoke-virtual {v1, v0, v3, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1011
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/16 v8, 0x5c

    if-ne v2, v8, :cond_3

    iput v7, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    sub-int/2addr v7, v3

    add-int/lit8 v2, v7, -0x1

    if-nez v1, :cond_2

    mul-int/lit8 v7, v7, 0x2

    .line 1018
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1020
    :cond_2
    invoke-virtual {v1, v0, v3, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1021
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->readEscapeCharacter()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    iget v3, p0, Lio/sentry/vendor/gson/stream/JsonReader;->limit:I

    goto :goto_1

    :cond_3
    const/16 v5, 0xa

    if-ne v2, v5, :cond_4

    iget v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->lineNumber:I

    add-int/2addr v2, v6

    iput v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->lineNumber:I

    iput v7, p0, Lio/sentry/vendor/gson/stream/JsonReader;->lineStart:I

    :cond_4
    move v2, v7

    goto :goto_2

    :cond_5
    if-nez v1, :cond_6

    sub-int v1, v2, v3

    mul-int/lit8 v1, v1, 0x2

    .line 1033
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v4

    :cond_6
    sub-int v4, v2, v3

    .line 1035
    invoke-virtual {v1, v0, v3, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    iput v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    .line 1037
    invoke-direct {p0, v6}, Lio/sentry/vendor/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_0

    :cond_7
    const-string p1, "Unterminated string"

    .line 1038
    invoke-direct {p0, p1}, Lio/sentry/vendor/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method private nextUnquotedValue()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    move v2, v1

    :goto_0
    iget v3, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    add-int v4, v3, v2

    iget v5, p0, Lio/sentry/vendor/gson/stream/JsonReader;->limit:I

    if-ge v4, v5, :cond_2

    iget-object v4, p0, Lio/sentry/vendor/gson/stream/JsonReader;->buffer:[C

    add-int/2addr v3, v2

    .line 1054
    aget-char v3, v4, v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_3

    const/16 v4, 0xd

    if-eq v3, v4, :cond_3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_3

    const/16 v4, 0x23

    if-eq v3, v4, :cond_1

    const/16 v4, 0x2c

    if-eq v3, v4, :cond_3

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_1

    const/16 v4, 0x3d

    if-eq v3, v4, :cond_1

    const/16 v4, 0x7b

    if-eq v3, v4, :cond_3

    const/16 v4, 0x7d

    if-eq v3, v4, :cond_3

    const/16 v4, 0x3a

    if-eq v3, v4, :cond_3

    const/16 v4, 0x3b

    if-eq v3, v4, :cond_1

    packed-switch v3, :pswitch_data_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1060
    :cond_1
    :pswitch_0
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->checkLenient()V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lio/sentry/vendor/gson/stream/JsonReader;->buffer:[C

    .line 1077
    array-length v3, v3

    if-ge v2, v3, :cond_4

    add-int/lit8 v3, v2, 0x1

    .line 1078
    invoke-direct {p0, v3}, Lio/sentry/vendor/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    :pswitch_1
    move v1, v2

    goto :goto_2

    :cond_4
    if-nez v0, :cond_5

    .line 1087
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    :cond_5
    iget-object v3, p0, Lio/sentry/vendor/gson/stream/JsonReader;->buffer:[C

    iget v4, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    .line 1089
    invoke-virtual {v0, v3, v4, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    iget v3, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    add-int/2addr v3, v2

    iput v3, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    const/4 v2, 0x1

    .line 1092
    invoke-direct {p0, v2}, Lio/sentry/vendor/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_2
    if-nez v0, :cond_6

    .line 1097
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->buffer:[C

    iget v3, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    invoke-direct {v0, v2, v3, v1}, Ljava/lang/String;-><init>([CII)V

    goto :goto_3

    :cond_6
    iget-object v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->buffer:[C

    iget v3, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    invoke-virtual {v0, v2, v3, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    iget v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    add-int/2addr v2, v1

    iput v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    return-object v0

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private peekKeyword()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    .line 606
    aget-char v0, v0, v1

    const/16 v1, 0x74

    const/4 v2, 0x0

    if-eq v0, v1, :cond_5

    const/16 v1, 0x54

    if-ne v0, v1, :cond_0

    goto :goto_2

    :cond_0
    const/16 v1, 0x66

    if-eq v0, v1, :cond_4

    const/16 v1, 0x46

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x6e

    if-eq v0, v1, :cond_3

    const/16 v1, 0x4e

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    :goto_0
    const-string v0, "null"

    const-string v1, "NULL"

    const/4 v3, 0x7

    goto :goto_3

    :cond_4
    :goto_1
    const-string v0, "false"

    const-string v1, "FALSE"

    const/4 v3, 0x6

    goto :goto_3

    :cond_5
    :goto_2
    const-string v0, "true"

    const-string v1, "TRUE"

    const/4 v3, 0x5

    .line 627
    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    :goto_4
    if-ge v5, v4, :cond_8

    iget v6, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    add-int/2addr v6, v5

    iget v7, p0, Lio/sentry/vendor/gson/stream/JsonReader;->limit:I

    if-lt v6, v7, :cond_6

    add-int/lit8 v6, v5, 0x1

    .line 629
    invoke-direct {p0, v6}, Lio/sentry/vendor/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v6

    if-nez v6, :cond_6

    return v2

    :cond_6
    iget-object v6, p0, Lio/sentry/vendor/gson/stream/JsonReader;->buffer:[C

    iget v7, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    add-int/2addr v7, v5

    .line 632
    aget-char v6, v6, v7

    .line 633
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_7

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_7

    return v2

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_8
    iget v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    add-int/2addr v0, v4

    iget v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->limit:I

    if-lt v0, v1, :cond_9

    add-int/lit8 v0, v4, 0x1

    .line 638
    invoke-direct {p0, v0}, Lio/sentry/vendor/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    iget-object v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    add-int/2addr v1, v4

    aget-char v0, v0, v1

    .line 639
    invoke-direct {p0, v0}, Lio/sentry/vendor/gson/stream/JsonReader;->isLiteral(C)Z

    move-result v0

    if-eqz v0, :cond_a

    return v2

    :cond_a
    iget v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    add-int/2addr v0, v4

    iput v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    iput v3, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    return v3
.end method

.method private peekNumber()I
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lio/sentry/vendor/gson/stream/JsonReader;->buffer:[C

    iget v2, v0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    iget v3, v0, Lio/sentry/vendor/gson/stream/JsonReader;->limit:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    move v8, v6

    move v9, v8

    move v13, v9

    move v10, v7

    const-wide/16 v11, 0x0

    :goto_0
    add-int v14, v2, v8

    const/4 v15, 0x2

    if-ne v14, v3, :cond_2

    .line 664
    array-length v2, v1

    if-ne v8, v2, :cond_0

    return v6

    :cond_0
    add-int/lit8 v2, v8, 0x1

    .line 669
    invoke-direct {v0, v2}, Lio/sentry/vendor/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_7

    :cond_1
    iget v2, v0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    iget v3, v0, Lio/sentry/vendor/gson/stream/JsonReader;->limit:I

    :cond_2
    add-int v14, v2, v8

    .line 676
    aget-char v14, v1, v14

    const/16 v6, 0x2b

    const/4 v5, 0x5

    if-eq v14, v6, :cond_1d

    const/16 v6, 0x45

    if-eq v14, v6, :cond_1a

    const/16 v6, 0x65

    if-eq v14, v6, :cond_1a

    const/16 v6, 0x2d

    if-eq v14, v6, :cond_17

    const/16 v6, 0x2e

    const/4 v4, 0x3

    if-eq v14, v6, :cond_15

    const/16 v6, 0x30

    if-lt v14, v6, :cond_d

    const/16 v6, 0x39

    if-le v14, v6, :cond_3

    goto :goto_6

    :cond_3
    if-eq v9, v7, :cond_b

    if-nez v9, :cond_4

    goto :goto_3

    :cond_4
    if-ne v9, v15, :cond_8

    const-wide/16 v16, 0x0

    cmp-long v4, v11, v16

    if-nez v4, :cond_5

    const/4 v4, 0x0

    return v4

    :cond_5
    const-wide/16 v4, 0xa

    mul-long/2addr v4, v11

    add-int/lit8 v14, v14, -0x30

    int-to-long v14, v14

    sub-long/2addr v4, v14

    const-wide v14, -0xcccccccccccccccL

    cmp-long v6, v11, v14

    if-gtz v6, :cond_7

    if-nez v6, :cond_6

    cmp-long v6, v4, v11

    if-gez v6, :cond_6

    goto :goto_1

    :cond_6
    const/4 v6, 0x0

    goto :goto_2

    :cond_7
    :goto_1
    move v6, v7

    :goto_2
    and-int/2addr v10, v6

    move-wide v11, v4

    goto :goto_4

    :cond_8
    if-ne v9, v4, :cond_9

    const/4 v6, 0x0

    const/4 v9, 0x4

    goto :goto_5

    :cond_9
    if-eq v9, v5, :cond_a

    const/4 v4, 0x6

    if-ne v9, v4, :cond_c

    :cond_a
    const/4 v6, 0x0

    const/4 v9, 0x7

    goto :goto_5

    :cond_b
    :goto_3
    add-int/lit8 v14, v14, -0x30

    neg-int v4, v14

    int-to-long v11, v4

    move v9, v15

    :cond_c
    :goto_4
    const/4 v6, 0x0

    :goto_5
    const-wide/16 v16, 0x0

    goto/16 :goto_c

    .line 713
    :cond_d
    :goto_6
    invoke-direct {v0, v14}, Lio/sentry/vendor/gson/stream/JsonReader;->isLiteral(C)Z

    move-result v1

    if-nez v1, :cond_14

    :goto_7
    if-ne v9, v15, :cond_11

    if-eqz v10, :cond_11

    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v1, v11, v1

    if-nez v1, :cond_e

    if-eqz v13, :cond_11

    :cond_e
    const-wide/16 v16, 0x0

    cmp-long v1, v11, v16

    if-nez v1, :cond_f

    if-nez v13, :cond_11

    :cond_f
    if-eqz v13, :cond_10

    goto :goto_8

    :cond_10
    neg-long v11, v11

    :goto_8
    iput-wide v11, v0, Lio/sentry/vendor/gson/stream/JsonReader;->peekedLong:J

    iget v1, v0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    add-int/2addr v1, v8

    iput v1, v0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    const/16 v1, 0xf

    iput v1, v0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    return v1

    :cond_11
    if-eq v9, v15, :cond_13

    const/4 v1, 0x4

    if-eq v9, v1, :cond_13

    const/4 v1, 0x7

    if-ne v9, v1, :cond_12

    goto :goto_9

    :cond_12
    const/4 v6, 0x0

    return v6

    :cond_13
    :goto_9
    iput v8, v0, Lio/sentry/vendor/gson/stream/JsonReader;->peekedNumberLength:I

    const/16 v1, 0x10

    iput v1, v0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    return v1

    :cond_14
    const/4 v6, 0x0

    return v6

    :cond_15
    const/4 v6, 0x0

    const-wide/16 v16, 0x0

    if-ne v9, v15, :cond_16

    goto :goto_b

    :cond_16
    return v6

    :cond_17
    const/4 v4, 0x6

    const/4 v6, 0x0

    const-wide/16 v16, 0x0

    if-nez v9, :cond_18

    move v9, v7

    move v13, v9

    goto :goto_c

    :cond_18
    if-ne v9, v5, :cond_19

    goto :goto_b

    :cond_19
    return v6

    :cond_1a
    const/4 v6, 0x0

    const-wide/16 v16, 0x0

    if-eq v9, v15, :cond_1c

    const/4 v4, 0x4

    if-ne v9, v4, :cond_1b

    goto :goto_a

    :cond_1b
    return v6

    :cond_1c
    :goto_a
    move v9, v5

    goto :goto_c

    :cond_1d
    const/4 v4, 0x6

    const/4 v6, 0x0

    const-wide/16 v16, 0x0

    if-ne v9, v5, :cond_1e

    :goto_b
    move v9, v4

    :goto_c
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :cond_1e
    return v6
.end method

.method private push(I)V
    .locals 3

    iget v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->stackSize:I

    iget-object v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->stack:[I

    .line 1271
    array-length v2, v1

    if-ne v0, v2, :cond_0

    mul-int/lit8 v0, v0, 0x2

    .line 1273
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->stack:[I

    iget-object v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pathIndices:[I

    .line 1274
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pathIndices:[I

    iget-object v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    .line 1275
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->stack:[I

    iget v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->stackSize:I

    .line 1277
    aput p1, v0, v1

    return-void
.end method

.method private readEscapeCharacter()C
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    iget v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->limit:I

    const-string v2, "Unterminated escape sequence"

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    .line 1506
    invoke-direct {p0, v3}, Lio/sentry/vendor/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1507
    :cond_0
    invoke-direct {p0, v2}, Lio/sentry/vendor/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    iget-object v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    .line 1510
    aget-char v0, v0, v1

    const/16 v5, 0xa

    if-eq v0, v5, :cond_e

    const/16 v3, 0x22

    if-eq v0, v3, :cond_f

    const/16 v3, 0x27

    if-eq v0, v3, :cond_f

    const/16 v3, 0x2f

    if-eq v0, v3, :cond_f

    const/16 v3, 0x5c

    if-eq v0, v3, :cond_f

    const/16 v3, 0x62

    if-eq v0, v3, :cond_d

    const/16 v3, 0x66

    if-eq v0, v3, :cond_c

    const/16 v4, 0x6e

    if-eq v0, v4, :cond_b

    const/16 v4, 0x72

    if-eq v0, v4, :cond_a

    const/16 v4, 0x74

    if-eq v0, v4, :cond_9

    const/16 v4, 0x75

    if-ne v0, v4, :cond_8

    add-int/lit8 v1, v1, 0x5

    iget v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->limit:I

    const/4 v4, 0x4

    if-le v1, v0, :cond_3

    .line 1513
    invoke-direct {p0, v4}, Lio/sentry/vendor/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 1514
    :cond_2
    invoke-direct {p0, v2}, Lio/sentry/vendor/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    :cond_3
    :goto_1
    iget v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    add-int/lit8 v1, v0, 0x4

    const/4 v2, 0x0

    :goto_2
    if-ge v0, v1, :cond_7

    iget-object v5, p0, Lio/sentry/vendor/gson/stream/JsonReader;->buffer:[C

    .line 1519
    aget-char v5, v5, v0

    shl-int/lit8 v2, v2, 0x4

    int-to-char v2, v2

    const/16 v6, 0x30

    if-lt v5, v6, :cond_4

    const/16 v6, 0x39

    if-gt v5, v6, :cond_4

    add-int/lit8 v5, v5, -0x30

    :goto_3
    add-int/2addr v2, v5

    int-to-char v2, v2

    goto :goto_4

    :cond_4
    const/16 v6, 0x61

    if-lt v5, v6, :cond_5

    if-gt v5, v3, :cond_5

    add-int/lit8 v5, v5, -0x57

    goto :goto_3

    :cond_5
    const/16 v6, 0x41

    if-lt v5, v6, :cond_6

    const/16 v6, 0x46

    if-gt v5, v6, :cond_6

    add-int/lit8 v5, v5, -0x37

    goto :goto_3

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1528
    :cond_6
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->buffer:[C

    iget p0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    invoke-direct {v1, v2, p0, v4}, Ljava/lang/String;-><init>([CII)V

    const-string p0, "\\u"

    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    iget v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    add-int/2addr v0, v4

    iput v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    return v2

    :cond_8
    const-string v0, "Invalid escape sequence"

    .line 1561
    invoke-direct {p0, v0}, Lio/sentry/vendor/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    :cond_9
    const/16 p0, 0x9

    return p0

    :cond_a
    const/16 p0, 0xd

    return p0

    :cond_b
    return v5

    :cond_c
    const/16 p0, 0xc

    return p0

    :cond_d
    const/16 p0, 0x8

    return p0

    :cond_e
    iget v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->lineNumber:I

    add-int/2addr v1, v3

    iput v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->lineNumber:I

    iput v4, p0, Lio/sentry/vendor/gson/stream/JsonReader;->lineStart:I

    :cond_f
    return v0
.end method

.method private skipQuotedValue(C)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->buffer:[C

    :goto_0
    iget v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    iget v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->limit:I

    :goto_1
    const/4 v3, 0x1

    if-ge v1, v2, :cond_3

    add-int/lit8 v4, v1, 0x1

    .line 1110
    aget-char v1, v0, v1

    if-ne v1, p1, :cond_0

    iput v4, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    return-void

    :cond_0
    const/16 v5, 0x5c

    if-ne v1, v5, :cond_1

    iput v4, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    .line 1116
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->readEscapeCharacter()C

    iget v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    iget v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->limit:I

    goto :goto_1

    :cond_1
    const/16 v5, 0xa

    if-ne v1, v5, :cond_2

    iget v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->lineNumber:I

    add-int/2addr v1, v3

    iput v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->lineNumber:I

    iput v4, p0, Lio/sentry/vendor/gson/stream/JsonReader;->lineStart:I

    :cond_2
    move v1, v4

    goto :goto_1

    :cond_3
    iput v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    .line 1125
    invoke-direct {p0, v3}, Lio/sentry/vendor/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    const-string p1, "Unterminated string"

    .line 1126
    invoke-direct {p0, p1}, Lio/sentry/vendor/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method private skipTo(Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1437
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    iget v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    add-int/2addr v1, v0

    iget v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->limit:I

    const/4 v3, 0x0

    if-le v1, v2, :cond_1

    .line 1439
    invoke-direct {p0, v0}, Lio/sentry/vendor/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    return v3

    :cond_1
    :goto_1
    iget-object v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    .line 1440
    aget-char v1, v1, v2

    const/16 v4, 0xa

    const/4 v5, 0x1

    if-ne v1, v4, :cond_2

    iget v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->lineNumber:I

    add-int/2addr v1, v5

    iput v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->lineNumber:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->lineStart:I

    goto :goto_3

    :cond_2
    :goto_2
    if-ge v3, v0, :cond_4

    iget-object v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    add-int/2addr v2, v3

    .line 1446
    aget-char v1, v1, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v1, v2, :cond_3

    :goto_3
    iget v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    add-int/2addr v1, v5

    iput v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    goto :goto_0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    return v5
.end method

.method private skipToEndOfLine()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    iget v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    iget v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->limit:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_1

    .line 1421
    invoke-direct {p0, v2}, Lio/sentry/vendor/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    .line 1422
    aget-char v0, v0, v1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    iget v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->lineNumber:I

    add-int/2addr v0, v2

    iput v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->lineNumber:I

    iput v3, p0, Lio/sentry/vendor/gson/stream/JsonReader;->lineStart:I

    goto :goto_0

    :cond_2
    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    :cond_3
    :goto_0
    return-void
.end method

.method private skipUnquotedValue()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    add-int v2, v1, v0

    iget v3, p0, Lio/sentry/vendor/gson/stream/JsonReader;->limit:I

    if-ge v2, v3, :cond_3

    iget-object v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->buffer:[C

    add-int/2addr v1, v0

    .line 1133
    aget-char v1, v2, v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_2

    const/16 v2, 0xa

    if-eq v1, v2, :cond_2

    const/16 v2, 0xc

    if-eq v1, v2, :cond_2

    const/16 v2, 0xd

    if-eq v1, v2, :cond_2

    const/16 v2, 0x20

    if-eq v1, v2, :cond_2

    const/16 v2, 0x23

    if-eq v1, v2, :cond_1

    const/16 v2, 0x2c

    if-eq v1, v2, :cond_2

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_1

    const/16 v2, 0x3d

    if-eq v1, v2, :cond_1

    const/16 v2, 0x7b

    if-eq v1, v2, :cond_2

    const/16 v2, 0x7d

    if-eq v1, v2, :cond_2

    const/16 v2, 0x3a

    if-eq v1, v2, :cond_2

    const/16 v2, 0x3b

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1139
    :cond_1
    :pswitch_0
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->checkLenient()V

    :cond_2
    :pswitch_1
    iget v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    return-void

    :cond_3
    add-int/2addr v1, v0

    iput v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    const/4 v0, 0x1

    .line 1156
    invoke-direct {p0, v0}, Lio/sentry/vendor/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private syntaxError(Ljava/lang/String;)Ljava/io/IOException;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1570
    new-instance v0, Lio/sentry/vendor/gson/stream/MalformedJsonException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lio/sentry/vendor/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public beginArray()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    if-nez v0, :cond_0

    .line 350
    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->doPeek()I

    move-result v0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 353
    invoke-direct {p0, v0}, Lio/sentry/vendor/gson/stream/JsonReader;->push(I)V

    iget-object v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pathIndices:[I

    iget v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->stackSize:I

    sub-int/2addr v2, v0

    const/4 v0, 0x0

    .line 354
    aput v0, v1, v2

    iput v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    return-void

    .line 357
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected BEGIN_ARRAY but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public beginObject()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    if-nez v0, :cond_0

    .line 386
    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->doPeek()I

    move-result v0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    .line 389
    invoke-direct {p0, v0}, Lio/sentry/vendor/gson/stream/JsonReader;->push(I)V

    const/4 v0, 0x0

    iput v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    return-void

    .line 392
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected BEGIN_OBJECT but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    iget-object v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->stack:[I

    const/16 v2, 0x8

    .line 1224
    aput v2, v1, v0

    const/4 v0, 0x1

    iput v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->stackSize:I

    iget-object p0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->in:Ljava/io/Reader;

    .line 1226
    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    return-void
.end method

.method doPeek()I
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->stack:[I

    iget v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v1, -0x1

    .line 469
    aget v2, v0, v2

    const/16 v3, 0x8

    const/16 v4, 0x27

    const/16 v5, 0x22

    const/16 v6, 0x5d

    const/4 v7, 0x3

    const/4 v8, 0x7

    const/16 v9, 0x3b

    const/16 v10, 0x2c

    const/4 v11, 0x4

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-ne v2, v13, :cond_0

    sub-int/2addr v1, v13

    .line 471
    aput v12, v0, v1

    goto/16 :goto_0

    :cond_0
    if-ne v2, v12, :cond_3

    .line 474
    invoke-direct {p0, v13}, Lio/sentry/vendor/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v0

    if-eq v0, v10, :cond_c

    if-eq v0, v9, :cond_2

    if-ne v0, v6, :cond_1

    iput v11, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    return v11

    :cond_1
    const-string v0, "Unterminated array"

    .line 483
    invoke-direct {p0, v0}, Lio/sentry/vendor/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    .line 479
    :cond_2
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->checkLenient()V

    goto :goto_0

    :cond_3
    const/4 v14, 0x5

    if-eq v2, v7, :cond_19

    if-ne v2, v14, :cond_4

    goto/16 :goto_2

    :cond_4
    if-ne v2, v11, :cond_7

    sub-int/2addr v1, v13

    .line 524
    aput v14, v0, v1

    .line 526
    invoke-direct {p0, v13}, Lio/sentry/vendor/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v0

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_c

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_6

    .line 531
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->checkLenient()V

    iget v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    iget v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->limit:I

    if-lt v0, v1, :cond_5

    .line 532
    invoke-direct {p0, v13}, Lio/sentry/vendor/gson/stream/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_5
    iget-object v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    aget-char v0, v0, v1

    const/16 v14, 0x3e

    if-ne v0, v14, :cond_c

    add-int/2addr v1, v13

    iput v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    goto :goto_0

    :cond_6
    const-string v0, "Expected \':\'"

    .line 537
    invoke-direct {p0, v0}, Lio/sentry/vendor/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    :cond_7
    const/4 v0, 0x6

    if-ne v2, v0, :cond_9

    iget-boolean v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->lenient:Z

    if-eqz v0, :cond_8

    .line 541
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->consumeNonExecutePrefix()V

    :cond_8
    iget-object v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->stack:[I

    iget v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->stackSize:I

    sub-int/2addr v1, v13

    .line 543
    aput v8, v0, v1

    goto :goto_0

    :cond_9
    if-ne v2, v8, :cond_b

    const/4 v0, 0x0

    .line 545
    invoke-direct {p0, v0}, Lio/sentry/vendor/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    const/16 v0, 0x11

    iput v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    return v0

    .line 549
    :cond_a
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->checkLenient()V

    iget v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    sub-int/2addr v0, v13

    iput v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    goto :goto_0

    :cond_b
    if-eq v2, v3, :cond_18

    .line 556
    :cond_c
    :goto_0
    invoke-direct {p0, v13}, Lio/sentry/vendor/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v0

    if-eq v0, v5, :cond_17

    if-eq v0, v4, :cond_16

    if-eq v0, v10, :cond_13

    if-eq v0, v9, :cond_13

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_12

    if-eq v0, v6, :cond_11

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_10

    iget v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    sub-int/2addr v0, v13

    iput v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    .line 586
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->peekKeyword()I

    move-result v0

    if-eqz v0, :cond_d

    return v0

    .line 591
    :cond_d
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->peekNumber()I

    move-result v0

    if-eqz v0, :cond_e

    return v0

    :cond_e
    iget-object v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->buffer:[C

    iget v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    .line 596
    aget-char v0, v0, v1

    invoke-direct {p0, v0}, Lio/sentry/vendor/gson/stream/JsonReader;->isLiteral(C)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 600
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->checkLenient()V

    const/16 v0, 0xa

    iput v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    return v0

    :cond_f
    const-string v0, "Expected value"

    .line 597
    invoke-direct {p0, v0}, Lio/sentry/vendor/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    :cond_10
    iput v13, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    return v13

    :cond_11
    if-ne v2, v13, :cond_13

    iput v11, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    return v11

    :cond_12
    iput v7, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    return v7

    :cond_13
    if-eq v2, v13, :cond_15

    if-ne v2, v12, :cond_14

    goto :goto_1

    :cond_14
    const-string v0, "Unexpected value"

    .line 571
    invoke-direct {p0, v0}, Lio/sentry/vendor/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    .line 567
    :cond_15
    :goto_1
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->checkLenient()V

    iget v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    sub-int/2addr v0, v13

    iput v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    iput v8, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    return v8

    .line 574
    :cond_16
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->checkLenient()V

    iput v3, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    return v3

    :cond_17
    const/16 v0, 0x9

    iput v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    return v0

    .line 553
    :cond_18
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "JsonReader is closed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_19
    :goto_2
    sub-int/2addr v1, v13

    .line 486
    aput v11, v0, v1

    const/16 v0, 0x7d

    if-ne v2, v14, :cond_1c

    .line 489
    invoke-direct {p0, v13}, Lio/sentry/vendor/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v1

    if-eq v1, v10, :cond_1c

    if-eq v1, v9, :cond_1b

    if-ne v1, v0, :cond_1a

    iput v12, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    return v12

    :cond_1a
    const-string v0, "Unterminated object"

    .line 498
    invoke-direct {p0, v0}, Lio/sentry/vendor/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    .line 494
    :cond_1b
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->checkLenient()V

    .line 501
    :cond_1c
    invoke-direct {p0, v13}, Lio/sentry/vendor/gson/stream/JsonReader;->nextNonWhitespace(Z)I

    move-result v1

    if-eq v1, v5, :cond_21

    if-eq v1, v4, :cond_20

    const-string v3, "Expected name"

    if-eq v1, v0, :cond_1e

    .line 515
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->checkLenient()V

    iget v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    sub-int/2addr v0, v13

    iput v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    int-to-char v0, v1

    .line 517
    invoke-direct {p0, v0}, Lio/sentry/vendor/gson/stream/JsonReader;->isLiteral(C)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/16 v0, 0xe

    iput v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    return v0

    .line 520
    :cond_1d
    invoke-direct {p0, v3}, Lio/sentry/vendor/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    :cond_1e
    if-eq v2, v14, :cond_1f

    iput v12, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    return v12

    .line 512
    :cond_1f
    invoke-direct {p0, v3}, Lio/sentry/vendor/gson/stream/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    .line 506
    :cond_20
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->checkLenient()V

    const/16 v0, 0xc

    iput v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    return v0

    :cond_21
    const/16 v0, 0xd

    iput v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    return v0
.end method

.method public endArray()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    if-nez v0, :cond_0

    .line 368
    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->doPeek()I

    move-result v0

    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->stackSize:I

    iget-object v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pathIndices:[I

    add-int/lit8 v0, v0, -0x2

    .line 372
    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    const/4 v0, 0x0

    iput v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    return-void

    .line 375
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected END_ARRAY but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public endObject()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    if-nez v0, :cond_0

    .line 403
    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->doPeek()I

    move-result v0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->stackSize:I

    iget-object v3, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    const/4 v4, 0x0

    .line 407
    aput-object v4, v3, v2

    iget-object v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pathIndices:[I

    sub-int/2addr v0, v1

    .line 408
    aget v1, v2, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, v2, v0

    const/4 v0, 0x0

    iput v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    return-void

    .line 411
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected END_OBJECT but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 5

    .line 1470
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "$"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->stackSize:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    iget-object v3, p0, Lio/sentry/vendor/gson/stream/JsonReader;->stack:[I

    .line 1472
    aget v3, v3, v2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    goto :goto_1

    :cond_0
    const/16 v3, 0x2e

    .line 1481
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    .line 1482
    aget-object v3, v3, v2

    if-eqz v3, :cond_2

    .line 1483
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const/16 v3, 0x5b

    .line 1475
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pathIndices:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1493
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hasNext()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    if-nez v0, :cond_0

    .line 421
    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->doPeek()I

    move-result v0

    :cond_0
    const/4 p0, 0x2

    if-eq v0, p0, :cond_1

    const/4 p0, 0x4

    if-eq v0, p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isLenient()Z
    .locals 0

    iget-boolean p0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->lenient:Z

    return p0
.end method

.method locationString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->lineNumber:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    iget v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->lineStart:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    .line 1462
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " at line "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " column "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " path "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public nextBoolean()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    if-nez v0, :cond_0

    .line 849
    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->doPeek()I

    move-result v0

    :cond_0
    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    iput v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    iget-object v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pathIndices:[I

    iget p0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->stackSize:I

    sub-int/2addr p0, v3

    .line 853
    aget v1, v0, p0

    add-int/2addr v1, v3

    aput v1, v0, p0

    return v3

    :cond_1
    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    iput v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    iget-object v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pathIndices:[I

    iget p0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->stackSize:I

    sub-int/2addr p0, v3

    .line 857
    aget v1, v0, p0

    add-int/2addr v1, v3

    aput v1, v0, p0

    return v2

    .line 860
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a boolean but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextDouble()D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    if-nez v0, :cond_0

    .line 895
    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->doPeek()I

    move-result v0

    :cond_0
    const/16 v1, 0xf

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iput v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    iget-object v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pathIndices:[I

    iget v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    .line 900
    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    iget-wide v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peekedLong:J

    long-to-double v0, v0

    return-wide v0

    :cond_1
    const/16 v1, 0x10

    const/16 v3, 0xb

    if-ne v0, v1, :cond_2

    .line 905
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->buffer:[C

    iget v4, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    iget v5, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peekedNumberLength:I

    invoke-direct {v0, v1, v4, v5}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    iget v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    iget v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v0, v1

    iput v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    goto :goto_2

    :cond_2
    const/16 v1, 0x8

    if-eq v0, v1, :cond_6

    const/16 v4, 0x9

    if-ne v0, v4, :cond_3

    goto :goto_0

    :cond_3
    const/16 v1, 0xa

    if-ne v0, v1, :cond_4

    .line 910
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    goto :goto_2

    :cond_4
    if-ne v0, v3, :cond_5

    goto :goto_2

    .line 912
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a double but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_0
    if-ne v0, v1, :cond_7

    const/16 v0, 0x27

    goto :goto_1

    :cond_7
    const/16 v0, 0x22

    .line 908
    :goto_1
    invoke-direct {p0, v0}, Lio/sentry/vendor/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    :goto_2
    iput v3, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    iget-object v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 916
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iget-boolean v3, p0, Lio/sentry/vendor/gson/stream/JsonReader;->lenient:Z

    if-nez v3, :cond_9

    .line 917
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_3

    .line 918
    :cond_8
    new-instance v2, Lio/sentry/vendor/gson/stream/MalformedJsonException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "JSON forbids NaN and infinities: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 919
    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Lio/sentry/vendor/gson/stream/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_9
    :goto_3
    const/4 v3, 0x0

    iput-object v3, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    iput v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    iget-object v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pathIndices:[I

    iget p0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 p0, p0, -0x1

    .line 923
    aget v3, v2, p0

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, p0

    return-wide v0
.end method

.method public nextInt()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    if-nez v0, :cond_0

    .line 1172
    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->doPeek()I

    move-result v0

    :cond_0
    const/16 v1, 0xf

    const-string v2, "Expected an int but was "

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    iget-wide v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peekedLong:J

    long-to-int v4, v0

    int-to-long v5, v4

    cmp-long v0, v0, v5

    if-nez v0, :cond_1

    iput v3, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    iget-object v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pathIndices:[I

    iget p0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 p0, p0, -0x1

    .line 1182
    aget v1, v0, p0

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p0

    return v4

    .line 1179
    :cond_1
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peekedLong:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/16 v1, 0x10

    if-ne v0, v1, :cond_3

    .line 1187
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->buffer:[C

    iget v4, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    iget v5, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peekedNumberLength:I

    invoke-direct {v0, v1, v4, v5}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    iget v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    iget v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v0, v1

    iput v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    goto :goto_3

    :cond_3
    const/16 v1, 0xa

    const/16 v4, 0x8

    if-eq v0, v4, :cond_5

    const/16 v5, 0x9

    if-eq v0, v5, :cond_5

    if-ne v0, v1, :cond_4

    goto :goto_0

    .line 1204
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_0
    if-ne v0, v1, :cond_6

    .line 1191
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    goto :goto_2

    :cond_6
    if-ne v0, v4, :cond_7

    const/16 v0, 0x27

    goto :goto_1

    :cond_7
    const/16 v0, 0x22

    .line 1193
    :goto_1
    invoke-direct {p0, v0}, Lio/sentry/vendor/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    :goto_2
    :try_start_0
    iget-object v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 1196
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v3, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    iget-object v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pathIndices:[I

    iget v4, p0, Lio/sentry/vendor/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v4, v4, -0x1

    .line 1198
    aget v5, v1, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v1, v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :goto_3
    const/16 v0, 0xb

    iput v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    iget-object v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 1208
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-int v4, v0

    int-to-double v5, v4

    cmpl-double v0, v5, v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    iput-object v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    iput v3, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    iget-object v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pathIndices:[I

    iget p0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 p0, p0, -0x1

    .line 1215
    aget v1, v0, p0

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p0

    return v4

    .line 1211
    :cond_8
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextLong()J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    if-nez v0, :cond_0

    .line 940
    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->doPeek()I

    move-result v0

    :cond_0
    const/16 v1, 0xf

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iput v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    iget-object v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pathIndices:[I

    iget v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    .line 945
    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    iget-wide v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peekedLong:J

    return-wide v0

    :cond_1
    const/16 v1, 0x10

    const-string v3, "Expected a long but was "

    if-ne v0, v1, :cond_2

    .line 950
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->buffer:[C

    iget v4, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    iget v5, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peekedNumberLength:I

    invoke-direct {v0, v1, v4, v5}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    iget v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    iget v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v0, v1

    iput v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    goto :goto_3

    :cond_2
    const/16 v1, 0xa

    const/16 v4, 0x8

    if-eq v0, v4, :cond_4

    const/16 v5, 0x9

    if-eq v0, v5, :cond_4

    if-ne v0, v1, :cond_3

    goto :goto_0

    .line 967
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_0
    if-ne v0, v1, :cond_5

    .line 954
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    goto :goto_2

    :cond_5
    if-ne v0, v4, :cond_6

    const/16 v0, 0x27

    goto :goto_1

    :cond_6
    const/16 v0, 0x22

    .line 956
    :goto_1
    invoke-direct {p0, v0}, Lio/sentry/vendor/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    :goto_2
    :try_start_0
    iget-object v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 959
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    iget-object v4, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pathIndices:[I

    iget v5, p0, Lio/sentry/vendor/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v5, v5, -0x1

    .line 961
    aget v6, v4, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v4, v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    :goto_3
    const/16 v0, 0xb

    iput v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    iget-object v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    .line 971
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-long v4, v0

    long-to-double v6, v4

    cmpl-double v0, v6, v0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    iput-object v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    iput v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    iget-object v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pathIndices:[I

    iget p0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 p0, p0, -0x1

    .line 978
    aget v1, v0, p0

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p0

    return-wide v4

    .line 974
    :cond_7
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextName()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    if-nez v0, :cond_0

    .line 786
    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->doPeek()I

    move-result v0

    :cond_0
    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    .line 790
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    const/16 v0, 0x27

    .line 792
    invoke-direct {p0, v0}, Lio/sentry/vendor/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    const/16 v0, 0x22

    .line 794
    invoke-direct {p0, v0}, Lio/sentry/vendor/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    iput v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    iget-object v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    iget p0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 p0, p0, -0x1

    .line 799
    aput-object v0, v1, p0

    return-object v0

    .line 796
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a name but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextNull()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    if-nez v0, :cond_0

    .line 873
    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->doPeek()I

    move-result v0

    :cond_0
    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    iget-object v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pathIndices:[I

    iget p0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 p0, p0, -0x1

    .line 877
    aget v1, v0, p0

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p0

    return-void

    .line 879
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected null but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextString()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    if-nez v0, :cond_0

    .line 814
    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->doPeek()I

    move-result v0

    :cond_0
    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 818
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->nextUnquotedValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    const/16 v0, 0x27

    .line 820
    invoke-direct {p0, v0}, Lio/sentry/vendor/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    const/16 v0, 0x22

    .line 822
    invoke-direct {p0, v0}, Lio/sentry/vendor/gson/stream/JsonReader;->nextQuotedValue(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/16 v1, 0xb

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peekedString:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const/16 v1, 0xf

    if-ne v0, v1, :cond_5

    iget-wide v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peekedLong:J

    .line 827
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    const/16 v1, 0x10

    if-ne v0, v1, :cond_6

    .line 829
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->buffer:[C

    iget v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    iget v3, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peekedNumberLength:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iget v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    iget v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v1, v2

    iput v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    :goto_0
    const/4 v1, 0x0

    iput v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    iget-object v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pathIndices:[I

    iget p0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 p0, p0, -0x1

    .line 835
    aget v2, v1, p0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, p0

    return-object v0

    .line 832
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a string but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->peek()Lio/sentry/vendor/gson/stream/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public peek()Lio/sentry/vendor/gson/stream/JsonToken;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    if-nez v0, :cond_0

    .line 432
    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->doPeek()I

    move-result v0

    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 464
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 462
    :pswitch_0
    sget-object p0, Lio/sentry/vendor/gson/stream/JsonToken;->END_DOCUMENT:Lio/sentry/vendor/gson/stream/JsonToken;

    return-object p0

    .line 460
    :pswitch_1
    sget-object p0, Lio/sentry/vendor/gson/stream/JsonToken;->NUMBER:Lio/sentry/vendor/gson/stream/JsonToken;

    return-object p0

    .line 447
    :pswitch_2
    sget-object p0, Lio/sentry/vendor/gson/stream/JsonToken;->NAME:Lio/sentry/vendor/gson/stream/JsonToken;

    return-object p0

    .line 457
    :pswitch_3
    sget-object p0, Lio/sentry/vendor/gson/stream/JsonToken;->STRING:Lio/sentry/vendor/gson/stream/JsonToken;

    return-object p0

    .line 452
    :pswitch_4
    sget-object p0, Lio/sentry/vendor/gson/stream/JsonToken;->NULL:Lio/sentry/vendor/gson/stream/JsonToken;

    return-object p0

    .line 450
    :pswitch_5
    sget-object p0, Lio/sentry/vendor/gson/stream/JsonToken;->BOOLEAN:Lio/sentry/vendor/gson/stream/JsonToken;

    return-object p0

    .line 443
    :pswitch_6
    sget-object p0, Lio/sentry/vendor/gson/stream/JsonToken;->END_ARRAY:Lio/sentry/vendor/gson/stream/JsonToken;

    return-object p0

    .line 441
    :pswitch_7
    sget-object p0, Lio/sentry/vendor/gson/stream/JsonToken;->BEGIN_ARRAY:Lio/sentry/vendor/gson/stream/JsonToken;

    return-object p0

    .line 439
    :pswitch_8
    sget-object p0, Lio/sentry/vendor/gson/stream/JsonToken;->END_OBJECT:Lio/sentry/vendor/gson/stream/JsonToken;

    return-object p0

    .line 437
    :pswitch_9
    sget-object p0, Lio/sentry/vendor/gson/stream/JsonToken;->BEGIN_OBJECT:Lio/sentry/vendor/gson/stream/JsonToken;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final setLenient(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->lenient:Z

    return-void
.end method

.method public skipValue()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    iget v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    if-nez v2, :cond_1

    .line 1239
    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->doPeek()I

    move-result v2

    :cond_1
    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ne v2, v3, :cond_2

    .line 1243
    invoke-direct {p0, v4}, Lio/sentry/vendor/gson/stream/JsonReader;->push(I)V

    :goto_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_2
    if-ne v2, v4, :cond_3

    .line 1246
    invoke-direct {p0, v3}, Lio/sentry/vendor/gson/stream/JsonReader;->push(I)V

    goto :goto_0

    :cond_3
    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    iget v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->stackSize:I

    sub-int/2addr v2, v4

    iput v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->stackSize:I

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    :cond_4
    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    iget v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->stackSize:I

    sub-int/2addr v2, v4

    iput v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->stackSize:I

    goto :goto_1

    :cond_5
    const/16 v3, 0xe

    if-eq v2, v3, :cond_b

    const/16 v3, 0xa

    if-ne v2, v3, :cond_6

    goto :goto_4

    :cond_6
    const/16 v3, 0x8

    if-eq v2, v3, :cond_a

    const/16 v3, 0xc

    if-ne v2, v3, :cond_7

    goto :goto_3

    :cond_7
    const/16 v3, 0x9

    if-eq v2, v3, :cond_9

    const/16 v3, 0xd

    if-ne v2, v3, :cond_8

    goto :goto_2

    :cond_8
    const/16 v3, 0x10

    if-ne v2, v3, :cond_c

    iget v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    iget v3, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peekedNumberLength:I

    add-int/2addr v2, v3

    iput v2, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pos:I

    goto :goto_5

    :cond_9
    :goto_2
    const/16 v2, 0x22

    .line 1259
    invoke-direct {p0, v2}, Lio/sentry/vendor/gson/stream/JsonReader;->skipQuotedValue(C)V

    goto :goto_5

    :cond_a
    :goto_3
    const/16 v2, 0x27

    .line 1257
    invoke-direct {p0, v2}, Lio/sentry/vendor/gson/stream/JsonReader;->skipQuotedValue(C)V

    goto :goto_5

    .line 1255
    :cond_b
    :goto_4
    invoke-direct {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->skipUnquotedValue()V

    :cond_c
    :goto_5
    iput v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->peeked:I

    if-nez v1, :cond_0

    iget-object v0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pathIndices:[I

    iget v1, p0, Lio/sentry/vendor/gson/stream/JsonReader;->stackSize:I

    add-int/lit8 v2, v1, -0x1

    .line 1266
    aget v3, v0, v2

    add-int/2addr v3, v4

    aput v3, v0, v2

    iget-object p0, p0, Lio/sentry/vendor/gson/stream/JsonReader;->pathNames:[Ljava/lang/String;

    sub-int/2addr v1, v4

    const-string v0, "null"

    .line 1267
    aput-object v0, p0, v1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lio/sentry/vendor/gson/stream/JsonReader;->locationString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
