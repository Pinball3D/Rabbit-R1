.class public final Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;
.super Ljava/lang/Object;
.source "LazyLayoutPrefetcher.android.kt"

# interfaces
.implements Landroidx/compose/runtime/RememberObserver;
.implements Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$Prefetcher;
.implements Ljava/lang/Runnable;
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher$Companion;,
        Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher$PrefetchRequest;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLazyLayoutPrefetcher.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazyLayoutPrefetcher.android.kt\nandroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher\n+ 2 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVectorKt\n+ 3 MutableVector.kt\nandroidx/compose/runtime/collection/MutableVector\n+ 4 AndroidTrace.android.kt\nandroidx/compose/ui/util/AndroidTrace_androidKt\n*L\n1#1,312:1\n1182#2:313\n1161#2,2:314\n523#3:316\n26#4,5:317\n26#4,5:322\n*S KotlinDebug\n*F\n+ 1 LazyLayoutPrefetcher.android.kt\nandroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher\n*L\n122#1:313\n122#1:314,2\n159#1:316\n164#1:317,5\n183#1:322,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0001\u0018\u0000 02\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u000201B%\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0002\u0010\rJ\u0018\u0010\u001a\u001a\u00020\u000f2\u0006\u0010\u001b\u001a\u00020\u000f2\u0006\u0010\u001c\u001a\u00020\u000fH\u0002J\u0010\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u000fH\u0016J \u0010 \u001a\u00020\u00152\u0006\u0010!\u001a\u00020\u000f2\u0006\u0010\"\u001a\u00020\u000f2\u0006\u0010#\u001a\u00020\u000fH\u0002J\u0008\u0010$\u001a\u00020\u001eH\u0016J\u0008\u0010%\u001a\u00020\u001eH\u0016J\u0008\u0010&\u001a\u00020\u001eH\u0016J\u0008\u0010\'\u001a\u00020\u001eH\u0016J%\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020-H\u0016\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008.\u0010/R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0011\u001a\n \u0013*\u0004\u0018\u00010\u00120\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u00062"
    }
    d2 = {
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;",
        "Landroidx/compose/runtime/RememberObserver;",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$Prefetcher;",
        "Ljava/lang/Runnable;",
        "Landroid/view/Choreographer$FrameCallback;",
        "prefetchState",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;",
        "subcomposeLayoutState",
        "Landroidx/compose/ui/layout/SubcomposeLayoutState;",
        "itemContentFactory",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;",
        "view",
        "Landroid/view/View;",
        "(Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;Landroidx/compose/ui/layout/SubcomposeLayoutState;Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;Landroid/view/View;)V",
        "averagePrecomposeTimeNs",
        "",
        "averagePremeasureTimeNs",
        "choreographer",
        "Landroid/view/Choreographer;",
        "kotlin.jvm.PlatformType",
        "isActive",
        "",
        "prefetchRequests",
        "Landroidx/compose/runtime/collection/MutableVector;",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher$PrefetchRequest;",
        "prefetchScheduled",
        "calculateAverageTime",
        "new",
        "current",
        "doFrame",
        "",
        "frameTimeNanos",
        "enoughTimeLeft",
        "now",
        "nextFrame",
        "average",
        "onAbandoned",
        "onForgotten",
        "onRemembered",
        "run",
        "schedulePrefetch",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;",
        "index",
        "",
        "constraints",
        "Landroidx/compose/ui/unit/Constraints;",
        "schedulePrefetch-0kLqBqw",
        "(IJ)Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;",
        "Companion",
        "PrefetchRequest",
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


# static fields
.field public static final Companion:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher$Companion;

.field private static frameIntervalNs:J


# instance fields
.field private averagePrecomposeTimeNs:J

.field private averagePremeasureTimeNs:J

.field private final choreographer:Landroid/view/Choreographer;

.field private isActive:Z

.field private final itemContentFactory:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;

.field private final prefetchRequests:Landroidx/compose/runtime/collection/MutableVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher$PrefetchRequest;",
            ">;"
        }
    .end annotation
.end field

.field private prefetchScheduled:Z

.field private final prefetchState:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

.field private final subcomposeLayoutState:Landroidx/compose/ui/layout/SubcomposeLayoutState;

