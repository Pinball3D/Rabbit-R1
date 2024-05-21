.class Landroidx/appcompat/app/AlertController;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/AlertController$CheckedItemAdapter;,
        Landroidx/appcompat/app/AlertController$AlertParams;,
        Landroidx/appcompat/app/AlertController$RecycleListView;,
        Landroidx/appcompat/app/AlertController$ButtonHandler;
    }
.end annotation


# instance fields
.field mAdapter:Landroid/widget/ListAdapter;

.field private mAlertDialogLayout:I

.field private final mButtonHandler:Landroid/view/View$OnClickListener;

.field private final mButtonIconDimen:I

.field mButtonNegative:Landroid/widget/Button;

.field private mButtonNegativeIcon:Landroid/graphics/drawable/Drawable;

.field mButtonNegativeMessage:Landroid/os/Message;

.field private mButtonNegativeText:Ljava/lang/CharSequence;

.field mButtonNeutral:Landroid/widget/Button;

.field private mButtonNeutralIcon:Landroid/graphics/drawable/Drawable;

.field mButtonNeutralMessage:Landroid/os/Message;

.field private mButtonNeutralText:Ljava/lang/CharSequence;

.field private mButtonPanelLayoutHint:I

.field private mButtonPanelSideLayout:I

.field mButtonPositive:Landroid/widget/Button;

.field private mButtonPositiveIcon:Landroid/graphics/drawable/Drawable;

.field mButtonPositiveMessage:Landroid/os/Message;

.field private mButtonPositiveText:Ljava/lang/CharSequence;

.field mCheckedItem:I

.field private final mContext:Landroid/content/Context;

.field private mCustomTitleView:Landroid/view/View;

.field final mDialog:Landroidx/appcompat/app/AppCompatDialog;

.field mHandler:Landroid/os/Handler;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconId:I

.field private mIconView:Landroid/widget/ImageView;

.field mListItemLayout:I

.field mListLayout:I

.field mListView:Landroid/widget/ListView;

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field mMultiChoiceItemLayout:I

.field mScrollView:Landroidx/core/widget/NestedScrollView;

.field private mShowTitle:Z

.field mSingleChoiceItemLayout:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleView:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private mViewLayoutResId:I

.field private mViewSpacingBottom:I

.field private mViewSpacingLeft:I

.field private mViewSpacingRight:I

.field private mViewSpacingSpecified:Z

.field private mViewSpacingTop:I

