.class Landroidx/fragment/app/Fragment$2;
.super Landroidx/fragment/app/Fragment$OnPreAttachedListener;
.source "Fragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/Fragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/fragment/app/Fragment;


# direct methods
.method constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/Fragment$2;->this$0:Landroidx/fragment/app/Fragment;

    const/4 p1, 0x0

    .line 320
    invoke-direct {p0, p1}, Landroidx/fragment/app/Fragment$OnPreAttachedListener;-><init>(Landroidx/fragment/app/Fragment$1;)V

    return-void
.end method


# virtual methods
.method onPreAttached()V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/Fragment$2;->this$0:Landroidx/fragment/app/Fragment;

    .line 323
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mSavedStateRegistryController:Landroidx/savedstate/SavedStateRegistryController;

    invoke-virtual {v0}, Landroidx/savedstate/SavedStateRegistryController;->performAttach()V

    iget-object v0, p0, Landroidx/fragment/app/Fragment$2;->this$0:Landroidx/fragment/app/Fragment;

    .line 324
    invoke-static {v0}, Landroidx/lifecycle/SavedStateHandleSupport;->enableSavedStateHandles(Landroidx/savedstate/SavedStateRegistryOwner;)V

    iget-object v0, p0, Landroidx/fragment/app/Fragment$2;->this$0:Landroidx/fragment/app/Fragment;

    .line 327
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/Fragment$2;->this$0:Landroidx/fragment/app/Fragment;

    .line 328
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v1, "registryState"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Landroidx/fragment/app/Fragment$2;->this$0:Landroidx/fragment/app/Fragment;

    .line 330
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->mSavedStateRegistryController:Landroidx/savedstate/SavedStateRegistryController;

    invoke-virtual {p0, v0}, Landroidx/savedstate/SavedStateRegistryController;->performRestore(Landroid/os/Bundle;)V

    return-void
.end method
