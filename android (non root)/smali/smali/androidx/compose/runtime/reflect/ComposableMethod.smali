.class public final Landroidx/compose/runtime/reflect/ComposableMethod;
.super Ljava/lang/Object;
.source "ComposableMethod.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nComposableMethod.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ComposableMethod.kt\nandroidx/compose/runtime/reflect/ComposableMethod\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,219:1\n1549#2:220\n1620#2,3:221\n1804#2,4:224\n*S KotlinDebug\n*F\n+ 1 ComposableMethod.kt\nandroidx/compose/runtime/reflect/ComposableMethod\n*L\n143#1:220\n143#1:221,3\n144#1:224,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\u0017\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0006\u0010\u0014\u001a\u00020\u0003J\u0013\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u0010\u0018\u001a\u00020\u0008H\u0016J:\u0010\u0019\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u001a\u001a\u00020\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u00012\u0016\u0010\u001d\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00010\u000c\"\u0004\u0018\u00010\u0001H\u0086\u0002\u00a2\u0006\u0002\u0010\u001eR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0007\u001a\u00020\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u001b\u0010\u000b\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\r0\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u0017\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u001f"
    }
    d2 = {
        "Landroidx/compose/runtime/reflect/ComposableMethod;",
        "",
        "method",
        "Ljava/lang/reflect/Method;",
        "composableInfo",
        "Landroidx/compose/runtime/reflect/ComposableInfo;",
        "(Ljava/lang/reflect/Method;Landroidx/compose/runtime/reflect/ComposableInfo;)V",
        "parameterCount",
        "",
        "getParameterCount",
        "()I",
        "parameterTypes",
        "",
        "Ljava/lang/Class;",
        "getParameterTypes",
        "()[Ljava/lang/Class;",
        "parameters",
        "Ljava/lang/reflect/Parameter;",
        "getParameters",
        "()[Ljava/lang/reflect/Parameter;",
        "asMethod",
        "equals",
        "",
        "other",
        "hashCode",
        "invoke",
        "composer",
        "Landroidx/compose/runtime/Composer;",
        "instance",
        "args",
        "(Landroidx/compose/runtime/Composer;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;",
        "runtime_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final composableInfo:Landroidx/compose/runtime/reflect/ComposableInfo;

.field private final method:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Method;Landroidx/compose/runtime/reflect/ComposableInfo;)V
    .locals 1

    const-string v0, "method"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "composableInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/reflect/ComposableMethod;->method:Ljava/lang/reflect/Method;

    iput-object p2, p0, Landroidx/compose/runtime/reflect/ComposableMethod;->composableInfo:Landroidx/compose/runtime/reflect/ComposableInfo;

    return-void
.end method


# virtual methods
.method public final asMethod()Ljava/lang/reflect/Method;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/reflect/ComposableMethod;->method:Ljava/lang/reflect/Method;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 169
    instance-of v0, p1, Landroidx/compose/runtime/reflect/ComposableMethod;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/compose/runtime/reflect/ComposableMethod;->method:Ljava/lang/reflect/Method;

    check-cast p1, Landroidx/compose/runtime/reflect/ComposableMethod;

    iget-object p1, p1, Landroidx/compose/runtime/reflect/ComposableMethod;->method:Ljava/lang/reflect/Method;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getParameterCount()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/reflect/ComposableMethod;->composableInfo:Landroidx/compose/runtime/reflect/ComposableInfo;

    .line 112
    invoke-virtual {p0}, Landroidx/compose/runtime/reflect/ComposableInfo;->getRealParamsCount()I

    move-result p0

    return p0
.end method

