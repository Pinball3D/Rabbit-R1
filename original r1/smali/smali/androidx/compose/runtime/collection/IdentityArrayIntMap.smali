.class public final Landroidx/compose/runtime/collection/IdentityArrayIntMap;
.super Ljava/lang/Object;
.source "IdentityArrayIntMap.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0015\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u00012\u0006\u0010\u0013\u001a\u00020\tJ&\u0010\u0014\u001a\u00020\u00152\u0018\u0010\u0016\u001a\u0014\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00150\u0017H\u0086\u0008\u00f8\u0001\u0000J\u0012\u0010\u0018\u001a\u00020\t2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0001H\u0002J\"\u0010\u0019\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\t2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u001b\u001a\u00020\tH\u0002J&\u0010\u001c\u001a\u00020\u001d2\u0018\u0010\u001e\u001a\u0014\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u001d0\u0017H\u0086\u0008\u00f8\u0001\u0000J\u0011\u0010\u001f\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u0001H\u0086\u0002J\u000e\u0010 \u001a\u00020\u00152\u0006\u0010\u0012\u001a\u00020\u0001J&\u0010!\u001a\u00020\u001d2\u0018\u0010\u0016\u001a\u0014\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00150\u0017H\u0086\u0008\u00f8\u0001\u0000R0\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00042\u000e\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0004@BX\u0086\u000e\u00a2\u0006\n\n\u0002\u0010\u0008\u001a\u0004\u0008\u0006\u0010\u0007R\u001e\u0010\n\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\t@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u001e\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\r@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\""
    }
    d2 = {
        "Landroidx/compose/runtime/collection/IdentityArrayIntMap;",
        "",
        "()V",
        "<set-?>",
        "",
        "keys",
        "getKeys",
        "()[Ljava/lang/Object;",
        "[Ljava/lang/Object;",
        "",
        "size",
        "getSize",
        "()I",
        "",
        "values",
        "getValues",
        "()[I",
        "add",
        "key",
        "value",
        "any",
        "",
        "predicate",
        "Lkotlin/Function2;",
        "find",
        "findExactIndex",
        "midIndex",
        "valueHash",
        "forEach",
        "",
        "block",
        "get",
        "remove",
        "removeValueIf",
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


# instance fields
.field private keys:[Ljava/lang/Object;

.field private size:I

.field private values:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->keys:[Ljava/lang/Object;

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->values:[I

    return-void
.end method

.method public static final synthetic access$setSize$p(Landroidx/compose/runtime/collection/IdentityArrayIntMap;I)V
    .locals 0

    .line 21
    iput p1, p0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->size:I

    return-void
.end method

.method private final find(Ljava/lang/Object;)I
    .locals 7

    iget v0, p0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->size:I

    add-int/lit8 v0, v0, -0x1

    .line 188
    invoke-static {p1}, Landroidx/compose/runtime/ActualJvm_jvmKt;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->keys:[Ljava/lang/Object;

    const/4 v3, 0x0

    :goto_0
    if-gt v3, v0, :cond_3

    add-int v4, v3, v0

    ushr-int/lit8 v4, v4, 0x1

    .line 193
    aget-object v5, v2, v4

    .line 194
    invoke-static {v5}, Landroidx/compose/runtime/ActualJvm_jvmKt;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    if-ge v6, v1, :cond_0

    add-int/lit8 v3, v4, 0x1

    goto :goto_0

    :cond_0
    if-le v6, v1, :cond_1

    add-int/lit8 v0, v4, -0x1

    goto :goto_0

    :cond_1
    if-ne v5, p1, :cond_2

    return v4

    .line 199
    :cond_2
    invoke-direct {p0, v4, p1, v1}, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->findExactIndex(ILjava/lang/Object;I)I

    move-result p0

    return p0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    neg-int p0, v3

    return p0
.end method

.method private final findExactIndex(ILjava/lang/Object;I)I
    .locals 3

    iget-object v0, p0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->keys:[Ljava/lang/Object;

    iget p0, p0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->size:I

    add-int/lit8 v1, p1, -0x1

    :goto_0
    const/4 v2, -0x1

    if-ge v2, v1, :cond_2

    .line 218
    aget-object v2, v0, v1

    if-ne v2, p2, :cond_0

    return v1

    .line 222
    :cond_0
    invoke-static {v2}, Landroidx/compose/runtime/ActualJvm_jvmKt;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    if-eq v2, p3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    add-int/lit8 p1, p1, 0x1

    if-ge p1, p0, :cond_4

    .line 228
    aget-object v1, v0, p1

    if-ne v1, p2, :cond_3

    return p1

    .line 232
    :cond_3
    invoke-static {v1}, Landroidx/compose/runtime/ActualJvm_jvmKt;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, p3, :cond_2

    add-int/lit8 p1, p1, 0x1

    neg-int p0, p1

    return p0

    :cond_4
    add-int/lit8 p0, p0, 0x1

    neg-int p0, p0

    return p0
.end method


# virtual methods
.method public final add(Ljava/lang/Object;I)I
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "key"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->values:[I

    iget v2, v0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->size:I

    const/4 v10, -0x1

    if-lez v2, :cond_0

    .line 41
    invoke-direct/range {p0 .. p1}, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->find(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_1

    .line 43
    aget v0, v3, v2

    .line 44
    aput p2, v3, v2

    return v0

    :cond_0
    move v2, v10

    :cond_1
    add-int/lit8 v2, v2, 0x1

    neg-int v2, v2

    iget-object v11, v0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->keys:[Ljava/lang/Object;

    iget v4, v0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->size:I

    .line 55
    array-length v5, v11

    if-ne v4, v5, :cond_2

    .line 56
    array-length v5, v11

    mul-int/lit8 v5, v5, 0x2

    new-array v9, v5, [Ljava/lang/Object;

    .line 57
    array-length v5, v11

    mul-int/lit8 v5, v5, 0x2

    new-array v8, v5, [I

    add-int/lit8 v5, v2, 0x1

    .line 58
    invoke-static {v11, v9, v5, v2, v4}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 64
    invoke-static {v3, v8, v5, v2, v4}, Lkotlin/collections/ArraysKt;->copyInto([I[IIII)[I

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x6

    const/16 v17, 0x0

    move-object v12, v9

    move v15, v2

    .line 70
    invoke-static/range {v11 .. v17}, Lkotlin/collections/ArraysKt;->copyInto$default([Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/lang/Object;)[Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v11, 0x6

    const/4 v12, 0x0

    move-object v4, v8

    move v7, v2

    move-object v13, v8

    move v8, v11

    move-object v11, v9

    move-object v9, v12

    .line 74
    invoke-static/range {v3 .. v9}, Lkotlin/collections/ArraysKt;->copyInto$default([I[IIIIILjava/lang/Object;)[I

    iput-object v11, v0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->keys:[Ljava/lang/Object;

    iput-object v13, v0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->values:[I

    goto :goto_0

    :cond_2
    add-int/lit8 v5, v2, 0x1

    .line 81
    invoke-static {v11, v11, v5, v2, v4}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 87
    invoke-static {v3, v3, v5, v2, v4}, Lkotlin/collections/ArraysKt;->copyInto([I[IIII)[I

    :goto_0
    iget-object v3, v0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->keys:[Ljava/lang/Object;

    .line 94
    aput-object v1, v3, v2

    iget-object v1, v0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->values:[I

    .line 95
    aput p2, v1, v2

    iget v1, v0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->size:I

    return v10
.end method

.method public final any(Lkotlin/jvm/functions/Function2;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Object;",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "predicate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->getKeys()[Ljava/lang/Object;

    move-result-object v0

    .line 162
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->getValues()[I

    move-result-object v1

    .line 163
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->getSize()I

    move-result p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, p0, :cond_1

    .line 166
    aget-object v4, v0, v3

    const-string v5, "null cannot be cast to non-null type kotlin.Any"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    aget v5, v1, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v4, v5}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public final forEach(Lkotlin/jvm/functions/Function2;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Object;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->getKeys()[Ljava/lang/Object;

    move-result-object v0

    .line 173
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->getValues()[I

    move-result-object v1

    .line 174
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->getSize()I

    move-result p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p0, :cond_0

    .line 177
    aget-object v3, v0, v2

    const-string v4, "null cannot be cast to non-null type kotlin.Any"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    aget v4, v1, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final get(Ljava/lang/Object;)I
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0, p1}, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->find(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object p0, p0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->values:[I

    .line 31
    aget p0, p0, p1

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Key not found"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getKeys()[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->keys:[Ljava/lang/Object;

    return-object p0
.end method

.method public final getSize()I
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->size:I

    return p0
.end method

.method public final getValues()[I
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->values:[I

    return-object p0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 5

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-direct {p0, p1}, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->find(Ljava/lang/Object;)I

    move-result p1

    iget-object v0, p0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->keys:[Ljava/lang/Object;

    iget-object v1, p0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->values:[I

    iget v2, p0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->size:I

    if-ltz p1, :cond_1

    add-int/lit8 v3, v2, -0x1

    if-ge p1, v3, :cond_0

    add-int/lit8 v4, p1, 0x1

    .line 112
    invoke-static {v0, v0, p1, v4, v2}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 118
    invoke-static {v1, v1, p1, v4, v2}, Lkotlin/collections/ArraysKt;->copyInto([I[IIII)[I

    :cond_0
    const/4 p1, 0x0

    .line 126
    aput-object p1, v0, v3

    iput v3, p0, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->size:I

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final removeValueIf(Lkotlin/jvm/functions/Function2;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Object;",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "predicate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->getKeys()[Ljava/lang/Object;

    move-result-object v0

    .line 138
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->getValues()[I

    move-result-object v1

    .line 139
    invoke-virtual {p0}, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->getSize()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_2

    .line 144
    aget-object v5, v0, v3

    const-string v6, "null cannot be cast to non-null type kotlin.Any"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    aget v6, v1, v3

    .line 146
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {p1, v5, v7}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_1

    if-eq v4, v3, :cond_0

    .line 148
    aput-object v5, v0, v4

    .line 149
    aput v6, v1, v4

    :cond_0
    add-int/lit8 v4, v4, 0x1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move p1, v4

    :goto_1
    if-ge p1, v2, :cond_3

    const/4 v1, 0x0

    .line 155
    aput-object v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 157
    :cond_3
    invoke-static {p0, v4}, Landroidx/compose/runtime/collection/IdentityArrayIntMap;->access$setSize$p(Landroidx/compose/runtime/collection/IdentityArrayIntMap;I)V

    return-void
.end method
