.class public final synthetic Landroidx/navigation/fragment/FragmentNavigator$fragmentViewObserver$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# instance fields
.field public final synthetic f$0:Landroidx/navigation/fragment/FragmentNavigator;

.field public final synthetic f$1:Landroidx/navigation/NavBackStackEntry;


# direct methods
.method public synthetic constructor <init>(Landroidx/navigation/fragment/FragmentNavigator;Landroidx/navigation/NavBackStackEntry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/navigation/fragment/FragmentNavigator$fragmentViewObserver$1$$ExternalSyntheticLambda0;->f$0:Landroidx/navigation/fragment/FragmentNavigator;

    iput-object p2, p0, Landroidx/navigation/fragment/FragmentNavigator$fragmentViewObserver$1$$ExternalSyntheticLambda0;->f$1:Landroidx/navigation/NavBackStackEntry;

    return-void
.end method


# virtual methods
.method public final onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1

    iget-object v0, p0, Landroidx/navigation/fragment/FragmentNavigator$fragmentViewObserver$1$$ExternalSyntheticLambda0;->f$0:Landroidx/navigation/fragment/FragmentNavigator;

    iget-object p0, p0, Landroidx/navigation/fragment/FragmentNavigator$fragmentViewObserver$1$$ExternalSyntheticLambda0;->f$1:Landroidx/navigation/NavBackStackEntry;

    invoke-static {v0, p0, p1, p2}, Landroidx/navigation/fragment/FragmentNavigator$fragmentViewObserver$1;->$r8$lambda$Jzx85N2GSIKHQhRmW3MdQS7gc1c(Landroidx/navigation/fragment/FragmentNavigator;Landroidx/navigation/NavBackStackEntry;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method
