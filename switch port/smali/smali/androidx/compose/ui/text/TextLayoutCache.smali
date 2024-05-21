.class public final Landroidx/compose/ui/text/TextLayoutCache;
.super Ljava/lang/Object;
.source "TextMeasurer.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\t\u001a\u0004\u0018\u00010\u00082\u0006\u0010\n\u001a\u00020\u000bJ\u0018\u0010\u000c\u001a\u0004\u0018\u00010\u00082\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u0008J\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u00082\u0006\u0010\n\u001a\u00020\u000bR\u001a\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Landroidx/compose/ui/text/TextLayoutCache;",
        "",
        "capacity",
        "",
        "(I)V",
        "lruCache",
        "Landroidx/compose/ui/text/caches/LruCache;",
        "Landroidx/compose/ui/text/CacheTextLayoutInput;",
        "Landroidx/compose/ui/text/TextLayoutResult;",
        "get",
        "key",
        "Landroidx/compose/ui/text/TextLayoutInput;",
        "put",
        "value",
        "remove",
        "ui-text_release"
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
.field private final lruCache:Landroidx/compose/ui/text/caches/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/ui/text/caches/LruCache<",
            "Landroidx/compose/ui/text/CacheTextLayoutInput;",
            "Landroidx/compose/ui/text/TextLayoutResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Landroidx/compose/ui/text/TextLayoutCache;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 347
    new-instance v0, Landroidx/compose/ui/text/caches/LruCache;

    invoke-direct {v0, p1}, Landroidx/compose/ui/text/caches/LruCache;-><init>(I)V

    iput-object v0, p0, Landroidx/compose/ui/text/TextLayoutCache;->lruCache:Landroidx/compose/ui/text/caches/LruCache;

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 346
    invoke-static {}, Landroidx/compose/ui/text/TextMeasurerKt;->access$getDefaultCacheSize$p()I

    move-result p1

    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/ui/text/TextLayoutCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final get(Landroidx/compose/ui/text/TextLayoutInput;)Landroidx/compose/ui/text/TextLayoutResult;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/ui/text/TextLayoutCache;->lruCache:Landroidx/compose/ui/text/caches/LruCache;

    .line 350
    new-instance v0, Landroidx/compose/ui/text/CacheTextLayoutInput;

    invoke-direct {v0, p1}, Landroidx/compose/ui/text/CacheTextLayoutInput;-><init>(Landroidx/compose/ui/text/TextLayoutInput;)V

    invoke-virtual {p0, v0}, Landroidx/compose/ui/text/caches/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/text/TextLayoutResult;

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return-object p1

    .line 352
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/text/TextLayoutResult;->getMultiParagraph()Landroidx/compose/ui/text/MultiParagraph;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/text/MultiParagraph;->getIntrinsics()Landroidx/compose/ui/text/MultiParagraphIntrinsics;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/text/MultiParagraphIntrinsics;->getHasStaleResolvedFonts()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    return-object p0
.end method

.method public final put(Landroidx/compose/ui/text/TextLayoutInput;Landroidx/compose/ui/text/TextLayoutResult;)Landroidx/compose/ui/text/TextLayoutResult;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/ui/text/TextLayoutCache;->lruCache:Landroidx/compose/ui/text/caches/LruCache;

    .line 362
    new-instance v0, Landroidx/compose/ui/text/CacheTextLayoutInput;

    invoke-direct {v0, p1}, Landroidx/compose/ui/text/CacheTextLayoutInput;-><init>(Landroidx/compose/ui/text/TextLayoutInput;)V

    invoke-virtual {p0, v0, p2}, Landroidx/compose/ui/text/caches/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/text/TextLayoutResult;

    return-object p0
.end method

.method public final remove(Landroidx/compose/ui/text/TextLayoutInput;)Landroidx/compose/ui/text/TextLayoutResult;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/ui/text/TextLayoutCache;->lruCache:Landroidx/compose/ui/text/caches/LruCache;

    .line 366
    new-instance v0, Landroidx/compose/ui/text/CacheTextLayoutInput;

    invoke-direct {v0, p1}, Landroidx/compose/ui/text/CacheTextLayoutInput;-><init>(Landroidx/compose/ui/text/TextLayoutInput;)V

    invoke-virtual {p0, v0}, Landroidx/compose/ui/text/caches/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/text/TextLayoutResult;

    return-object p0
.end method
