.class public Lcom/google/android/material/navigation/NavigationBarPresenter;
.super Ljava/lang/Object;
.source "NavigationBarPresenter.java"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuPresenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/navigation/NavigationBarPresenter$SavedState;
    }
.end annotation


# instance fields
.field private id:I

.field private menu:Landroidx/appcompat/view/menu/MenuBuilder;

.field private menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

.field private updateSuspended:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->updateSuspended:Z

    return-void
.end method


# virtual methods
.method public collapseItemActionView(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public expandItemActionView(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public flagActionItems()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getId()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->id:I

    return p0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/MenuView;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    return-object p0
.end method

.method public initForMenu(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->menu:Landroidx/appcompat/view/menu/MenuBuilder;

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    .line 57
    invoke-virtual {p0, p2}, Lcom/google/android/material/navigation/NavigationBarMenuView;->initialize(Landroidx/appcompat/view/menu/MenuBuilder;)V

    return-void
.end method

.method public onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V
    .locals 0

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 125
    instance-of v0, p1, Lcom/google/android/material/navigation/NavigationBarPresenter$SavedState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    .line 126
    check-cast p1, Lcom/google/android/material/navigation/NavigationBarPresenter$SavedState;

    iget v1, p1, Lcom/google/android/material/navigation/NavigationBarPresenter$SavedState;->selectedItemId:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->tryRestoreSelectedItemId(I)V

    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    .line 129
    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p1, p1, Lcom/google/android/material/navigation/NavigationBarPresenter$SavedState;->badgeSavedStates:Lcom/google/android/material/internal/ParcelableSparseArray;

    .line 128
    invoke-static {v0, p1}, Lcom/google/android/material/badge/BadgeUtils;->createBadgeDrawablesFromSavedStates(Landroid/content/Context;Lcom/google/android/material/internal/ParcelableSparseArray;)Landroid/util/SparseArray;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    .line 130
    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->restoreBadgeDrawables(Landroid/util/SparseArray;)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 116
    new-instance v0, Lcom/google/android/material/navigation/NavigationBarPresenter$SavedState;

    invoke-direct {v0}, Lcom/google/android/material/navigation/NavigationBarPresenter$SavedState;-><init>()V

    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    .line 117
    invoke-virtual {v1}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getSelectedItemId()I

    move-result v1

    iput v1, v0, Lcom/google/android/material/navigation/NavigationBarPresenter$SavedState;->selectedItemId:I

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    .line 119
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->getBadgeDrawables()Landroid/util/SparseArray;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/material/badge/BadgeUtils;->createParcelableBadgeStates(Landroid/util/SparseArray;)Lcom/google/android/material/internal/ParcelableSparseArray;

    move-result-object p0

    iput-object p0, v0, Lcom/google/android/material/navigation/NavigationBarPresenter$SavedState;->badgeSavedStates:Lcom/google/android/material/internal/ParcelableSparseArray;

    return-object v0
.end method

.method public onSubMenuSelected(Landroidx/appcompat/view/menu/SubMenuBuilder;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setCallback(Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V
    .locals 0

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->id:I

    return-void
.end method

.method public setMenuView(Lcom/google/android/material/navigation/NavigationBarMenuView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    return-void
.end method

.method public setUpdateSuspended(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->updateSuspended:Z

    return-void
.end method

.method public updateMenuView(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->updateSuspended:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    .line 72
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->buildMenuView()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/google/android/material/navigation/NavigationBarPresenter;->menuView:Lcom/google/android/material/navigation/NavigationBarMenuView;

    .line 74
    invoke-virtual {p0}, Lcom/google/android/material/navigation/NavigationBarMenuView;->updateMenuView()V

    :goto_0
    return-void
.end method
