.class public final Lokio/Options$Companion;
.super Ljava/lang/Object;
.source "Options.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/Options;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOptions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Options.kt\nokio/Options$Companion\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 -Util.kt\nokio/-Util\n*L\n1#1,233:1\n11208#2:234\n11543#2,3:235\n13481#2,3:240\n37#3,2:238\n1#4:243\n66#5:244\n66#5:245\n*E\n*S KotlinDebug\n*F\n+ 1 Options.kt\nokio/Options$Companion\n*L\n43#1:234\n43#1,3:235\n44#1,3:240\n43#1,2:238\n151#1:244\n206#1:245\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002JT\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f2\u0008\u0008\u0002\u0010\u0011\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\r2\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000fH\u0002J!\u0010\u0014\u001a\u00020\u00152\u0012\u0010\u000e\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00100\u0016\"\u00020\u0010H\u0007\u00a2\u0006\u0002\u0010\u0017R\u0018\u0010\u0003\u001a\u00020\u0004*\u00020\u00058BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0018"
    }
    d2 = {
        "Lokio/Options$Companion;",
        "",
        "()V",
        "intCount",
        "",
        "Lokio/Buffer;",
        "getIntCount",
        "(Lokio/Buffer;)J",
        "buildTrieRecursive",
        "",
        "nodeOffset",
        "node",
        "byteStringOffset",
        "",
        "byteStrings",
        "",
        "Lokio/ByteString;",
        "fromIndex",
        "toIndex",
        "indexes",
        "of",
        "Lokio/Options;",
        "",
        "([Lokio/ByteString;)Lokio/Options;",
        "okio"
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

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lokio/Options$Companion;-><init>()V

    return-void
.end method

.method private final buildTrieRecursive(JLokio/Buffer;ILjava/util/List;IILjava/util/List;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lokio/Buffer;",
            "I",
            "Ljava/util/List<",
            "+",
            "Lokio/ByteString;",
            ">;II",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p5

    move/from16 v0, p6

    move/from16 v13, p7

    move-object/from16 v14, p8

    if-ge v0, v13, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v4, "Failed requirement."

    if-eqz v3, :cond_14

    move v3, v0

    :goto_1
    if-ge v3, v13, :cond_3

    .line 118
    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lokio/ByteString;

    invoke-virtual {v5}, Lokio/ByteString;->size()I

    move-result v5

    if-lt v5, v11, :cond_1

    const/4 v5, 0x1

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 122
    :cond_3
    invoke-interface/range {p5 .. p6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokio/ByteString;

    add-int/lit8 v4, v13, -0x1

    .line 123
    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lokio/ByteString;

    .line 127
    invoke-virtual {v3}, Lokio/ByteString;->size()I

    move-result v5

    const/4 v15, -0x1

    if-ne v11, v5, :cond_4

    .line 128
    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    add-int/lit8 v0, v0, 0x1

    .line 130
    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lokio/ByteString;

    move v6, v0

    move v0, v3

    move-object v3, v5

    goto :goto_3

    :cond_4
    move v6, v0

    move v0, v15

    .line 133
    :goto_3
    invoke-virtual {v3, v11}, Lokio/ByteString;->getByte(I)B

    move-result v5

    invoke-virtual {v4, v11}, Lokio/ByteString;->getByte(I)B

    move-result v7

    const/4 v8, 0x2

    if-eq v5, v7, :cond_e

    add-int/lit8 v1, v6, 0x1

    const/4 v2, 0x1

    :goto_4
    if-ge v1, v13, :cond_6

    add-int/lit8 v3, v1, -0x1

    .line 137
    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokio/ByteString;

    invoke-virtual {v3, v11}, Lokio/ByteString;->getByte(I)B

    move-result v3

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lokio/ByteString;

    invoke-virtual {v4, v11}, Lokio/ByteString;->getByte(I)B

    move-result v4

    if-eq v3, v4, :cond_5

    add-int/lit8 v2, v2, 0x1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 143
    :cond_6
    move-object v1, v9

    check-cast v1, Lokio/Options$Companion;

    invoke-direct {v9, v10}, Lokio/Options$Companion;->getIntCount(Lokio/Buffer;)J

    move-result-wide v3

    add-long v3, p1, v3

    int-to-long v7, v8

    add-long/2addr v3, v7

    mul-int/lit8 v1, v2, 0x2

    int-to-long v7, v1

    add-long v16, v3, v7

    .line 145
    invoke-virtual {v10, v2}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 146
    invoke-virtual {v10, v0}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    move v0, v6

    :goto_5
    if-ge v0, v13, :cond_9

    .line 149
    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokio/ByteString;

    invoke-virtual {v1, v11}, Lokio/ByteString;->getByte(I)B

    move-result v1

    if-eq v0, v6, :cond_7

    add-int/lit8 v2, v0, -0x1

    .line 150
    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokio/ByteString;

    invoke-virtual {v2, v11}, Lokio/ByteString;->getByte(I)B

    move-result v2

    if-eq v1, v2, :cond_8

    :cond_7
    and-int/lit16 v1, v1, 0xff

    .line 151
    invoke-virtual {v10, v1}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 155
    :cond_9
    new-instance v8, Lokio/Buffer;

    invoke-direct {v8}, Lokio/Buffer;-><init>()V

    :goto_6
    if-ge v6, v13, :cond_d

    .line 158
    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokio/ByteString;

    invoke-virtual {v0, v11}, Lokio/ByteString;->getByte(I)B

    move-result v0

    add-int/lit8 v1, v6, 0x1

    move v2, v1

    :goto_7
    if-ge v2, v13, :cond_b

    .line 161
    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokio/ByteString;

    invoke-virtual {v3, v11}, Lokio/ByteString;->getByte(I)B

    move-result v3

    if-eq v0, v3, :cond_a

    move v7, v2

    goto :goto_8

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_b
    move v7, v13

    :goto_8
    if-ne v1, v7, :cond_c

    add-int/lit8 v0, v11, 0x1

    .line 168
    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokio/ByteString;

    invoke-virtual {v1}, Lokio/ByteString;->size()I

    move-result v1

    if-ne v0, v1, :cond_c

    .line 170
    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {v10, v0}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    move/from16 v18, v7

    move-object/from16 v19, v8

    goto :goto_9

    .line 173
    :cond_c
    invoke-direct {v9, v8}, Lokio/Options$Companion;->getIntCount(Lokio/Buffer;)J

    move-result-wide v0

    add-long v0, v16, v0

    long-to-int v0, v0

    mul-int/2addr v0, v15

    invoke-virtual {v10, v0}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    add-int/lit8 v4, v11, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    move-object v3, v8

    move-object/from16 v5, p5

    move/from16 v18, v7

    move-object/from16 v19, v8

    move-object/from16 v8, p8

    .line 174
    invoke-direct/range {v0 .. v8}, Lokio/Options$Companion;->buildTrieRecursive(JLokio/Buffer;ILjava/util/List;IILjava/util/List;)V

    :goto_9
    move/from16 v6, v18

    move-object/from16 v8, v19

    goto :goto_6

    :cond_d
    move-object/from16 v19, v8

    .line 187
    move-object/from16 v8, v19

    check-cast v8, Lokio/Source;

    invoke-virtual {v10, v8}, Lokio/Buffer;->writeAll(Lokio/Source;)J

    goto/16 :goto_d

    .line 191
    :cond_e
    invoke-virtual {v3}, Lokio/ByteString;->size()I

    move-result v5

    invoke-virtual {v4}, Lokio/ByteString;->size()I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v7, v11

    const/4 v1, 0x0

    :goto_a
    if-ge v7, v5, :cond_f

    .line 192
    invoke-virtual {v3, v7}, Lokio/ByteString;->getByte(I)B

    move-result v2

    invoke-virtual {v4, v7}, Lokio/ByteString;->getByte(I)B

    move-result v15

    if-ne v2, v15, :cond_f

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v7, v7, 0x1

    const/4 v15, -0x1

    goto :goto_a

    .line 200
    :cond_f
    move-object v2, v9

    check-cast v2, Lokio/Options$Companion;

    invoke-direct {v9, v10}, Lokio/Options$Companion;->getIntCount(Lokio/Buffer;)J

    move-result-wide v4

    add-long v4, p1, v4

    int-to-long v7, v8

    add-long/2addr v4, v7

    int-to-long v7, v1

    add-long/2addr v4, v7

    const-wide/16 v7, 0x1

    add-long/2addr v4, v7

    neg-int v2, v1

    .line 202
    invoke-virtual {v10, v2}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 203
    invoke-virtual {v10, v0}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    add-int v7, v11, v1

    :goto_b
    if-ge v11, v7, :cond_10

    .line 206
    invoke-virtual {v3, v11}, Lokio/ByteString;->getByte(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {v10, v0}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    add-int/lit8 v11, v11, 0x1

    goto :goto_b

    :cond_10
    add-int/lit8 v0, v6, 0x1

    if-ne v0, v13, :cond_13

    .line 211
    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    if-ne v7, v0, :cond_11

    const/4 v1, 0x1

    goto :goto_c

    :cond_11
    const/4 v1, 0x0

    :goto_c
    if-eqz v1, :cond_12

    .line 212
    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {v10, v0}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    goto :goto_d

    .line 211
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 215
    :cond_13
    new-instance v11, Lokio/Buffer;

    invoke-direct {v11}, Lokio/Buffer;-><init>()V

    .line 216
    invoke-direct {v9, v11}, Lokio/Options$Companion;->getIntCount(Lokio/Buffer;)J

    move-result-wide v0

    add-long/2addr v0, v4

    long-to-int v0, v0

    const/4 v1, -0x1

    mul-int/2addr v0, v1

    invoke-virtual {v10, v0}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    move-object/from16 v0, p0

    move-wide v1, v4

    move-object v3, v11

    move v4, v7

    move-object/from16 v5, p5

    move/from16 v7, p7

    move-object/from16 v8, p8

    .line 217
    invoke-direct/range {v0 .. v8}, Lokio/Options$Companion;->buildTrieRecursive(JLokio/Buffer;ILjava/util/List;IILjava/util/List;)V

    .line 225
    check-cast v11, Lokio/Source;

    invoke-virtual {v10, v11}, Lokio/Buffer;->writeAll(Lokio/Source;)J

    :goto_d
    return-void

    .line 116
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method static synthetic buildTrieRecursive$default(Lokio/Options$Companion;JLokio/Buffer;ILjava/util/List;IILjava/util/List;ILjava/lang/Object;)V
    .locals 11

    and-int/lit8 v0, p9, 0x1

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    move-wide v3, v0

    goto :goto_0

    :cond_0
    move-wide v3, p1

    :goto_0
    and-int/lit8 v0, p9, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move v6, v1

    goto :goto_1

    :cond_1
    move v6, p4

    :goto_1
    and-int/lit8 v0, p9, 0x10

    if-eqz v0, :cond_2

    move v8, v1

    goto :goto_2

    :cond_2
    move/from16 v8, p6

    :goto_2
    and-int/lit8 v0, p9, 0x20

    if-eqz v0, :cond_3

    .line 113
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v0

    move v9, v0

    goto :goto_3

    :cond_3
    move/from16 v9, p7

    :goto_3
    move-object v2, p0

    move-object v5, p3

    move-object/from16 v7, p5

    move-object/from16 v10, p8

    invoke-direct/range {v2 .. v10}, Lokio/Options$Companion;->buildTrieRecursive(JLokio/Buffer;ILjava/util/List;IILjava/util/List;)V

    return-void
.end method

.method private final getIntCount(Lokio/Buffer;)J
    .locals 2

    .line 230
    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide p0

    const/4 v0, 0x4

    int-to-long v0, v0

    div-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public final varargs of([Lokio/ByteString;)Lokio/Options;
    .locals 18
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    const-string v0, "byteStrings"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    array-length v0, v12

    const/4 v13, 0x0

    const/4 v1, -0x1

    const/4 v14, 0x0

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lokio/Options;

    new-array v2, v14, [Lokio/ByteString;

    filled-new-array {v14, v1}, [I

    move-result-object v1

    invoke-direct {v0, v2, v1, v13}, Lokio/Options;-><init>([Lokio/ByteString;[ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 41
    :cond_0
    invoke-static/range {p1 .. p1}, Lkotlin/collections/ArraysKt;->toMutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    .line 42
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->sort(Ljava/util/List;)V

    .line 234
    new-instance v0, Ljava/util/ArrayList;

    array-length v2, v12

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 235
    array-length v2, v12

    move v3, v14

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v12, v3

    .line 43
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 237
    :cond_1
    check-cast v0, Ljava/util/List;

    .line 234
    check-cast v0, Ljava/util/Collection;

    new-array v1, v14, [Ljava/lang/Integer;

    .line 239
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c

    check-cast v0, [Ljava/lang/Integer;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    .line 43
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    .line 241
    array-length v0, v12

    move v1, v14

    move v2, v1

    :goto_1
    if-ge v1, v0, :cond_2

    aget-object v3, v12, v1

    add-int/lit8 v15, v2, 0x1

    .line 45
    move-object v4, v3

    check-cast v4, Ljava/lang/Comparable;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    move-object v3, v9

    invoke-static/range {v3 .. v8}, Lkotlin/collections/CollectionsKt;->binarySearch$default(Ljava/util/List;Ljava/lang/Comparable;IIILjava/lang/Object;)I

    move-result v3

    .line 46
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v10, v3, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    move v2, v15

    goto :goto_1

    .line 48
    :cond_2
    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_3

    move v0, v1

    goto :goto_2

    :cond_3
    move v0, v14

    :goto_2
    if-eqz v0, :cond_b

    move v0, v14

    .line 54
    :goto_3
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_9

    .line 55
    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokio/ByteString;

    add-int/lit8 v3, v0, 0x1

    move v4, v3

    .line 57
    :goto_4
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_8

    .line 58
    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lokio/ByteString;

    .line 59
    invoke-virtual {v5, v2}, Lokio/ByteString;->startsWith(Lokio/ByteString;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_6

    .line 60
    :cond_4
    invoke-virtual {v5}, Lokio/ByteString;->size()I

    move-result v6

    invoke-virtual {v2}, Lokio/ByteString;->size()I

    move-result v7

    if-eq v6, v7, :cond_5

    move v6, v1

    goto :goto_5

    :cond_5
    move v6, v14

    :goto_5
    if-eqz v6, :cond_7

    .line 61
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    if-le v5, v6, :cond_6

    .line 62
    invoke-interface {v9, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 63
    invoke-interface {v10, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_4

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 60
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "duplicate option: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    :cond_8
    :goto_6
    move v0, v3

    goto :goto_3

    .line 71
    :cond_9
    new-instance v15, Lokio/Buffer;

    invoke-direct {v15}, Lokio/Buffer;-><init>()V

    .line 72
    move-object v0, v11

    check-cast v0, Lokio/Options$Companion;

    const-wide/16 v1, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v16, 0x35

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object v3, v15

    move-object v5, v9

    move-object v8, v10

    move/from16 v9, v16

    move-object/from16 v10, v17

    invoke-static/range {v0 .. v10}, Lokio/Options$Companion;->buildTrieRecursive$default(Lokio/Options$Companion;JLokio/Buffer;ILjava/util/List;IILjava/util/List;ILjava/lang/Object;)V

    .line 74
    invoke-direct {v11, v15}, Lokio/Options$Companion;->getIntCount(Lokio/Buffer;)J

    move-result-wide v0

    long-to-int v0, v0

    new-array v0, v0, [I

    .line 76
    :goto_7
    invoke-virtual {v15}, Lokio/Buffer;->exhausted()Z

    move-result v1

    if-nez v1, :cond_a

    add-int/lit8 v1, v14, 0x1

    .line 77
    invoke-virtual {v15}, Lokio/Buffer;->readInt()I

    move-result v2

    aput v2, v0, v14

    move v14, v1

    goto :goto_7

    .line 80
    :cond_a
    new-instance v1, Lokio/Options;

    array-length v2, v12

    invoke-static {v12, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v3, "java.util.Arrays.copyOf(this, size)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, [Lokio/ByteString;

    invoke-direct {v1, v2, v0, v13}, Lokio/Options;-><init>([Lokio/ByteString;[ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    .line 48
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the empty byte string is not a supported option"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 239
    :cond_c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
