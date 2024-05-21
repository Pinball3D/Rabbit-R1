.class public abstract Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;
.super Ljava/lang/Object;
.source "DpadSpanSizeLookup.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008&\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\nJ\u0016\u0010\r\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\nJ\u0018\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\nH\u0016J\u0018\u0010\u000f\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\nH\u0016J\u0010\u0010\u0010\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH&J\u0006\u0010\u0011\u001a\u00020\u0012J\u000e\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u0004J\u000e\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;",
        "",
        "()V",
        "cacheSpanGroupIndices",
        "",
        "cacheSpanIndices",
        "spanGroupIndexCache",
        "Landroid/util/SparseIntArray;",
        "spanIndexCache",
        "getCachedSpanGroupIndex",
        "",
        "position",
        "spanCount",
        "getCachedSpanIndex",
        "getSpanGroupIndex",
        "getSpanIndex",
        "getSpanSize",
        "invalidateCache",
        "",
        "setSpanGroupIndexCacheEnabled",
        "enabled",
        "setSpanIndexCacheEnabled",
        "Companion",
        "dpadrecyclerview_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup$Companion;

.field private static final DEFAULT:Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;


# instance fields
.field private cacheSpanGroupIndices:Z

.field private cacheSpanIndices:Z

.field private final spanGroupIndexCache:Landroid/util/SparseIntArray;

.field private final spanIndexCache:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;->Companion:Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup$Companion;

    .line 49
    new-instance v0, Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup$Companion$DEFAULT$1;

    invoke-direct {v0}, Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup$Companion$DEFAULT$1;-><init>()V

    check-cast v0, Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;

    sput-object v0, Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;->DEFAULT:Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;->spanIndexCache:Landroid/util/SparseIntArray;

    .line 83
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;->spanGroupIndexCache:Landroid/util/SparseIntArray;

    return-void
.end method

.method public static final synthetic access$getDEFAULT$cp()Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;
    .locals 1

    sget-object v0, Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;->DEFAULT:Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;

    return-object v0
.end method

.method public static final findFirstKeyLessThan$dpadrecyclerview_release(Landroid/util/SparseIntArray;I)I
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;->Companion:Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup$Companion;->findFirstKeyLessThan$dpadrecyclerview_release(Landroid/util/SparseIntArray;I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final getCachedSpanGroupIndex(II)I
    .locals 2

    iget-boolean v0, p0, Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;->cacheSpanGroupIndices:Z

    if-nez v0, :cond_0

    .line 129
    invoke-virtual {p0, p1, p2}, Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;->getSpanGroupIndex(II)I

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;->spanGroupIndexCache:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    .line 131
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v1, :cond_1

    return v0

    .line 135
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;->getSpanGroupIndex(II)I

    move-result p2

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;->spanGroupIndexCache:Landroid/util/SparseIntArray;

    .line 136
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    return p2
.end method

.method public final getCachedSpanIndex(II)I
    .locals 2

    iget-boolean v0, p0, Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;->cacheSpanIndices:Z

    if-nez v0, :cond_0

    .line 116
    invoke-virtual {p0, p1, p2}, Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;->getSpanIndex(II)I

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;->spanIndexCache:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    .line 118
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v1, :cond_1

    return v0

    .line 122
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;->getSpanIndex(II)I

    move-result p2

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;->spanIndexCache:Landroid/util/SparseIntArray;

    .line 123
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    return p2
.end method

.method public getSpanGroupIndex(II)I
    .locals 6

    iget-boolean v0, p0, Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;->cacheSpanGroupIndices:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;->Companion:Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup$Companion;

    iget-object v2, p0, Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;->spanGroupIndexCache:Landroid/util/SparseIntArray;

    .line 176
    invoke-virtual {v0, v2, p1}, Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup$Companion;->findFirstKeyLessThan$dpadrecyclerview_release(Landroid/util/SparseIntArray;I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;->spanGroupIndexCache:Landroid/util/SparseIntArray;

    .line 178
    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    add-int/lit8 v3, v0, 0x1

    .line 180
    invoke-virtual {p0, v0, p2}, Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;->getCachedSpanIndex(II)I

    move-result v4

    invoke-virtual {p0, v0}, Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;->getSpanSize(I)I

    move-result v0

    add-int/2addr v4, v0

    if-ne v4, p2, :cond_1

    add-int/lit8 v2, v2, 0x1

    move v4, v1

    goto :goto_0

    :cond_0
    move v2, v1

    move v3, v2

    move v4, v3

    .line 187
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;->getSpanSize(I)I

    move-result v0

    :goto_1
    if-ge v3, p1, :cond_4

    .line 189
    invoke-virtual {p0, v3}, Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;->getSpanSize(I)I

    move-result v5

    add-int/2addr v4, v5

    if-ne v4, p2, :cond_2

    add-int/lit8 v2, v2, 0x1

    move v4, v1

    goto :goto_2

    :cond_2
    if-le v4, p2, :cond_3

    add-int/lit8 v2, v2, 0x1

    move v4, v5

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    add-int/2addr v4, v0

    if-le v4, p2, :cond_5

    add-int/lit8 v2, v2, 0x1

    :cond_5
    return v2
.end method

.method public getSpanIndex(II)I
    .locals 5

    .line 141
    invoke-virtual {p0, p1}, Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;->getSpanSize(I)I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, p2, :cond_0

    return v1

    :cond_0
    iget-boolean v2, p0, Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;->cacheSpanIndices:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;->Companion:Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup$Companion;

    iget-object v3, p0, Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;->spanIndexCache:Landroid/util/SparseIntArray;

    .line 149
    invoke-virtual {v2, v3, p1}, Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup$Companion;->findFirstKeyLessThan$dpadrecyclerview_release(Landroid/util/SparseIntArray;I)I

    move-result v2

    if-ltz v2, :cond_1

    iget-object v3, p0, Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;->spanIndexCache:Landroid/util/SparseIntArray;

    .line 151
    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    invoke-virtual {p0, v2}, Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;->getSpanSize(I)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_1

    :cond_1
    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, p1, :cond_4

    .line 156
    invoke-virtual {p0, v2}, Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;->getSpanSize(I)I

    move-result v4

    add-int/2addr v3, v4

    if-ne v3, p2, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    if-le v3, p2, :cond_3

    move v3, v4

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    add-int/2addr v0, v3

    if-gt v0, p2, :cond_5

    move v1, v3

    :cond_5
    return v1
.end method

.method public abstract getSpanSize(I)I
.end method

.method public final invalidateCache()V
    .locals 1

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;->spanIndexCache:Landroid/util/SparseIntArray;

    .line 110
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;->spanGroupIndexCache:Landroid/util/SparseIntArray;

    .line 111
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public final setSpanGroupIndexCacheEnabled(Z)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;->spanGroupIndexCache:Landroid/util/SparseIntArray;

    .line 104
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    :cond_0
    iput-boolean p1, p0, Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;->cacheSpanGroupIndices:Z

    return-void
.end method

.method public final setSpanIndexCacheEnabled(Z)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;->spanGroupIndexCache:Landroid/util/SparseIntArray;

    .line 97
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    :cond_0
    iput-boolean p1, p0, Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;->cacheSpanIndices:Z

    return-void
.end method
