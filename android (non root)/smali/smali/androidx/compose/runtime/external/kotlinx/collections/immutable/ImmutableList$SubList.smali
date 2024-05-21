.class final Landroidx/compose/runtime/external/kotlinx/collections/immutable/ImmutableList$SubList;
.super Lkotlin/collections/AbstractList;
.source "ImmutableList.kt"

# interfaces
.implements Landroidx/compose/runtime/external/kotlinx/collections/immutable/ImmutableList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/external/kotlinx/collections/immutable/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SubList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/collections/AbstractList<",
        "TE;>;",
        "Landroidx/compose/runtime/external/kotlinx/collections/immutable/ImmutableList<",
        "TE;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u000b\u0008\u0002\u0018\u0000*\u0004\u0008\u0001\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003B#\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0008J\u0016\u0010\r\u001a\u00028\u00012\u0006\u0010\u000e\u001a\u00020\u0006H\u0096\u0002\u00a2\u0006\u0002\u0010\u000fJ\u001e\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0016R\u000e\u0010\t\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u00020\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0002X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Landroidx/compose/runtime/external/kotlinx/collections/immutable/ImmutableList$SubList;",
        "E",
        "Landroidx/compose/runtime/external/kotlinx/collections/immutable/ImmutableList;",
        "Lkotlin/collections/AbstractList;",
        "source",
        "fromIndex",
        "",
        "toIndex",
        "(Landroidx/compose/runtime/external/kotlinx/collections/immutable/ImmutableList;II)V",
        "_size",
        "size",
        "getSize",
        "()I",
        "get",
        "index",
        "(I)Ljava/lang/Object;",
        "subList",
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
.field private _size:I

.field private final fromIndex:I

.field private final source:Landroidx/compose/runtime/external/kotlinx/collections/immutable/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/ImmutableList<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final toIndex:I


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/external/kotlinx/collections/immutable/ImmutableList;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/ImmutableList<",
            "+TE;>;II)V"
        }
    .end annotation

    const-string/jumbo v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Lkotlin/collections/AbstractList;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/ImmutableList$SubList;->source:Landroidx/compose/runtime/external/kotlinx/collections/immutable/ImmutableList;

    iput p2, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/ImmutableList$SubList;->fromIndex:I

    iput p3, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/ImmutableList$SubList;->toIndex:I

    .line 36
    invoke-interface {p1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/ImmutableList;->size()I

    move-result p1

    invoke-static {p2, p3, p1}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/ListImplementation;->checkRangeIndexes$runtime_release(III)V

    sub-int/2addr p3, p2

    iput p3, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/ImmutableList$SubList;->_size:I

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/ImmutableList$SubList;->_size:I

    .line 41
    invoke-static {p1, v0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/ListImplementation;->checkElementIndex$runtime_release(II)V

    iget-object v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/ImmutableList$SubList;->source:Landroidx/compose/runtime/external/kotlinx/collections/immutable/ImmutableList;

    iget p0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/ImmutableList$SubList;->fromIndex:I

    add-int/2addr p0, p1

    .line 43
    invoke-interface {v0, p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getSize()I
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/ImmutableList$SubList;->_size:I

    return p0
.end method

.method public subList(II)Landroidx/compose/runtime/external/kotlinx/collections/immutable/ImmutableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroidx/compose/runtime/external/kotlinx/collections/immutable/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    iget v0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/ImmutableList$SubList;->_size:I

    .line 49
    invoke-static {p1, p2, v0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/internal/ListImplementation;->checkRangeIndexes$runtime_release(III)V

    .line 50
    new-instance v0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/ImmutableList$SubList;

    iget-object v1, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/ImmutableList$SubList;->source:Landroidx/compose/runtime/external/kotlinx/collections/immutable/ImmutableList;

    iget p0, p0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/ImmutableList$SubList;->fromIndex:I

    add-int/2addr p1, p0

    add-int/2addr p0, p2

    invoke-direct {v0, v1, p1, p0}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/ImmutableList$SubList;-><init>(Landroidx/compose/runtime/external/kotlinx/collections/immutable/ImmutableList;II)V

    check-cast v0, Landroidx/compose/runtime/external/kotlinx/collections/immutable/ImmutableList;

    return-object v0
.end method

.method public bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    .line 32
    invoke-virtual {p0, p1, p2}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/ImmutableList$SubList;->subList(II)Landroidx/compose/runtime/external/kotlinx/collections/immutable/ImmutableList;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method
