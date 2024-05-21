.class public final Lcom/google/android/material/color/utilities/QuantizerMap;
.super Ljava/lang/Object;
.source "QuantizerMap.java"

# interfaces
.implements Lcom/google/android/material/color/utilities/Quantizer;


# instance fields
.field colorToCount:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getColorToCount()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/color/utilities/QuantizerMap;->colorToCount:Ljava/util/Map;

    return-object p0
.end method

.method public quantize([II)Lcom/google/android/material/color/utilities/QuantizerResult;
    .locals 5

    .line 37
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 38
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p1, v1

    .line 39
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    const/4 v4, 0x1

    if-nez v3, :cond_0

    goto :goto_1

    .line 40
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v4, v3

    .line 41
    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iput-object p2, p0, Lcom/google/android/material/color/utilities/QuantizerMap;->colorToCount:Ljava/util/Map;

    .line 44
    new-instance p0, Lcom/google/android/material/color/utilities/QuantizerResult;

    invoke-direct {p0, p2}, Lcom/google/android/material/color/utilities/QuantizerResult;-><init>(Ljava/util/Map;)V

    return-object p0
.end method
