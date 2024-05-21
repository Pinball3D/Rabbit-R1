.class final Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;
.super Ljava/lang/Object;
.source "Cea708Decoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/text/cea/Cea708Decoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DtvCcPacket"
.end annotation


# instance fields
.field currentIndex:I

.field public final packetData:[B

.field public final packetSize:I

.field public final sequenceNumber:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 838
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;->sequenceNumber:I

    iput p2, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;->packetSize:I

    mul-int/lit8 p2, p2, 0x2

    add-int/lit8 p2, p2, -0x1

    .line 841
    new-array p1, p2, [B

    iput-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;->packetData:[B

    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    return-void
.end method
