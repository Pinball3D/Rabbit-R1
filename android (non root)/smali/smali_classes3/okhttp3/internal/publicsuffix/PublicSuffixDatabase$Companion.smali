.class public final Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;
.super Ljava/lang/Object;
.source "PublicSuffixDatabase.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000c\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\r\u001a\u00020\u000cJ)\u0010\u000e\u001a\u0004\u0018\u00010\u0007*\u00020\n2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\n0\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0002\u00a2\u0006\u0002\u0010\u0013R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;",
        "",
        "()V",
        "EXCEPTION_MARKER",
        "",
        "PREVAILING_RULE",
        "",
        "",
        "PUBLIC_SUFFIX_RESOURCE",
        "WILDCARD_LABEL",
        "",
        "instance",
        "Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;",
        "get",
        "binarySearch",
        "labels",
        "",
        "labelIndex",
        "",
        "([B[[BI)Ljava/lang/String;",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 239
    invoke-direct {p0}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$binarySearch(Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;[B[[BI)Ljava/lang/String;
    .locals 0

    .line 239
    invoke-direct {p0, p1, p2, p3}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase$Companion;->binarySearch([B[[BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final binarySearch([B[[BI)Ljava/lang/String;
    .locals 18

    move-object/from16 v0, p1

    .line 258
    array-length v1, v0

    const/4 v2, 0x0

    .line 259
    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_c

    add-int v5, v4, v1

    .line 261
    div-int/lit8 v5, v5, 0x2

    :goto_1
    const/16 v6, 0xa

    const/4 v7, -0x1

    if-le v5, v7, :cond_0

    .line 264
    aget-byte v8, v0, v5

    int-to-byte v9, v6

    if-eq v8, v9, :cond_0

    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v8, v5, 0x1

    const/4 v9, 0x1

    move v10, v9

    :goto_2
    add-int v11, v8, v10

    .line 271
    aget-byte v12, v0, v11

    int-to-byte v13, v6

    if-eq v12, v13, :cond_1

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_1
    sub-int v6, v11, v8

    move/from16 v12, p3

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_3
    const/16 v15, 0xff

    if-eqz v10, :cond_2

    const/16 v10, 0x2e

    const/4 v2, 0x0

    goto :goto_4

    .line 290
    :cond_2
    aget-object v16, p2, v12

    aget-byte v2, v16, v13

    invoke-static {v2, v15}, Lokhttp3/internal/Util;->and(BI)I

    move-result v2

    move/from16 v17, v10

    move v10, v2

    move/from16 v2, v17

    :goto_4
    add-int v16, v8, v14

    .line 293
    aget-byte v3, v0, v16

    invoke-static {v3, v15}, Lokhttp3/internal/Util;->and(BI)I

    move-result v3

    sub-int/2addr v10, v3

    if-eqz v10, :cond_3

    goto :goto_5

    :cond_3
    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v13, v13, 0x1

    if-ne v14, v6, :cond_4

    goto :goto_5

    .line 302
    :cond_4
    aget-object v3, p2, v12

    array-length v3, v3

    if-ne v3, v13, :cond_b

    .line 305
    move-object/from16 v2, p2

    check-cast v2, [Ljava/lang/Object;

    array-length v2, v2

    sub-int/2addr v2, v9

    if-ne v12, v2, :cond_a

    :goto_5
    if-gez v10, :cond_5

    :goto_6
    move v1, v5

    goto :goto_9

    :cond_5
    if-lez v10, :cond_6

    :goto_7
    add-int/lit8 v4, v11, 0x1

    goto :goto_9

    :cond_6
    sub-int v2, v6, v14

    .line 322
    aget-object v3, p2, v12

    array-length v3, v3

    sub-int/2addr v3, v13

    add-int/lit8 v12, v12, 0x1

    .line 323
    move-object/from16 v7, p2

    check-cast v7, [Ljava/lang/Object;

    array-length v7, v7

    :goto_8
    if-ge v12, v7, :cond_7

    .line 324
    aget-object v9, p2, v12

    array-length v9, v9

    add-int/2addr v3, v9

    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    :cond_7
    if-ge v3, v2, :cond_8

    goto :goto_6

    :cond_8
    if-le v3, v2, :cond_9

    goto :goto_7

    :goto_9
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 333
    :cond_9
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v2, "UTF_8"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0, v8, v6, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    goto :goto_b

    :cond_a
    add-int/lit8 v12, v12, 0x1

    move v13, v7

    move v10, v9

    goto :goto_a

    :cond_b
    move v10, v2

    :goto_a
    const/4 v2, 0x0

    goto :goto_3

    :cond_c
    const/4 v2, 0x0

    :goto_b
    return-object v2
.end method


# virtual methods
.method public final get()Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;
    .locals 0

    .line 250
    invoke-static {}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->access$getInstance$cp()Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    move-result-object p0

    return-object p0
.end method
