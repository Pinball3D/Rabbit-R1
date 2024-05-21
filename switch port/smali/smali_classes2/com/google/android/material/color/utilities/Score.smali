.class public final Lcom/google/android/material/color/utilities/Score;
.super Ljava/lang/Object;
.source "Score.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/color/utilities/Score$ScoredComparator;,
        Lcom/google/android/material/color/utilities/Score$ScoredHCT;
    }
.end annotation


# static fields
.field private static final BLUE_500:I = -0xbd7a0c

.field private static final CUTOFF_CHROMA:D = 5.0

.field private static final CUTOFF_EXCITED_PROPORTION:D = 0.01

.field private static final MAX_COLOR_COUNT:I = 0x4

.field private static final TARGET_CHROMA:D = 48.0

.field private static final WEIGHT_CHROMA_ABOVE:D = 0.3

.field private static final WEIGHT_CHROMA_BELOW:D = 0.1

.field private static final WEIGHT_PROPORTION:D = 0.7


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static score(Ljava/util/Map;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const v0, -0xbd7a0c

    const/4 v1, 0x1

    const/4 v2, 0x4

    .line 53
    invoke-static {p0, v2, v0, v1}, Lcom/google/android/material/color/utilities/Score;->score(Ljava/util/Map;IIZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static score(Ljava/util/Map;I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const v0, -0xbd7a0c

    const/4 v1, 0x1

    .line 57
    invoke-static {p0, p1, v0, v1}, Lcom/google/android/material/color/utilities/Score;->score(Ljava/util/Map;IIZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static score(Ljava/util/Map;II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;II)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 62
    invoke-static {p0, p1, p2, v0}, Lcom/google/android/material/color/utilities/Score;->score(Ljava/util/Map;IIZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static score(Ljava/util/Map;IIZ)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;IIZ)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x168

    new-array v2, v1, [I

    .line 90
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v3, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 91
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Lcom/google/android/material/color/utilities/Hct;->fromInt(I)Lcom/google/android/material/color/utilities/Hct;

    move-result-object v6

    .line 92
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    invoke-virtual {v6}, Lcom/google/android/material/color/utilities/Hct;->getHue()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    .line 94
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 95
    aget v7, v2, v6

    add-int/2addr v7, v5

    aput v7, v2, v6

    int-to-double v5, v5

    add-double/2addr v3, v5

    goto :goto_0

    :cond_0
    new-array p0, v1, [D

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v1, :cond_2

    .line 102
    aget v6, v2, v5

    int-to-double v6, v6

    div-double/2addr v6, v3

    add-int/lit8 v8, v5, -0xe

    :goto_2
    add-int/lit8 v9, v5, 0x10

    if-ge v8, v9, :cond_1

    .line 104
    invoke-static {v8}, Lcom/google/android/material/color/utilities/MathUtils;->sanitizeDegreesInt(I)I

    move-result v9

    .line 105
    aget-wide v10, p0, v9

    add-double/2addr v10, v6

    aput-wide v10, p0, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 111
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 112
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/color/utilities/Hct;

    .line 113
    invoke-virtual {v2}, Lcom/google/android/material/color/utilities/Hct;->getHue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v3}, Lcom/google/android/material/color/utilities/MathUtils;->sanitizeDegreesInt(I)I

    move-result v3

    .line 114
    aget-wide v3, p0, v3

    if-eqz p3, :cond_4

    .line 115
    invoke-virtual {v2}, Lcom/google/android/material/color/utilities/Hct;->getChroma()D

    move-result-wide v5

    const-wide/high16 v7, 0x4014000000000000L    # 5.0

    cmpg-double v5, v5, v7

    if-ltz v5, :cond_3

    const-wide v5, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v5, v3, v5

    if-gtz v5, :cond_4

    goto :goto_3

    :cond_4
    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    mul-double/2addr v3, v5

    const-wide v5, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v3, v5

    .line 121
    invoke-virtual {v2}, Lcom/google/android/material/color/utilities/Hct;->getChroma()D

    move-result-wide v5

    const-wide/high16 v7, 0x4048000000000000L    # 48.0

    cmpg-double v5, v5, v7

    if-gez v5, :cond_5

    const-wide v5, 0x3fb999999999999aL    # 0.1

    goto :goto_4

    :cond_5
    const-wide v5, 0x3fd3333333333333L    # 0.3

    .line 122
    :goto_4
    invoke-virtual {v2}, Lcom/google/android/material/color/utilities/Hct;->getChroma()D

    move-result-wide v9

    sub-double/2addr v9, v7

    mul-double/2addr v9, v5

    add-double/2addr v3, v9

    .line 124
    new-instance v5, Lcom/google/android/material/color/utilities/Score$ScoredHCT;

    invoke-direct {v5, v2, v3, v4}, Lcom/google/android/material/color/utilities/Score$ScoredHCT;-><init>(Lcom/google/android/material/color/utilities/Hct;D)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 127
    :cond_6
    new-instance p0, Lcom/google/android/material/color/utilities/Score$ScoredComparator;

    invoke-direct {p0}, Lcom/google/android/material/color/utilities/Score$ScoredComparator;-><init>()V

    invoke-static {v1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 133
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/16 p3, 0x5a

    :goto_5
    const/16 v0, 0xf

    if-lt p3, v0, :cond_c

    .line 135
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 136
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/color/utilities/Score$ScoredHCT;

    .line 137
    iget-object v2, v2, Lcom/google/android/material/color/utilities/Score$ScoredHCT;->hct:Lcom/google/android/material/color/utilities/Hct;

    .line 139
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/color/utilities/Hct;

    .line 140
    invoke-virtual {v2}, Lcom/google/android/material/color/utilities/Hct;->getHue()D

    move-result-wide v5

    invoke-virtual {v4}, Lcom/google/android/material/color/utilities/Hct;->getHue()D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lcom/google/android/material/color/utilities/MathUtils;->differenceDegrees(DD)D

    move-result-wide v4

    int-to-double v6, p3

    cmpg-double v4, v4, v6

    if-gez v4, :cond_8

    goto :goto_6

    .line 146
    :cond_9
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    :goto_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, p1, :cond_7

    .line 152
    :cond_a
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, p1, :cond_b

    goto :goto_7

    :cond_b
    add-int/lit8 p3, p3, -0x1

    goto :goto_5

    .line 156
    :cond_c
    :goto_7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 157
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_d

    .line 158
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1

    .line 161
    :cond_d
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/color/utilities/Hct;

    .line 162
    invoke-virtual {p2}, Lcom/google/android/material/color/utilities/Hct;->toInt()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_e
    return-object p1
.end method
