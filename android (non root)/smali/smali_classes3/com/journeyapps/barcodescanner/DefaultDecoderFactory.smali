.class public Lcom/journeyapps/barcodescanner/DefaultDecoderFactory;
.super Ljava/lang/Object;
.source "DefaultDecoderFactory.java"

# interfaces
.implements Lcom/journeyapps/barcodescanner/DecoderFactory;


# instance fields
.field private characterSet:Ljava/lang/String;

.field private decodeFormats:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation
.end field

.field private hints:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;"
        }
    .end annotation
.end field

.field private scanType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/DefaultDecoderFactory;->decodeFormats:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;Ljava/util/Map;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/DefaultDecoderFactory;->decodeFormats:Ljava/util/Collection;

    iput-object p2, p0, Lcom/journeyapps/barcodescanner/DefaultDecoderFactory;->hints:Ljava/util/Map;

    iput-object p3, p0, Lcom/journeyapps/barcodescanner/DefaultDecoderFactory;->characterSet:Ljava/lang/String;

    iput p4, p0, Lcom/journeyapps/barcodescanner/DefaultDecoderFactory;->scanType:I

    return-void
.end method


# virtual methods
.method public createDecoder(Ljava/util/Map;)Lcom/journeyapps/barcodescanner/Decoder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/journeyapps/barcodescanner/Decoder;"
        }
    .end annotation

    .line 38
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/google/zxing/DecodeHintType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 40
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object p1, p0, Lcom/journeyapps/barcodescanner/DefaultDecoderFactory;->hints:Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 43
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/DefaultDecoderFactory;->decodeFormats:Ljava/util/Collection;

    if-eqz p1, :cond_1

    .line 47
    sget-object p1, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/DefaultDecoderFactory;->decodeFormats:Ljava/util/Collection;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/DefaultDecoderFactory;->characterSet:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 51
    sget-object p1, Lcom/google/zxing/DecodeHintType;->CHARACTER_SET:Lcom/google/zxing/DecodeHintType;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/DefaultDecoderFactory;->characterSet:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :cond_2
    new-instance p1, Lcom/google/zxing/MultiFormatReader;

    invoke-direct {p1}, Lcom/google/zxing/MultiFormatReader;-><init>()V

    .line 55
    invoke-virtual {p1, v0}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Map;)V

    iget p0, p0, Lcom/journeyapps/barcodescanner/DefaultDecoderFactory;->scanType:I

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    .line 65
    new-instance p0, Lcom/journeyapps/barcodescanner/Decoder;

    invoke-direct {p0, p1}, Lcom/journeyapps/barcodescanner/Decoder;-><init>(Lcom/google/zxing/Reader;)V

    return-object p0

    .line 63
    :cond_3
    new-instance p0, Lcom/journeyapps/barcodescanner/MixedDecoder;

    invoke-direct {p0, p1}, Lcom/journeyapps/barcodescanner/MixedDecoder;-><init>(Lcom/google/zxing/Reader;)V

    return-object p0

    .line 61
    :cond_4
    new-instance p0, Lcom/journeyapps/barcodescanner/InvertedDecoder;

    invoke-direct {p0, p1}, Lcom/journeyapps/barcodescanner/InvertedDecoder;-><init>(Lcom/google/zxing/Reader;)V

    return-object p0

    .line 59
    :cond_5
    new-instance p0, Lcom/journeyapps/barcodescanner/Decoder;

    invoke-direct {p0, p1}, Lcom/journeyapps/barcodescanner/Decoder;-><init>(Lcom/google/zxing/Reader;)V

    return-object p0
.end method
