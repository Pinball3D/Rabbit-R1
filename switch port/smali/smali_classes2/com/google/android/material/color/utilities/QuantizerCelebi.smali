.class public final Lcom/google/android/material/color/utilities/QuantizerCelebi;
.super Ljava/lang/Object;
.source "QuantizerCelebi.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static quantize([II)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([II)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 52
    new-instance v0, Lcom/google/android/material/color/utilities/QuantizerWu;

    invoke-direct {v0}, Lcom/google/android/material/color/utilities/QuantizerWu;-><init>()V

    .line 53
    invoke-virtual {v0, p0, p1}, Lcom/google/android/material/color/utilities/QuantizerWu;->quantize([II)Lcom/google/android/material/color/utilities/QuantizerResult;

    move-result-object v0

    .line 55
    iget-object v0, v0, Lcom/google/android/material/color/utilities/QuantizerResult;->colorToCount:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 57
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 58
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    add-int/lit8 v4, v2, 0x1

    .line 59
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    move v2, v4

    goto :goto_0

    .line 62
    :cond_0
    invoke-static {p0, v1, p1}, Lcom/google/android/material/color/utilities/QuantizerWsmeans;->quantize([I[II)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
