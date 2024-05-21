.class public final Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/UtilsKt;
.super Ljava/lang/Object;
.source "Utils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\u0008\u0005\u001a\u0018\u0010\u0005\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\u0001H\u0000\u001a\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u0002H\n0\t\"\u0004\u0008\u0000\u0010\nH\u0000\u001a\u001f\u0010\u000b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\r0\u000c2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0000\u00a2\u0006\u0002\u0010\u000f\u001a\u0010\u0010\u0010\u001a\u00020\u00012\u0006\u0010\u0011\u001a\u00020\u0001H\u0000\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0001X\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0004\u001a\u00020\u0001X\u0080T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "LOG_MAX_BUFFER_SIZE",
        "",
        "MAX_BUFFER_SIZE",
        "MAX_BUFFER_SIZE_MINUS_ONE",
        "MUTABLE_BUFFER_SIZE",
        "indexSegment",
        "index",
        "shift",
        "persistentVectorOf",
        "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;",
        "E",
        "presizedBufferWith",
        "",
        "",
        "element",
        "(Ljava/lang/Object;)[Ljava/lang/Object;",
        "rootSize",
        "vectorSize",
        "runtime_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final LOG_MAX_BUFFER_SIZE:I = 0x5

.field public static final MAX_BUFFER_SIZE:I = 0x20

.field public static final MAX_BUFFER_SIZE_MINUS_ONE:I = 0x1f

.field public static final MUTABLE_BUFFER_SIZE:I = 0x21


# direct methods
.method public static final indexSegment(II)I
    .locals 0

    shr-int/2addr p0, p1

    and-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method public static final persistentVectorOf()Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList<",
            "TE;>;"
        }
    .end annotation

    .line 18
    sget-object v0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/SmallPersistentVector;->Companion:Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/SmallPersistentVector$Companion;

    invoke-virtual {v0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/SmallPersistentVector$Companion;->getEMPTY()Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableList/SmallPersistentVector;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentList;

    return-object v0
.end method

.method public static final presizedBufferWith(Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2

    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    return-object v0
.end method

.method public static final rootSize(I)I
    .locals 0

    add-int/lit8 p0, p0, -0x1

    and-int/lit8 p0, p0, -0x20

    return p0
.end method
