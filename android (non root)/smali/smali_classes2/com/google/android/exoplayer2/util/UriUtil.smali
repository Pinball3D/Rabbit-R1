.class public final Lcom/google/android/exoplayer2/util/UriUtil;
.super Ljava/lang/Object;
.source "UriUtil.java"


# static fields
.field private static final FRAGMENT:I = 0x3

.field private static final INDEX_COUNT:I = 0x4

.field private static final PATH:I = 0x1

.field private static final QUERY:I = 0x2

.field private static final SCHEME_COLON:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getUriIndices(Ljava/lang/String;)[I
    .locals 9

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 230
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eqz v1, :cond_0

    aput v3, v0, v2

    return-object v0

    .line 237
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v4, 0x23

    .line 238
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ne v4, v3, :cond_1

    goto :goto_0

    :cond_1
    move v1, v4

    :goto_0
    const/16 v4, 0x3f

    .line 242
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-eq v4, v3, :cond_2

    if-le v4, v1, :cond_3

    :cond_2
    move v4, v1

    :cond_3
    const/16 v5, 0x2f

    .line 249
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-eq v6, v3, :cond_4

    if-le v6, v4, :cond_5

    :cond_4
    move v6, v4

    :cond_5
    const/16 v7, 0x3a

    .line 253
    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-le v7, v6, :cond_6

    move v7, v3

    :cond_6
    add-int/lit8 v6, v7, 0x2

    if-ge v6, v4, :cond_8

    add-int/lit8 v8, v7, 0x1

    .line 263
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v5, :cond_8

    .line 264
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v5, :cond_8

    add-int/lit8 v6, v7, 0x3

    .line 267
    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->indexOf(II)I

    move-result p0

    if-eq p0, v3, :cond_7

    if-le p0, v4, :cond_9

    :cond_7
    move p0, v4

    goto :goto_1

    :cond_8
    add-int/lit8 p0, v7, 0x1

    :cond_9
    :goto_1
    aput v7, v0, v2

    const/4 v2, 0x1

    aput p0, v0, v2

    const/4 p0, 0x2

    aput v4, v0, p0

    const/4 p0, 0x3

    aput v1, v0, p0

    return-object v0
.end method

.method public static isAbsolute(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 145
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/UriUtil;->getUriIndices(Ljava/lang/String;)[I

    move-result-object p0

    aget p0, p0, v0

    const/4 v1, -0x1

    if-eq p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static removeDotSegments(Ljava/lang/StringBuilder;II)Ljava/lang/String;
    .locals 7

    if-lt p1, p2, :cond_0

    .line 178
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 180
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_1

    add-int/lit8 p1, p1, 0x1

    :cond_1
    move v0, p1

    move v2, v0

    :goto_0
    if-gt v0, p2, :cond_7

    if-ne v0, p2, :cond_2

    move v3, v0

    goto :goto_1

    .line 191
    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-ne v3, v1, :cond_6

    add-int/lit8 v3, v0, 0x1

    :goto_1
    add-int/lit8 v4, v2, 0x1

    const/16 v5, 0x2e

    if-ne v0, v4, :cond_3

    .line 199
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    if-ne v6, v5, :cond_3

    .line 201
    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    sub-int/2addr v3, v2

    sub-int/2addr p2, v3

    goto :goto_4

    :cond_3
    add-int/lit8 v6, v2, 0x2

    if-ne v0, v6, :cond_5

    .line 205
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    if-ne v6, v5, :cond_5

    .line 206
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_5

    const-string v0, "/"

    add-int/lit8 v2, v2, -0x2

    .line 208
    invoke-virtual {p0, v0, v2}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-le v0, p1, :cond_4

    move v2, v0

    goto :goto_2

    :cond_4
    move v2, p1

    .line 210
    :goto_2
    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    sub-int/2addr v3, v2

    sub-int/2addr p2, v3

    goto :goto_3

    :cond_5
    add-int/lit8 v0, v0, 0x1

    :goto_3
    move v2, v0

    :goto_4
    move v0, v2

    goto :goto_0

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 219
    :cond_7
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static removeQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 5

    .line 156
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 157
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    .line 158
    invoke-virtual {p0}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 159
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 160
    invoke-virtual {p0, v2}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 161
    invoke-virtual {v0, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 165
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    if-nez p0, :cond_0

    move-object p0, v1

    :cond_0
    if-nez p1, :cond_1

    move-object p1, v1

    .line 88
    :cond_1
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/UriUtil;->getUriIndices(Ljava/lang/String;)[I

    move-result-object v1

    const/4 v2, 0x0

    .line 89
    aget v3, v1, v2

    const/4 v4, -0x1

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v3, v4, :cond_2

    .line 91
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    aget p0, v1, v6

    aget p1, v1, v5

    invoke-static {v0, p0, p1}, Lcom/google/android/exoplayer2/util/UriUtil;->removeDotSegments(Ljava/lang/StringBuilder;II)Ljava/lang/String;

    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 96
    :cond_2
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/UriUtil;->getUriIndices(Ljava/lang/String;)[I

    move-result-object v3

    const/4 v7, 0x3

    .line 97
    aget v8, v1, v7

    if-nez v8, :cond_3

    .line 100
    aget v1, v3, v7

    invoke-virtual {v0, p0, v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 103
    :cond_3
    aget v7, v1, v5

    if-nez v7, :cond_4

    .line 106
    aget v1, v3, v5

    invoke-virtual {v0, p0, v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 109
    :cond_4
    aget v7, v1, v6

    if-eqz v7, :cond_5

    .line 111
    aget v3, v3, v2

    add-int/2addr v3, v6

    .line 112
    invoke-virtual {v0, p0, v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    aget p0, v1, v6

    add-int/2addr p0, v3

    aget p1, v1, v5

    add-int/2addr v3, p1

    invoke-static {v0, p0, v3}, Lcom/google/android/exoplayer2/util/UriUtil;->removeDotSegments(Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 116
    :cond_5
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2f

    if-ne v7, v8, :cond_6

    .line 119
    aget v4, v3, v6

    invoke-virtual {v0, p0, v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    aget p0, v3, v6

    aget p1, v1, v5

    add-int/2addr p1, p0

    invoke-static {v0, p0, p1}, Lcom/google/android/exoplayer2/util/UriUtil;->removeDotSegments(Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 125
    :cond_6
    aget v7, v3, v2

    add-int/2addr v7, v5

    aget v9, v3, v6

    if-ge v7, v9, :cond_7

    aget v7, v3, v5

    if-ne v9, v7, :cond_7

    .line 129
    invoke-virtual {v0, p0, v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    aget p0, v3, v6

    aget p1, v1, v5

    add-int/2addr p1, p0

    add-int/2addr p1, v6

    invoke-static {v0, p0, p1}, Lcom/google/android/exoplayer2/util/UriUtil;->removeDotSegments(Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 136
    :cond_7
    aget v7, v3, v5

    sub-int/2addr v7, v6

    invoke-virtual {p0, v8, v7}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v7

    if-ne v7, v4, :cond_8

    .line 137
    aget v4, v3, v6

    goto :goto_0

    :cond_8
    add-int/lit8 v4, v7, 0x1

    .line 138
    :goto_0
    invoke-virtual {v0, p0, v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    aget p0, v3, v6

    aget p1, v1, v5

    add-int/2addr v4, p1

    invoke-static {v0, p0, v4}, Lcom/google/android/exoplayer2/util/UriUtil;->removeDotSegments(Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 0

    .line 70
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/UriUtil;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method
