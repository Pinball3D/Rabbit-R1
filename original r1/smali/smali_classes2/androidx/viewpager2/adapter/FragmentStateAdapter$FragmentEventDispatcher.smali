.class Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentEventDispatcher;
.super Ljava/lang/Object;
.source "FragmentStateAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager2/adapter/FragmentStateAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FragmentEventDispatcher"
.end annotation


# instance fields
.field private mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentTransactionCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 801
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 802
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentEventDispatcher;->mCallbacks:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public dispatchMaxLifecyclePreUpdated(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Landroidx/lifecycle/Lifecycle$State;",
            ")",
            "Ljava/util/List<",
            "Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentTransactionCallback$OnPostEventListener;",
            ">;"
        }
    .end annotation

    .line 814
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentEventDispatcher;->mCallbacks:Ljava/util/List;

    .line 815
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentTransactionCallback;

    .line 816
    invoke-virtual {v1, p1, p2}, Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentTransactionCallback;->onFragmentMaxLifecyclePreUpdated(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentTransactionCallback$OnPostEventListener;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public dispatchPostEvents(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentTransactionCallback$OnPostEventListener;",
            ">;)V"
        }
    .end annotation

    .line 822
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentTransactionCallback$OnPostEventListener;

    .line 823
    invoke-interface {p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentTransactionCallback$OnPostEventListener;->onPost()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dispatchPreAdded(Landroidx/fragment/app/Fragment;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            ")",
            "Ljava/util/List<",
            "Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentTransactionCallback$OnPostEventListener;",
            ">;"
        }
    .end annotation

    .line 828
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentEventDispatcher;->mCallbacks:Ljava/util/List;

    .line 829
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentTransactionCallback;

    .line 830
    invoke-virtual {v1, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentTransactionCallback;->onFragmentPreAdded(Landroidx/fragment/app/Fragment;)Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentTransactionCallback$OnPostEventListener;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public dispatchPreRemoved(Landroidx/fragment/app/Fragment;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            ")",
            "Ljava/util/List<",
            "Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentTransactionCallback$OnPostEventListener;",
            ">;"
        }
    .end annotation

    .line 845
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentEventDispatcher;->mCallbacks:Ljava/util/List;

    .line 846
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentTransactionCallback;

    .line 847
    invoke-virtual {v1, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentTransactionCallback;->onFragmentPreRemoved(Landroidx/fragment/app/Fragment;)Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentTransactionCallback$OnPostEventListener;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public dispatchPreSavedInstanceState(Landroidx/fragment/app/Fragment;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            ")",
            "Ljava/util/List<",
            "Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentTransactionCallback$OnPostEventListener;",
            ">;"
        }
    .end annotation

    .line 837
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentEventDispatcher;->mCallbacks:Ljava/util/List;

    .line 838
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentTransactionCallback;

    .line 839
    invoke-virtual {v1, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentTransactionCallback;->onFragmentPreSavedInstanceState(Landroidx/fragment/app/Fragment;)Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentTransactionCallback$OnPostEventListener;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public registerCallback(Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentTransactionCallback;)V
    .locals 0

    iget-object p0, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentEventDispatcher;->mCallbacks:Ljava/util/List;

    .line 805
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterCallback(Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentTransactionCallback;)V
    .locals 0

    iget-object p0, p0, Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentEventDispatcher;->mCallbacks:Ljava/util/List;

    .line 809
    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
