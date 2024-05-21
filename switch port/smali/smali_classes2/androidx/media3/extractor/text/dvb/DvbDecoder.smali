.class public final Landroidx/media3/extractor/text/dvb/DvbDecoder;
.super Landroidx/media3/extractor/text/SimpleSubtitleDecoder;
.source "DvbDecoder.java"


# instance fields
.field private final parser:Landroidx/media3/extractor/text/dvb/DvbParser;


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

    .line 36
    invoke-direct {p0, v0}, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;-><init>(Ljava/lang/String;)V

    .line 37
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-direct {v0, p1}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    .line 38
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result p1

    .line 39
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    .line 40
    new-instance v1, Landroidx/media3/extractor/text/dvb/DvbParser;

    invoke-direct {v1, p1, v0}, Landroidx/media3/extractor/text/dvb/DvbParser;-><init>(II)V

    iput-object v1, p0, Landroidx/media3/extractor/text/dvb/DvbDecoder;->parser:Landroidx/media3/extractor/text/dvb/DvbParser;

    return-void
.end method


# virtual methods
.method protected decode([BIZ)Landroidx/media3/extractor/text/Subtitle;
    .locals 0

    if-eqz p3, :cond_0

    iget-object p3, p0, Landroidx/media3/extractor/text/dvb/DvbDecoder;->parser:Landroidx/media3/extractor/text/dvb/DvbParser;

    .line 46
    invoke-virtual {p3}, Landroidx/media3/extractor/text/dvb/DvbParser;->reset()V

    .line 48
    :cond_0
    new-instance p3, Landroidx/media3/extractor/text/dvb/DvbSubtitle;

    iget-object p0, p0, Landroidx/media3/extractor/text/dvb/DvbDecoder;->parser:Landroidx/media3/extractor/text/dvb/DvbParser;

    invoke-virtual {p0, p1, p2}, Landroidx/media3/extractor/text/dvb/DvbParser;->decode([BI)Ljava/util/List;

    move-result-object p0

    invoke-direct {p3, p0}, Landroidx/media3/extractor/text/dvb/DvbSubtitle;-><init>(Ljava/util/List;)V

    return-object p3
.end method
