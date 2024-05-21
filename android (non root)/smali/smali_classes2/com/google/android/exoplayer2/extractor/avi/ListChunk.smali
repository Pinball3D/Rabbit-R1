.class final Lcom/google/android/exoplayer2/extractor/avi/ListChunk;
.super Ljava/lang/Object;
.source "ListChunk.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/avi/AviChunk;


# instance fields
.field public final children:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplayer2/extractor/avi/AviChunk;",
            ">;"
        }
    .end annotation
.end field

.field private final type:I


# direct methods
.method private constructor <init>(ILcom/google/common/collect/ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplayer2/extractor/avi/AviChunk;",
            ">;)V"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/avi/ListChunk;->type:I

    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/avi/ListChunk;->children:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method private static createBox(IILcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/avi/AviChunk;
    .locals 0

    sparse-switch p0, :sswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 89
    :sswitch_0
    invoke-static {p2}, Lcom/google/android/exoplayer2/extractor/avi/StreamNameChunk;->parseFrom(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/avi/StreamNameChunk;

    move-result-object p0

    return-object p0

    .line 85
    :sswitch_1
    invoke-static {p2}, Lcom/google/android/exoplayer2/extractor/avi/AviStreamHeaderChunk;->parseFrom(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/avi/AviStreamHeaderChunk;

    move-result-object p0

    return-object p0

    .line 83
    :sswitch_2
    invoke-static {p2}, Lcom/google/android/exoplayer2/extractor/avi/AviMainHeaderChunk;->parseFrom(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/avi/AviMainHeaderChunk;

    move-result-object p0

    return-object p0

    .line 87
    :sswitch_3
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/extractor/avi/StreamFormatChunk;->parseFrom(ILcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/avi/AviChunk;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x66727473 -> :sswitch_3
        0x68697661 -> :sswitch_2
        0x68727473 -> :sswitch_1
        0x6e727473 -> :sswitch_0
    .end sparse-switch
.end method

.method public static parseFrom(ILcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/avi/ListChunk;
    .locals 7

    .line 27
    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 28
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v1

    const/4 v2, -0x2

    .line 30
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    const/16 v4, 0x8

    if-le v3, v4, :cond_3

    .line 31
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v3

    .line 32
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v4

    .line 33
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v5

    add-int/2addr v5, v4

    .line 34
    invoke-virtual {p1, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    const v4, 0x5453494c

    if-ne v3, v4, :cond_0

    .line 37
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianInt()I

    move-result v3

    .line 38
    invoke-static {v3, p1}, Lcom/google/android/exoplayer2/extractor/avi/ListChunk;->parseFrom(ILcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/avi/ListChunk;

    move-result-object v3

    goto :goto_1

    .line 40
    :cond_0
    invoke-static {v3, v2, p1}, Lcom/google/android/exoplayer2/extractor/avi/ListChunk;->createBox(IILcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/avi/AviChunk;

    move-result-object v3

    :goto_1
    if-eqz v3, :cond_2

    .line 43
    invoke-interface {v3}, Lcom/google/android/exoplayer2/extractor/avi/AviChunk;->getType()I

    move-result v4

    const v6, 0x68727473

    if-ne v4, v6, :cond_1

    .line 44
    move-object v2, v3

    check-cast v2, Lcom/google/android/exoplayer2/extractor/avi/AviStreamHeaderChunk;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/extractor/avi/AviStreamHeaderChunk;->getTrackType()I

    move-result v2

    .line 46
    :cond_1
    invoke-virtual {v0, v3}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 48
    :cond_2
    invoke-virtual {p1, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 49
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    goto :goto_0

    .line 51
    :cond_3
    new-instance p1, Lcom/google/android/exoplayer2/extractor/avi/ListChunk;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/google/android/exoplayer2/extractor/avi/ListChunk;-><init>(ILcom/google/common/collect/ImmutableList;)V

    return-object p1
.end method


# virtual methods
.method public getChild(Ljava/lang/Class;)Lcom/google/android/exoplayer2/extractor/avi/AviChunk;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/exoplayer2/extractor/avi/AviChunk;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/avi/ListChunk;->children:Lcom/google/common/collect/ImmutableList;

    .line 70
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/extractor/avi/AviChunk;

    .line 71
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/extractor/avi/ListChunk;->type:I

    return p0
.end method
