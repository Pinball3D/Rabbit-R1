.class final Lcom/google/zxing/oned/rss/expanded/decoders/AnyAIDecoder;
.super Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;
.source "AnyAIDecoder.java"


# static fields
.field private static final HEADER_SIZE:I = 0x5


# direct methods
.method constructor <init>(Lcom/google/zxing/common/BitArray;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;-><init>(Lcom/google/zxing/common/BitArray;)V

    return-void
.end method


# virtual methods
.method public parseInformation()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/decoders/AnyAIDecoder;->getGeneralDecoder()Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;

    move-result-object p0

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->decodeAllCodes(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
