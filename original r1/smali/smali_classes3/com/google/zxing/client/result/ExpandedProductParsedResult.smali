.class public final Lcom/google/zxing/client/result/ExpandedProductParsedResult;
.super Lcom/google/zxing/client/result/ParsedResult;
.source "ExpandedProductParsedResult.java"


# static fields
.field public static final KILOGRAM:Ljava/lang/String; = "KG"

.field public static final POUND:Ljava/lang/String; = "LB"


# instance fields
.field private final bestBeforeDate:Ljava/lang/String;

.field private final expirationDate:Ljava/lang/String;

.field private final lotNumber:Ljava/lang/String;

.field private final packagingDate:Ljava/lang/String;

.field private final price:Ljava/lang/String;

.field private final priceCurrency:Ljava/lang/String;

.field private final priceIncrement:Ljava/lang/String;

.field private final productID:Ljava/lang/String;

.field private final productionDate:Ljava/lang/String;

.field private final rawText:Ljava/lang/String;

.field private final sscc:Ljava/lang/String;

.field private final uncommonAIs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final weight:Ljava/lang/String;

.field private final weightIncrement:Ljava/lang/String;

.field private final weightType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 76
    sget-object v1, Lcom/google/zxing/client/result/ParsedResultType;->PRODUCT:Lcom/google/zxing/client/result/ParsedResultType;

    invoke-direct {p0, v1}, Lcom/google/zxing/client/result/ParsedResult;-><init>(Lcom/google/zxing/client/result/ParsedResultType;)V

    move-object v1, p1

    iput-object v1, v0, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->rawText:Ljava/lang/String;

    move-object v1, p2

    iput-object v1, v0, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->productID:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->sscc:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->lotNumber:Ljava/lang/String;

    move-object v1, p5

    iput-object v1, v0, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->productionDate:Ljava/lang/String;

    move-object v1, p6

    iput-object v1, v0, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->packagingDate:Ljava/lang/String;

    move-object v1, p7

    iput-object v1, v0, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->bestBeforeDate:Ljava/lang/String;

    move-object v1, p8

    iput-object v1, v0, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->expirationDate:Ljava/lang/String;

    move-object v1, p9

    iput-object v1, v0, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->weight:Ljava/lang/String;

    move-object v1, p10

    iput-object v1, v0, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->weightType:Ljava/lang/String;

    move-object v1, p11

    iput-object v1, v0, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->weightIncrement:Ljava/lang/String;

    move-object v1, p12

    iput-object v1, v0, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->price:Ljava/lang/String;

    move-object v1, p13

    iput-object v1, v0, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->priceIncrement:Ljava/lang/String;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->priceCurrency:Ljava/lang/String;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->uncommonAIs:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 96
    instance-of v0, p1, Lcom/google/zxing/client/result/ExpandedProductParsedResult;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 100
    :cond_0
    check-cast p1, Lcom/google/zxing/client/result/ExpandedProductParsedResult;

    iget-object v0, p0, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->productID:Ljava/lang/String;

    .line 102
    iget-object v2, p1, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->productID:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->sscc:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->sscc:Ljava/lang/String;

    .line 103
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->lotNumber:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->lotNumber:Ljava/lang/String;

    .line 104
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->productionDate:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->productionDate:Ljava/lang/String;

    .line 105
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->bestBeforeDate:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->bestBeforeDate:Ljava/lang/String;

    .line 106
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->expirationDate:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->expirationDate:Ljava/lang/String;

    .line 107
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->weight:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->weight:Ljava/lang/String;

    .line 108
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->weightType:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->weightType:Ljava/lang/String;

    .line 109
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->weightIncrement:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->weightIncrement:Ljava/lang/String;

    .line 110
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->price:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->price:Ljava/lang/String;

    .line 111
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->priceIncrement:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->priceIncrement:Ljava/lang/String;

    .line 112
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->priceCurrency:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->priceCurrency:Ljava/lang/String;

    .line 113
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->uncommonAIs:Ljava/util/Map;

    iget-object p1, p1, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->uncommonAIs:Ljava/util/Map;

    .line 114
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public getBestBeforeDate()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->bestBeforeDate:Ljava/lang/String;

    return-object p0
.end method

.method public getDisplayResult()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->rawText:Ljava/lang/String;

    .line 197
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getExpirationDate()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->expirationDate:Ljava/lang/String;

    return-object p0
.end method

.method public getLotNumber()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->lotNumber:Ljava/lang/String;

    return-object p0
.end method

.method public getPackagingDate()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->packagingDate:Ljava/lang/String;

    return-object p0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->price:Ljava/lang/String;

    return-object p0
.end method

.method public getPriceCurrency()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->priceCurrency:Ljava/lang/String;

    return-object p0
.end method

.method public getPriceIncrement()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->priceIncrement:Ljava/lang/String;

    return-object p0
.end method

.method public getProductID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->productID:Ljava/lang/String;

    return-object p0
.end method

.method public getProductionDate()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->productionDate:Ljava/lang/String;

    return-object p0
.end method

.method public getRawText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->rawText:Ljava/lang/String;

    return-object p0
.end method

.method public getSscc()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->sscc:Ljava/lang/String;

    return-object p0
.end method

.method public getUncommonAIs()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->uncommonAIs:Ljava/util/Map;

    return-object p0
.end method

.method public getWeight()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->weight:Ljava/lang/String;

    return-object p0
.end method

.method public getWeightIncrement()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->weightIncrement:Ljava/lang/String;

    return-object p0
.end method

.method public getWeightType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->weightType:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->productID:Ljava/lang/String;

    .line 119
    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->sscc:Ljava/lang/String;

    .line 120
    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->lotNumber:Ljava/lang/String;

    .line 121
    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->productionDate:Ljava/lang/String;

    .line 122
    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->bestBeforeDate:Ljava/lang/String;

    .line 123
    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->expirationDate:Ljava/lang/String;

    .line 124
    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->weight:Ljava/lang/String;

    .line 125
    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->weightType:Ljava/lang/String;

    .line 126
    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->weightIncrement:Ljava/lang/String;

    .line 127
    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->price:Ljava/lang/String;

    .line 128
    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->priceIncrement:Ljava/lang/String;

    .line 129
    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->priceCurrency:Ljava/lang/String;

    .line 130
    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object p0, p0, Lcom/google/zxing/client/result/ExpandedProductParsedResult;->uncommonAIs:Ljava/util/Map;

    .line 131
    invoke-static {p0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method
