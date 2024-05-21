.class public final Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/ContinuousFocusInterceptor;
.super Ljava/lang/Object;
.source "ContinuousFocusInterceptor.kt"

# interfaces
.implements Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusInterceptor;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J*\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000bH\u0016J\u001a\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/ContinuousFocusInterceptor;",
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusInterceptor;",
        "layoutInfo",
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;",
        "(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;)V",
        "findFocus",
        "Landroid/view/View;",
        "recyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "focusedView",
        "position",
        "",
        "direction",
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;",
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

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/ContinuousFocusInterceptor;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    return-void
.end method

.method private final findFocus(ILcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;)Landroid/view/View;
    .locals 4

    .line 47
    sget-object v0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;->PREVIOUS_COLUMN:Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;

    const/4 v1, 0x0

    if-eq p2, v0, :cond_0

    .line 48
    sget-object v0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;->NEXT_COLUMN:Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;

    if-eq p2, v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/ContinuousFocusInterceptor;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 52
    invoke-virtual {v0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getSpanGroupIndex(I)I

    move-result v0

    .line 53
    sget-object v2, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;->NEXT_COLUMN:Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;

    if-ne p2, v2, :cond_1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p1, p1, -0x1

    :goto_0
    iget-object v2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/ContinuousFocusInterceptor;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 58
    invoke-virtual {v2, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getSpanGroupIndex(I)I

    move-result v2

    :goto_1
    if-ne v2, v0, :cond_4

    if-ltz p1, :cond_4

    iget-object v2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/ContinuousFocusInterceptor;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 62
    invoke-virtual {v2, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/ContinuousFocusInterceptor;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 63
    invoke-virtual {v3, v2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->isViewFocusable(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    .line 66
    :cond_2
    sget-object v2, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;->NEXT_COLUMN:Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;

    if-ne p2, v2, :cond_3

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 p1, p1, -0x1

    :goto_2
    iget-object v2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/ContinuousFocusInterceptor;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 71
    invoke-virtual {v2, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getSpanGroupIndex(I)I

    move-result v2

    goto :goto_1

    :cond_4
    if-nez v2, :cond_5

    if-nez v0, :cond_5

    return-object v1

    :cond_5
    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/ContinuousFocusInterceptor;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 78
    invoke-virtual {v0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    :goto_3
    if-eqz v0, :cond_7

    iget-object v2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/ContinuousFocusInterceptor;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 81
    invoke-virtual {v2, v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->isViewFocusable(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 82
    sget-object v0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;->NEXT_COLUMN:Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;

    if-ne p2, v0, :cond_6

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_6
    add-int/lit8 p1, p1, -0x1

    :goto_4
    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/ContinuousFocusInterceptor;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 87
    invoke-virtual {v0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    goto :goto_3

    :cond_7
    if-eqz v0, :cond_8

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/ContinuousFocusInterceptor;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 90
    invoke-virtual {p0, v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->isViewFocusable(Landroid/view/View;)Z

    move-result p0

    if-nez p0, :cond_8

    return-object v1

    :cond_8
    return-object v0
.end method


# virtual methods
.method public findFocus(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;II)Landroid/view/View;
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "focusedView"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    sget-object p1, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;->Companion:Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection$Companion;

    iget-object p2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/ContinuousFocusInterceptor;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 39
    invoke-virtual {p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->isVertical()Z

    move-result p2

    iget-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/ContinuousFocusInterceptor;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 40
    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->shouldReverseLayout()Z

    move-result v0

    .line 38
    invoke-virtual {p1, p4, p2, v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection$Companion;->from(IZZ)Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 43
    :cond_0
    invoke-direct {p0, p3, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/ContinuousFocusInterceptor;->findFocus(ILcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method
