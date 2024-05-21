.class public final Lcom/google/android/exoplayer2/text/dvb/DvbDecoder;
.super Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;
.source "DvbDecoder.java"


# instance fields
.field private final parser:Lcom/google/android/exoplayer2/text/dvb/DvbParser;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    const-string v0, "DvbDecoder"

    .line 34
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;-><init>(Ljava/lang/String;)V

    .line 35
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    .line 36
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result p1

    .line 37
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    .line 38
    new-instance v1, Lcom/google/android/exoplayer2/text/dvb/DvbParser;

    invoke-direct {v1, p1, v0}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;-><init>(II)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/text/dvb/DvbDecoder;->parser:Lcom/google/android/exoplayer2/text/dvb/DvbParser;

    return-void
.end method


# virtual methods
.method protected decode([BIZ)Lcom/google/android/exoplayer2/text/Subtitle;
    .locals 0

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/google/android/exoplayer2/text/dvb/DvbDecoder;->parser:Lcom/google/android/exoplayer2/text/dvb/DvbParser;

    .line 44
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->reset()V

    .line 46
    :cond_0
    new-instance p3, Lcom/google/android/exoplayer2/text/dvb/DvbSubtitle;

    iget-object p0, p0, Lcom/google/android/exoplayer2/text/dvb/DvbDecoder;->parser:Lcom/google/android/exoplayer2/text/dvb/DvbParser;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->decode([BI)Ljava/util/List;

    move-result-object p0

    invoke-direct {p3, p0}, Lcom/google/android/exoplayer2/text/dvb/DvbSubtitle;-><init>(Ljava/util/List;)V

    return-object p3
.end method