.method public final getParameterTypes()[Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/runtime/reflect/ComposableMethod;->method:Ljava/lang/reflect/Method;

    .line 125
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    const-string v1, "method.parameterTypes"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, [Ljava/lang/Object;

    iget-object p0, p0, Landroidx/compose/runtime/reflect/ComposableMethod;->composableInfo:Landroidx/compose/runtime/reflect/ComposableInfo;

    invoke-virtual {p0}, Landroidx/compose/runtime/reflect/ComposableInfo;->getRealParamsCount()I

    move-result p0

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lkotlin/collections/ArraysKt;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Class;

    return-object p0
.end method

.method public final getParameters()[Ljava/lang/reflect/Parameter;
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/reflect/ComposableMethod;->method:Ljava/lang/reflect/Method;

    .line 119
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameters()[Ljava/lang/reflect/Parameter;

    move-result-object v0

    const-string v1, "method.parameters"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, [Ljava/lang/Object;

    iget-object p0, p0, Landroidx/compose/runtime/reflect/ComposableMethod;->composableInfo:Landroidx/compose/runtime/reflect/ComposableInfo;

    invoke-virtual {p0}, Landroidx/compose/runtime/reflect/ComposableInfo;->getRealParamsCount()I

    move-result p0

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lkotlin/collections/ArraysKt;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/reflect/Parameter;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/reflect/ComposableMethod;->method:Ljava/lang/reflect/Method;

    .line 173
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->hashCode()I

    move-result p0

    return p0
.end method

.method public final varargs invoke(Landroidx/compose/runtime/Composer;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const-string v2, "composer"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "args"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Landroidx/compose/runtime/reflect/ComposableMethod;->composableInfo:Landroidx/compose/runtime/reflect/ComposableInfo;

    .line 133
    invoke-virtual {v2}, Landroidx/compose/runtime/reflect/ComposableInfo;->component2()I

    move-result v4

    invoke-virtual {v2}, Landroidx/compose/runtime/reflect/ComposableInfo;->component3()I

    move-result v5

    invoke-virtual {v2}, Landroidx/compose/runtime/reflect/ComposableInfo;->component4()I

    move-result v2

    iget-object v6, v0, Landroidx/compose/runtime/reflect/ComposableMethod;->method:Ljava/lang/reflect/Method;

    .line 135
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v7, v4, 0x1

    add-int/2addr v5, v7

    .line 139
    new-array v8, v2, [Ljava/lang/Integer;

    const/4 v9, 0x0

    .line 158
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move v11, v9

    :goto_0
    if-ge v11, v2, :cond_5

    mul-int/lit8 v12, v11, 0x1f

    add-int/lit8 v13, v12, 0x1f

    .line 141
    invoke-static {v13, v4}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 143
    invoke-static {v12, v13}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v12

    check-cast v12, Ljava/lang/Iterable;

    .line 220
    new-instance v13, Ljava/util/ArrayList;

    const/16 v14, 0xa

    invoke-static {v12, v14}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v13, Ljava/util/Collection;

    .line 221
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    move-object v14, v12

    check-cast v14, Lkotlin/collections/IntIterator;

    invoke-virtual {v14}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v14

    .line 143
    array-length v15, v1

    if-ge v14, v15, :cond_1

    aget-object v14, v1, v14

    if-nez v14, :cond_0

    goto :goto_2

    :cond_0
    move v14, v9

    goto :goto_3

    :cond_1
    :goto_2
    const/4 v14, 0x1

    :goto_3
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 222
    invoke-interface {v13, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 223
    :cond_2
    check-cast v13, Ljava/util/List;

    .line 144
    check-cast v13, Ljava/lang/Iterable;

    .line 226
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move v13, v9

    move v14, v13

    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    add-int/lit8 v16, v14, 0x1

    if-gez v14, :cond_3

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_3
    check-cast v15, Ljava/lang/Number;

    invoke-virtual {v15}, Ljava/lang/Number;->intValue()I

    move-result v15

    shl-int v14, v15, v14

    or-int/2addr v13, v14

    move/from16 v14, v16

    goto :goto_4

    .line 145
    :cond_4
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v8, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 148
    :cond_5
    new-array v2, v6, [Ljava/lang/Object;

    :goto_5
    if-ge v9, v6, :cond_c

    if-ltz v9, :cond_7

    if-ge v9, v4, :cond_7

    if-ltz v9, :cond_6

    .line 151
    invoke-static/range {p3 .. p3}, Lkotlin/collections/ArraysKt;->getLastIndex([Ljava/lang/Object;)I

    move-result v11

    if-gt v9, v11, :cond_6

    aget-object v11, v1, v9

    goto :goto_7

    :cond_6
    iget-object v11, v0, Landroidx/compose/runtime/reflect/ComposableMethod;->method:Ljava/lang/reflect/Method;

    .line 152
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v11

    aget-object v11, v11, v9

    const-string v12, "method.parameterTypes[idx]"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v11}, Landroidx/compose/runtime/reflect/ComposableMethodKt;->access$getDefaultValue(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    goto :goto_7

    :cond_7
    if-ne v9, v4, :cond_8

    move-object v11, v3

    goto :goto_7

    :cond_8
    if-ne v9, v7, :cond_9

    :goto_6
    move-object v11, v10

    goto :goto_7

    :cond_9
    add-int/lit8 v11, v4, 0x2

    if-gt v11, v9, :cond_a

    if-ge v9, v5, :cond_a

    goto :goto_6

    :cond_a
    if-gt v5, v9, :cond_b

    if-ge v9, v6, :cond_b

    sub-int v11, v9, v5

    .line 161
    aget-object v11, v8, v11

    .line 162
    :goto_7
    aput-object v11, v2, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 161
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected index"

    .line 162
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, v0, Landroidx/compose/runtime/reflect/ComposableMethod;->method:Ljava/lang/reflect/Method;

    .line 165
    invoke-static {v2, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v2, p2

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
