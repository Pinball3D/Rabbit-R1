.class public final Lcom/google/android/exoplayer2/metadata/emsg/EventMessageDecoder;
.super Lcom/google/android/exoplayer2/metadata/SimpleMetadataDecoder;
.source "EventMessageDecoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/google/android/exoplayer2/metadata/SimpleMetadataDecoder;-><init>()V

    return-void
.end method


# virtual methods
.method protected decode(Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;Ljava/nio/ByteBuffer;)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 3

    .line 32
    new-instance p1, Lcom/google/android/exoplayer2/metadata/Metadata;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    new-instance v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result p2

    invoke-direct {v1, v2, p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([BI)V

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/metadata/emsg/EventMessageDecoder;->decode(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;

    move-result-object p0

    const/4 p2, 0x0

    aput-object p0, v0, p2

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    return-object p1
.end method

.method public decode(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;
    .locals 8

    .line 36
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readNullTerminatedString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLong()J

    move-result-wide v3

    .line 39
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLong()J

    move-result-wide v5

    .line 41
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result p1

    invoke-static {p0, v0, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    .line 42
    new-instance p0, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;-><init>(Ljava/lang/String;Ljava/lang/String;JJ[B)V

    return-object p0
.end method
