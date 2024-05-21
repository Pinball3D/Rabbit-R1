.class public final Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutAccessibilityHelper;
.super Ljava/lang/Object;
.source "LayoutAccessibilityHelper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0000\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJ\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J\u0018\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J\u000e\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017J\u000e\u0010\u0018\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017J\"\u0010\u0019\u001a\u00020\u000e2\n\u0010\u001a\u001a\u00060\u001bR\u00020\u001c2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u000f\u001a\u00020\u0010J\u0016\u0010\u001d\u001a\u00020\u000e2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u000f\u001a\u00020\u0010J \u0010 \u001a\u00020\u00122\u0008\u0010!\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\"\u001a\u00020\u0015J\u0012\u0010#\u001a\u00020\u000e2\u0008\u0010!\u001a\u0004\u0018\u00010\u001cH\u0002J\u0018\u0010$\u001a\u00020\u00152\u0006\u0010\"\u001a\u00020\u00152\u0006\u0010\u0011\u001a\u00020\u0012H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006%"
    }
    d2 = {
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutAccessibilityHelper;",
        "",
        "layoutManager",
        "Landroidx/recyclerview/widget/RecyclerView$LayoutManager;",
        "configuration",
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;",
        "layoutInfo",
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;",
        "pivotSelector",
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;",
        "scroller",
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;",
        "(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;)V",
        "addA11yActionMovingBackward",
        "",
        "info",
        "Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;",
        "reverseLayout",
        "",
        "addA11yActionMovingForward",
        "getColumnCountForAccessibility",
        "",
        "state",
        "Landroidx/recyclerview/widget/RecyclerView$State;",
        "getRowCountForAccessibility",
        "onInitializeAccessibilityNodeInfo",
        "recycler",
        "Landroidx/recyclerview/widget/RecyclerView$Recycler;",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "onInitializeAccessibilityNodeInfoForItem",
        "host",
        "Landroid/view/View;",
        "performAccessibilityAction",
        "recyclerView",
        "action",
        "sendViewScrolledAccessibilityEvent",
        "translateAccessibilityAction",
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
.field private final configuration:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

.field private final layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

.field private final layoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

.field private final pivotSelector:Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;

.field private final scroller:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;)V
    .locals 1

    const-string v0, "layoutManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configuration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutInfo"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pivotSelector"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scroller"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutAccessibilityHelper;->layoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iput-object p2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutAccessibilityHelper;->configuration:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    iput-object p3, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutAccessibilityHelper;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    iput-object p4, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutAccessibilityHelper;->pivotSelector:Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;

    iput-object p5, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutAccessibilityHelper;->scroller:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;

    return-void
.end method