.field private final view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->Companion:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;Landroidx/compose/ui/layout/SubcomposeLayoutState;Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;Landroid/view/View;)V
    .locals 1

    const-string v0, "prefetchState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "subcomposeLayoutState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemContentFactory"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "view"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->prefetchState:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    iput-object p2, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->subcomposeLayoutState:Landroidx/compose/ui/layout/SubcomposeLayoutState;

    iput-object p3, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->itemContentFactory:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;

    iput-object p4, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->view:Landroid/view/View;

    .line 315
    new-instance p1, Landroidx/compose/runtime/collection/MutableVector;

    const/16 p2, 0x10

    new-array p2, p2, [Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher$PrefetchRequest;

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->prefetchRequests:Landroidx/compose/runtime/collection/MutableVector;

    .line 134
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->choreographer:Landroid/view/Choreographer;

    sget-object p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->Companion:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher$Companion;

    .line 140
    invoke-static {p0, p4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher$Companion;->access$calculateFrameIntervalIfNeeded(Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher$Companion;Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$getFrameIntervalNs$cp()J
    .locals 2

    sget-wide v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->frameIntervalNs:J

    return-wide v0
.end method

.method public static final synthetic access$setFrameIntervalNs$cp(J)V
    .locals 0

    sput-wide p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->frameIntervalNs:J

    return-void
.end method

.method private final calculateAverageTime(JJ)J
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long p0, p3, v0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    int-to-long v0, p0

    .line 237
    div-long/2addr p3, v0

    const/4 p0, 0x3

    int-to-long v2, p0

    mul-long/2addr p3, v2

    div-long/2addr p1, v0

    add-long/2addr p1, p3

    :goto_0
    return-wide p1
.end method

.method private final enoughTimeLeft(JJJ)Z
    .locals 0

    cmp-long p0, p1, p3

    if-gtz p0, :cond_1

    add-long/2addr p1, p5

    cmp-long p0, p1, p3

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public doFrame(J)V
    .locals 0

    iget-boolean p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->isActive:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->view:Landroid/view/View;

    .line 225
    check-cast p0, Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onAbandoned()V
    .locals 0

    return-void
.end method

.method public onForgotten()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->isActive:Z

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->prefetchState:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    const/4 v1, 0x0

    .line 262
    invoke-virtual {v0, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;->setPrefetcher$foundation_release(Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$Prefetcher;)V

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->view:Landroid/view/View;

    .line 263
    move-object v1, p0

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->choreographer:Landroid/view/Choreographer;

    .line 264
    check-cast p0, Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

.method public onRemembered()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->prefetchState:Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;

    .line 256
    move-object v1, p0

    check-cast v1, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$Prefetcher;

    invoke-virtual {v0, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState;->setPrefetcher$foundation_release(Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$Prefetcher;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->isActive:Z

    return-void
.end method

.method public run()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->prefetchRequests:Landroidx/compose/runtime/collection/MutableVector;

    .line 148
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->isEmpty()Z

    move-result v1

    const/4 v8, 0x0

    if-nez v1, :cond_9

    iget-boolean v1, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->prefetchScheduled:Z

    if-eqz v1, :cond_9

    iget-boolean v1, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->isActive:Z

    if-eqz v1, :cond_9

    iget-object v1, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->view:Landroid/view/View;

    .line 149
    invoke-virtual {v1}, Landroid/view/View;->getWindowVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_5

    .line 155
    :cond_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v2, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getDrawingTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    sget-wide v3, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->frameIntervalNs:J

    add-long v9, v1, v3

    move v11, v8

    :goto_0
    iget-object v1, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->prefetchRequests:Landroidx/compose/runtime/collection/MutableVector;

    .line 158
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->isNotEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    if-nez v11, :cond_7

    iget-object v1, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->prefetchRequests:Landroidx/compose/runtime/collection/MutableVector;

    .line 316
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    move-result-object v1

    aget-object v1, v1, v8

    .line 159
    move-object v12, v1

    check-cast v12, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher$PrefetchRequest;

    iget-object v1, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->itemContentFactory:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;

    .line 160
    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;->getItemProvider()Lkotlin/jvm/functions/Function0;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;

    .line 161
    invoke-virtual {v12}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher$PrefetchRequest;->getCanceled()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-interface {v13}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;->getItemCount()I

    move-result v1

    invoke-virtual {v12}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher$PrefetchRequest;->getIndex()I

    move-result v2

    if-ltz v2, :cond_6

    if-ge v2, v1, :cond_6

    .line 163
    invoke-virtual {v12}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher$PrefetchRequest;->getPrecomposeHandle()Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;

    move-result-object v1

    const/4 v14, 0x1

    if-nez v1, :cond_2

    const-string v1, "compose:lazylist:prefetch:compose"

    .line 317
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 165
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v15

    iget-wide v6, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->averagePrecomposeTimeNs:J

    move-object/from16 v1, p0

    move-wide v2, v15

    move-wide v4, v9

    .line 168
    invoke-direct/range {v1 .. v7}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->enoughTimeLeft(JJJ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 169
    invoke-virtual {v12}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher$PrefetchRequest;->getIndex()I

    move-result v1

    invoke-interface {v13, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;->getKey(I)Ljava/lang/Object;

    move-result-object v1

    .line 170
    invoke-virtual {v12}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher$PrefetchRequest;->getIndex()I

    move-result v2

    invoke-interface {v13, v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;->getContentType(I)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->itemContentFactory:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;

    .line 171
    invoke-virtual {v12}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher$PrefetchRequest;->getIndex()I

    move-result v4

    invoke-virtual {v3, v4, v1, v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactory;->getContent(ILjava/lang/Object;Ljava/lang/Object;)Lkotlin/jvm/functions/Function2;

    move-result-object v2

    iget-object v3, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->subcomposeLayoutState:Landroidx/compose/ui/layout/SubcomposeLayoutState;

    .line 172
    invoke-virtual {v3, v1, v2}, Landroidx/compose/ui/layout/SubcomposeLayoutState;->precompose(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher$PrefetchRequest;->setPrecomposeHandle(Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;)V

    .line 174
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    sub-long/2addr v1, v15

    iget-wide v3, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->averagePrecomposeTimeNs:J

    .line 173
    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->calculateAverageTime(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->averagePrecomposeTimeNs:J

    goto :goto_1

    :cond_1
    move v11, v14

    .line 180
    :goto_1
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0

    .line 182
    :cond_2
    invoke-virtual {v12}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher$PrefetchRequest;->getMeasured()Z

    move-result v1

    xor-int/2addr v1, v14

    if-eqz v1, :cond_5

    const-string v1, "compose:lazylist:prefetch:measure"

    .line 322
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 184
    :try_start_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v15

    iget-wide v6, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->averagePremeasureTimeNs:J

    move-object/from16 v1, p0

    move-wide v2, v15

    move-wide v4, v9

    .line 185
    invoke-direct/range {v1 .. v7}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->enoughTimeLeft(JJJ)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 186
    invoke-virtual {v12}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher$PrefetchRequest;->getPrecomposeHandle()Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 187
    invoke-interface {v1}, Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;->getPlaceablesCount()I

    move-result v2

    move v3, v8

    :goto_2
    if-ge v3, v2, :cond_3

    .line 190
    invoke-virtual {v12}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher$PrefetchRequest;->getConstraints-msEJaDk()J

    move-result-wide v4

    .line 188
    invoke-interface {v1, v3, v4, v5}, Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;->premeasure-0kLqBqw(IJ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 194
    :cond_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    sub-long/2addr v1, v15

    iget-wide v3, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->averagePremeasureTimeNs:J

    .line 193
    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->calculateAverageTime(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->averagePremeasureTimeNs:J

    iget-object v1, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->prefetchRequests:Landroidx/compose/runtime/collection/MutableVector;

    .line 198
    invoke-virtual {v1, v8}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    goto :goto_3

    .line 200
    :cond_4
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v11, v14

    .line 326
    :goto_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0

    .line 182
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iget-object v1, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->prefetchRequests:Landroidx/compose/runtime/collection/MutableVector;

    .line 162
    invoke-virtual {v1, v8}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_7
    if-eqz v11, :cond_8

    iget-object v1, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->choreographer:Landroid/view/Choreographer;

    .line 209
    check-cast v0, Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v1, v0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto :goto_4

    :cond_8
    iput-boolean v8, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->prefetchScheduled:Z

    :goto_4
    return-void

    :cond_9
    :goto_5
    iput-boolean v8, v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->prefetchScheduled:Z

    return-void
.end method

.method public schedulePrefetch-0kLqBqw(IJ)Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;
    .locals 2

    .line 245
    new-instance v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher$PrefetchRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher$PrefetchRequest;-><init>(IJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->prefetchRequests:Landroidx/compose/runtime/collection/MutableVector;

    .line 246
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    iget-boolean p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->prefetchScheduled:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->prefetchScheduled:Z

    iget-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;->view:Landroid/view/View;

    .line 250
    check-cast p0, Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 252
    :cond_0
    check-cast v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;

    return-object v0
.end method
