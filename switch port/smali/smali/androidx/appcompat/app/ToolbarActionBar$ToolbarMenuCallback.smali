.class Landroidx/appcompat/app/ToolbarActionBar$ToolbarMenuCallback;
.super Ljava/lang/Object;
.source "ToolbarActionBar.java"

# interfaces
.implements Landroidx/appcompat/app/AppCompatDelegateImpl$ActionBarMenuCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/ToolbarActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ToolbarMenuCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/app/ToolbarActionBar;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/ToolbarActionBar;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/app/ToolbarActionBar$ToolbarMenuCallback;->this$0:Landroidx/appcompat/app/ToolbarActionBar;

    .line 519
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreatePanelView(I)Landroid/view/View;
    .locals 0

    if-nez p1, :cond_0

    .line 538
    new-instance p1, Landroid/view/View;

    iget-object p0, p0, Landroidx/appcompat/app/ToolbarActionBar$ToolbarMenuCallback;->this$0:Landroidx/appcompat/app/ToolbarActionBar;

    iget-object p0, p0, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {p0}, Landroidx/appcompat/widget/DecorToolbar;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onPreparePanel(I)Z
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/appcompat/app/ToolbarActionBar$ToolbarMenuCallback;->this$0:Landroidx/appcompat/app/ToolbarActionBar;

    .line 523
    iget-boolean p1, p1, Landroidx/appcompat/app/ToolbarActionBar;->mToolbarMenuPrepared:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/appcompat/app/ToolbarActionBar$ToolbarMenuCallback;->this$0:Landroidx/appcompat/app/ToolbarActionBar;

    .line 524
    iget-object p1, p1, Landroidx/appcompat/app/ToolbarActionBar;->mDecorToolbar:Landroidx/appcompat/widget/DecorToolbar;

    invoke-interface {p1}, Landroidx/appcompat/widget/DecorToolbar;->setMenuPrepared()V

    iget-object p0, p0, Landroidx/appcompat/app/ToolbarActionBar$ToolbarMenuCallback;->this$0:Landroidx/appcompat/app/ToolbarActionBar;

    const/4 p1, 0x1

    .line 525
    iput-boolean p1, p0, Landroidx/appcompat/app/ToolbarActionBar;->mToolbarMenuPrepared:Z

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
