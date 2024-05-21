.class Landroidx/appcompat/view/menu/MenuDialogHelper;
.super Ljava/lang/Object;
.source "MenuDialogHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroidx/appcompat/view/menu/MenuPresenter$Callback;


# instance fields
.field private mDialog:Landroidx/appcompat/app/AlertDialog;

.field private mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

.field mPresenter:Landroidx/appcompat/view/menu/ListMenuPresenter;

.field private mPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/MenuDialogHelper;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/MenuDialogHelper;->mDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz p0, :cond_0

    .line 141
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Landroidx/appcompat/view/menu/MenuDialogHelper;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    iget-object p0, p0, Landroidx/appcompat/view/menu/MenuDialogHelper;->mPresenter:Landroidx/appcompat/view/menu/ListMenuPresenter;

    .line 170
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ListMenuPresenter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    invoke-interface {p0, p2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/view/menu/MenuItemImpl;

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Landroidx/appcompat/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    return-void
.end method

.method public onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V
    .locals 1

    if-nez p2, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuDialogHelper;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    if-ne p1, v0, :cond_1

    .line 153
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuDialogHelper;->dismiss()V

    :cond_1
    iget-object p0, p0, Landroidx/appcompat/view/menu/MenuDialogHelper;->mPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    if-eqz p0, :cond_2

    .line 156
    invoke-interface {p0, p1, p2}, Landroidx/appcompat/view/menu/MenuPresenter$Callback;->onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V

    :cond_2
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Landroidx/appcompat/view/menu/MenuDialogHelper;->mPresenter:Landroidx/appcompat/view/menu/ListMenuPresenter;

    iget-object p0, p0, Landroidx/appcompat/view/menu/MenuDialogHelper;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    const/4 v0, 0x1

    .line 147
    invoke-virtual {p1, p0, v0}, Landroidx/appcompat/view/menu/ListMenuPresenter;->onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V

    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/16 v0, 0x52

    if-eq p2, v0, :cond_0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_2

    .line 96
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 97
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p0, Landroidx/appcompat/view/menu/MenuDialogHelper;->mDialog:Landroidx/appcompat/app/AlertDialog;

    .line 98
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 100
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 102
    invoke-virtual {p1}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 104
    invoke-virtual {p1, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    return v1

    .line 109
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuDialogHelper;->mDialog:Landroidx/appcompat/app/AlertDialog;

    .line 110
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 112
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 114
    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 115
    invoke-virtual {v0, p3}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Landroidx/appcompat/view/menu/MenuDialogHelper;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 116
    invoke-virtual {p0, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->close(Z)V

    .line 117
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return v1

    :cond_2
    iget-object p0, p0, Landroidx/appcompat/view/menu/MenuDialogHelper;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    const/4 p1, 0x0

    .line 126
    invoke-virtual {p0, p2, p3, p1}, Landroidx/appcompat/view/menu/MenuBuilder;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result p0

    return p0
.end method

.method public onOpenSubMenu(Landroidx/appcompat/view/menu/MenuBuilder;)Z
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/MenuDialogHelper;->mPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    if-eqz p0, :cond_0

    .line 163
    invoke-interface {p0, p1}, Landroidx/appcompat/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Landroidx/appcompat/view/menu/MenuBuilder;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setPresenterCallback(Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/MenuDialogHelper;->mPresenterCallback:Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    return-void
.end method

.method public show(Landroid/os/IBinder;)V
    .locals 5

    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuDialogHelper;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 57
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 59
    new-instance v2, Landroidx/appcompat/view/menu/ListMenuPresenter;

    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Landroidx/appcompat/R$layout;->abc_list_menu_item_layout:I

    invoke-direct {v2, v3, v4}, Landroidx/appcompat/view/menu/ListMenuPresenter;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Landroidx/appcompat/view/menu/MenuDialogHelper;->mPresenter:Landroidx/appcompat/view/menu/ListMenuPresenter;

    .line 62
    invoke-virtual {v2, p0}, Landroidx/appcompat/view/menu/ListMenuPresenter;->setCallback(Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V

    iget-object v2, p0, Landroidx/appcompat/view/menu/MenuDialogHelper;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    iget-object v3, p0, Landroidx/appcompat/view/menu/MenuDialogHelper;->mPresenter:Landroidx/appcompat/view/menu/ListMenuPresenter;

    .line 63
    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/MenuBuilder;->addMenuPresenter(Landroidx/appcompat/view/menu/MenuPresenter;)V

    iget-object v2, p0, Landroidx/appcompat/view/menu/MenuDialogHelper;->mPresenter:Landroidx/appcompat/view/menu/ListMenuPresenter;

    .line 64
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/ListMenuPresenter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 67
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->getHeaderView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 70
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->getHeaderIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 77
    :goto_0
    invoke-virtual {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 80
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/MenuDialogHelper;->mDialog:Landroidx/appcompat/app/AlertDialog;

    .line 81
    invoke-virtual {v0, p0}, Landroidx/appcompat/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuDialogHelper;->mDialog:Landroidx/appcompat/app/AlertDialog;

    .line 83
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x3eb

    .line 84
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eqz p1, :cond_1

    .line 86
    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 88
    :cond_1
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x20000

    or-int/2addr p1, v1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object p0, p0, Landroidx/appcompat/view/menu/MenuDialogHelper;->mDialog:Landroidx/appcompat/app/AlertDialog;

    .line 90
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method
