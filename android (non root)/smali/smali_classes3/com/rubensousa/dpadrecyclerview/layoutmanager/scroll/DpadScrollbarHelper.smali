.class public final Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/DpadScrollbarHelper;
.super Ljava/lang/Object;
.source "DpadScrollbarHelper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J:\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fJB\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000fJ:\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/DpadScrollbarHelper;",
        "",
        "()V",
        "computeScrollExtent",
        "",
        "state",
        "Landroidx/recyclerview/widget/RecyclerView$State;",
        "orientationHelper",
        "Landroidx/recyclerview/widget/OrientationHelper;",
        "startChild",
        "Landroid/view/View;",
        "endChild",
        "lm",
        "Landroidx/recyclerview/widget/RecyclerView$LayoutManager;",
        "smoothScrollbarEnabled",
        "",
        "computeScrollOffset",
        "reverseLayout",
        "computeScrollRange",
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
.field public static final INSTANCE:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/DpadScrollbarHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/DpadScrollbarHelper;

    invoke-direct {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/DpadScrollbarHelper;-><init>()V

    sput-object v0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/DpadScrollbarHelper;->INSTANCE:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/DpadScrollbarHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final computeScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Z)I
    .locals 0

    const-string p0, "state"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "orientationHelper"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "lm"

    invoke-static {p5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p0

    if-eqz p0, :cond_2

    if-eqz p3, :cond_2

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    if-nez p6, :cond_1

    .line 100
    invoke-virtual {p5, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p0

    invoke-virtual {p5, p4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    sub-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0

    .line 102
    :cond_1
    invoke-virtual {p2, p4}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p0

    .line 103
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p1

    sub-int/2addr p0, p1

    .line 104
    invoke-virtual {p2}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result p1

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final computeScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;ZZ)I
    .locals 3

    const-string p0, "state"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "orientationHelper"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "lm"

    invoke-static {p5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p0

    if-eqz p0, :cond_3

    if-eqz p3, :cond_3

    if-nez p4, :cond_0

    goto :goto_1

    .line 60
    :cond_0
    invoke-virtual {p5, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p0

    invoke-virtual {p5, p4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    invoke-static {p0, v1}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 61
    invoke-virtual {p5, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p5, p4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-eqz p7, :cond_1

    .line 63
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p0

    sub-int/2addr p0, v1

    add-int/lit8 p0, p0, -0x1

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    goto :goto_0

    .line 65
    :cond_1
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    :goto_0
    if-nez p6, :cond_2

    return p0

    .line 71
    :cond_2
    invoke-virtual {p2, p4}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p1

    .line 72
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p6

    sub-int/2addr p1, p6

    .line 70
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 74
    invoke-virtual {p5, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p6

    invoke-virtual {p5, p4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p4

    sub-int/2addr p6, p4

    invoke-static {p6}, Ljava/lang/Math;->abs(I)I

    move-result p4

    add-int/lit8 p4, p4, 0x1

    int-to-float p1, p1

    int-to-float p4, p4

    div-float/2addr p1, p4

    int-to-float p0, p0

    mul-float/2addr p0, p1

    .line 77
    invoke-virtual {p2}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p1

    .line 78
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p2

    sub-int/2addr p1, p2

    int-to-float p1, p1

    add-float/2addr p0, p1

    .line 76
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0

    :cond_3
    :goto_1
    return v0
.end method

.method public final computeScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Z)I
    .locals 0

    const-string p0, "state"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "orientationHelper"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "lm"

    invoke-static {p5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    invoke-virtual {p5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result p0

    if-eqz p0, :cond_2

    .line 120
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p0

    if-eqz p0, :cond_2

    if-eqz p3, :cond_2

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    if-nez p6, :cond_1

    .line 127
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p0

    return p0

    .line 130
    :cond_1
    invoke-virtual {p2, p4}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p0

    .line 131
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p2

    sub-int/2addr p0, p2

    .line 132
    invoke-virtual {p5, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p2

    invoke-virtual {p5, p4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p3

    sub-int/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    int-to-float p0, p0

    int-to-float p2, p2

    div-float/2addr p0, p2

    .line 134
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p0, p1

    float-to-int p0, p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
