.class Landroidx/appcompat/widget/ActionMenuPresenter$PopupPresenterCallback;
.super Ljava/lang/Object;
.source "ActionMenuPresenter.java"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupPresenterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/widget/ActionMenuPresenter;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/ActionMenuPresenter;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/ActionMenuPresenter$PopupPresenterCallback;->this$0:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 755
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V
    .locals 2

    .line 769
    instance-of v0, p1, Landroidx/appcompat/view/menu/SubMenuBuilder;

    if-eqz v0, :cond_0

    .line 770
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuBuilder;->getRootMenu()Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->close(Z)V

    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuPresenter$PopupPresenterCallback;->this$0:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 772
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->getCallback()Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 774
    invoke-interface {p0, p1, p2}, Landroidx/appcompat/view/menu/MenuPresenter$Callback;->onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V

    :cond_1
    return-void
.end method

.method public onOpenSubMenu(Landroidx/appcompat/view/menu/MenuBuilder;)Z
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter$PopupPresenterCallback;->this$0:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 760
    invoke-static {v0}, Landroidx/appcompat/widget/ActionMenuPresenter;->access$300(Landroidx/appcompat/widget/ActionMenuPresenter;)Landroidx/appcompat/view/menu/MenuBuilder;

    move-result-object v0

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/ActionMenuPresenter$PopupPresenterCallback;->this$0:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 762
    move-object v2, p1

    check-cast v2, Landroidx/appcompat/view/menu/SubMenuBuilder;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    iput v2, v0, Landroidx/appcompat/widget/ActionMenuPresenter;->mOpenSubMenuId:I

    iget-object p0, p0, Landroidx/appcompat/widget/ActionMenuPresenter$PopupPresenterCallback;->this$0:Landroidx/appcompat/widget/ActionMenuPresenter;

    .line 763
    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionMenuPresenter;->getCallback()Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 764
    invoke-interface {p0, p1}, Landroidx/appcompat/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Landroidx/appcompat/view/menu/MenuBuilder;)Z

    move-result v1

    :cond_1
    return v1
.end method
