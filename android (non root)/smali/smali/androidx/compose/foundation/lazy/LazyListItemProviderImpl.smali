.class final Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;
.super Ljava/lang/Object;
.source "LazyListItemProvider.kt"

# interfaces
.implements Landroidx/compose/foundation/lazy/LazyListItemProvider;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0008\u0003\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u001d\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\r2\u0006\u0010\u001a\u001a\u00020\u001bH\u0017\u00a2\u0006\u0002\u0010\u001cJ\u0013\u0010\u001d\u001a\u00020\u001e2\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u001bH\u0096\u0002J\u0012\u0010 \u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u0019\u001a\u00020\rH\u0016J\u0010\u0010!\u001a\u00020\r2\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J\u0010\u0010\"\u001a\u00020\u001b2\u0006\u0010\u0019\u001a\u00020\rH\u0016J\u0008\u0010#\u001a\u00020\rH\u0016R\u001a\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u00020\r8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0008\u001a\u00020\tX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006$"
    }
    d2 = {
        "Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;",
        "Landroidx/compose/foundation/lazy/LazyListItemProvider;",
        "state",
        "Landroidx/compose/foundation/lazy/LazyListState;",
        "intervalContent",
        "Landroidx/compose/foundation/lazy/LazyListIntervalContent;",
        "itemScope",
        "Landroidx/compose/foundation/lazy/LazyItemScopeImpl;",
        "keyIndexMap",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;",
        "(Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/lazy/LazyListIntervalContent;Landroidx/compose/foundation/lazy/LazyItemScopeImpl;Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;)V",
        "headerIndexes",
        "",
        "",
        "getHeaderIndexes",
        "()Ljava/util/List;",
        "itemCount",
        "getItemCount",
        "()I",
        "getItemScope",
        "()Landroidx/compose/foundation/lazy/LazyItemScopeImpl;",
        "getKeyIndexMap",
        "()Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;",
        "Item",
        "",
        "index",
        "key",
        "",
        "(ILjava/lang/Object;Landroidx/compose/runtime/Composer;I)V",
        "equals",
        "",
        "other",
        "getContentType",
        "getIndex",
        "getKey",
        "hashCode",
        "foundation_release"
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
.field private final intervalContent:Landroidx/compose/foundation/lazy/LazyListIntervalContent;

.field private final itemScope:Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

.field private final keyIndexMap:Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

.field private final state:Landroidx/compose/foundation/lazy/LazyListState;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/lazy/LazyListIntervalContent;Landroidx/compose/foundation/lazy/LazyItemScopeImpl;Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;)V
    .locals 1

    const-string/jumbo v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intervalContent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemScope"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyIndexMap"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->state:Landroidx/compose/foundation/lazy/LazyListState;

    iput-object p2, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->intervalContent:Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    iput-object p3, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->itemScope:Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    iput-object p4, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->keyIndexMap:Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    return-void
.end method

.method public static final synthetic access$getIntervalContent$p(Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;)Landroidx/compose/foundation/lazy/LazyListIntervalContent;
    .locals 0

    .line 65
    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->intervalContent:Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    return-object p0
.end method


# virtual methods
.method public Item(ILjava/lang/Object;Landroidx/compose/runtime/Composer;I)V
    .locals 7

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, -0x1b900aca

    .line 76
    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object p3

    const-string v1, "C(Item)76@2951L204:LazyListItemProvider.kt#428nma"

    invoke-static {p3, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "androidx.compose.foundation.lazy.LazyListItemProviderImpl.Item (LazyListItemProvider.kt:75)"

    invoke-static {v0, p4, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->state:Landroidx/compose/foundation/lazy/LazyListState;

    .line 77
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListState;->getPinnedItems$foundation_release()Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;

    move-result-object v3

    new-instance v0, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl$Item$1;

    invoke-direct {v0, p0, p1}, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl$Item$1;-><init>(Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;I)V

    const v1, -0x3128503e

    const/4 v2, 0x1

    invoke-static {p3, v1, v2, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    shl-int/lit8 v0, p4, 0x3

    and-int/lit8 v0, v0, 0x70

    or-int/lit16 v6, v0, 0xe08

    move-object v1, p2

    move v2, p1

    move-object v5, p3

    invoke-static/range {v1 .. v6}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItemKt;->LazyLayoutPinnableItem(Ljava/lang/Object;ILandroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object p3

    if-nez p3, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl$Item$2;

    invoke-direct {v0, p0, p1, p2, p4}, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl$Item$2;-><init>(Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;ILjava/lang/Object;I)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {p3, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 95
    :cond_0
    instance-of v0, p1, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->intervalContent:Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    .line 99
    check-cast p1, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;

    iget-object p1, p1, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->intervalContent:Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getContentType(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->intervalContent:Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    .line 87
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/lazy/LazyListIntervalContent;->getContentType(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getHeaderIndexes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->intervalContent:Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    .line 89
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListIntervalContent;->getHeaderIndexes()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getIndex(Ljava/lang/Object;)I
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->getKeyIndexMap()Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    move-result-object p0

    invoke-interface {p0, p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;->getIndex(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->intervalContent:Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    .line 73
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListIntervalContent;->getItemCount()I

    move-result p0

    return p0
.end method

.method public getItemScope()Landroidx/compose/foundation/lazy/LazyItemScopeImpl;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->itemScope:Landroidx/compose/foundation/lazy/LazyItemScopeImpl;

    return-object p0
.end method

.method public getKey(I)Ljava/lang/Object;
    .locals 1

    .line 85
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->getKeyIndexMap()Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;->getKey(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->intervalContent:Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/lazy/LazyListIntervalContent;->getKey(I)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getKeyIndexMap()Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->keyIndexMap:Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->intervalContent:Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    .line 103
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListIntervalContent;->hashCode()I

    move-result p0

    return p0
.end method
