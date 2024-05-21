.class final Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher$PrefetchRequest;
.super Ljava/lang/Object;
.source "LazyLayoutPrefetcher.android.kt"

# interfaces
.implements Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PrefetchRequest"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001B\u0018\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u001b\u001a\u00020\u001cH\u0016R\u001a\u0010\u0007\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001c\u0010\u0004\u001a\u00020\u0005\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\n\n\u0002\u0010\u000f\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\n\"\u0004\u0008\u0014\u0010\u000cR\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001a\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006\u001d"
    }
    d2 = {
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher$PrefetchRequest;",
        "Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetchState$PrefetchHandle;",
        "index",
        "",
        "constraints",
        "Landroidx/compose/ui/unit/Constraints;",
        "(IJLkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "canceled",
        "",
        "getCanceled",
        "()Z",
        "setCanceled",
        "(Z)V",
        "getConstraints-msEJaDk",
        "()J",
        "J",
        "getIndex",
        "()I",
        "measured",
        "getMeasured",
        "setMeasured",
        "precomposeHandle",
        "Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;",
        "getPrecomposeHandle",
        "()Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;",
        "setPrecomposeHandle",
        "(Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;)V",
        "cancel",
        "",
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
.field private canceled:Z

.field private final constraints:J

.field private final index:I

.field private measured:Z

.field private precomposeHandle:Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;


# direct methods
.method private constructor <init>(IJ)V
    .locals 0

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher$PrefetchRequest;->index:I

    iput-wide p2, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher$PrefetchRequest;->constraints:J

    return-void
.end method

.method public synthetic constructor <init>(IJLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher$PrefetchRequest;-><init>(IJ)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher$PrefetchRequest;->canceled:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher$PrefetchRequest;->canceled:Z

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher$PrefetchRequest;->precomposeHandle:Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;

    if-eqz v0, :cond_0

    .line 282
    invoke-interface {v0}, Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;->dispose()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher$PrefetchRequest;->precomposeHandle:Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;

    :cond_1
    return-void
.end method

.method public final getCanceled()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher$PrefetchRequest;->canceled:Z

    return p0
.end method

.method public final getConstraints-msEJaDk()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher$PrefetchRequest;->constraints:J

    return-wide v0
.end method

.method public final getIndex()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher$PrefetchRequest;->index:I

    return p0
.end method

.method public final getMeasured()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher$PrefetchRequest;->measured:Z

    return p0
.end method

.method public final getPrecomposeHandle()Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher$PrefetchRequest;->precomposeHandle:Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;

    return-object p0
.end method

.method public final setCanceled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher$PrefetchRequest;->canceled:Z

    return-void
.end method

.method public final setMeasured(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher$PrefetchRequest;->measured:Z

    return-void
.end method

.method public final setPrecomposeHandle(Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutPrefetcher$PrefetchRequest;->precomposeHandle:Landroidx/compose/ui/layout/SubcomposeLayoutState$PrecomposedSlotHandle;

    return-void
.end method
