.class public Ltech/rabbit/r1launcher/widget/TvRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "TvRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltech/rabbit/r1launcher/widget/TvRecyclerView$OnInterceptListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TvRecyclerView"


# instance fields
.field private mBindFragment:Landroidx/fragment/app/Fragment;

.field private mPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, v0}, Ltech/rabbit/r1launcher/widget/TvRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, -0x1

    .line 35
    invoke-direct {p0, p1, p2, v0}, Ltech/rabbit/r1launcher/widget/TvRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    invoke-direct {p0, p1, p2, p3}, Ltech/rabbit/r1launcher/widget/TvRecyclerView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private getFreeHeight()I
    .locals 2

    .line 79
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/TvRecyclerView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/TvRecyclerView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/TvRecyclerView;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method private getFreeWidth()I
    .locals 2

    .line 75
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/TvRecyclerView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/TvRecyclerView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/TvRecyclerView;->getPaddingRight()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ltech/rabbit/r1launcher/widget/TvRecyclerView;->initView()V

    return-void
.end method

.method private initView()V
    .locals 2

    const/high16 v0, 0x40000

    .line 53
    invoke-virtual {p0, v0}, Ltech/rabbit/r1launcher/widget/TvRecyclerView;->setDescendantFocusability(I)V

    const/4 v0, 0x1

    .line 54
    invoke-virtual {p0, v0}, Ltech/rabbit/r1launcher/widget/TvRecyclerView;->setHasFixedSize(Z)V

    .line 55
    invoke-virtual {p0, v0}, Ltech/rabbit/r1launcher/widget/TvRecyclerView;->setWillNotDraw(Z)V

    const/4 v1, 0x2

    .line 56
    invoke-virtual {p0, v1}, Ltech/rabbit/r1launcher/widget/TvRecyclerView;->setOverScrollMode(I)V

    .line 57
    invoke-virtual {p0, v0}, Ltech/rabbit/r1launcher/widget/TvRecyclerView;->setChildrenDrawingOrderEnabled(Z)V

    const/4 v1, 0x0

    .line 59
    invoke-virtual {p0, v1}, Ltech/rabbit/r1launcher/widget/TvRecyclerView;->setClipChildren(Z)V

    .line 60
    invoke-virtual {p0, v1}, Ltech/rabbit/r1launcher/widget/TvRecyclerView;->setClipToPadding(Z)V

    .line 62
    invoke-virtual {p0, v1}, Ltech/rabbit/r1launcher/widget/TvRecyclerView;->setClickable(Z)V

    .line 63
    invoke-virtual {p0, v0}, Ltech/rabbit/r1launcher/widget/TvRecyclerView;->setFocusable(Z)V

    .line 64
    invoke-virtual {p0, v0}, Ltech/rabbit/r1launcher/widget/TvRecyclerView;->setFocusableInTouchMode(Z)V

    const/4 v0, 0x0

    .line 71
    invoke-virtual {p0, v0}, Ltech/rabbit/r1launcher/widget/TvRecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    return-void
.end method

