.class public abstract Lcom/google/android/material/navigation/NavigationBarMenuView;
.super Landroid/view/ViewGroup;
.source "NavigationBarMenuView.java"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuView;


# static fields
.field private static final CHECKED_STATE_SET:[I

.field private static final DISABLED_STATE_SET:[I

.field private static final ITEM_POOL_SIZE:I = 0x5

.field private static final NO_PADDING:I = -0x1


# instance fields
.field private final badgeDrawables:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/material/badge/BadgeDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

.field private itemActiveIndicatorColor:Landroid/content/res/ColorStateList;

.field private itemActiveIndicatorEnabled:Z

.field private itemActiveIndicatorHeight:I

.field private itemActiveIndicatorLabelPadding:I

.field private itemActiveIndicatorMarginHorizontal:I

.field private itemActiveIndicatorResizeable:Z

.field private itemActiveIndicatorShapeAppearance:Lcom/google/android/material/shape/ShapeAppearanceModel;

.field private itemActiveIndicatorWidth:I

.field private itemBackground:Landroid/graphics/drawable/Drawable;

.field private itemBackgroundRes:I

.field private itemIconSize:I

.field private itemIconTint:Landroid/content/res/ColorStateList;

.field private itemPaddingBottom:I

.field private itemPaddingTop:I

.field private final itemPool:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Lcom/google/android/material/navigation/NavigationBarItemView;",
            ">;"
        }
    .end annotation
.end field

.field private itemRippleColor:Landroid/content/res/ColorStateList;

.field private itemTextAppearanceActive:I

.field private itemTextAppearanceActiveBoldEnabled:Z

.field private itemTextAppearanceInactive:I

.field private final itemTextColorDefault:Landroid/content/res/ColorStateList;

.field private itemTextColorFromUser:Landroid/content/res/ColorStateList;

.field private labelVisibilityMode:I

.field private menu:Landroidx/appcompat/view/menu/MenuBuilder;

.field private final onClickListener:Landroid/view/View$OnClickListener;

.field private final onTouchListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View$OnTouchListener;",
            ">;"
        }
    .end annotation
.end field

.field private presenter:Lcom/google/android/material/navigation/NavigationBarPresenter;

.field private selectedItemId:I

.field private selectedItemPosition:I

