.class public Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/BaseSmoothScroller;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source "BaseSmoothScroller.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/BaseSmoothScroller$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0010\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0012\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0014J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0010H\u0014J\u0006\u0010\u0012\u001a\u00020\u0013J\u0006\u0010\u0007\u001a\u00020\u0008R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\u00020\u0005X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/BaseSmoothScroller;",
        "Landroidx/recyclerview/widget/LinearSmoothScroller;",
        "recyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "layoutInfo",
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;",
        "(Landroidx/recyclerview/widget/RecyclerView;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;)V",
        "isCanceled",
        "",
        "getLayoutInfo",
        "()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;",
        "calculateSpeedPerPixel",
        "",
        "displayMetrics",
        "Landroid/util/DisplayMetrics;",
        "calculateTimeForScrolling",
        "",
        "dx",
        "cancel",
        "",
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
.field public static final Companion:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/BaseSmoothScroller$Companion;

.field public static final MIN_SMOOTH_SCROLL_DURATION_MS:I = 0x1e


# instance fields
.field private isCanceled:Z

.field private final layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/BaseSmoothScroller$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/BaseSmoothScroller$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/BaseSmoothScroller;->Companion:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/BaseSmoothScroller$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/BaseSmoothScroller;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    return-void
.end method


# virtual methods
.method protected calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 1

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/BaseSmoothScroller;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 37
    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getConfiguration()Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;->getSmoothScrollSpeedFactor()F

    move-result v0

    .line 38
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F

    move-result p0

    mul-float/2addr p0, v0

    return p0
.end method

.method protected calculateTimeForScrolling(I)I
    .locals 1

    .line 42
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearSmoothScroller;->calculateTimeForScrolling(I)I

    move-result v0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/BaseSmoothScroller;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 43
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getTotalSpace()I

    move-result p0

    if-lez p0, :cond_0

    mul-int/lit8 p1, p1, 0x1e

    .line 45
    div-int/2addr p1, p0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_0
    return v0
.end method

.method public final cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/BaseSmoothScroller;->isCanceled:Z

    return-void
.end method

.method protected final getLayoutInfo()Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;
    .locals 0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/BaseSmoothScroller;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    return-object p0
.end method

.method public final isCanceled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/BaseSmoothScroller;->isCanceled:Z

    return p0
.end method
