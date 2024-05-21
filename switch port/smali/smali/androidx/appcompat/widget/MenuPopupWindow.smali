.class public Landroidx/appcompat/widget/MenuPopupWindow;
.super Landroidx/appcompat/widget/ListPopupWindow;
.source "MenuPopupWindow.java"

# interfaces
.implements Landroidx/appcompat/widget/MenuItemHoverListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/MenuPopupWindow$Api29Impl;,
        Landroidx/appcompat/widget/MenuPopupWindow$Api23Impl;,
        Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MenuPopupWindow"

.field private static sSetTouchModalMethod:Ljava/lang/reflect/Method;


# instance fields
.field private mHoverListener:Landroidx/appcompat/widget/MenuItemHoverListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method createDropDownListView(Landroid/content/Context;Z)Landroidx/appcompat/widget/DropDownListView;
    .locals 1

    .line 82
    new-instance v0, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;

    invoke-direct {v0, p1, p2}, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;-><init>(Landroid/content/Context;Z)V

    .line 83
    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView;->setHoverListener(Landroidx/appcompat/widget/MenuItemHoverListener;)V

    return-object v0
.end method

.method public onItemHoverEnter(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/MenuPopupWindow;->mHoverListener:Landroidx/appcompat/widget/MenuItemHoverListener;

    if-eqz p0, :cond_0

    .line 125
    invoke-interface {p0, p1, p2}, Landroidx/appcompat/widget/MenuItemHoverListener;->onItemHoverEnter(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)V

    :cond_0
    return-void
.end method

.method public onItemHoverExit(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/MenuPopupWindow;->mHoverListener:Landroidx/appcompat/widget/MenuItemHoverListener;

    if-eqz p0, :cond_0

    .line 133
    invoke-interface {p0, p1, p2}, Landroidx/appcompat/widget/MenuItemHoverListener;->onItemHoverExit(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/MenuItem;)V

    :cond_0
    return-void
.end method

.method public setEnterTransition(Ljava/lang/Object;)V
    .locals 0

    .line 89
    iget-object p0, p0, Landroidx/appcompat/widget/MenuPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    check-cast p1, Landroid/transition/Transition;

    invoke-static {p0, p1}, Landroidx/appcompat/widget/MenuPopupWindow$Api23Impl;->setEnterTransition(Landroid/widget/PopupWindow;Landroid/transition/Transition;)V

    return-void
.end method

.method public setExitTransition(Ljava/lang/Object;)V
    .locals 0

    .line 95
    iget-object p0, p0, Landroidx/appcompat/widget/MenuPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    check-cast p1, Landroid/transition/Transition;

    invoke-static {p0, p1}, Landroidx/appcompat/widget/MenuPopupWindow$Api23Impl;->setExitTransition(Landroid/widget/PopupWindow;Landroid/transition/Transition;)V

    return-void
.end method

.method public setHoverListener(Landroidx/appcompat/widget/MenuItemHoverListener;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/MenuPopupWindow;->mHoverListener:Landroidx/appcompat/widget/MenuItemHoverListener;

    return-void
.end method

.method public setTouchModal(Z)V
    .locals 0

    .line 117
    iget-object p0, p0, Landroidx/appcompat/widget/MenuPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-static {p0, p1}, Landroidx/appcompat/widget/MenuPopupWindow$Api29Impl;->setTouchModal(Landroid/widget/PopupWindow;Z)V

    return-void
.end method