.field private final set:Landroidx/transition/TransitionSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x10100a0

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/navigation/NavigationBarMenuView;->CHECKED_STATE_SET:[I

    const v0, -0x101009e

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/navigation/NavigationBarMenuView;->DISABLED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 113
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 74
    new-instance p1, Landroidx/core/util/Pools$SynchronizedPool;

    const/4 v0, 0x5

    invoke-direct {p1, v0}, Landroidx/core/util/Pools$SynchronizedPool;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemPool:Landroidx/core/util/Pools$Pool;

    .line 77
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->onTouchListeners:Landroid/util/SparseArray;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->selectedItemId:I

    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->selectedItemPosition:I

    .line 96
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->badgeDrawables:Landroid/util/SparseArray;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemPaddingTop:I

    iput v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemPaddingBottom:I

    iput v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorLabelPadding:I

    iput-boolean p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorResizeable:Z

    const v0, 0x1010038

    .line 115
    invoke-virtual {p0, v0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->createDefaultColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemTextColorDefault:Landroid/content/res/ColorStateList;

    .line 117
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->set:Landroidx/transition/TransitionSet;

    goto :goto_0

    .line 120
    :cond_0
    new-instance v0, Landroidx/transition/AutoTransition;

    invoke-direct {v0}, Landroidx/transition/AutoTransition;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->set:Landroidx/transition/TransitionSet;

    .line 121
    invoke-virtual {v0, p1}, Landroidx/transition/TransitionSet;->setOrdering(I)Landroidx/transition/TransitionSet;

    .line 124
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/google/android/material/R$attr;->motionDurationMedium4:I

    .line 126
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/android/material/R$integer;->material_motion_duration_long_1:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 123
    invoke-static {p1, v1, v2}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeDuration(Landroid/content/Context;II)I

    move-result p1

    int-to-long v1, p1

    .line 122
    invoke-virtual {v0, v1, v2}, Landroidx/transition/TransitionSet;->setDuration(J)Landroidx/transition/TransitionSet;

    .line 129
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/google/android/material/R$attr;->motionEasingStandard:I

    sget-object v2, Lcom/google/android/material/animation/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 128
    invoke-static {p1, v1, v2}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeInterpolator(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p1

    .line 127
    invoke-virtual {v0, p1}, Landroidx/transition/TransitionSet;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroidx/transition/TransitionSet;

    .line 132
    new-instance p1, Lcom/google/android/material/internal/TextScale;

    invoke-direct {p1}, Lcom/google/android/material/internal/TextScale;-><init>()V

    invoke-virtual {v0, p1}, Landroidx/transition/TransitionSet;->addTransition(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    .line 135
    :goto_0
    new-instance p1, Lcom/google/android/material/navigation/NavigationBarMenuView$1;

    invoke-direct {p1, p0}, Lcom/google/android/material/navigation/NavigationBarMenuView$1;-><init>(Lcom/google/android/material/navigation/NavigationBarMenuView;)V

    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->onClickListener:Landroid/view/View$OnClickListener;

    const/4 p1, 0x1

    .line 147
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/navigation/NavigationBarMenuView;)Lcom/google/android/material/navigation/NavigationBarPresenter;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->presenter:Lcom/google/android/material/navigation/NavigationBarPresenter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/material/navigation/NavigationBarMenuView;)Landroidx/appcompat/view/menu/MenuBuilder;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    return-object p0
.end method

.method private createItemActiveIndicatorDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorShapeAppearance:Lcom/google/android/material/shape/ShapeAppearanceModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    .line 568
    new-instance v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorShapeAppearance:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-direct {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorColor:Landroid/content/res/ColorStateList;

    .line 570
    invoke-virtual {v0, p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getNewItem()Lcom/google/android/material/navigation/NavigationBarItemView;
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemPool:Landroidx/core/util/Pools$Pool;

    .line 827
    invoke-interface {v0}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/navigation/NavigationBarItemView;

    if-nez v0, :cond_0

    .line 829
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->createNavigationBarItemView(Landroid/content/Context;)Lcom/google/android/material/navigation/NavigationBarItemView;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private isValidId(I)Z
    .locals 0

    const/4 p0, -0x1

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private removeUnusedBadges()V
    .locals 4

    .line 930
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 932
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 933
    invoke-virtual {v3, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->badgeDrawables:Landroid/util/SparseArray;

    .line 936
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->badgeDrawables:Landroid/util/SparseArray;

    .line 937
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 938
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->badgeDrawables:Landroid/util/SparseArray;

    .line 939
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->delete(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private setBadgeIfNeeded(Lcom/google/android/material/navigation/NavigationBarItemView;)V
    .locals 2

    .line 917
    invoke-virtual {p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->getId()I

    move-result v0

    .line 918
    invoke-direct {p0, v0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->isValidId(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->badgeDrawables:Landroid/util/SparseArray;

    .line 923
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/badge/BadgeDrawable;

    if-eqz p0, :cond_1

    .line 925
    invoke-virtual {p1, p0}, Lcom/google/android/material/navigation/NavigationBarItemView;->setBadge(Lcom/google/android/material/badge/BadgeDrawable;)V

    :cond_1
    return-void
.end method

.method private validateMenuItemId(I)V
    .locals 1

    .line 975
    invoke-direct {p0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->isValidId(I)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 976
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " is not a valid view id"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public buildMenuView()V
    .locals 6

    .line 717
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->removeAllViews()V

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 719
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemPool:Landroidx/core/util/Pools$Pool;

    .line 721
    invoke-interface {v5, v4}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 722
    invoke-virtual {v4}, Lcom/google/android/material/navigation/NavigationBarItemView;->clear()V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 727
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v0

    if-nez v0, :cond_2

    iput v1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->selectedItemId:I

    iput v1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->selectedItemPosition:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    return-void

    .line 733
    :cond_2
    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->removeUnusedBadges()V

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 735
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/material/navigation/NavigationBarItemView;

    iput-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    iget v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->labelVisibilityMode:I

    iget-object v2, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 736
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/material/navigation/NavigationBarMenuView;->isShifting(II)Z

    move-result v0

    move v2, v1

    :goto_1
    iget-object v3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 737
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_8

    iget-object v3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->presenter:Lcom/google/android/material/navigation/NavigationBarPresenter;

    .line 738
    invoke-virtual {v3, v4}, Lcom/google/android/material/navigation/NavigationBarPresenter;->setUpdateSuspended(Z)V

    iget-object v3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 739
    invoke-virtual {v3, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    iget-object v3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->presenter:Lcom/google/android/material/navigation/NavigationBarPresenter;

    .line 740
    invoke-virtual {v3, v1}, Lcom/google/android/material/navigation/NavigationBarPresenter;->setUpdateSuspended(Z)V

    .line 741
    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getNewItem()Lcom/google/android/material/navigation/NavigationBarItemView;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    .line 742
    aput-object v3, v4, v2

    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemIconTint:Landroid/content/res/ColorStateList;

    .line 743
    invoke-virtual {v3, v4}, Lcom/google/android/material/navigation/NavigationBarItemView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    iget v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemIconSize:I

    .line 744
    invoke-virtual {v3, v4}, Lcom/google/android/material/navigation/NavigationBarItemView;->setIconSize(I)V

    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemTextColorDefault:Landroid/content/res/ColorStateList;

    .line 746
    invoke-virtual {v3, v4}, Lcom/google/android/material/navigation/NavigationBarItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemTextAppearanceInactive:I

    .line 747
    invoke-virtual {v3, v4}, Lcom/google/android/material/navigation/NavigationBarItemView;->setTextAppearanceInactive(I)V

    iget v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemTextAppearanceActive:I

    .line 748
    invoke-virtual {v3, v4}, Lcom/google/android/material/navigation/NavigationBarItemView;->setTextAppearanceActive(I)V

    iget-boolean v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemTextAppearanceActiveBoldEnabled:Z

    .line 749
    invoke-virtual {v3, v4}, Lcom/google/android/material/navigation/NavigationBarItemView;->setTextAppearanceActiveBoldEnabled(Z)V

    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    .line 750
    invoke-virtual {v3, v4}, Lcom/google/android/material/navigation/NavigationBarItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemPaddingTop:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    .line 752
    invoke-virtual {v3, v4}, Lcom/google/android/material/navigation/NavigationBarItemView;->setItemPaddingTop(I)V

    :cond_3
    iget v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemPaddingBottom:I

    if-eq v4, v5, :cond_4

    .line 755
    invoke-virtual {v3, v4}, Lcom/google/android/material/navigation/NavigationBarItemView;->setItemPaddingBottom(I)V

    :cond_4
    iget v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorLabelPadding:I

    if-eq v4, v5, :cond_5

    .line 758
    invoke-virtual {v3, v4}, Lcom/google/android/material/navigation/NavigationBarItemView;->setActiveIndicatorLabelPadding(I)V

    :cond_5
    iget v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorWidth:I

    .line 760
    invoke-virtual {v3, v4}, Lcom/google/android/material/navigation/NavigationBarItemView;->setActiveIndicatorWidth(I)V

    iget v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorHeight:I

    .line 761
    invoke-virtual {v3, v4}, Lcom/google/android/material/navigation/NavigationBarItemView;->setActiveIndicatorHeight(I)V

    iget v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorMarginHorizontal:I

    .line 762
    invoke-virtual {v3, v4}, Lcom/google/android/material/navigation/NavigationBarItemView;->setActiveIndicatorMarginHorizontal(I)V

    .line 763
    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->createItemActiveIndicatorDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/material/navigation/NavigationBarItemView;->setActiveIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-boolean v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorResizeable:Z

    .line 764
    invoke-virtual {v3, v4}, Lcom/google/android/material/navigation/NavigationBarItemView;->setActiveIndicatorResizeable(Z)V

    iget-boolean v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorEnabled:Z

    .line 765
    invoke-virtual {v3, v4}, Lcom/google/android/material/navigation/NavigationBarItemView;->setActiveIndicatorEnabled(Z)V

    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_6

    .line 767
    invoke-virtual {v3, v4}, Lcom/google/android/material/navigation/NavigationBarItemView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_6
    iget v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemBackgroundRes:I

    .line 769
    invoke-virtual {v3, v4}, Lcom/google/android/material/navigation/NavigationBarItemView;->setItemBackground(I)V

    :goto_2
    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemRippleColor:Landroid/content/res/ColorStateList;

    .line 771
    invoke-virtual {v3, v4}, Lcom/google/android/material/navigation/NavigationBarItemView;->setItemRippleColor(Landroid/content/res/ColorStateList;)V

    .line 772
    invoke-virtual {v3, v0}, Lcom/google/android/material/navigation/NavigationBarItemView;->setShifting(Z)V

    iget v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->labelVisibilityMode:I

    .line 773
    invoke-virtual {v3, v4}, Lcom/google/android/material/navigation/NavigationBarItemView;->setLabelVisibilityMode(I)V

    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 774
    invoke-virtual {v4, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 775
    invoke-virtual {v3, v4, v1}, Lcom/google/android/material/navigation/NavigationBarItemView;->initialize(Landroidx/appcompat/view/menu/MenuItemImpl;I)V

    .line 776
    invoke-virtual {v3, v2}, Lcom/google/android/material/navigation/NavigationBarItemView;->setItemPosition(I)V

    .line 777
    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuItemImpl;->getItemId()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->onTouchListeners:Landroid/util/SparseArray;

    .line 778
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View$OnTouchListener;

    invoke-virtual {v3, v5}, Lcom/google/android/material/navigation/NavigationBarItemView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->onClickListener:Landroid/view/View$OnClickListener;

    .line 779
    invoke-virtual {v3, v5}, Lcom/google/android/material/navigation/NavigationBarItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->selectedItemId:I

    if-eqz v5, :cond_7

    if-ne v4, v5, :cond_7

    iput v2, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->selectedItemPosition:I

    .line 783
    :cond_7
    invoke-direct {p0, v3}, Lcom/google/android/material/navigation/NavigationBarMenuView;->setBadgeIfNeeded(Lcom/google/android/material/navigation/NavigationBarItemView;)V

    .line 784
    invoke-virtual {p0, v3}, Lcom/google/android/material/navigation/NavigationBarMenuView;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_8
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 786
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v0

    sub-int/2addr v0, v4

    iget v1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->selectedItemPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->selectedItemPosition:I

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 787
    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object p0

    invoke-interface {p0, v4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public createDefaultColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 6

    .line 692
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 693
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    .line 696
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v3, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-static {p1, v3}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 697
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 698
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    sget v3, Landroidx/appcompat/R$attr;->colorPrimary:I

    .line 699
    invoke-virtual {p0, v3, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p0

    if-nez p0, :cond_1

    return-object v1

    .line 702
    :cond_1
    iget p0, v0, Landroid/util/TypedValue;->data:I

    .line 703
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    .line 704
    new-instance v1, Landroid/content/res/ColorStateList;

    const/4 v3, 0x3

    new-array v3, v3, [[I

    sget-object v4, Lcom/google/android/material/navigation/NavigationBarMenuView;->DISABLED_STATE_SET:[I

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v5, Lcom/google/android/material/navigation/NavigationBarMenuView;->CHECKED_STATE_SET:[I

    aput-object v5, v3, v2

    const/4 v2, 0x2

    sget-object v5, Lcom/google/android/material/navigation/NavigationBarMenuView;->EMPTY_STATE_SET:[I

    aput-object v5, v3, v2

    .line 707
    invoke-virtual {p1, v4, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    filled-new-array {p1, p0, v0}, [I

    move-result-object p0

    invoke-direct {v1, v3, p0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v1
.end method

.method protected abstract createNavigationBarItemView(Landroid/content/Context;)Lcom/google/android/material/navigation/NavigationBarItemView;
.end method

.method public findItemView(I)Lcom/google/android/material/navigation/NavigationBarItemView;
    .locals 4

    .line 946
    invoke-direct {p0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->validateMenuItemId(I)V

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz p0, :cond_1

    .line 948
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 949
    invoke-virtual {v2}, Lcom/google/android/material/navigation/NavigationBarItemView;->getId()I

    move-result v3

    if-ne v3, p1, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getActiveIndicatorLabelPadding()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorLabelPadding:I

    return p0
.end method

.method public getBadge(I)Lcom/google/android/material/badge/BadgeDrawable;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->badgeDrawables:Landroid/util/SparseArray;

    .line 882
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/badge/BadgeDrawable;

    return-object p0
.end method

.method getBadgeDrawables()Landroid/util/SparseArray;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/material/badge/BadgeDrawable;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->badgeDrawables:Landroid/util/SparseArray;

    return-object p0
.end method

.method public getIconTintList()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemIconTint:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getItemActiveIndicatorColor()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorColor:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getItemActiveIndicatorEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorEnabled:Z

    return p0
.end method

.method public getItemActiveIndicatorHeight()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorHeight:I

    return p0
.end method

.method public getItemActiveIndicatorMarginHorizontal()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorMarginHorizontal:I

    return p0
.end method

.method public getItemActiveIndicatorShapeAppearance()Lcom/google/android/material/shape/ShapeAppearanceModel;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorShapeAppearance:Lcom/google/android/material/shape/ShapeAppearanceModel;

    return-object p0
.end method

.method public getItemActiveIndicatorWidth()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorWidth:I

    return p0
.end method

.method public getItemBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz v0, :cond_0

    .line 635
    array-length v1, v0

    if-lez v1, :cond_0

    const/4 p0, 0x0

    .line 638
    aget-object p0, v0, p0

    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarItemView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemBackground:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getItemBackgroundRes()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemBackgroundRes:I

    return p0
.end method

.method public getItemIconSize()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemIconSize:I

    return p0
.end method

.method public getItemPaddingBottom()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemPaddingBottom:I

    return p0
.end method

.method public getItemPaddingTop()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemPaddingTop:I

    return p0
.end method

.method public getItemRippleColor()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemRippleColor:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getItemTextAppearanceActive()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemTextAppearanceActive:I

    return p0
.end method

.method public getItemTextAppearanceInactive()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemTextAppearanceInactive:I

    return p0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getLabelVisibilityMode()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->labelVisibilityMode:I

    return p0
.end method

.method protected getMenu()Landroidx/appcompat/view/menu/MenuBuilder;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    return-object p0
.end method

.method getOrCreateBadge(I)Lcom/google/android/material/badge/BadgeDrawable;
    .locals 2

    .line 893
    invoke-direct {p0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->validateMenuItemId(I)V

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->badgeDrawables:Landroid/util/SparseArray;

    .line 894
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/badge/BadgeDrawable;

    if-nez v0, :cond_0

    .line 897
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/material/badge/BadgeDrawable;->create(Landroid/content/Context;)Lcom/google/android/material/badge/BadgeDrawable;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->badgeDrawables:Landroid/util/SparseArray;

    .line 898
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 900
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->findItemView(I)Lcom/google/android/material/navigation/NavigationBarItemView;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 902
    invoke-virtual {p0, v0}, Lcom/google/android/material/navigation/NavigationBarItemView;->setBadge(Lcom/google/android/material/badge/BadgeDrawable;)V

    :cond_1
    return-object v0
.end method

.method public getSelectedItemId()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->selectedItemId:I

    return p0
.end method

.method protected getSelectedItemPosition()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->selectedItemPosition:I

    return p0
.end method

.method public getWindowAnimations()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public initialize(Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    return-void
.end method

.method protected isItemActiveIndicatorResizeable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorResizeable:Z

    return p0
.end method

.method protected isShifting(II)Z
    .locals 2

    const/4 p0, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x3

    if-le p2, p0, :cond_1

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    return v0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .line 162
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 163
    invoke-static {p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->wrap(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 167
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 165
    invoke-static {v1, p0, v0, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;->obtain(IIZI)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;

    move-result-object p0

    .line 164
    invoke-virtual {p1, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionInfo(Ljava/lang/Object;)V

    return-void
.end method

.method removeBadge(I)V
    .locals 1

    .line 908
    invoke-direct {p0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->validateMenuItemId(I)V

    .line 909
    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->findItemView(I)Lcom/google/android/material/navigation/NavigationBarItemView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 911
    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationBarItemView;->removeBadge()V

    :cond_0
    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->badgeDrawables:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 913
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method restoreBadgeDrawables(Landroid/util/SparseArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/material/badge/BadgeDrawable;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 863
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 864
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->badgeDrawables:Landroid/util/SparseArray;

    .line 865
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    if-gez v3, :cond_0

    iget-object v3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->badgeDrawables:Landroid/util/SparseArray;

    .line 867
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/badge/BadgeDrawable;

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz p1, :cond_3

    .line 871
    array-length v1, p1

    :goto_1
    if-ge v0, v1, :cond_3

    aget-object v2, p1, v0

    iget-object v3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->badgeDrawables:Landroid/util/SparseArray;

    .line 872
    invoke-virtual {v2}, Lcom/google/android/material/navigation/NavigationBarItemView;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/badge/BadgeDrawable;

    if-eqz v3, :cond_2

    .line 874
    invoke-virtual {v2, v3}, Lcom/google/android/material/navigation/NavigationBarItemView;->setBadge(Lcom/google/android/material/badge/BadgeDrawable;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public setActiveIndicatorLabelPadding(I)V
    .locals 3

    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorLabelPadding:I

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz p0, :cond_0

    .line 384
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 385
    invoke-virtual {v2, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setActiveIndicatorLabelPadding(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 3

    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemIconTint:Landroid/content/res/ColorStateList;

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz p0, :cond_0

    .line 180
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 181
    invoke-virtual {v2, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemActiveIndicatorColor(Landroid/content/res/ColorStateList;)V
    .locals 4

    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorColor:Landroid/content/res/ColorStateList;

    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz p1, :cond_0

    .line 550
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 551
    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->createItemActiveIndicatorDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/navigation/NavigationBarItemView;->setActiveIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemActiveIndicatorEnabled(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorEnabled:Z

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz p0, :cond_0

    .line 407
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 408
    invoke-virtual {v2, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setActiveIndicatorEnabled(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemActiveIndicatorHeight(I)V
    .locals 3

    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorHeight:I

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz p0, :cond_0

    .line 455
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 456
    invoke-virtual {v2, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setActiveIndicatorHeight(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemActiveIndicatorMarginHorizontal(I)V
    .locals 3

    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorMarginHorizontal:I

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz p0, :cond_0

    .line 481
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 482
    invoke-virtual {v2, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setActiveIndicatorMarginHorizontal(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected setItemActiveIndicatorResizeable(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorResizeable:Z

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz p0, :cond_0

    .line 526
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 527
    invoke-virtual {v2, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setActiveIndicatorResizeable(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemActiveIndicatorShapeAppearance(Lcom/google/android/material/shape/ShapeAppearanceModel;)V
    .locals 4

    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorShapeAppearance:Lcom/google/android/material/shape/ShapeAppearanceModel;

    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz p1, :cond_0

    .line 506
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 507
    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->createItemActiveIndicatorDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/navigation/NavigationBarItemView;->setActiveIndicatorDrawable(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemActiveIndicatorWidth(I)V
    .locals 3

    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemActiveIndicatorWidth:I

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz p0, :cond_0

    .line 431
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 432
    invoke-virtual {v2, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setActiveIndicatorWidth(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemBackground:Landroid/graphics/drawable/Drawable;

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz p0, :cond_0

    .line 596
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 597
    invoke-virtual {v2, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemBackgroundRes(I)V
    .locals 3

    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemBackgroundRes:I

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz p0, :cond_0

    .line 322
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 323
    invoke-virtual {v2, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setItemBackground(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemIconSize(I)V
    .locals 3

    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemIconSize:I

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz p0, :cond_0

    .line 206
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 207
    invoke-virtual {v2, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setIconSize(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemOnTouchListener(ILandroid/view/View$OnTouchListener;)V
    .locals 4

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->onTouchListeners:Landroid/util/SparseArray;

    .line 677
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->onTouchListeners:Landroid/util/SparseArray;

    .line 679
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_0
    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz p0, :cond_2

    .line 682
    array-length v0, p0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    aget-object v2, p0, v1

    .line 683
    invoke-virtual {v2}, Lcom/google/android/material/navigation/NavigationBarItemView;->getItemData()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuItemImpl;->getItemId()I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 684
    invoke-virtual {v2, p2}, Lcom/google/android/material/navigation/NavigationBarItemView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public setItemPaddingBottom(I)V
    .locals 3

    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemPaddingBottom:I

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz p0, :cond_0

    .line 364
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 365
    invoke-virtual {v2, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setItemPaddingBottom(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemPaddingTop(I)V
    .locals 3

    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemPaddingTop:I

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz p0, :cond_0

    .line 344
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 345
    invoke-virtual {v2, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setItemPaddingTop(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 3

    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemRippleColor:Landroid/content/res/ColorStateList;

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz p0, :cond_0

    .line 612
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 613
    invoke-virtual {v2, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setItemRippleColor(Landroid/content/res/ColorStateList;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemTextAppearanceActive(I)V
    .locals 5

    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemTextAppearanceActive:I

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz v0, :cond_1

    .line 279
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 280
    invoke-virtual {v3, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setTextAppearanceActive(I)V

    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_0

    .line 284
    invoke-virtual {v3, v4}, Lcom/google/android/material/navigation/NavigationBarItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setItemTextAppearanceActiveBoldEnabled(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemTextAppearanceActiveBoldEnabled:Z

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz p0, :cond_0

    .line 298
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 299
    invoke-virtual {v2, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setTextAppearanceActiveBoldEnabled(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemTextAppearanceInactive(I)V
    .locals 5

    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemTextAppearanceInactive:I

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz v0, :cond_1

    .line 250
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 251
    invoke-virtual {v3, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setTextAppearanceInactive(I)V

    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_0

    .line 255
    invoke-virtual {v3, v4}, Lcom/google/android/material/navigation/NavigationBarItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 3

    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->itemTextColorFromUser:Landroid/content/res/ColorStateList;

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    if-eqz p0, :cond_0

    .line 226
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 227
    invoke-virtual {v2, p1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setLabelVisibilityMode(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->labelVisibilityMode:I

    return-void
.end method

.method public setPresenter(Lcom/google/android/material/navigation/NavigationBarPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->presenter:Lcom/google/android/material/navigation/NavigationBarPresenter;

    return-void
.end method

.method tryRestoreSelectedItemId(I)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 846
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 848
    invoke-virtual {v2, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 849
    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    if-ne p1, v3, :cond_0

    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->selectedItemId:I

    iput v1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->selectedItemPosition:I

    const/4 p0, 0x1

    .line 852
    invoke-interface {v2, p0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public updateMenuView()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 795
    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    .line 796
    array-length v1, v1

    if-eq v0, v1, :cond_1

    .line 798
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->buildMenuView()V

    return-void

    :cond_1
    iget v1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->selectedItemId:I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_3

    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 805
    invoke-virtual {v4, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 806
    invoke-interface {v4}, Landroid/view/MenuItem;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 807
    invoke-interface {v4}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    iput v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->selectedItemId:I

    iput v3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->selectedItemPosition:I

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    iget v3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->selectedItemId:I

    if-eq v1, v3, :cond_4

    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->set:Landroidx/transition/TransitionSet;

    if-eqz v1, :cond_4

    .line 813
    invoke-static {p0, v1}, Landroidx/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V

    :cond_4
    iget v1, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->labelVisibilityMode:I

    iget-object v3, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 816
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Lcom/google/android/material/navigation/NavigationBarMenuView;->isShifting(II)Z

    move-result v1

    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_5

    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->presenter:Lcom/google/android/material/navigation/NavigationBarPresenter;

    const/4 v5, 0x1

    .line 818
    invoke-virtual {v4, v5}, Lcom/google/android/material/navigation/NavigationBarPresenter;->setUpdateSuspended(Z)V

    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    .line 819
    aget-object v4, v4, v3

    iget v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->labelVisibilityMode:I

    invoke-virtual {v4, v5}, Lcom/google/android/material/navigation/NavigationBarItemView;->setLabelVisibilityMode(I)V

    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    .line 820
    aget-object v4, v4, v3

    invoke-virtual {v4, v1}, Lcom/google/android/material/navigation/NavigationBarItemView;->setShifting(Z)V

    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->buttons:[Lcom/google/android/material/navigation/NavigationBarItemView;

    .line 821
    aget-object v4, v4, v3

    iget-object v5, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v5, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v4, v5, v2}, Lcom/google/android/material/navigation/NavigationBarItemView;->initialize(Landroidx/appcompat/view/menu/MenuItemImpl;I)V

    iget-object v4, p0, Lcom/google/android/material/navigation/NavigationBarMenuView;->presenter:Lcom/google/android/material/navigation/NavigationBarPresenter;

    .line 822
    invoke-virtual {v4, v2}, Lcom/google/android/material/navigation/NavigationBarPresenter;->setUpdateSuspended(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    return-void
.end method
