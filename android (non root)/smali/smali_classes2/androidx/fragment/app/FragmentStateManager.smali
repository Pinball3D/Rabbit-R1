.class Landroidx/fragment/app/FragmentStateManager;
.super Ljava/lang/Object;
.source "FragmentStateManager.java"


# static fields
.field static final ARGUMENTS_KEY:Ljava/lang/String; = "arguments"

.field static final CHILD_FRAGMENT_MANAGER_KEY:Ljava/lang/String; = "childFragmentManager"

.field static final FRAGMENT_STATE_KEY:Ljava/lang/String; = "state"

.field static final REGISTRY_STATE_KEY:Ljava/lang/String; = "registryState"

.field static final SAVED_INSTANCE_STATE_KEY:Ljava/lang/String; = "savedInstanceState"

.field private static final TAG:Ljava/lang/String; = "FragmentManager"

.field static final VIEW_REGISTRY_STATE_KEY:Ljava/lang/String; = "viewRegistryState"

.field static final VIEW_STATE_KEY:Ljava/lang/String; = "viewState"


# instance fields
.field private final mDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

.field private final mFragment:Landroidx/fragment/app/Fragment;

.field private mFragmentManagerState:I

.field private final mFragmentStore:Landroidx/fragment/app/FragmentStore;

.field private mMovingToState:Z


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;Landroidx/fragment/app/FragmentStore;Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentStateManager;->mMovingToState:Z

    const/4 v0, -0x1

    iput v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragmentManagerState:I

    iput-object p1, p0, Landroidx/fragment/app/FragmentStateManager;->mDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    iput-object p2, p0, Landroidx/fragment/app/FragmentStateManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    iput-object p3, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method constructor <init>(Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;Landroidx/fragment/app/FragmentStore;Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V
    .locals 2

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentStateManager;->mMovingToState:Z

    const/4 v1, -0x1

    iput v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragmentManagerState:I

    iput-object p1, p0, Landroidx/fragment/app/FragmentStateManager;->mDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    iput-object p2, p0, Landroidx/fragment/app/FragmentStateManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    iput-object p3, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    const/4 p0, 0x0

    .line 123
    iput-object p0, p3, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 124
    iput-object p0, p3, Landroidx/fragment/app/Fragment;->mSavedViewRegistryState:Landroid/os/Bundle;

    .line 125
    iput v0, p3, Landroidx/fragment/app/Fragment;->mBackStackNesting:I

    .line 126
    iput-boolean v0, p3, Landroidx/fragment/app/Fragment;->mInLayout:Z

    .line 127
    iput-boolean v0, p3, Landroidx/fragment/app/Fragment;->mAdded:Z

    .line 128
    iget-object p1, p3, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_0

    iget-object p1, p3, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    iget-object p1, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    iput-object p1, p3, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    .line 129
    iput-object p0, p3, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    .line 131
    iput-object p4, p3, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string p0, "arguments"

    .line 132
    invoke-virtual {p4, p0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    iput-object p0, p3, Landroidx/fragment/app/Fragment;->mArguments:Landroid/os/Bundle;

    return-void
.end method

.method constructor <init>(Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;Landroidx/fragment/app/FragmentStore;Ljava/lang/ClassLoader;Landroidx/fragment/app/FragmentFactory;Landroid/os/Bundle;)V
    .locals 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentStateManager;->mMovingToState:Z

    const/4 v0, -0x1

    iput v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragmentManagerState:I

    iput-object p1, p0, Landroidx/fragment/app/FragmentStateManager;->mDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    iput-object p2, p0, Landroidx/fragment/app/FragmentStateManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    const-string p1, "state"

    .line 90
    invoke-virtual {p5, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/FragmentState;

    .line 91
    invoke-virtual {p1, p4, p3}, Landroidx/fragment/app/FragmentState;->instantiate(Landroidx/fragment/app/FragmentFactory;Ljava/lang/ClassLoader;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 92
    iput-object p5, p1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string p0, "arguments"

    .line 95
    invoke-virtual {p5, p0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 97
    invoke-virtual {p0, p3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 99
    :cond_0
    invoke-virtual {p1, p0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const/4 p0, 0x2

    .line 101
    invoke-static {p0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 102
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Instantiated fragment "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FragmentManager"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private isFragmentViewChild(Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 654
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    return v1

    .line 657
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 659
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-ne p1, v0, :cond_1

    return v1

    .line 662
    :cond_1
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method activityCreated()V
    .locals 3

    const/4 v0, 0x3

    .line 612
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 613
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "moveto ACTIVITY_CREATED: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 616
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 617
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v1, "savedInstanceState"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 619
    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->performActivityCreated(Landroid/os/Bundle;)V

    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    iget-object p0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    const/4 v2, 0x0

    .line 620
    invoke-virtual {v1, p0, v0, v2}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentActivityCreated(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    return-void
.end method

.method addViewToContainer()V
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 866
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->findViewFragment(Landroid/view/View;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 867
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 870
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 871
    iget v2, v1, Landroidx/fragment/app/Fragment;->mContainerId:I

    invoke-static {v1, v0, v2}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->onWrongNestedHierarchy(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;I)V

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 879
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentStore;->findFragmentIndexInContainer(Landroidx/fragment/app/Fragment;)I

    move-result v0

    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 880
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    iget-object p0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    iget-object p0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method attach()V
    .locals 6

    const/4 v0, 0x3

    .line 457
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "moveto ATTACHED: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 463
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    const-string v1, " that does not belong to this FragmentManager!"

    const-string v2, " declared target fragment "

    const-string v3, "Fragment "

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    iget-object v5, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 464
    iget-object v5, v5, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    iget-object v5, v5, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroidx/fragment/app/FragmentStore;->getFragmentStateManager(Ljava/lang/String;)Landroidx/fragment/app/FragmentStateManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 471
    iget-object v2, v1, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    iput-object v2, v1, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 472
    iput-object v4, v1, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    move-object v4, v0

    goto :goto_0

    .line 467
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object p0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    iget-object p0, p0, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 473
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    iget-object v4, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 474
    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroidx/fragment/app/FragmentStore;->getFragmentStateManager(Ljava/lang/String;)Landroidx/fragment/app/FragmentStateManager;

    move-result-object v4

    if-eqz v4, :cond_3

    goto :goto_0

    .line 477
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object p0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    iget-object p0, p0, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_0
    if-eqz v4, :cond_5

    .line 485
    invoke-virtual {v4}, Landroidx/fragment/app/FragmentStateManager;->moveToExpectedState()V

    :cond_5
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 487
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->getHost()Landroidx/fragment/app/FragmentHostCallback;

    move-result-object v1

    iput-object v1, v0, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 488
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->getParent()Landroidx/fragment/app/Fragment;

    move-result-object v1

    iput-object v1, v0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    const/4 v2, 0x0

    .line 489
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentPreAttached(Landroidx/fragment/app/Fragment;Z)V

    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 490
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->performAttach()V

    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    iget-object p0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 491
    invoke-virtual {v0, p0, v2}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentAttached(Landroidx/fragment/app/Fragment;Z)V

    return-void
.end method

.method computeExpectedState()I
    .locals 9

    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 158
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 159
    iget p0, p0, Landroidx/fragment/app/Fragment;->mState:I

    return p0

    :cond_0
    iget v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragmentManagerState:I

    .line 165
    sget-object v1, Landroidx/fragment/app/FragmentStateManager$2;->$SwitchMap$androidx$lifecycle$Lifecycle$State:[I

    iget-object v2, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mMaxState:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v2}, Landroidx/lifecycle/Lifecycle$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, -0x1

    const/4 v3, 0x5

    const/4 v4, 0x3

    const/4 v5, 0x4

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v1, v7, :cond_4

    if-eq v1, v6, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v5, :cond_1

    .line 179
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 176
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 173
    :cond_2
    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 170
    :cond_3
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_4
    :goto_0
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 183
    iget-boolean v1, v1, Landroidx/fragment/app/Fragment;->mFromLayout:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 184
    iget-boolean v1, v1, Landroidx/fragment/app/Fragment;->mInLayout:Z

    if-eqz v1, :cond_5

    iget v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragmentManagerState:I

    .line 187
    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 190
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_7

    .line 191
    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    :cond_5
    iget v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragmentManagerState:I

    if-ge v1, v5, :cond_6

    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 199
    iget v1, v1, Landroidx/fragment/app/Fragment;->mState:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    .line 204
    :cond_6
    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_7
    :goto_1
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 209
    iget-boolean v1, v1, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-nez v1, :cond_8

    .line 210
    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_8
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 213
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v1, :cond_9

    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 214
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    iget-object v8, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 215
    invoke-virtual {v8}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v8

    .line 214
    invoke-static {v1, v8}, Landroidx/fragment/app/SpecialEffectsController;->getOrCreateController(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/SpecialEffectsController;

    move-result-object v1

    .line 216
    invoke-virtual {v1, p0}, Landroidx/fragment/app/SpecialEffectsController;->getAwaitingCompletionLifecycleImpact(Landroidx/fragment/app/FragmentStateManager;)Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    move-result-object v1

    goto :goto_2

    :cond_9
    const/4 v1, 0x0

    .line 218
    :goto_2
    sget-object v8, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;->ADDING:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    if-ne v1, v8, :cond_a

    const/4 v1, 0x6

    .line 220
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_3

    .line 221
    :cond_a
    sget-object v8, Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;->REMOVING:Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;

    if-ne v1, v8, :cond_b

    .line 223
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_3

    :cond_b
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 224
    iget-boolean v1, v1, Landroidx/fragment/app/Fragment;->mRemoving:Z

    if-eqz v1, :cond_d

    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 225
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isInBackStack()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 227
    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_3

    .line 230
    :cond_c
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_d
    :goto_3
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 235
    iget-boolean v1, v1, Landroidx/fragment/app/Fragment;->mDeferStart:Z

    if-eqz v1, :cond_e

    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    iget v1, v1, Landroidx/fragment/app/Fragment;->mState:I

    if-ge v1, v3, :cond_e

    .line 236
    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 238
    :cond_e
    invoke-static {v6}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 239
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "computeExpectedState() of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "FragmentManager"

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    return v0
.end method

.method create()V
    .locals 4

    const/4 v0, 0x3

    .line 495
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 496
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "moveto CREATED: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 499
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 500
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v1, "savedInstanceState"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 502
    iget-boolean v1, v1, Landroidx/fragment/app/Fragment;->mIsCreated:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    iget-object v2, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    const/4 v3, 0x0

    .line 503
    invoke-virtual {v1, v2, v0, v3}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentPreCreated(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 504
    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->performCreate(Landroid/os/Bundle;)V

    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    iget-object p0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 505
    invoke-virtual {v1, p0, v0, v3}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentCreated(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    const/4 v1, 0x1

    .line 509
    iput v1, v0, Landroidx/fragment/app/Fragment;->mState:I

    iget-object p0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 510
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->restoreChildFragmentState()V

    :goto_1
    return-void
.end method

.method createView()V
    .locals 8

    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 515
    iget-boolean v0, v0, Landroidx/fragment/app/Fragment;->mFromLayout:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    .line 520
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v1

    const-string v2, "FragmentManager"

    if-eqz v1, :cond_1

    .line 521
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "moveto CREATE_VIEW: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 524
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 525
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v4, "savedInstanceState"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v3

    :goto_0
    iget-object v4, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 527
    invoke-virtual {v4, v1}, Landroidx/fragment/app/Fragment;->performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v4

    iget-object v5, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 529
    iget-object v5, v5, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v5, :cond_3

    iget-object v3, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 530
    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    goto/16 :goto_2

    :cond_3
    iget-object v5, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 531
    iget v5, v5, Landroidx/fragment/app/Fragment;->mContainerId:I

    if-eqz v5, :cond_7

    iget-object v3, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 532
    iget v3, v3, Landroidx/fragment/app/Fragment;->mContainerId:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_6

    iget-object v3, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 536
    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManager;->getContainer()Landroidx/fragment/app/FragmentContainer;

    move-result-object v3

    iget-object v5, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 537
    iget v5, v5, Landroidx/fragment/app/Fragment;->mContainerId:I

    invoke-virtual {v3, v5}, Landroidx/fragment/app/FragmentContainer;->onFindViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-nez v3, :cond_5

    iget-object v5, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 539
    iget-boolean v5, v5, Landroidx/fragment/app/Fragment;->mRestored:Z

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_4
    :try_start_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 542
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    iget v1, v1, Landroidx/fragment/app/Fragment;->mContainerId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v0, "unknown"

    .line 546
    :goto_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No view found for id 0x"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    iget v3, v3, Landroidx/fragment/app/Fragment;->mContainerId:I

    .line 547
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") for fragment "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 551
    :cond_5
    instance-of v5, v3, Landroidx/fragment/app/FragmentContainerView;

    if-nez v5, :cond_7

    iget-object v5, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 552
    invoke-static {v5, v3}, Landroidx/fragment/app/strictmode/FragmentStrictMode;->onWrongFragmentContainer(Landroidx/fragment/app/Fragment;Landroid/view/ViewGroup;)V

    goto :goto_2

    .line 533
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot create fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " for a container view with no id"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_2
    iget-object v5, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 556
    iput-object v3, v5, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    iget-object v5, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 557
    invoke-virtual {v5, v4, v3, v1}, Landroidx/fragment/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    iget-object v4, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 558
    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    const/4 v5, 0x2

    if-eqz v4, :cond_d

    .line 559
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 560
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "moveto VIEW_CREATED: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 562
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 563
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    sget v6, Landroidx/fragment/R$id;->fragment_container_view_tag:I

    iget-object v7, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v6, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    if-eqz v3, :cond_9

    .line 565
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentStateManager;->addViewToContainer()V

    :cond_9
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 567
    iget-boolean v0, v0, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 568
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 571
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 572
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    goto :goto_3

    :cond_b
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 574
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 575
    new-instance v3, Landroidx/fragment/app/FragmentStateManager$1;

    invoke-direct {v3, p0, v0}, Landroidx/fragment/app/FragmentStateManager$1;-><init>(Landroidx/fragment/app/FragmentStateManager;Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :goto_3
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 588
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->performViewCreated()V

    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    iget-object v3, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 589
    iget-object v6, v3, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v3, v6, v1, v4}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentViewCreated(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 591
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 592
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    iget-object v3, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 593
    invoke-virtual {v3, v1}, Landroidx/fragment/app/Fragment;->setPostOnViewCreatedAlpha(F)V

    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 594
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v1, :cond_d

    if-nez v0, :cond_d

    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 596
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 598
    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setFocusedView(Landroid/view/View;)V

    .line 599
    invoke-static {v5}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 600
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "requestFocus: Saved focused view "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 605
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_d
    iget-object p0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 608
    iput v5, p0, Landroidx/fragment/app/Fragment;->mState:I

    return-void
.end method

.method destroy()V
    .locals 6

    const/4 v0, 0x3

    .line 787
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 788
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "movefrom CREATED: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 790
    iget-boolean v0, v0, Landroidx/fragment/app/Fragment;->mRemoving:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isInBackStack()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    const/4 v3, 0x0

    if-eqz v0, :cond_2

    iget-object v4, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 792
    iget-boolean v4, v4, Landroidx/fragment/app/Fragment;->mBeingSaved:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Landroidx/fragment/app/FragmentStateManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    iget-object v5, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 793
    iget-object v5, v5, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Landroidx/fragment/app/FragmentStore;->setSavedState(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    :cond_2
    if-nez v0, :cond_5

    iget-object v4, p0, Landroidx/fragment/app/FragmentStateManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 796
    invoke-virtual {v4}, Landroidx/fragment/app/FragmentStore;->getNonConfig()Landroidx/fragment/app/FragmentManagerViewModel;

    move-result-object v4

    iget-object v5, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v4, v5}, Landroidx/fragment/app/FragmentManagerViewModel;->shouldDestroy(Landroidx/fragment/app/Fragment;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 832
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 833
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentStore;->findActiveFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 834
    iget-boolean v1, v0, Landroidx/fragment/app/Fragment;->mRetainInstance:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 838
    iput-object v0, v1, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    :cond_4
    iget-object p0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 841
    iput v2, p0, Landroidx/fragment/app/Fragment;->mState:I

    goto/16 :goto_4

    :cond_5
    :goto_1
    iget-object v4, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 798
    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 800
    instance-of v5, v4, Landroidx/lifecycle/ViewModelStoreOwner;

    if-eqz v5, :cond_6

    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 801
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentStore;->getNonConfig()Landroidx/fragment/app/FragmentManagerViewModel;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManagerViewModel;->isCleared()Z

    move-result v1

    goto :goto_2

    .line 802
    :cond_6
    invoke-virtual {v4}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v5

    instance-of v5, v5, Landroid/app/Activity;

    if-eqz v5, :cond_7

    .line 803
    invoke-virtual {v4}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    .line 804
    invoke-virtual {v4}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v4

    xor-int/2addr v1, v4

    :cond_7
    :goto_2
    if-eqz v0, :cond_8

    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 808
    iget-boolean v0, v0, Landroidx/fragment/app/Fragment;->mBeingSaved:Z

    if-eqz v0, :cond_9

    :cond_8
    if-eqz v1, :cond_a

    :cond_9
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 809
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->getNonConfig()Landroidx/fragment/app/FragmentManagerViewModel;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManagerViewModel;->clearNonConfigState(Landroidx/fragment/app/Fragment;)V

    :cond_a
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 811
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->performDestroy()V

    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 812
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentDestroyed(Landroidx/fragment/app/Fragment;Z)V

    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 816
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStore;->getActiveFragmentStateManagers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentStateManager;

    if-eqz v1, :cond_b

    .line 818
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentStateManager;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    iget-object v2, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 819
    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    iget-object v4, v1, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 820
    iput-object v2, v1, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    .line 821
    iput-object v3, v1, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    goto :goto_3

    :cond_c
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 825
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 828
    iget-object v2, v0, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentStore;->findActiveFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    iput-object v1, v0, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    :cond_d
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 830
    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentStore;->makeInactive(Landroidx/fragment/app/FragmentStateManager;)V

    :goto_4
    return-void
.end method

.method destroyFragmentView()V
    .locals 3

    const/4 v0, 0x3

    .line 766
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 767
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "movefrom CREATE_VIEW: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 772
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 773
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 775
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->performDestroyView()V

    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    const/4 v2, 0x0

    .line 776
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentViewDestroyed(Landroidx/fragment/app/Fragment;Z)V

    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    const/4 v1, 0x0

    .line 777
    iput-object v1, v0, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 778
    iput-object v1, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 781
    iput-object v1, v0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/FragmentViewLifecycleOwner;

    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 782
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwnerLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 783
    iput-boolean v2, p0, Landroidx/fragment/app/Fragment;->mInLayout:Z

    return-void
.end method

.method detach()V
    .locals 5

    const/4 v0, 0x3

    .line 846
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v1

    const-string v2, "FragmentManager"

    if-eqz v1, :cond_0

    .line 847
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "movefrom ATTACHED: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 849
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->performDetach()V

    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    iget-object v3, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    const/4 v4, 0x0

    .line 850
    invoke-virtual {v1, v3, v4}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentDetached(Landroidx/fragment/app/Fragment;Z)V

    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    const/4 v3, -0x1

    .line 852
    iput v3, v1, Landroidx/fragment/app/Fragment;->mState:I

    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    const/4 v3, 0x0

    .line 853
    iput-object v3, v1, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 854
    iput-object v3, v1, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 855
    iput-object v3, v1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 856
    iget-boolean v1, v1, Landroidx/fragment/app/Fragment;->mRemoving:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isInBackStack()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 857
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentStore;->getNonConfig()Landroidx/fragment/app/FragmentManagerViewModel;

    move-result-object v1

    iget-object v3, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v3}, Landroidx/fragment/app/FragmentManagerViewModel;->shouldDestroy(Landroidx/fragment/app/Fragment;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 858
    :goto_0
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 859
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "initState called for fragment: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object p0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 861
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->initState()V

    :cond_3
    return-void
.end method

.method ensureInflatedView()V
    .locals 5

    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 395
    iget-boolean v0, v0, Landroidx/fragment/app/Fragment;->mFromLayout:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    iget-boolean v0, v0, Landroidx/fragment/app/Fragment;->mInLayout:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    iget-boolean v0, v0, Landroidx/fragment/app/Fragment;->mPerformedCreateView:Z

    if-nez v0, :cond_3

    const/4 v0, 0x3

    .line 396
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "moveto CREATE_VIEW: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 400
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 401
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v2, "savedInstanceState"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    iget-object v2, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 404
    invoke-virtual {v2, v0}, Landroidx/fragment/app/Fragment;->performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v0}, Landroidx/fragment/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 406
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 407
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 408
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    sget v3, Landroidx/fragment/R$id;->fragment_container_view_tag:I

    iget-object v4, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 409
    iget-boolean v1, v1, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 410
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->performViewCreated()V

    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    iget-object v3, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 411
    iget-object v4, v3, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v3, v4, v0, v2}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentViewCreated(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    iget-object p0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    const/4 v0, 0x2

    .line 413
    iput v0, p0, Landroidx/fragment/app/Fragment;->mState:I

    :cond_3
    return-void
.end method

.method getFragment()Landroidx/fragment/app/Fragment;
    .locals 0

    iget-object p0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    return-object p0
.end method

.method moveToExpectedState()V
    .locals 8

    iget-boolean v0, p0, Landroidx/fragment/app/FragmentStateManager;->mMovingToState:Z

    const/4 v1, 0x2

    const-string v2, "FragmentManager"

    if-eqz v0, :cond_1

    .line 247
    invoke-static {v1}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ignoring re-entrant call to moveToExpectedState() for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentStateManager;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 248
    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    const/4 v3, 0x1

    :try_start_0
    iput-boolean v3, p0, Landroidx/fragment/app/FragmentStateManager;->mMovingToState:Z

    move v4, v0

    .line 258
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentStateManager;->computeExpectedState()I

    move-result v5

    iget-object v6, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    iget v6, v6, Landroidx/fragment/app/Fragment;->mState:I

    const/4 v7, 0x3

    if-eq v5, v6, :cond_9

    iget-object v4, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 260
    iget v4, v4, Landroidx/fragment/app/Fragment;->mState:I

    if-le v5, v4, :cond_3

    iget-object v4, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 262
    iget v4, v4, Landroidx/fragment/app/Fragment;->mState:I

    add-int/2addr v4, v3

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_2

    .line 296
    :pswitch_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentStateManager;->resume()V

    goto/16 :goto_2

    :pswitch_1
    iget-object v4, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    const/4 v5, 0x6

    .line 293
    iput v5, v4, Landroidx/fragment/app/Fragment;->mState:I

    goto/16 :goto_2

    .line 290
    :pswitch_2
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentStateManager;->start()V

    goto/16 :goto_2

    :pswitch_3
    iget-object v4, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 278
    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 279
    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    iget-object v5, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 281
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v5

    .line 280
    invoke-static {v4, v5}, Landroidx/fragment/app/SpecialEffectsController;->getOrCreateController(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/SpecialEffectsController;

    move-result-object v4

    iget-object v5, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 282
    iget-object v5, v5, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    .line 284
    invoke-static {v5}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->from(I)Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    move-result-object v5

    .line 285
    invoke-virtual {v4, v5, p0}, Landroidx/fragment/app/SpecialEffectsController;->enqueueAdd(Landroidx/fragment/app/SpecialEffectsController$Operation$State;Landroidx/fragment/app/FragmentStateManager;)V

    :cond_2
    iget-object v4, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    const/4 v5, 0x4

    .line 287
    iput v5, v4, Landroidx/fragment/app/Fragment;->mState:I

    goto/16 :goto_2

    .line 275
    :pswitch_4
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentStateManager;->activityCreated()V

    goto/16 :goto_2

    .line 271
    :pswitch_5
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentStateManager;->ensureInflatedView()V

    .line 272
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentStateManager;->createView()V

    goto/16 :goto_2

    .line 268
    :pswitch_6
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentStateManager;->create()V

    goto/16 :goto_2

    .line 265
    :pswitch_7
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentStateManager;->attach()V

    goto/16 :goto_2

    :cond_3
    iget-object v4, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 301
    iget v4, v4, Landroidx/fragment/app/Fragment;->mState:I

    sub-int/2addr v4, v3

    packed-switch v4, :pswitch_data_1

    goto/16 :goto_2

    .line 304
    :pswitch_8
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentStateManager;->pause()V

    goto/16 :goto_2

    :pswitch_9
    iget-object v4, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    const/4 v5, 0x5

    .line 307
    iput v5, v4, Landroidx/fragment/app/Fragment;->mState:I

    goto/16 :goto_2

    .line 310
    :pswitch_a
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentStateManager;->stop()V

    goto/16 :goto_2

    .line 313
    :pswitch_b
    invoke-static {v7}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 314
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "movefrom ACTIVITY_CREATED: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v4, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 316
    iget-boolean v4, v4, Landroidx/fragment/app/Fragment;->mBeingSaved:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Landroidx/fragment/app/FragmentStateManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    iget-object v5, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 317
    iget-object v5, v5, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentStateManager;->saveState()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroidx/fragment/app/FragmentStore;->setSavedState(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    goto :goto_1

    :cond_5
    iget-object v4, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 318
    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v4, :cond_6

    iget-object v4, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 321
    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-nez v4, :cond_6

    .line 322
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentStateManager;->saveViewState()V

    :cond_6
    :goto_1
    iget-object v4, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 325
    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v4, :cond_7

    iget-object v4, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v4, :cond_7

    iget-object v4, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 326
    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    iget-object v5, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 328
    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v5

    .line 327
    invoke-static {v4, v5}, Landroidx/fragment/app/SpecialEffectsController;->getOrCreateController(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/SpecialEffectsController;

    move-result-object v4

    .line 329
    invoke-virtual {v4, p0}, Landroidx/fragment/app/SpecialEffectsController;->enqueueRemove(Landroidx/fragment/app/FragmentStateManager;)V

    :cond_7
    iget-object v4, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 331
    iput v7, v4, Landroidx/fragment/app/Fragment;->mState:I

    goto :goto_2

    :pswitch_c
    iget-object v4, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 334
    iput-boolean v0, v4, Landroidx/fragment/app/Fragment;->mInLayout:Z

    iget-object v4, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 335
    iput v1, v4, Landroidx/fragment/app/Fragment;->mState:I

    goto :goto_2

    .line 338
    :pswitch_d
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentStateManager;->destroyFragmentView()V

    iget-object v4, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 339
    iput v3, v4, Landroidx/fragment/app/Fragment;->mState:I

    goto :goto_2

    :pswitch_e
    iget-object v4, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 342
    iget-boolean v4, v4, Landroidx/fragment/app/Fragment;->mBeingSaved:Z

    if-eqz v4, :cond_8

    iget-object v4, p0, Landroidx/fragment/app/FragmentStateManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    iget-object v5, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    iget-object v5, v5, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 343
    invoke-virtual {v4, v5}, Landroidx/fragment/app/FragmentStore;->getSavedState(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    if-nez v4, :cond_8

    iget-object v4, p0, Landroidx/fragment/app/FragmentStateManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    iget-object v5, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 344
    iget-object v5, v5, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentStateManager;->saveState()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroidx/fragment/app/FragmentStore;->setSavedState(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 346
    :cond_8
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentStateManager;->destroy()V

    goto :goto_2

    .line 349
    :pswitch_f
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentStateManager;->detach()V

    :goto_2
    move v4, v3

    goto/16 :goto_0

    :cond_9
    if-nez v4, :cond_c

    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 354
    iget v1, v1, Landroidx/fragment/app/Fragment;->mState:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_c

    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 358
    iget-boolean v1, v1, Landroidx/fragment/app/Fragment;->mRemoving:Z

    if-eqz v1, :cond_c

    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isInBackStack()Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    iget-boolean v1, v1, Landroidx/fragment/app/Fragment;->mBeingSaved:Z

    if-nez v1, :cond_c

    .line 359
    invoke-static {v7}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 360
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cleaning up state of never attached fragment: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 362
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentStore;->getNonConfig()Landroidx/fragment/app/FragmentManagerViewModel;

    move-result-object v1

    iget-object v3, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v3}, Landroidx/fragment/app/FragmentManagerViewModel;->clearNonConfigState(Landroidx/fragment/app/Fragment;)V

    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragmentStore:Landroidx/fragment/app/FragmentStore;

    .line 363
    invoke-virtual {v1, p0}, Landroidx/fragment/app/FragmentStore;->makeInactive(Landroidx/fragment/app/FragmentStateManager;)V

    .line 364
    invoke-static {v7}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 365
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initState called for fragment: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 367
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->initState()V

    :cond_c
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 370
    iget-boolean v1, v1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    if-eqz v1, :cond_10

    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 371
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_e

    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v1, :cond_e

    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 373
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 375
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    .line 374
    invoke-static {v1, v2}, Landroidx/fragment/app/SpecialEffectsController;->getOrCreateController(Landroid/view/ViewGroup;Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/SpecialEffectsController;

    move-result-object v1

    iget-object v2, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 376
    iget-boolean v2, v2, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz v2, :cond_d

    .line 377
    invoke-virtual {v1, p0}, Landroidx/fragment/app/SpecialEffectsController;->enqueueHide(Landroidx/fragment/app/FragmentStateManager;)V

    goto :goto_3

    .line 379
    :cond_d
    invoke-virtual {v1, p0}, Landroidx/fragment/app/SpecialEffectsController;->enqueueShow(Landroidx/fragment/app/FragmentStateManager;)V

    :cond_e
    :goto_3
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 382
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz v1, :cond_f

    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 383
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    iget-object v2, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->invalidateMenuForFragment(Landroidx/fragment/app/Fragment;)V

    :cond_f
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 385
    iput-boolean v0, v1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 386
    iget-boolean v2, v1, Landroidx/fragment/app/Fragment;->mHidden:Z

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 387
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->dispatchOnHiddenChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_10
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentStateManager;->mMovingToState:Z

    return-void

    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Landroidx/fragment/app/FragmentStateManager;->mMovingToState:Z

    .line 391
    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method pause()V
    .locals 2

    const/4 v0, 0x3

    .line 668
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 669
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "movefrom RESUMED: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 671
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->performPause()V

    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    iget-object p0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    const/4 v1, 0x0

    .line 672
    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentPaused(Landroidx/fragment/app/Fragment;Z)V

    return-void
.end method

.method restoreState(Ljava/lang/ClassLoader;)V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 420
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 423
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iget-object p1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 424
    iget-object p1, p1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v0, "savedInstanceState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 430
    iget-object p1, p1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    iget-object p1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 434
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v1, "viewState"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p1, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    iget-object p1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 436
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v1, "viewRegistryState"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p1, Landroidx/fragment/app/Fragment;->mSavedViewRegistryState:Landroid/os/Bundle;

    iget-object p1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 439
    iget-object p1, p1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v0, "state"

    .line 440
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/FragmentState;

    if-eqz p1, :cond_3

    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 442
    iget-object v1, p1, Landroidx/fragment/app/FragmentState;->mTargetWho:Ljava/lang/String;

    iput-object v1, v0, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 443
    iget v1, p1, Landroidx/fragment/app/FragmentState;->mTargetRequestCode:I

    iput v1, v0, Landroidx/fragment/app/Fragment;->mTargetRequestCode:I

    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 444
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mSavedUserVisibleHint:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    iget-object p1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 445
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mSavedUserVisibleHint:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    iget-object p1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    const/4 v0, 0x0

    .line 446
    iput-object v0, p1, Landroidx/fragment/app/Fragment;->mSavedUserVisibleHint:Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 448
    iget-boolean p1, p1, Landroidx/fragment/app/FragmentState;->mUserVisibleHint:Z

    iput-boolean p1, v0, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    :cond_3
    :goto_0
    iget-object p1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 451
    iget-boolean p1, p1, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    if-nez p1, :cond_4

    iget-object p0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    const/4 p1, 0x1

    .line 452
    iput-boolean p1, p0, Landroidx/fragment/app/Fragment;->mDeferStart:Z

    :cond_4
    return-void
.end method

.method resume()V
    .locals 5

    const/4 v0, 0x3

    .line 633
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    const-string v1, "FragmentManager"

    if-eqz v0, :cond_0

    .line 634
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "moveto RESUMED: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 636
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getFocusedView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 637
    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentStateManager;->isFragmentViewChild(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 638
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v2

    const/4 v3, 0x2

    .line 639
    invoke-static {v3}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 640
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "requestFocus: Restoring focused view "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz v2, :cond_1

    const-string v2, "succeeded"

    goto :goto_0

    :cond_1
    const-string v2, "failed"

    .line 641
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " on Fragment "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " resulting in focused view "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 642
    invoke-virtual {v2}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 640
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    const/4 v1, 0x0

    .line 645
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setFocusedView(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 646
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->performResume()V

    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    iget-object v2, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    const/4 v3, 0x0

    .line 647
    invoke-virtual {v0, v2, v3}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentResumed(Landroidx/fragment/app/Fragment;Z)V

    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 648
    iput-object v1, v0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 649
    iput-object v1, v0, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    iget-object p0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 650
    iput-object v1, p0, Landroidx/fragment/app/Fragment;->mSavedViewRegistryState:Landroid/os/Bundle;

    return-void
.end method

.method saveInstanceState()Landroidx/fragment/app/Fragment$SavedState;
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 738
    iget v0, v0, Landroidx/fragment/app/Fragment;->mState:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 739
    new-instance v0, Landroidx/fragment/app/Fragment$SavedState;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentStateManager;->saveState()Landroid/os/Bundle;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/fragment/app/Fragment$SavedState;-><init>(Landroid/os/Bundle;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method saveState()Landroid/os/Bundle;
    .locals 5

    .line 685
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 686
    iget v1, v1, Landroidx/fragment/app/Fragment;->mState:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 689
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 690
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 695
    :cond_0
    new-instance v1, Landroidx/fragment/app/FragmentState;

    iget-object v3, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-direct {v1, v3}, Landroidx/fragment/app/FragmentState;-><init>(Landroidx/fragment/app/Fragment;)V

    const-string v3, "state"

    .line 696
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 699
    iget v1, v1, Landroidx/fragment/app/Fragment;->mState:I

    if-le v1, v2, :cond_6

    .line 700
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 701
    invoke-virtual {v2, v1}, Landroidx/fragment/app/Fragment;->performSaveInstanceState(Landroid/os/Bundle;)V

    .line 702
    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "savedInstanceState"

    .line 703
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    iget-object v2, p0, Landroidx/fragment/app/FragmentStateManager;->mDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    iget-object v3, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    const/4 v4, 0x0

    .line 705
    invoke-virtual {v2, v3, v1, v4}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentSaveInstanceState(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 707
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 708
    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mSavedStateRegistryController:Landroidx/savedstate/SavedStateRegistryController;

    invoke-virtual {v2, v1}, Landroidx/savedstate/SavedStateRegistryController;->performSave(Landroid/os/Bundle;)V

    .line 709
    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "registryState"

    .line 710
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_2
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 713
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 714
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->saveAllStateInternal()Landroid/os/Bundle;

    move-result-object v1

    .line 715
    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "childFragmentManager"

    .line 716
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_3
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 719
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_4

    .line 720
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentStateManager;->saveViewState()V

    :cond_4
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 722
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 723
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    const-string v2, "viewState"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_5
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 725
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mSavedViewRegistryState:Landroid/os/Bundle;

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 726
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mSavedViewRegistryState:Landroid/os/Bundle;

    const-string v2, "viewRegistryState"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_6
    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 730
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mArguments:Landroid/os/Bundle;

    if-eqz v1, :cond_7

    iget-object p0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 731
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->mArguments:Landroid/os/Bundle;

    const-string v1, "arguments"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_7
    return-object v0
.end method

.method saveViewState()V
    .locals 2

    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 745
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    .line 748
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 749
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Saving view state for fragment "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " with view "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    :cond_1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 754
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 755
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 756
    iput-object v0, v1, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 758
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 759
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/FragmentViewLifecycleOwner;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentViewLifecycleOwner;->performSave(Landroid/os/Bundle;)V

    .line 760
    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object p0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 761
    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mSavedViewRegistryState:Landroid/os/Bundle;

    :cond_3
    return-void
.end method

.method setFragmentManagerState(I)V
    .locals 0

    iput p1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragmentManagerState:I

    return-void
.end method

.method start()V
    .locals 2

    const/4 v0, 0x3

    .line 625
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 626
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "moveto STARTED: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 628
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->performStart()V

    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    iget-object p0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    const/4 v1, 0x0

    .line 629
    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentStarted(Landroidx/fragment/app/Fragment;Z)V

    return-void
.end method

.method stop()V
    .locals 2

    const/4 v0, 0x3

    .line 676
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 677
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "movefrom STARTED: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    .line 679
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->performStop()V

    iget-object v0, p0, Landroidx/fragment/app/FragmentStateManager;->mDispatcher:Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;

    iget-object p0, p0, Landroidx/fragment/app/FragmentStateManager;->mFragment:Landroidx/fragment/app/Fragment;

    const/4 v1, 0x0

    .line 680
    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentStopped(Landroidx/fragment/app/Fragment;Z)V

    return-void
.end method
