.class public final Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ExtraLayoutSpaceCalculator;
.super Ljava/lang/Object;
.source "ExtraLayoutSpaceCalculator.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0006H\u0002J\u0018\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0002J\u0016\u0010\r\u001a\u00020\u000e2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ExtraLayoutSpaceCalculator;",
        "",
        "layoutInfo",
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;",
        "(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;)V",
        "getDefaultExtraLayoutSpace",
        "",
        "setCustomExtraLayoutSpace",
        "",
        "layoutRequest",
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;",
        "state",
        "Landroidx/recyclerview/widget/RecyclerView$State;",
        "update",
        "",
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


# instance fields
.field private final layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;


# direct methods
.method public constructor <init>(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;)V
    .locals 1

    const-string v0, "layoutInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ExtraLayoutSpaceCalculator;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    return-void
.end method

.method private final getDefaultExtraLayoutSpace()I
    .locals 1

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ExtraLayoutSpaceCalculator;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 67
    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->isScrollingToTarget()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ExtraLayoutSpaceCalculator;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 68
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getTotalSpace()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final setCustomExtraLayoutSpace(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;Landroidx/recyclerview/widget/RecyclerView$State;)Z
    .locals 2

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ExtraLayoutSpaceCalculator;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 46
    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getConfiguration()Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;->getExtraLayoutSpaceStrategy()Lcom/rubensousa/dpadrecyclerview/ExtraLayoutSpaceStrategy;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 47
    invoke-interface {v0, p2}, Lcom/rubensousa/dpadrecyclerview/ExtraLayoutSpaceStrategy;->calculateStartExtraLayoutSpace(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v1

    .line 48
    invoke-interface {v0, p2}, Lcom/rubensousa/dpadrecyclerview/ExtraLayoutSpaceStrategy;->calculateEndExtraLayoutSpace(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p2

    .line 51
    invoke-virtual {p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->isAppending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-direct {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ExtraLayoutSpaceCalculator;->getDefaultExtraLayoutSpace()I

    move-result p0

    invoke-static {p0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    goto :goto_0

    .line 54
    :cond_0
    invoke-direct {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ExtraLayoutSpaceCalculator;->getDefaultExtraLayoutSpace()I

    move-result p0

    invoke-static {p0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 56
    :goto_0
    invoke-virtual {p1, v1, p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->setExtraLayoutSpace(II)V

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method


# virtual methods
.method public final update(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    const-string v0, "layoutRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ExtraLayoutSpaceCalculator;->setCustomExtraLayoutSpace(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;Landroidx/recyclerview/widget/RecyclerView$State;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 29
    :cond_0
    invoke-virtual {p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->isAppending()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 31
    invoke-direct {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ExtraLayoutSpaceCalculator;->getDefaultExtraLayoutSpace()I

    move-result p0

    .line 30
    invoke-virtual {p1, v0, p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->setExtraLayoutSpace(II)V

    goto :goto_0

    .line 36
    :cond_1
    invoke-direct {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ExtraLayoutSpaceCalculator;->getDefaultExtraLayoutSpace()I

    move-result p0

    .line 35
    invoke-virtual {p1, p0, v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutRequest;->setExtraLayoutSpace(II)V

    :goto_0
    return-void
.end method
