.class public final Lio/sentry/EnvelopeReader;
.super Ljava/lang/Object;
.source "EnvelopeReader.java"

# interfaces
.implements Lio/sentry/IEnvelopeReader;


# static fields
.field private static final UTF_8:Ljava/nio/charset/Charset;


# instance fields
.field private final serializer:Lio/sentry/ISerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    .line 19
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lio/sentry/EnvelopeReader;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Lio/sentry/ISerializer;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/EnvelopeReader;->serializer:Lio/sentry/ISerializer;

    return-void
.end method

.method private deserializeEnvelopeHeader([BII)Lio/sentry/SentryEnvelopeHeader;
    .locals 2

    .line 135
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lio/sentry/EnvelopeReader;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, p2, p3, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 136
    new-instance p1, Ljava/io/StringReader;

    invoke-direct {p1, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lio/sentry/EnvelopeReader;->serializer:Lio/sentry/ISerializer;

    .line 137
    const-class p2, Lio/sentry/SentryEnvelopeHeader;

    invoke-interface {p0, p1, p2}, Lio/sentry/ISerializer;->deserialize(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/sentry/SentryEnvelopeHeader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    invoke-virtual {p1}, Ljava/io/StringReader;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 136
    :try_start_1
    invoke-virtual {p1}, Ljava/io/StringReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method

.method private deserializeEnvelopeItemHeader([BII)Lio/sentry/SentryEnvelopeItemHeader;
    .locals 2

    .line 143
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lio/sentry/EnvelopeReader;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, p2, p3, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 144
    new-instance p1, Ljava/io/StringReader;

    invoke-direct {p1, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lio/sentry/EnvelopeReader;->serializer:Lio/sentry/ISerializer;

    .line 145
    const-class p2, Lio/sentry/SentryEnvelopeItemHeader;

    invoke-interface {p0, p1, p2}, Lio/sentry/ISerializer;->deserialize(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/sentry/SentryEnvelopeItemHeader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    invoke-virtual {p1}, Ljava/io/StringReader;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 144
    :try_start_1
    invoke-virtual {p1}, Ljava/io/StringReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method


# virtual methods
.method public read(Ljava/io/InputStream;)Lio/sentry/SentryEnvelope;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 34
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v2, 0x0

    const/4 v3, -0x1

    move v5, v2

    move v4, v3

    .line 35
    :goto_0
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/16 v7, 0xa

    if-lez v6, :cond_2

    move v8, v2

    :goto_1
    if-ne v4, v3, :cond_1

    if-ge v8, v6, :cond_1

    .line 37
    aget-byte v9, v0, v8

    if-ne v9, v7, :cond_0

    add-int v4, v5, v8

    goto :goto_2

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 42
    :cond_1
    :goto_2
    invoke-virtual {v1, v0, v2, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    add-int/2addr v5, v6

    goto :goto_0

    .line 46
    :cond_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 48
    array-length v0, p1

    if-eqz v0, :cond_d

    if-eq v4, v3, :cond_c

    .line 56
    invoke-direct {p0, p1, v2, v4}, Lio/sentry/EnvelopeReader;->deserializeEnvelopeHeader([BII)Lio/sentry/SentryEnvelopeHeader;

    move-result-object v0

    if-eqz v0, :cond_b

    add-int/lit8 v4, v4, 0x1

    .line 64
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_3
    move v5, v4

    .line 68
    :goto_3
    array-length v6, p1

    if-ge v5, v6, :cond_5

    .line 69
    aget-byte v6, p1, v5

    if-ne v6, v7, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    move v5, v3

    :goto_4
    if-eq v5, v3, :cond_a

    sub-int v6, v5, v4

    .line 84
    invoke-direct {p0, p1, v4, v6}, Lio/sentry/EnvelopeReader;->deserializeEnvelopeItemHeader([BII)Lio/sentry/SentryEnvelopeItemHeader;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 87
    invoke-virtual {v4}, Lio/sentry/SentryEnvelopeItemHeader;->getLength()I

    move-result v6

    if-lez v6, :cond_9

    .line 92
    invoke-virtual {v4}, Lio/sentry/SentryEnvelopeItemHeader;->getLength()I

    move-result v6

    add-int/2addr v6, v5

    add-int/lit8 v8, v6, 0x1

    .line 93
    array-length v9, p1

    if-gt v8, v9, :cond_8

    add-int/lit8 v5, v5, 0x1

    .line 108
    invoke-static {p1, v5, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    .line 111
    new-instance v9, Lio/sentry/SentryEnvelopeItem;

    invoke-direct {v9, v4, v5}, Lio/sentry/SentryEnvelopeItem;-><init>(Lio/sentry/SentryEnvelopeItemHeader;[B)V

    .line 112
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    array-length v4, p1

    if-ne v8, v4, :cond_6

    goto :goto_5

    :cond_6
    add-int/lit8 v4, v6, 0x2

    .line 117
    array-length v5, p1

    if-ne v4, v5, :cond_3

    .line 119
    aget-byte p0, p1, v8

    if-ne p0, v7, :cond_7

    .line 129
    :goto_5
    new-instance p0, Lio/sentry/SentryEnvelope;

    invoke-direct {p0, v0, v2}, Lio/sentry/SentryEnvelope;-><init>(Lio/sentry/SentryEnvelopeHeader;Ljava/lang/Iterable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    return-object p0

    .line 122
    :cond_7
    :try_start_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Envelope has invalid data following an item."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 94
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid length for item at index \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 96
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'. Item is \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' bytes. There are \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\' in the buffer."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 88
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Item header at index \'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 89
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\' is null or empty."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 76
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid envelope. Item at index \'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 78
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\'. has no header delimiter."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 58
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Envelope header is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 52
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Envelope contains no header."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 49
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Empty stream."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 34
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw p0
.end method