.method private final addA11yActionMovingBackward(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;Z)V
    .locals 0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutAccessibilityHelper;->configuration:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    .line 202
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;->isHorizontal()Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz p2, :cond_0

    .line 204
    sget-object p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_RIGHT:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    goto :goto_0

    .line 206
    :cond_0
    sget-object p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_LEFT:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 208
    :goto_0
    invoke-virtual {p1, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    goto :goto_1

    .line 211
    :cond_1
    sget-object p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_UP:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 210
    invoke-virtual {p1, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    :goto_1
    const/4 p0, 0x1

    .line 217
    invoke-virtual {p1, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    return-void
.end method

.method private final addA11yActionMovingForward(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;Z)V
    .locals 0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutAccessibilityHelper;->configuration:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    .line 225
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;->isHorizontal()Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz p2, :cond_0

    .line 227
    sget-object p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_LEFT:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    goto :goto_0

    .line 229
    :cond_0
    sget-object p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_RIGHT:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    .line 231
    :goto_0
    invoke-virtual {p1, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    goto :goto_1

    .line 233
    :cond_1
    sget-object p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_DOWN:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p1, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    :goto_1
    const/4 p0, 0x1

    .line 238
    invoke-virtual {p1, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    return-void
.end method

.method private final sendViewScrolledAccessibilityEvent(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    const/16 p0, 0x1000

    .line 190
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p0

    if-eqz p1, :cond_0

    .line 192
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 193
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    :cond_0
    return-void
.end method

.method private final translateAccessibilityAction(IZ)I
    .locals 2

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutAccessibilityHelper;->configuration:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    .line 165
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;->isHorizontal()Z

    move-result p0

    const/16 v0, 0x1000

    const/16 v1, 0x2000

    if-eqz p0, :cond_3

    .line 166
    sget-object p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_LEFT:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getId()I

    move-result p0

    if-ne p1, p0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    .line 172
    :cond_1
    sget-object p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_RIGHT:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getId()I

    move-result p0

    if-ne p1, p0, :cond_5

    if-eqz p2, :cond_2

    move v0, v1

    :cond_2
    return v0

    .line 180
    :cond_3
    sget-object p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_UP:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getId()I

    move-result p0

    if-ne p1, p0, :cond_4

    return v1

    .line 182
    :cond_4
    sget-object p0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_SCROLL_DOWN:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->getId()I

    move-result p0

    if-ne p1, p0, :cond_5

    return v0

    :cond_5
    return p1
.end method


# virtual methods
.method public final getColumnCountForAccessibility(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 2

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutAccessibilityHelper;->configuration:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    .line 54
    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;->isVertical()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutAccessibilityHelper;->configuration:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    .line 55
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;->getSpanCount()I

    move-result p0

    return p0

    .line 57
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutAccessibilityHelper;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 61
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    sub-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getSpanGroupIndex(I)I

    move-result p0

    add-int/2addr p0, v1

    :goto_0
    return p0
.end method

.method public final getRowCountForAccessibility(Landroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 2

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutAccessibilityHelper;->configuration:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    .line 42
    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutAccessibilityHelper;->configuration:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    .line 43
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;->getSpanCount()I

    move-result p0

    return p0

    .line 45
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutAccessibilityHelper;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 49
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    sub-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getSpanGroupIndex(I)I

    move-result p0

    add-int/2addr p0, v1

    :goto_0
    return p0
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 5

    const-string v0, "recycler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    iget-object v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutAccessibilityHelper;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 71
    invoke-virtual {v1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->shouldReverseLayout()Z

    move-result v1

    iget-object v2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutAccessibilityHelper;->configuration:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    .line 75
    invoke-virtual {v2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;->getFocusOutFront()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    if-le v0, v3, :cond_1

    iget-object v2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutAccessibilityHelper;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->isItemFullyVisible(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 76
    :cond_0
    invoke-direct {p0, p3, v1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutAccessibilityHelper;->addA11yActionMovingBackward(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;Z)V

    :cond_1
    iget-object v2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutAccessibilityHelper;->configuration:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    .line 79
    invoke-virtual {v2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;->getFocusOutBack()Z

    move-result v2

    if-eqz v2, :cond_2

    if-le v0, v3, :cond_3

    iget-object v2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutAccessibilityHelper;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    sub-int/2addr v0, v3

    .line 80
    invoke-virtual {v2, v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->isItemFullyVisible(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 82
    :cond_2
    invoke-direct {p0, p3, v1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutAccessibilityHelper;->addA11yActionMovingForward(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;Z)V

    .line 88
    :cond_3
    invoke-virtual {p0, p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutAccessibilityHelper;->getRowCountForAccessibility(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v0

    .line 89
    invoke-virtual {p0, p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutAccessibilityHelper;->getColumnCountForAccessibility(Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result v1

    iget-object v2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutAccessibilityHelper;->layoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 90
    invoke-virtual {v2, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->isLayoutHierarchical(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)Z

    move-result v2

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutAccessibilityHelper;->layoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 91
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getSelectionModeForAccessibility(Landroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p0

    .line 87
    invoke-static {v0, v1, v2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;->obtain(IIZI)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;

    move-result-object p0

    .line 85
    invoke-virtual {p3, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionInfo(Ljava/lang/Object;)V

    return-void
.end method

.method public final onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 8

    const-string v0, "host"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const-string v0, "getLayoutParams(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    instance-of v0, p1, Lcom/rubensousa/dpadrecyclerview/layoutmanager/DpadLayoutParams;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutAccessibilityHelper;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 104
    check-cast p1, Lcom/rubensousa/dpadrecyclerview/layoutmanager/DpadLayoutParams;

    invoke-virtual {p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/DpadLayoutParams;->getViewLayoutPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getSpanGroupIndex(I)I

    move-result v0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutAccessibilityHelper;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 105
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->isHorizontal()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 108
    invoke-virtual {p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/DpadLayoutParams;->getSpanIndex()I

    move-result v2

    invoke-virtual {p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/DpadLayoutParams;->getSpanSize()I

    move-result v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v4, v0

    .line 107
    invoke-static/range {v2 .. v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object p0

    .line 106
    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    .line 116
    invoke-virtual {p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/DpadLayoutParams;->getSpanIndex()I

    move-result v4

    invoke-virtual {p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/DpadLayoutParams;->getSpanSize()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v2, v0

    .line 114
    invoke-static/range {v2 .. v7}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object p0

    .line 113
    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final performAccessibilityAction(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)Z
    .locals 6

    const-string v0, "state"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutAccessibilityHelper;->configuration:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    .line 127
    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;->isScrollEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutAccessibilityHelper;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 132
    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->shouldReverseLayout()Z

    move-result v0

    .line 131
    invoke-direct {p0, p3, v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutAccessibilityHelper;->translateAccessibilityAction(IZ)I

    move-result p3

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutAccessibilityHelper;->pivotSelector:Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;

    .line 135
    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->getPosition()I

    move-result v0

    const/16 v2, 0x2000

    const/4 v3, 0x0

    if-nez v0, :cond_1

    if-ne p3, v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    iget-object v4, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutAccessibilityHelper;->pivotSelector:Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;

    .line 138
    invoke-virtual {v4}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/PivotSelector;->getPosition()I

    move-result v4

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p2

    sub-int/2addr p2, v1

    const/16 v5, 0x1000

    if-ne v4, p2, :cond_2

    if-ne p3, v5, :cond_2

    move p2, v1

    goto :goto_1

    :cond_2
    move p2, v3

    :goto_1
    if-nez v0, :cond_6

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    if-eq p3, v5, :cond_5

    if-eq p3, v2, :cond_4

    goto :goto_3

    :cond_4
    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutAccessibilityHelper;->scroller:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;

    .line 154
    invoke-virtual {p0, v3, v1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->addScrollMovement(ZZ)Z

    goto :goto_3

    :cond_5
    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutAccessibilityHelper;->scroller:Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;

    .line 151
    invoke-virtual {p0, v1, v1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/scroll/LayoutScroller;->addScrollMovement(ZZ)Z

    goto :goto_3

    .line 147
    :cond_6
    :goto_2
    invoke-direct {p0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutAccessibilityHelper;->sendViewScrolledAccessibilityEvent(Landroidx/recyclerview/widget/RecyclerView;)V

    :goto_3
    return v1
.end method
