.class public final Lokhttp3/CacheControl$Companion;
.super Ljava/lang/Object;
.source "CacheControl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/CacheControl;
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
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0008H\u0007J\u001e\u0010\t\u001a\u00020\n*\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\r\u001a\u00020\nH\u0002R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lokhttp3/CacheControl$Companion;",
        "",
        "()V",
        "FORCE_CACHE",
        "Lokhttp3/CacheControl;",
        "FORCE_NETWORK",
        "parse",
        "headers",
        "Lokhttp3/Headers;",
        "indexOfElement",
        "",
        "",
        "characters",
        "startIndex",
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

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 258
    invoke-direct {p0}, Lokhttp3/CacheControl$Companion;-><init>()V

    return-void
.end method

.method private final indexOfElement(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 5

    .line 407
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    :goto_0
    if-ge p3, p0, :cond_1

    .line 408
    move-object v0, p2

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v2, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p3

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 412
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    return p0
.end method

.method static synthetic indexOfElement$default(Lokhttp3/CacheControl$Companion;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 406
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lokhttp3/CacheControl$Companion;->indexOfElement(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final parse(Lokhttp3/Headers;)Lokhttp3/CacheControl;
    .locals 33
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "headers"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 299
    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    .line 301
    invoke-virtual/range {p1 .. p1}, Lokhttp3/Headers;->size()I

    move-result v3

    const/4 v6, 0x1

    move-object v9, v2

    move v8, v6

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    :goto_0
    if-ge v7, v3, :cond_19

    .line 302
    invoke-virtual {v1, v7}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v2

    .line 303
    invoke-virtual {v1, v7}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Cache-Control"

    .line 306
    invoke-static {v2, v5, v6}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v9, :cond_0

    goto :goto_1

    :cond_0
    move-object v9, v4

    goto :goto_2

    :cond_1
    const-string v5, "Pragma"

    .line 314
    invoke-static {v2, v5, v6}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_18

    :goto_1
    const/4 v8, 0x0

    :goto_2
    const/4 v2, 0x0

    .line 324
    :goto_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_17

    .line 326
    move-object v5, v0

    check-cast v5, Lokhttp3/CacheControl$Companion;

    const-string v5, "=,;"

    invoke-direct {v0, v4, v5, v2}, Lokhttp3/CacheControl$Companion;->indexOfElement(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    const-string v6, "null cannot be cast to non-null type java.lang.String"

    if-eqz v4, :cond_16

    .line 327
    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v1, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move/from16 v24, v3

    const-string v3, "null cannot be cast to non-null type kotlin.CharSequence"

    if-eqz v2, :cond_15

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move/from16 v25, v8

    .line 330
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-eq v5, v8, :cond_7

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move-object/from16 v26, v9

    const/16 v9, 0x2c

    if-eq v8, v9, :cond_8

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x3b

    if-ne v8, v9, :cond_2

    goto :goto_4

    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 335
    invoke-static {v4, v5}, Lokhttp3/internal/Util;->indexOfNonWhitespace(Ljava/lang/String;I)I

    move-result v5

    .line 337
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v5, v8, :cond_4

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x22

    if-ne v8, v9, :cond_4

    add-int/lit8 v5, v5, 0x1

    .line 341
    move-object/from16 v27, v4

    check-cast v27, Ljava/lang/CharSequence;

    const/16 v28, 0x22

    const/16 v30, 0x0

    const/16 v31, 0x4

    const/16 v32, 0x0

    move/from16 v29, v5

    invoke-static/range {v27 .. v32}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v3

    if-eqz v4, :cond_3

    .line 342
    invoke-virtual {v4, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    add-int/2addr v3, v1

    goto :goto_5

    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const-string v8, ",;"

    .line 347
    invoke-direct {v0, v4, v8, v5}, Lokhttp3/CacheControl$Companion;->indexOfElement(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v8

    if-eqz v4, :cond_6

    .line 348
    invoke-virtual {v4, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v5, :cond_5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    move v3, v8

    goto :goto_5

    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    move-object/from16 v26, v9

    :cond_8
    :goto_4
    add-int/lit8 v5, v5, 0x1

    move v3, v5

    const/4 v5, 0x0

    :goto_5
    const-string v1, "no-cache"

    const/4 v6, 0x1

    .line 353
    invoke-static {v1, v2, v6}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_9

    move v10, v6

    :goto_6
    const/4 v1, -0x1

    goto/16 :goto_7

    :cond_9
    const-string v1, "no-store"

    .line 356
    invoke-static {v1, v2, v6}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_a

    move v11, v6

    goto :goto_6

    :cond_a
    const-string v1, "max-age"

    .line 359
    invoke-static {v1, v2, v6}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, -0x1

    .line 360
    invoke-static {v5, v1}, Lokhttp3/internal/Util;->toNonNegativeInt(Ljava/lang/String;I)I

    move-result v12

    goto/16 :goto_7

    :cond_b
    const/4 v1, -0x1

    const-string v8, "s-maxage"

    .line 362
    invoke-static {v8, v2, v6}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 363
    invoke-static {v5, v1}, Lokhttp3/internal/Util;->toNonNegativeInt(Ljava/lang/String;I)I

    move-result v13

    goto :goto_7

    :cond_c
    const-string v1, "private"

    .line 365
    invoke-static {v1, v2, v6}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_d

    move v14, v6

    goto :goto_6

    :cond_d
    const-string v1, "public"

    .line 368
    invoke-static {v1, v2, v6}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_e

    move v15, v6

    goto :goto_6

    :cond_e
    const-string v1, "must-revalidate"

    .line 371
    invoke-static {v1, v2, v6}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_f

    move/from16 v16, v6

    goto :goto_6

    :cond_f
    const-string v1, "max-stale"

    .line 374
    invoke-static {v1, v2, v6}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_10

    const v1, 0x7fffffff

    .line 375
    invoke-static {v5, v1}, Lokhttp3/internal/Util;->toNonNegativeInt(Ljava/lang/String;I)I

    move-result v17

    goto :goto_6

    :cond_10
    const-string v1, "min-fresh"

    .line 377
    invoke-static {v1, v2, v6}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v1, -0x1

    .line 378
    invoke-static {v5, v1}, Lokhttp3/internal/Util;->toNonNegativeInt(Ljava/lang/String;I)I

    move-result v18

    goto :goto_7

    :cond_11
    const/4 v1, -0x1

    const-string v5, "only-if-cached"

    .line 380
    invoke-static {v5, v2, v6}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_12

    move/from16 v19, v6

    goto :goto_7

    :cond_12
    const-string v5, "no-transform"

    .line 383
    invoke-static {v5, v2, v6}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_13

    move/from16 v20, v6

    goto :goto_7

    :cond_13
    const-string v5, "immutable"

    .line 386
    invoke-static {v5, v2, v6}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_14

    move/from16 v21, v6

    :cond_14
    :goto_7
    move-object/from16 v1, p1

    move v2, v3

    move/from16 v3, v24

    move/from16 v8, v25

    move-object/from16 v9, v26

    goto/16 :goto_3

    .line 327
    :cond_15
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    move/from16 v24, v3

    move/from16 v25, v8

    move-object/from16 v26, v9

    goto :goto_8

    :cond_18
    move/from16 v24, v3

    :goto_8
    const/4 v1, -0x1

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p1

    move/from16 v3, v24

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_19
    if-nez v8, :cond_1a

    const/16 v22, 0x0

    goto :goto_9

    :cond_1a
    move-object/from16 v22, v9

    .line 397
    :goto_9
    new-instance v0, Lokhttp3/CacheControl;

    const/16 v23, 0x0

    move-object v9, v0

    invoke-direct/range {v9 .. v23}, Lokhttp3/CacheControl;-><init>(ZZIIZZZIIZZZLjava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