.field private final mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/app/AppCompatDialog;Landroid/view/Window;)V
    .locals 3

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/app/AlertController;->mViewSpacingSpecified:Z

    iput v0, p0, Landroidx/appcompat/app/AlertController;->mIconId:I

    const/4 v1, -0x1

    iput v1, p0, Landroidx/appcompat/app/AlertController;->mCheckedItem:I

    iput v0, p0, Landroidx/appcompat/app/AlertController;->mButtonPanelLayoutHint:I

    .line 126
    new-instance v1, Landroidx/appcompat/app/AlertController$1;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/AlertController$1;-><init>(Landroidx/appcompat/app/AlertController;)V

    iput-object v1, p0, Landroidx/appcompat/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Landroidx/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroidx/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    iput-object p3, p0, Landroidx/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 186
    new-instance p3, Landroidx/appcompat/app/AlertController$ButtonHandler;

    invoke-direct {p3, p2}, Landroidx/appcompat/app/AlertController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object p3, p0, Landroidx/appcompat/app/AlertController;->mHandler:Landroid/os/Handler;

    .line 188
    sget-object p3, Landroidx/appcompat/R$styleable;->AlertDialog:[I

    sget v1, Landroidx/appcompat/R$attr;->alertDialogStyle:I

    const/4 v2, 0x0

    invoke-virtual {p1, v2, p3, v1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 191
    sget p3, Landroidx/appcompat/R$styleable;->AlertDialog_android_layout:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Landroidx/appcompat/app/AlertController;->mAlertDialogLayout:I

    .line 192
    sget p3, Landroidx/appcompat/R$styleable;->AlertDialog_buttonPanelSideLayout:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Landroidx/appcompat/app/AlertController;->mButtonPanelSideLayout:I

    .line 194
    sget p3, Landroidx/appcompat/R$styleable;->AlertDialog_listLayout:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Landroidx/appcompat/app/AlertController;->mListLayout:I

    .line 195
    sget p3, Landroidx/appcompat/R$styleable;->AlertDialog_multiChoiceItemLayout:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Landroidx/appcompat/app/AlertController;->mMultiChoiceItemLayout:I

    .line 196
    sget p3, Landroidx/appcompat/R$styleable;->AlertDialog_singleChoiceItemLayout:I

    .line 197
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Landroidx/appcompat/app/AlertController;->mSingleChoiceItemLayout:I

    .line 198
    sget p3, Landroidx/appcompat/R$styleable;->AlertDialog_listItemLayout:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Landroidx/appcompat/app/AlertController;->mListItemLayout:I

    .line 199
    sget p3, Landroidx/appcompat/R$styleable;->AlertDialog_showTitle:I

    const/4 v1, 0x1

    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Landroidx/appcompat/app/AlertController;->mShowTitle:Z

    .line 200
    sget p3, Landroidx/appcompat/R$styleable;->AlertDialog_buttonIconDimen:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Landroidx/appcompat/app/AlertController;->mButtonIconDimen:I

    .line 202
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 205
    invoke-virtual {p2, v1}, Landroidx/appcompat/app/AppCompatDialog;->supportRequestWindowFeature(I)Z

    return-void
.end method

.method static canTextInput(Landroid/view/View;)Z
    .locals 4

    .line 209
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 213
    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 217
    :cond_1
    check-cast p0, Landroid/view/ViewGroup;

    .line 218
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :cond_2
    if-lez v0, :cond_3

    add-int/lit8 v0, v0, -0x1

    .line 221
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 222
    invoke-static {v3}, Landroidx/appcompat/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    :cond_3
    return v2
.end method

.method private centerButton(Landroid/widget/Button;)V
    .locals 1

    .line 829
    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, 0x1

    .line 830
    iput v0, p0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v0, 0x3f000000    # 0.5f

    .line 831
    iput v0, p0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 832
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static manageScrollIndicators(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-eqz p1, :cond_1

    const/4 v2, -0x1

    .line 750
    invoke-virtual {p0, v2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 749
    :goto_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    if-eqz p2, :cond_3

    const/4 p1, 0x1

    .line 754
    invoke-virtual {p0, p1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    .line 753
    :goto_1
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method private resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 1

    if-nez p1, :cond_1

    .line 443
    instance-of p0, p2, Landroid/view/ViewStub;

    if-eqz p0, :cond_0

    .line 444
    check-cast p2, Landroid/view/ViewStub;

    invoke-virtual {p2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p2

    .line 447
    :cond_0
    check-cast p2, Landroid/view/ViewGroup;

    return-object p2

    :cond_1
    if-eqz p2, :cond_2

    .line 452
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 453
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 454
    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 459
    :cond_2
    instance-of p0, p1, Landroid/view/ViewStub;

    if-eqz p0, :cond_3

    .line 460
    check-cast p1, Landroid/view/ViewStub;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    .line 463
    :cond_3
    check-cast p1, Landroid/view/ViewGroup;

    return-object p1
.end method

.method private selectContentView()I
    .locals 3

    iget v0, p0, Landroidx/appcompat/app/AlertController;->mButtonPanelSideLayout:I

    if-nez v0, :cond_0

    iget p0, p0, Landroidx/appcompat/app/AlertController;->mAlertDialogLayout:I

    return p0

    :cond_0
    iget v1, p0, Landroidx/appcompat/app/AlertController;->mButtonPanelLayoutHint:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    return v0

    :cond_1
    iget p0, p0, Landroidx/appcompat/app/AlertController;->mAlertDialogLayout:I

    return p0
.end method

.method private setScrollIndicators(Landroid/view/ViewGroup;Landroid/view/View;II)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 560
    sget v1, Landroidx/appcompat/R$id;->scrollIndicatorUp:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Landroidx/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 561
    sget v1, Landroidx/appcompat/R$id;->scrollIndicatorDown:I

    invoke-virtual {p0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 565
    invoke-static {p2, p3, p4}, Landroidx/core/view/ViewCompat;->setScrollIndicators(Landroid/view/View;II)V

    if-eqz v0, :cond_0

    .line 568
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    if-eqz p0, :cond_1

    .line 571
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private setupButtons(Landroid/view/ViewGroup;)V
    .locals 7

    const v0, 0x1020019

    .line 763
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Landroidx/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v1, p0, Landroidx/appcompat/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    .line 764
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 766
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mButtonPositiveIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 767
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    move v0, v4

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v5, p0, Landroidx/appcompat/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 769
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mButtonPositiveIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget v5, p0, Landroidx/appcompat/app/AlertController;->mButtonIconDimen:I

    .line 771
    invoke-virtual {v0, v4, v4, v5, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v5, p0, Landroidx/appcompat/app/AlertController;->mButtonPositiveIcon:Landroid/graphics/drawable/Drawable;

    .line 772
    invoke-virtual {v0, v5, v2, v2, v2}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 774
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    move v0, v3

    :goto_0
    const v5, 0x102001a

    .line 778
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Landroidx/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v6, p0, Landroidx/appcompat/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    .line 779
    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Landroidx/appcompat/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 781
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroidx/appcompat/app/AlertController;->mButtonNegativeIcon:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_2

    iget-object v5, p0, Landroidx/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    .line 782
    invoke-virtual {v5, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-object v5, p0, Landroidx/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v6, p0, Landroidx/appcompat/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 784
    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Landroidx/appcompat/app/AlertController;->mButtonNegativeIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_3

    iget v6, p0, Landroidx/appcompat/app/AlertController;->mButtonIconDimen:I

    .line 786
    invoke-virtual {v5, v4, v4, v6, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v5, p0, Landroidx/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v6, p0, Landroidx/appcompat/app/AlertController;->mButtonNegativeIcon:Landroid/graphics/drawable/Drawable;

    .line 787
    invoke-virtual {v5, v6, v2, v2, v2}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_3
    iget-object v5, p0, Landroidx/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    .line 789
    invoke-virtual {v5, v4}, Landroid/widget/Button;->setVisibility(I)V

    or-int/lit8 v0, v0, 0x2

    :goto_1
    const v5, 0x102001b

    .line 793
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Landroidx/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v6, p0, Landroidx/appcompat/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    .line 794
    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Landroidx/appcompat/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 796
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroidx/appcompat/app/AlertController;->mButtonNeutralIcon:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_4

    iget-object v2, p0, Landroidx/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 797
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    :cond_4
    iget-object v5, p0, Landroidx/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v6, p0, Landroidx/appcompat/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 799
    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Landroidx/appcompat/app/AlertController;->mButtonNeutralIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_5

    iget v6, p0, Landroidx/appcompat/app/AlertController;->mButtonIconDimen:I

    .line 801
    invoke-virtual {v5, v4, v4, v6, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v5, p0, Landroidx/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v6, p0, Landroidx/appcompat/app/AlertController;->mButtonNeutralIcon:Landroid/graphics/drawable/Drawable;

    .line 802
    invoke-virtual {v5, v6, v2, v2, v2}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_5
    iget-object v2, p0, Landroidx/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 804
    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    or-int/lit8 v0, v0, 0x4

    :goto_2
    iget-object v2, p0, Landroidx/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    .line 808
    invoke-static {v2}, Landroidx/appcompat/app/AlertController;->shouldCenterSingleButton(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_8

    if-ne v0, v3, :cond_6

    iget-object v2, p0, Landroidx/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 814
    invoke-direct {p0, v2}, Landroidx/appcompat/app/AlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_3

    :cond_6
    const/4 v2, 0x2

    if-ne v0, v2, :cond_7

    iget-object v2, p0, Landroidx/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    .line 816
    invoke-direct {p0, v2}, Landroidx/appcompat/app/AlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_3

    :cond_7
    const/4 v2, 0x4

    if-ne v0, v2, :cond_8

    iget-object v2, p0, Landroidx/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 818
    invoke-direct {p0, v2}, Landroidx/appcompat/app/AlertController;->centerButton(Landroid/widget/Button;)V

    :cond_8
    :goto_3
    if-eqz v0, :cond_9

    goto :goto_4

    .line 824
    :cond_9
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_4
    return-void
.end method

.method private setupContent(Landroid/view/ViewGroup;)V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 719
    sget v1, Landroidx/appcompat/R$id;->scrollView:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    iput-object v0, p0, Landroidx/appcompat/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    const/4 v1, 0x0

    .line 720
    invoke-virtual {v0, v1}, Landroidx/core/widget/NestedScrollView;->setFocusable(Z)V

    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    .line 721
    invoke-virtual {v0, v1}, Landroidx/core/widget/NestedScrollView;->setNestedScrollingEnabled(Z)V

    const v0, 0x102000b

    .line 724
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroidx/appcompat/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Landroidx/appcompat/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 730
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    .line 732
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    iget-object v2, p0, Landroidx/appcompat/app/AlertController;->mMessageView:Landroid/widget/TextView;

    .line 733
    invoke-virtual {v0, v2}, Landroidx/core/widget/NestedScrollView;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    .line 736
    invoke-virtual {p1}, Landroidx/core/widget/NestedScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    .line 737
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 738
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    iget-object p0, p0, Landroidx/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    .line 739
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 742
    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private setupCustomContent(Landroid/view/ViewGroup;)V
    .locals 5

    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/appcompat/app/AlertController;->mViewLayoutResId:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    .line 643
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v2, p0, Landroidx/appcompat/app/AlertController;->mViewLayoutResId:I

    .line 644
    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    if-eqz v1, :cond_3

    .line 650
    invoke-static {v0}, Landroidx/appcompat/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    iget-object v2, p0, Landroidx/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    const/high16 v3, 0x20000

    .line 651
    invoke-virtual {v2, v3, v3}, Landroid/view/Window;->setFlags(II)V

    :cond_4
    if-eqz v1, :cond_6

    iget-object v1, p0, Landroidx/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 656
    sget v2, Landroidx/appcompat/R$id;->custom:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 657
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v0, p0, Landroidx/appcompat/app/AlertController;->mViewSpacingSpecified:Z

    if-eqz v0, :cond_5

    iget v0, p0, Landroidx/appcompat/app/AlertController;->mViewSpacingLeft:I

    iget v2, p0, Landroidx/appcompat/app/AlertController;->mViewSpacingTop:I

    iget v3, p0, Landroidx/appcompat/app/AlertController;->mViewSpacingRight:I

    iget v4, p0, Landroidx/appcompat/app/AlertController;->mViewSpacingBottom:I

    .line 660
    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    :cond_5
    iget-object p0, p0, Landroidx/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz p0, :cond_7

    .line 665
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    goto :goto_1

    :cond_6
    const/16 p0, 0x8

    .line 668
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_7
    :goto_1
    return-void
.end method

.method private setupTitle(Landroid/view/ViewGroup;)V
    .locals 5

    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mCustomTitleView:Landroid/view/View;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 675
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v2, p0, Landroidx/appcompat/app/AlertController;->mCustomTitleView:Landroid/view/View;

    const/4 v3, 0x0

    .line 678
    invoke-virtual {p1, v2, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Landroidx/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 681
    sget p1, Landroidx/appcompat/R$id;->title_template:I

    invoke-virtual {p0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 682
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    const v2, 0x1020006

    .line 684
    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    .line 686
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroidx/appcompat/app/AlertController;->mShowTitle:Z

    if-eqz v0, :cond_3

    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 689
    sget v0, Landroidx/appcompat/R$id;->alertTitle:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Landroidx/appcompat/app/AlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    .line 690
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget p1, p0, Landroidx/appcompat/app/AlertController;->mIconId:I

    if-eqz p1, :cond_1

    iget-object p0, p0, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 696
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    iget-object p0, p0, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 698
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 702
    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v0

    iget-object v2, p0, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 703
    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 704
    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 705
    invoke-virtual {v4}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v4

    .line 702
    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object p0, p0, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 706
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 710
    sget v2, Landroidx/appcompat/R$id;->title_template:I

    invoke-virtual {v0, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 711
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 712
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 713
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private setupView()V
    .locals 8

    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 467
    sget v1, Landroidx/appcompat/R$id;->parentPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 468
    sget v1, Landroidx/appcompat/R$id;->topPanel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 469
    sget v2, Landroidx/appcompat/R$id;->contentPanel:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 470
    sget v3, Landroidx/appcompat/R$id;->buttonPanel:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 474
    sget v4, Landroidx/appcompat/R$id;->customPanel:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 475
    invoke-direct {p0, v0}, Landroidx/appcompat/app/AlertController;->setupCustomContent(Landroid/view/ViewGroup;)V

    .line 477
    sget v4, Landroidx/appcompat/R$id;->topPanel:I

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 478
    sget v5, Landroidx/appcompat/R$id;->contentPanel:I

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 479
    sget v6, Landroidx/appcompat/R$id;->buttonPanel:I

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 482
    invoke-direct {p0, v4, v1}, Landroidx/appcompat/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v1

    .line 483
    invoke-direct {p0, v5, v2}, Landroidx/appcompat/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v2

    .line 484
    invoke-direct {p0, v6, v3}, Landroidx/appcompat/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v3

    .line 486
    invoke-direct {p0, v2}, Landroidx/appcompat/app/AlertController;->setupContent(Landroid/view/ViewGroup;)V

    .line 487
    invoke-direct {p0, v3}, Landroidx/appcompat/app/AlertController;->setupButtons(Landroid/view/ViewGroup;)V

    .line 488
    invoke-direct {p0, v1}, Landroidx/appcompat/app/AlertController;->setupTitle(Landroid/view/ViewGroup;)V

    const/16 v4, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    .line 491
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eq v0, v4, :cond_0

    move v0, v5

    goto :goto_0

    :cond_0
    move v0, v6

    :goto_0
    if-eqz v1, :cond_1

    .line 493
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v7

    if-eq v7, v4, :cond_1

    move v7, v5

    goto :goto_1

    :cond_1
    move v7, v6

    :goto_1
    if-eqz v3, :cond_2

    .line 495
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-eq v3, v4, :cond_2

    move v3, v5

    goto :goto_2

    :cond_2
    move v3, v6

    :goto_2
    if-nez v3, :cond_3

    if-eqz v2, :cond_3

    .line 500
    sget v4, Landroidx/appcompat/R$id;->textSpacerNoButtons:I

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 502
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    if-eqz v7, :cond_7

    iget-object v4, p0, Landroidx/appcompat/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    if-eqz v4, :cond_4

    .line 510
    invoke-virtual {v4, v5}, Landroidx/core/widget/NestedScrollView;->setClipToPadding(Z)V

    :cond_4
    iget-object v4, p0, Landroidx/appcompat/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-nez v4, :cond_6

    iget-object v4, p0, Landroidx/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v4, :cond_5

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    goto :goto_4

    .line 516
    :cond_6
    :goto_3
    sget v4, Landroidx/appcompat/R$id;->titleDividerNoCustom:I

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    :goto_4
    if-eqz v1, :cond_8

    .line 520
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    :cond_7
    if-eqz v2, :cond_8

    .line 524
    sget v1, Landroidx/appcompat/R$id;->textSpacerNoTitle:I

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 526
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    :goto_5
    iget-object v1, p0, Landroidx/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    .line 531
    instance-of v4, v1, Landroidx/appcompat/app/AlertController$RecycleListView;

    if-eqz v4, :cond_9

    .line 532
    check-cast v1, Landroidx/appcompat/app/AlertController$RecycleListView;

    invoke-virtual {v1, v7, v3}, Landroidx/appcompat/app/AlertController$RecycleListView;->setHasDecor(ZZ)V

    :cond_9
    if-nez v0, :cond_c

    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_a

    goto :goto_6

    :cond_a
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    :goto_6
    if-eqz v0, :cond_c

    if-eqz v3, :cond_b

    const/4 v6, 0x2

    :cond_b
    or-int v1, v7, v6

    const/4 v3, 0x3

    .line 541
    invoke-direct {p0, v2, v0, v1, v3}, Landroidx/appcompat/app/AlertController;->setScrollIndicators(Landroid/view/ViewGroup;Landroid/view/View;II)V

    :cond_c
    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_d

    iget-object v1, p0, Landroidx/appcompat/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_d

    .line 548
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget p0, p0, Landroidx/appcompat/app/AlertController;->mCheckedItem:I

    const/4 v1, -0x1

    if-le p0, v1, :cond_d

    .line 551
    invoke-virtual {v0, p0, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 552
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setSelection(I)V

    :cond_d
    return-void
.end method

.method private static shouldCenterSingleButton(Landroid/content/Context;)Z
    .locals 3

    .line 177
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 178
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    sget v1, Landroidx/appcompat/R$attr;->alertDialogCenterButtons:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 179
    iget p0, v0, Landroid/util/TypedValue;->data:I

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 1

    const/4 v0, -0x3

    if-eq p1, v0, :cond_2

    const/4 v0, -0x2

    if-eq p1, v0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Landroidx/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    return-object p0

    :cond_1
    iget-object p0, p0, Landroidx/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    return-object p0

    :cond_2
    iget-object p0, p0, Landroidx/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    return-object p0
.end method

.method public getIconAttributeResId(I)I
    .locals 2

    .line 398
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object p0, p0, Landroidx/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    .line 399
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 400
    iget p0, v0, Landroid/util/TypedValue;->resourceId:I

    return p0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    return-object p0
.end method

.method public installContent()V
    .locals 2

    .line 231
    invoke-direct {p0}, Landroidx/appcompat/app/AlertController;->selectContentView()I

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    .line 232
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AppCompatDialog;->setContentView(I)V

    .line 233
    invoke-direct {p0}, Landroidx/appcompat/app/AlertController;->setupView()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    if-eqz p0, :cond_0

    .line 422
    invoke-virtual {p0, p2}, Landroidx/core/widget/NestedScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/app/AlertController;->mScrollView:Landroidx/core/widget/NestedScrollView;

    if-eqz p0, :cond_0

    .line 427
    invoke-virtual {p0, p2}, Landroidx/core/widget/NestedScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    iget-object p4, p0, Landroidx/appcompat/app/AlertController;->mHandler:Landroid/os/Handler;

    .line 324
    invoke-virtual {p4, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    :cond_0
    const/4 p3, -0x3

    if-eq p1, p3, :cond_3

    const/4 p3, -0x2

    if-eq p1, p3, :cond_2

    const/4 p3, -0x1

    if-ne p1, p3, :cond_1

    iput-object p2, p0, Landroidx/appcompat/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    iput-object p4, p0, Landroidx/appcompat/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    iput-object p5, p0, Landroidx/appcompat/app/AlertController;->mButtonPositiveIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 348
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Button does not exist"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iput-object p2, p0, Landroidx/appcompat/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    iput-object p4, p0, Landroidx/appcompat/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    iput-object p5, p0, Landroidx/appcompat/app/AlertController;->mButtonNegativeIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_3
    iput-object p2, p0, Landroidx/appcompat/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    iput-object p4, p0, Landroidx/appcompat/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    iput-object p5, p0, Landroidx/appcompat/app/AlertController;->mButtonNeutralIcon:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-void
.end method

.method public setButtonPanelLayoutHint(I)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/app/AlertController;->mButtonPanelLayoutHint:I

    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/app/AlertController;->mCustomTitleView:Landroid/view/View;

    return-void
.end method

.method public setIcon(I)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    iput p1, p0, Landroidx/appcompat/app/AlertController;->mIconId:I

    iget-object v0, p0, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 364
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget p0, p0, Landroidx/appcompat/app/AlertController;->mIconId:I

    .line 365
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    .line 367
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iput-object p1, p0, Landroidx/appcompat/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/app/AlertController;->mIconId:I

    iget-object v1, p0, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    .line 383
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Landroidx/appcompat/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 384
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    .line 386
    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    iget-object p0, p0, Landroidx/appcompat/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 263
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    iget-object p0, p0, Landroidx/appcompat/app/AlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 249
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setView(I)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/app/AlertController;->mView:Landroid/view/View;

    iput p1, p0, Landroidx/appcompat/app/AlertController;->mViewLayoutResId:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/appcompat/app/AlertController;->mViewSpacingSpecified:Z

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/app/AlertController;->mView:Landroid/view/View;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/appcompat/app/AlertController;->mViewLayoutResId:I

    iput-boolean p1, p0, Landroidx/appcompat/app/AlertController;->mViewSpacingSpecified:Z

    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/app/AlertController;->mView:Landroid/view/View;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/appcompat/app/AlertController;->mViewLayoutResId:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/app/AlertController;->mViewSpacingSpecified:Z

    iput p2, p0, Landroidx/appcompat/app/AlertController;->mViewSpacingLeft:I

    iput p3, p0, Landroidx/appcompat/app/AlertController;->mViewSpacingTop:I

    iput p4, p0, Landroidx/appcompat/app/AlertController;->mViewSpacingRight:I

    iput p5, p0, Landroidx/appcompat/app/AlertController;->mViewSpacingBottom:I

    return-void
.end method
