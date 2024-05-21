.class final Landroidx/appcompat/view/menu/StandardMenuPopup;
.super Landroidx/appcompat/view/menu/MenuPopup;
.source "StandardMenuPopup.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroidx/appcompat/view/menu/MenuPresenter;
.implements Landroid/view/View$OnKeyListener;


# static fields
.field private static final ITEM_LAYOUT:I


# instance fields
.field private final mAdapter:Landroidx/appcompat/view/menu/MenuAdapter;

.field private mAnchorView:Landroid/view/View;

.field private final mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

.field private mContentWidth:I

.field private final mContext:Landroid/content/Context;

.field private mDropDownGravity:I

.field final mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mHasContentWidth:Z

.field private final mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

.field private mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final mOverflowOnly:Z

.field final mPopup:Landroidx/appcompat/widget/MenuPopupWindow;

.field private final mPopupMaxWidth:I

.field private final mPopupStyleAttr:I

.field private final mPopupStyleRes:I

.field private mPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

.field private mShowTitle:Z

.field mShownAnchorView:Landroid/view/View;

.field mTreeObserver:Landroid/view/ViewTreeObserver;

.field private mWasDismissed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    sget v0, Landroidx/appcompat/R$layout;->abc_popup_menu_item_layout:I

    sput v0, Landroidx/appcompat/view/menu/StandardMenuPopup;->ITEM_LAYOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/View;IIZ)V
    .locals 3

    .line 117
    invoke-direct {p0}, Landroidx/appcompat/view/menu/MenuPopup;-><init>()V

    .line 60
    new-instance v0, Landroidx/appcompat/view/menu/StandardMenuPopup$1;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/StandardMenuPopup$1;-><init>(Landroidx/appcompat/view/menu/StandardMenuPopup;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 79
    new-instance v0, Landroidx/appcompat/view/menu/StandardMenuPopup$2;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/StandardMenuPopup$2;-><init>(Landroidx/appcompat/view/menu/StandardMenuPopup;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mDropDownGravity:I

    iput-object p1, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    iput-boolean p6, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mOverflowOnly:Z

    .line 121
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 122
    new-instance v1, Landroidx/appcompat/view/menu/MenuAdapter;

    sget v2, Landroidx/appcompat/view/menu/StandardMenuPopup;->ITEM_LAYOUT:I

    invoke-direct {v1, p2, v0, p6, v2}, Landroidx/appcompat/view/menu/MenuAdapter;-><init>(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/LayoutInflater;ZI)V

    iput-object v1, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mAdapter:Landroidx/appcompat/view/menu/MenuAdapter;

    iput p4, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopupStyleAttr:I

    iput p5, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopupStyleRes:I

    .line 126
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p6

    .line 127
    invoke-virtual {p6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v0, v0, 0x2

    sget v1, Landroidx/appcompat/R$dimen;->abc_config_prefDialogWidth:I

    .line 128
    invoke-virtual {p6, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p6

    .line 127
    invoke-static {v0, p6}, Ljava/lang/Math;->max(II)I

    move-result p6

    iput p6, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopupMaxWidth:I

    iput-object p3, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mAnchorView:Landroid/view/View;

    .line 132
    new-instance p3, Landroidx/appcompat/widget/MenuPopupWindow;

    const/4 p6, 0x0

    invoke-direct {p3, p1, p6, p4, p5}, Landroidx/appcompat/widget/MenuPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object p3, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Landroidx/appcompat/widget/MenuPopupWindow;

    .line 135
    invoke-virtual {p2, p0, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->addMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;Landroid/content/Context;)V

    return-void
.end method

.method private tryShow()Z
    .locals 7

    .line 149
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/StandardMenuPopup;->isShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mWasDismissed:Z

    const/4 v2, 0x0

    if-nez v0, :cond_7

    iget-object v0, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mAnchorView:Landroid/view/View;

    if-nez v0, :cond_1

    goto/16 :goto_1

    :cond_1
    iput-object v0, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mShownAnchorView:Landroid/view/View;

    iget-object v0, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Landroidx/appcompat/widget/MenuPopupWindow;

    .line 159
    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/MenuPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Landroidx/appcompat/widget/MenuPopupWindow;

    .line 160
    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/MenuPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Landroidx/appcompat/widget/MenuPopupWindow;

    .line 161
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/MenuPopupWindow;->setModal(Z)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mShownAnchorView:Landroid/view/View;

    iget-object v3, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_0

    :cond_2
    move v3, v2

    .line 165
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    iput-object v4, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 167
    invoke-virtual {v4, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_3
    iget-object v3, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 169
    invoke-virtual {v0, v3}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v3, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Landroidx/appcompat/widget/MenuPopupWindow;

    .line 170
    invoke-virtual {v3, v0}, Landroidx/appcompat/widget/MenuPopupWindow;->setAnchorView(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Landroidx/appcompat/widget/MenuPopupWindow;

    iget v3, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mDropDownGravity:I

    .line 171
    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/MenuPopupWindow;->setDropDownGravity(I)V

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mHasContentWidth:Z

    const/4 v3, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mAdapter:Landroidx/appcompat/view/menu/MenuAdapter;

    iget-object v4, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mContext:Landroid/content/Context;

    iget v5, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopupMaxWidth:I

    .line 174
    invoke-static {v0, v3, v4, v5}, Landroidx/appcompat/view/menu/StandardMenuPopup;->measureIndividualMenuWidth(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mContentWidth:I

    iput-boolean v1, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mHasContentWidth:Z

    :cond_4
    iget-object v0, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Landroidx/appcompat/widget/MenuPopupWindow;

    iget v4, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mContentWidth:I

    .line 178
    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/MenuPopupWindow;->setContentWidth(I)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Landroidx/appcompat/widget/MenuPopupWindow;

    const/4 v4, 0x2

    .line 179
    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/MenuPopupWindow;->setInputMethodMode(I)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Landroidx/appcompat/widget/MenuPopupWindow;

    .line 180
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/StandardMenuPopup;->getEpicenterBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/MenuPopupWindow;->setEpicenterBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Landroidx/appcompat/widget/MenuPopupWindow;

    .line 181
    invoke-virtual {v0}, Landroidx/appcompat/widget/MenuPopupWindow;->show()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Landroidx/appcompat/widget/MenuPopupWindow;

    .line 183
    invoke-virtual {v0}, Landroidx/appcompat/widget/MenuPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 184
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-boolean v4, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mShowTitle:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 186
    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mContext:Landroid/content/Context;

    .line 188
    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Landroidx/appcompat/R$layout;->abc_popup_menu_header_item_layout:I

    invoke-virtual {v4, v5, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    const v5, 0x1020016

    .line 190
    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_5

    iget-object v6, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 192
    invoke-virtual {v6}, Landroidx/appcompat/view/menu/MenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    :cond_5
    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 195
    invoke-virtual {v0, v4, v3, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    :cond_6
    iget-object v0, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Landroidx/appcompat/widget/MenuPopupWindow;

    iget-object v2, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mAdapter:Landroidx/appcompat/view/menu/MenuAdapter;

    .line 200
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/MenuPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p0, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Landroidx/appcompat/widget/MenuPopupWindow;

    .line 201
    invoke-virtual {p0}, Landroidx/appcompat/widget/MenuPopupWindow;->show()V

    return v1

    :cond_7
    :goto_1
    return v2
.end method


# virtual methods
.method public addMenu(Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 0

    return-void
.end method

.method public dismiss()V
    .locals 1

    .line 215
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/StandardMenuPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Landroidx/appcompat/widget/MenuPopupWindow;

    .line 216
    invoke-virtual {p0}, Landroidx/appcompat/widget/MenuPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public flagActionItems()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Landroidx/appcompat/widget/MenuPopupWindow;

    .line 344
    invoke-virtual {p0}, Landroidx/appcompat/widget/MenuPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object p0

    return-object p0
.end method

.method public isShowing()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mWasDismissed:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Landroidx/appcompat/widget/MenuPopupWindow;

    .line 227
    invoke-virtual {p0}, Landroidx/appcompat/widget/MenuPopupWindow;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    if-eq p1, v0, :cond_0

    return-void

    .line 303
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/StandardMenuPopup;->dismiss()V

    iget-object p0, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    if-eqz p0, :cond_1

    .line 305
    invoke-interface {p0, p1, p2}, Landroidx/appcompat/view/menu/MenuPresenter$Callback;->onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V

    :cond_1
    return-void
.end method

.method public onDismiss()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mWasDismissed:Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 233
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->close()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    .line 236
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mShownAnchorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 237
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mShownAnchorView:Landroid/view/View;

    iget-object v1, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 240
    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object p0, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz p0, :cond_2

    .line 243
    invoke-interface {p0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    :cond_2
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 330
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    const/16 p1, 0x52

    if-ne p2, p1, :cond_0

    .line 331
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/StandardMenuPopup;->dismiss()V

    return p3

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onSubMenuSelected(Landroidx/appcompat/view/menu/SubMenuBuilder;)Z
    .locals 9

    .line 263
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 264
    new-instance v0, Landroidx/appcompat/view/menu/MenuPopupHelper;

    iget-object v3, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mShownAnchorView:Landroid/view/View;

    iget-boolean v6, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mOverflowOnly:Z

    iget v7, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopupStyleAttr:I

    iget v8, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopupStyleRes:I

    move-object v2, v0

    move-object v4, p1

    invoke-direct/range {v2 .. v8}, Landroidx/appcompat/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/View;ZII)V

    iget-object v2, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    .line 266
    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/MenuPopupHelper;->setPresenterCallback(Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V

    .line 267
    invoke-static {p1}, Landroidx/appcompat/view/menu/MenuPopup;->shouldPreserveIconSpacing(Landroidx/appcompat/view/menu/MenuBuilder;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/MenuPopupHelper;->setForceShowIcon(Z)V

    iget-object v2, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 270
    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/MenuPopupHelper;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    const/4 v2, 0x0

    iput-object v2, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    iget-object v2, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 274
    invoke-virtual {v2, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->close(Z)V

    iget-object v2, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Landroidx/appcompat/widget/MenuPopupWindow;

    .line 277
    invoke-virtual {v2}, Landroidx/appcompat/widget/MenuPopupWindow;->getHorizontalOffset()I

    move-result v2

    iget-object v3, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Landroidx/appcompat/widget/MenuPopupWindow;

    .line 278
    invoke-virtual {v3}, Landroidx/appcompat/widget/MenuPopupWindow;->getVerticalOffset()I

    move-result v3

    iget v4, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mDropDownGravity:I

    iget-object v5, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mAnchorView:Landroid/view/View;

    .line 283
    invoke-static {v5}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v5

    .line 282
    invoke-static {v4, v5}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v4

    and-int/lit8 v4, v4, 0x7

    const/4 v5, 0x5

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mAnchorView:Landroid/view/View;

    .line 285
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v2, v4

    .line 288
    :cond_0
    invoke-virtual {v0, v2, v3}, Landroidx/appcompat/view/menu/MenuPopupHelper;->tryShow(II)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    if-eqz p0, :cond_1

    .line 290
    invoke-interface {p0, p1}, Landroidx/appcompat/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Landroidx/appcompat/view/menu/MenuBuilder;)Z

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mAnchorView:Landroid/view/View;

    return-void
.end method

.method public setCallback(Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    return-void
.end method

.method public setForceShowIcon(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mAdapter:Landroidx/appcompat/view/menu/MenuAdapter;

    .line 140
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuAdapter;->setForceShowIcon(Z)V

    return-void
.end method

.method public setGravity(I)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mDropDownGravity:I

    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Landroidx/appcompat/widget/MenuPopupWindow;

    .line 350
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/MenuPopupWindow;->setHorizontalOffset(I)V

    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public setShowTitle(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mShowTitle:Z

    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mPopup:Landroidx/appcompat/widget/MenuPopupWindow;

    .line 355
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/MenuPopupWindow;->setVerticalOffset(I)V

    return-void
.end method

.method public show()V
    .locals 1

    .line 208
    invoke-direct {p0}, Landroidx/appcompat/view/menu/StandardMenuPopup;->tryShow()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 209
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "StandardMenuPopup cannot be used without an anchor"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public updateMenuView(Z)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mHasContentWidth:Z

    iget-object p0, p0, Landroidx/appcompat/view/menu/StandardMenuPopup;->mAdapter:Landroidx/appcompat/view/menu/MenuAdapter;

    if-eqz p0, :cond_0

    .line 252
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
