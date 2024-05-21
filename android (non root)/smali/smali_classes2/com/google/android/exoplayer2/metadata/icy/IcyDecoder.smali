.class public final Lcom/google/android/exoplayer2/metadata/icy/IcyDecoder;
.super Lcom/google/android/exoplayer2/metadata/SimpleMetadataDecoder;
.source "IcyDecoder.java"


# static fields
.field private static final METADATA_ELEMENT:Ljava/util/regex/Pattern;

.field private static final STREAM_KEY_NAME:Ljava/lang/String; = "streamtitle"

.field private static final STREAM_KEY_URL:Ljava/lang/String; = "streamurl"


# instance fields
.field private final iso88591Decoder:Ljava/nio/charset/CharsetDecoder;

.field private final utf8Decoder:Ljava/nio/charset/CharsetDecoder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "(.+?)=\'(.*?)\';"

    const/16 v1, 0x20

    .line 33
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/metadata/icy/IcyDecoder;->METADATA_ELEMENT:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/google/android/exoplayer2/metadata/SimpleMetadataDecoder;-><init>()V

    .line 41
    sget-object v0, Lcom/google/common/base/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/metadata/icy/IcyDecoder;->utf8Decoder:Ljava/nio/charset/CharsetDecoder;

    .line 42
    sget-object v0, Lcom/google/common/base/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/metadata/icy/IcyDecoder;->iso88591Decoder:Ljava/nio/charset/CharsetDecoder;

    return-void
.end method

.method private decodeToString(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/icy/IcyDecoder;->utf8Decoder:Ljava/nio/charset/CharsetDecoder;

    .line 85
    invoke-virtual {v0, p1}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/metadata/icy/IcyDecoder;->utf8Decoder:Ljava/nio/charset/CharsetDecoder;

    .line 89
    invoke-virtual {p0}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 90
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    return-object v0

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/google/android/exoplayer2/metadata/icy/IcyDecoder;->utf8Decoder:Ljava/nio/charset/CharsetDecoder;

    .line 89
    invoke-virtual {p0}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 90
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 91
    throw v0

    :catch_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/icy/IcyDecoder;->utf8Decoder:Ljava/nio/charset/CharsetDecoder;

    .line 89
    invoke-virtual {v0}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 90
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    :try_start_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/icy/IcyDecoder;->iso88591Decoder:Ljava/nio/charset/CharsetDecoder;

    .line 93
    invoke-virtual {v0, p1}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object p0, p0, Lcom/google/android/exoplayer2/metadata/icy/IcyDecoder;->iso88591Decoder:Ljava/nio/charset/CharsetDecoder;

    .line 97
    invoke-virtual {p0}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 98
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    return-object v0

    :catchall_1
    move-exception v0

    iget-object p0, p0, Lcom/google/android/exoplayer2/metadata/icy/IcyDecoder;->iso88591Decoder:Ljava/nio/charset/CharsetDecoder;

    .line 97
    invoke-virtual {p0}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 98
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 99
    throw v0

    :catch_1
    iget-object p0, p0, Lcom/google/android/exoplayer2/metadata/icy/IcyDecoder;->iso88591Decoder:Ljava/nio/charset/CharsetDecoder;

    .line 97
    invoke-virtual {p0}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 98
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method protected decode(Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;Ljava/nio/ByteBuffer;)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 6

    .line 47
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/metadata/icy/IcyDecoder;->decodeToString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p0

    .line 48
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    new-array p1, p1, [B

    .line 49
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 p2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 52
    new-instance p0, Lcom/google/android/exoplayer2/metadata/Metadata;

    new-array p2, p2, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    new-instance v2, Lcom/google/android/exoplayer2/metadata/icy/IcyInfo;

    invoke-direct {v2, p1, v1, v1}, Lcom/google/android/exoplayer2/metadata/icy/IcyInfo;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    aput-object v2, p2, v0

    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    return-object p0

    :cond_0
    sget-object v2, Lcom/google/android/exoplayer2/metadata/icy/IcyDecoder;->METADATA_ELEMENT:Ljava/util/regex/Pattern;

    .line 58
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    move v3, v0

    move-object v2, v1

    .line 59
    :goto_0
    invoke-virtual {p0, v3}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 60
    invoke-virtual {p0, p2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    .line 61
    invoke-virtual {p0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_3

    .line 63
    invoke-static {v3}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    const-string v5, "streamurl"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "streamtitle"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v4

    goto :goto_1

    :cond_2
    move-object v2, v4

    .line 74
    :cond_3
    :goto_1
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    goto :goto_0

    .line 76
    :cond_4
    new-instance p0, Lcom/google/android/exoplayer2/metadata/Metadata;

    new-array p2, p2, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    new-instance v3, Lcom/google/android/exoplayer2/metadata/icy/IcyInfo;

    invoke-direct {v3, p1, v1, v2}, Lcom/google/android/exoplayer2/metadata/icy/IcyInfo;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    aput-object v3, p2, v0

    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    return-object p0
.end method
