.class public final Lcom/google/zxing/oned/MultiFormatOneDReader;
.super Lcom/google/zxing/oned/OneDReader;
.source "MultiFormatOneDReader.java"


# static fields
.field private static final EMPTY_ONED_ARRAY:[Lcom/google/zxing/oned/OneDReader;


# instance fields
.field private final readers:[Lcom/google/zxing/oned/OneDReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/zxing/oned/OneDReader;

    sput-object v0, Lcom/google/zxing/oned/MultiFormatOneDReader;->EMPTY_ONED_ARRAY:[Lcom/google/zxing/oned/OneDReader;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 45
    :cond_0
    sget-object v0, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    .line 46
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    :goto_0
    if-eqz p1, :cond_1

    .line 47
    sget-object v1, Lcom/google/zxing/DecodeHintType;->ASSUME_CODE_39_CHECK_DIGIT:Lcom/google/zxing/DecodeHintType;

    .line 48
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 49
    :goto_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_a

    .line 51
    sget-object v3, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v0, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    .line 52
    invoke-interface {v0, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/google/zxing/BarcodeFormat;->EAN_8:Lcom/google/zxing/BarcodeFormat;

    .line 53
    invoke-interface {v0, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/google/zxing/BarcodeFormat;->UPC_E:Lcom/google/zxing/BarcodeFormat;

    .line 54
    invoke-interface {v0, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 55
    :cond_2
    new-instance v3, Lcom/google/zxing/oned/MultiFormatUPCEANReader;

    invoke-direct {v3, p1}, Lcom/google/zxing/oned/MultiFormatUPCEANReader;-><init>(Ljava/util/Map;)V

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 57
    :cond_3
    sget-object v3, Lcom/google/zxing/BarcodeFormat;->CODE_39:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v0, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 58
    new-instance v3, Lcom/google/zxing/oned/Code39Reader;

    invoke-direct {v3, v1}, Lcom/google/zxing/oned/Code39Reader;-><init>(Z)V

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 60
    :cond_4
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->CODE_93:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 61
    new-instance v1, Lcom/google/zxing/oned/Code93Reader;

    invoke-direct {v1}, Lcom/google/zxing/oned/Code93Reader;-><init>()V

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 63
    :cond_5
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 64
    new-instance v1, Lcom/google/zxing/oned/Code128Reader;

    invoke-direct {v1}, Lcom/google/zxing/oned/Code128Reader;-><init>()V

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_6
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->ITF:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 67
    new-instance v1, Lcom/google/zxing/oned/ITFReader;

    invoke-direct {v1}, Lcom/google/zxing/oned/ITFReader;-><init>()V

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 69
    :cond_7
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->CODABAR:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 70
    new-instance v1, Lcom/google/zxing/oned/CodaBarReader;

    invoke-direct {v1}, Lcom/google/zxing/oned/CodaBarReader;-><init>()V

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_8
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->RSS_14:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 73
    new-instance v1, Lcom/google/zxing/oned/rss/RSS14Reader;

    invoke-direct {v1}, Lcom/google/zxing/oned/rss/RSS14Reader;-><init>()V

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 75
    :cond_9
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->RSS_EXPANDED:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 76
    new-instance v0, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;

    invoke-direct {v0}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;-><init>()V

    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_a
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 80
    new-instance v0, Lcom/google/zxing/oned/MultiFormatUPCEANReader;

    invoke-direct {v0, p1}, Lcom/google/zxing/oned/MultiFormatUPCEANReader;-><init>(Ljava/util/Map;)V

    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 81
    new-instance p1, Lcom/google/zxing/oned/Code39Reader;

    invoke-direct {p1}, Lcom/google/zxing/oned/Code39Reader;-><init>()V

    invoke-interface {v2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 82
    new-instance p1, Lcom/google/zxing/oned/CodaBarReader;

    invoke-direct {p1}, Lcom/google/zxing/oned/CodaBarReader;-><init>()V

    invoke-interface {v2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 83
    new-instance p1, Lcom/google/zxing/oned/Code93Reader;

    invoke-direct {p1}, Lcom/google/zxing/oned/Code93Reader;-><init>()V

    invoke-interface {v2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 84
    new-instance p1, Lcom/google/zxing/oned/Code128Reader;

    invoke-direct {p1}, Lcom/google/zxing/oned/Code128Reader;-><init>()V

    invoke-interface {v2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 85
    new-instance p1, Lcom/google/zxing/oned/ITFReader;

    invoke-direct {p1}, Lcom/google/zxing/oned/ITFReader;-><init>()V

    invoke-interface {v2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 86
    new-instance p1, Lcom/google/zxing/oned/rss/RSS14Reader;

    invoke-direct {p1}, Lcom/google/zxing/oned/rss/RSS14Reader;-><init>()V

    invoke-interface {v2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 87
    new-instance p1, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;

    invoke-direct {p1}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;-><init>()V

    invoke-interface {v2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_b
    sget-object p1, Lcom/google/zxing/oned/MultiFormatOneDReader;->EMPTY_ONED_ARRAY:[Lcom/google/zxing/oned/OneDReader;

    .line 89
    invoke-interface {v2, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/zxing/oned/OneDReader;

    iput-object p1, p0, Lcom/google/zxing/oned/MultiFormatOneDReader;->readers:[Lcom/google/zxing/oned/OneDReader;

    return-void
.end method


# virtual methods
.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/zxing/oned/MultiFormatOneDReader;->readers:[Lcom/google/zxing/oned/OneDReader;

    .line 96
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 98
    :try_start_0
    invoke-virtual {v2, p1, p2, p3}, Lcom/google/zxing/oned/OneDReader;->decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 104
    :cond_0
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0
.end method

.method public reset()V
    .locals 3

    iget-object p0, p0, Lcom/google/zxing/oned/MultiFormatOneDReader;->readers:[Lcom/google/zxing/oned/OneDReader;

    .line 109
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 110
    invoke-interface {v2}, Lcom/google/zxing/Reader;->reset()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