.method private isVertical()Z
    .locals 2

    .line 184
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/TvRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/TvRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 187
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method private isVisBottom(Landroidx/recyclerview/widget/RecyclerView;)Z
    .locals 1

    .line 500
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 501
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    .line 502
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    .line 503
    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getItemCount()I

    move-result p0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6

    .line 241
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 242
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/TvRecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    .line 249
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    return v3

    .line 252
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const-string v2, "TvRecyclerView"

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    return v0

    .line 254
    :pswitch_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object p1

    const/16 v0, 0x42

    invoke-virtual {p1, p0, v1, v0}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 256
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return v3

    :cond_2
    return v4

    .line 262
    :pswitch_1
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object p1

    const/16 v0, 0x11

    invoke-virtual {p1, p0, v1, v0}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object p0

    .line 263
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "leftView is null:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p0, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    move v0, v4

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_4

    .line 265
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return v3

    :cond_4
    return v4

    .line 271
    :pswitch_2
    invoke-direct {p0, p0}, Ltech/rabbit/r1launcher/widget/TvRecyclerView;->isVisBottom(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 272
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/TvRecyclerView;->getLastVisiblePosition()I

    move-result p1

    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/widget/TvRecyclerView;->smoothScrollToPosition(I)V

    return v0

    .line 275
    :cond_5
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object p1

    const/16 v0, 0x82

    invoke-virtual {p1, p0, v1, v0}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " downView is null:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_6

    move v1, v3

    goto :goto_1

    :cond_6
    move v1, v4

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_7

    .line 278
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 279
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr v0, p1

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/TvRecyclerView;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr v0, p1

    .line 280
    invoke-virtual {p0, v4, v0}, Ltech/rabbit/r1launcher/widget/TvRecyclerView;->smoothScrollBy(II)V

    :cond_7
    return v3

    .line 286
    :pswitch_3
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object p1

    const/16 v5, 0x21

    invoke-virtual {p1, p0, v1, v5}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    .line 287
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "upView is null:"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_8

    move v5, v3

    goto :goto_2

    :cond_8
    move v5, v4

    :goto_2
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_9

    .line 289
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 290
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/TvRecyclerView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr v1, p1

    sub-int/2addr v0, v1

    neg-int p1, v0

    .line 291
    invoke-virtual {p0, v4, p1}, Ltech/rabbit/r1launcher/widget/TvRecyclerView;->smoothScrollBy(II)V

    return v3

    :cond_9
    const-string p0, "tab cache view"

    .line 294
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getBaseline()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 2

    .line 195
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/TvRecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 198
    invoke-virtual {p0, v0}, Ltech/rabbit/r1launcher/widget/TvRecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/TvRecyclerView;->getFirstVisiblePosition()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Ltech/rabbit/r1launcher/widget/TvRecyclerView;->mPosition:I

    if-gez v0, :cond_0

    return p2

    :cond_0
    add-int/lit8 p1, p1, -0x1

    if-ne p2, p1, :cond_2

    if-le v0, p2, :cond_1

    iput p2, p0, Ltech/rabbit/r1launcher/widget/TvRecyclerView;->mPosition:I

    :cond_1
    iget p0, p0, Ltech/rabbit/r1launcher/widget/TvRecyclerView;->mPosition:I

    return p0

    :cond_2
    if-ne p2, v0, :cond_3

    return p1

    :cond_3
    return p2
.end method

.method public getFirstVisiblePosition()I
    .locals 2

    .line 217
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/TvRecyclerView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 220
    :cond_0
    invoke-virtual {p0, v1}, Ltech/rabbit/r1launcher/widget/TvRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltech/rabbit/r1launcher/widget/TvRecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public getLastVisiblePosition()I
    .locals 1

    .line 224
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/TvRecyclerView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 228
    invoke-virtual {p0, v0}, Ltech/rabbit/r1launcher/widget/TvRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltech/rabbit/r1launcher/widget/TvRecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public hasFocus()Z
    .locals 0

    .line 90
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->hasFocus()Z

    move-result p0

    return p0
.end method

.method public isBottomEdge(I)Z
    .locals 9

    .line 453
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/TvRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 454
    instance-of v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 455
    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 456
    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanSizeLookup()Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object v1

    .line 457
    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getItemCount()I

    move-result v4

    .line 459
    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v5

    move v6, v2

    move v7, v6

    :goto_0
    if-gt v6, p1, :cond_0

    .line 461
    invoke-virtual {v1, v6}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v8

    add-int/2addr v7, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 463
    :cond_0
    invoke-direct {p0}, Ltech/rabbit/r1launcher/widget/TvRecyclerView;->isVertical()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 465
    rem-int p0, v4, v5

    if-nez p0, :cond_1

    .line 467
    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p0

    :cond_1
    sub-int/2addr v4, p0

    if-le v7, v4, :cond_6

    return v3

    .line 473
    :cond_2
    rem-int/2addr v7, v5

    if-nez v7, :cond_6

    return v3

    .line 478
    :cond_3
    instance-of v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_6

    .line 479
    invoke-direct {p0}, Ltech/rabbit/r1launcher/widget/TvRecyclerView;->isVertical()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 480
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/TvRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result p0

    sub-int/2addr p0, v3

    if-ne p1, p0, :cond_4

    move v2, v3

    :cond_4
    return v2

    :cond_5
    return v3

    :cond_6
    return v2
.end method

.method public isInTouchMode()Z
    .locals 0

    .line 99
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->isInTouchMode()Z

    move-result p0

    return p0
.end method

.method public isLeftEdge(I)Z
    .locals 8

    .line 372
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/TvRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 373
    instance-of v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 374
    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 375
    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanSizeLookup()Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object v1

    .line 377
    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v4

    move v5, v2

    move v6, v5

    :goto_0
    if-gt v5, p1, :cond_0

    .line 380
    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 382
    :cond_0
    invoke-direct {p0}, Ltech/rabbit/r1launcher/widget/TvRecyclerView;->isVertical()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 383
    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p0

    rem-int/2addr v6, p0

    if-ne v6, v3, :cond_4

    return v3

    :cond_1
    if-gt v6, v4, :cond_4

    return v3

    .line 392
    :cond_2
    instance-of v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_4

    .line 393
    invoke-direct {p0}, Ltech/rabbit/r1launcher/widget/TvRecyclerView;->isVertical()Z

    move-result p0

    if-eqz p0, :cond_3

    return v3

    :cond_3
    if-nez p1, :cond_4

    move v2, v3

    :cond_4
    return v2
.end method

.method public isRightEdge(I)Z
    .locals 9

    .line 326
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/TvRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 328
    instance-of v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 330
    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 331
    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanSizeLookup()Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object v1

    .line 333
    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v4

    .line 334
    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getItemCount()I

    move-result v5

    move v6, v2

    move v7, v6

    :goto_0
    if-gt v6, p1, :cond_0

    .line 338
    invoke-virtual {v1, v6}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v8

    add-int/2addr v7, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 340
    :cond_0
    invoke-direct {p0}, Ltech/rabbit/r1launcher/widget/TvRecyclerView;->isVertical()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 341
    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p0

    rem-int/2addr v7, p0

    if-nez v7, :cond_5

    return v3

    .line 345
    :cond_1
    rem-int p0, v5, v4

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    move v4, p0

    :goto_1
    sub-int/2addr v5, v4

    if-le v7, v5, :cond_5

    return v3

    .line 354
    :cond_3
    instance-of v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_5

    .line 355
    invoke-direct {p0}, Ltech/rabbit/r1launcher/widget/TvRecyclerView;->isVertical()Z

    move-result v0

    if-eqz v0, :cond_4

    return v3

    .line 358
    :cond_4
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/TvRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result p0

    sub-int/2addr p0, v3

    if-ne p1, p0, :cond_5

    move v2, v3

    :cond_5
    return v2
.end method

.method public isTopEdge(I)Z
    .locals 7

    .line 411
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/TvRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 412
    instance-of v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 413
    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 414
    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanSizeLookup()Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object v1

    .line 416
    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v0

    move v4, v2

    move v5, v4

    :goto_0
    if-gt v4, p1, :cond_0

    .line 420
    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 423
    :cond_0
    invoke-direct {p0}, Ltech/rabbit/r1launcher/widget/TvRecyclerView;->isVertical()Z

    move-result p0

    if-eqz p0, :cond_1

    if-gt v5, v0, :cond_5

    return v3

    .line 428
    :cond_1
    rem-int/2addr v5, v0

    if-ne v5, v3, :cond_5

    return v3

    .line 434
    :cond_2
    instance-of v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_5

    .line 435
    invoke-direct {p0}, Ltech/rabbit/r1launcher/widget/TvRecyclerView;->isVertical()Z

    move-result p0

    if-eqz p0, :cond_4

    if-nez p1, :cond_3

    move v2, v3

    :cond_3
    return v2

    :cond_4
    return v3

    :cond_5
    return v2
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 314
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/TvRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 315
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->onDetachedFromWindow()V

    :cond_0
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 85
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 308
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 105
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 9

    .line 110
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/TvRecyclerView;->getPaddingLeft()I

    move-result v0

    .line 111
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/TvRecyclerView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/TvRecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 113
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/TvRecyclerView;->getPaddingTop()I

    move-result v2

    .line 114
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/TvRecyclerView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/TvRecyclerView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 116
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v4

    iget v5, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    .line 117
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    iget v5, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v5

    .line 119
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/2addr v5, v4

    .line 120
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    add-int/2addr p2, p1

    sub-int/2addr v4, v0

    const/4 v0, 0x0

    .line 122
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    sub-int/2addr v5, v1

    .line 123
    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int/2addr p1, v2

    .line 125
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int/2addr p2, v3

    .line 126
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 129
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/TvRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v3

    .line 130
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/TvRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v3, :cond_3

    .line 137
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v3

    if-ne v3, v8, :cond_1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 139
    :cond_0
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_1

    :cond_1
    if-eqz v6, :cond_2

    goto :goto_0

    .line 142
    :cond_2
    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    :goto_0
    move v1, v6

    goto :goto_1

    :cond_3
    move v1, v0

    :goto_1
    if-eqz v7, :cond_5

    if-eqz v2, :cond_4

    goto :goto_2

    .line 152
    :cond_4
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_2

    :cond_5
    move v2, v0

    :goto_2
    if-nez v1, :cond_7

    if-eqz v2, :cond_6

    goto :goto_3

    :cond_6
    return v0

    :cond_7
    :goto_3
    if-eqz p3, :cond_8

    .line 159
    invoke-virtual {p0, v1, v2}, Ltech/rabbit/r1launcher/widget/TvRecyclerView;->scrollBy(II)V

    goto :goto_4

    .line 161
    :cond_8
    invoke-virtual {p0, v1, v2}, Ltech/rabbit/r1launcher/widget/TvRecyclerView;->smoothScrollBy(II)V

    .line 163
    :goto_4
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/TvRecyclerView;->postInvalidate()V

    return v8
.end method

.method public setBindFragment(Landroidx/fragment/app/Fragment;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/widget/TvRecyclerView;->mBindFragment:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method public setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 0

    .line 177
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method
