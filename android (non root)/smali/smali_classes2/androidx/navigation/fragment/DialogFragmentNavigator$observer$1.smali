.class public final Landroidx/navigation/fragment/DialogFragmentNavigator$observer$1;
.super Ljava/lang/Object;
.source "DialogFragmentNavigator.kt"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/navigation/fragment/DialogFragmentNavigator;-><init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/navigation/fragment/DialogFragmentNavigator$observer$1$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDialogFragmentNavigator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DialogFragmentNavigator.kt\nandroidx/navigation/fragment/DialogFragmentNavigator$observer$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,304:1\n1747#2,3:305\n518#2,7:308\n533#2,6:316\n518#2,7:322\n1#3:315\n*S KotlinDebug\n*F\n+ 1 DialogFragmentNavigator.kt\nandroidx/navigation/fragment/DialogFragmentNavigator$observer$1\n*L\n54#1:305,3\n68#1:308,7\n77#1:316,6\n93#1:322,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "androidx/navigation/fragment/DialogFragmentNavigator$observer$1",
        "Landroidx/lifecycle/LifecycleEventObserver;",
        "onStateChanged",
        "",
        "source",
        "Landroidx/lifecycle/LifecycleOwner;",
        "event",
        "Landroidx/lifecycle/Lifecycle$Event;",
        "navigation-fragment_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/navigation/fragment/DialogFragmentNavigator;


# direct methods
.method constructor <init>(Landroidx/navigation/fragment/DialogFragmentNavigator;)V
    .locals 0

    iput-object p1, p0, Landroidx/navigation/fragment/DialogFragmentNavigator$observer$1;->this$0:Landroidx/navigation/fragment/DialogFragmentNavigator;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 5

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    sget-object v0, Landroidx/navigation/fragment/DialogFragmentNavigator$observer$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Landroidx/lifecycle/Lifecycle$Event;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_b

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p2, v0, :cond_8

    const/4 v0, 0x3

    if-eq p2, v0, :cond_4

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    goto/16 :goto_3

    .line 92
    :cond_0
    check-cast p1, Landroidx/fragment/app/DialogFragment;

    iget-object p2, p0, Landroidx/navigation/fragment/DialogFragmentNavigator$observer$1;->this$0:Landroidx/navigation/fragment/DialogFragmentNavigator;

    .line 93
    invoke-static {p2}, Landroidx/navigation/fragment/DialogFragmentNavigator;->access$getState(Landroidx/navigation/fragment/DialogFragmentNavigator;)Landroidx/navigation/NavigatorState;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/navigation/NavigatorState;->getTransitionsInProgress()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p2

    invoke-interface {p2}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    .line 323
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 324
    move-object v2, v0

    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    .line 94
    invoke-virtual {v2}, Landroidx/navigation/NavBackStackEntry;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v1, v0

    goto :goto_0

    .line 93
    :cond_2
    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    if-eqz v1, :cond_3

    iget-object p2, p0, Landroidx/navigation/fragment/DialogFragmentNavigator$observer$1;->this$0:Landroidx/navigation/fragment/DialogFragmentNavigator;

    .line 96
    invoke-static {p2}, Landroidx/navigation/fragment/DialogFragmentNavigator;->access$getState(Landroidx/navigation/fragment/DialogFragmentNavigator;)Landroidx/navigation/NavigatorState;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroidx/navigation/NavigatorState;->markTransitionComplete(Landroidx/navigation/NavBackStackEntry;)V

    .line 97
    :cond_3
    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    check-cast p0, Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    goto/16 :goto_3

    .line 74
    :cond_4
    check-cast p1, Landroidx/fragment/app/DialogFragment;

    .line 75
    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->requireDialog()Landroid/app/Dialog;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Dialog;->isShowing()Z

    move-result p2

    if-nez p2, :cond_f

    iget-object p2, p0, Landroidx/navigation/fragment/DialogFragmentNavigator$observer$1;->this$0:Landroidx/navigation/fragment/DialogFragmentNavigator;

    .line 76
    invoke-static {p2}, Landroidx/navigation/fragment/DialogFragmentNavigator;->access$getState(Landroidx/navigation/fragment/DialogFragmentNavigator;)Landroidx/navigation/NavigatorState;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/navigation/NavigatorState;->getBackStack()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p2

    invoke-interface {p2}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 316
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2, v0}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 317
    :cond_5
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 318
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    .line 319
    move-object v3, v2

    check-cast v3, Landroidx/navigation/NavBackStackEntry;

    .line 78
    invoke-virtual {v3}, Landroidx/navigation/NavBackStackEntry;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v1, v2

    .line 77
    :cond_6
    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    .line 80
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 83
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Dialog "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " was dismissed while it was not the top of the back stack, popping all dialogs above this dismissed dialog"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DialogFragmentNavigator"

    .line 81
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    if-eqz v1, :cond_f

    iget-object p0, p0, Landroidx/navigation/fragment/DialogFragmentNavigator$observer$1;->this$0:Landroidx/navigation/fragment/DialogFragmentNavigator;

    .line 88
    invoke-static {p0}, Landroidx/navigation/fragment/DialogFragmentNavigator;->access$getState(Landroidx/navigation/fragment/DialogFragmentNavigator;)Landroidx/navigation/NavigatorState;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, v1, p1}, Landroidx/navigation/NavigatorState;->popWithTransition(Landroidx/navigation/NavBackStackEntry;Z)V

    goto/16 :goto_3

    .line 67
    :cond_8
    check-cast p1, Landroidx/fragment/app/DialogFragment;

    iget-object p2, p0, Landroidx/navigation/fragment/DialogFragmentNavigator$observer$1;->this$0:Landroidx/navigation/fragment/DialogFragmentNavigator;

    .line 68
    invoke-static {p2}, Landroidx/navigation/fragment/DialogFragmentNavigator;->access$getState(Landroidx/navigation/fragment/DialogFragmentNavigator;)Landroidx/navigation/NavigatorState;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/navigation/NavigatorState;->getTransitionsInProgress()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p2

    invoke-interface {p2}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    .line 309
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_9
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 310
    move-object v2, v0

    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    .line 69
    invoke-virtual {v2}, Landroidx/navigation/NavBackStackEntry;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    move-object v1, v0

    goto :goto_1

    .line 68
    :cond_a
    check-cast v1, Landroidx/navigation/NavBackStackEntry;

    if-eqz v1, :cond_f

    iget-object p0, p0, Landroidx/navigation/fragment/DialogFragmentNavigator$observer$1;->this$0:Landroidx/navigation/fragment/DialogFragmentNavigator;

    .line 71
    invoke-static {p0}, Landroidx/navigation/fragment/DialogFragmentNavigator;->access$getState(Landroidx/navigation/fragment/DialogFragmentNavigator;)Landroidx/navigation/NavigatorState;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroidx/navigation/NavigatorState;->markTransitionComplete(Landroidx/navigation/NavBackStackEntry;)V

    goto :goto_3

    .line 53
    :cond_b
    check-cast p1, Landroidx/fragment/app/DialogFragment;

    iget-object p0, p0, Landroidx/navigation/fragment/DialogFragmentNavigator$observer$1;->this$0:Landroidx/navigation/fragment/DialogFragmentNavigator;

    .line 54
    invoke-static {p0}, Landroidx/navigation/fragment/DialogFragmentNavigator;->access$getState(Landroidx/navigation/fragment/DialogFragmentNavigator;)Landroidx/navigation/NavigatorState;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/navigation/NavigatorState;->getBackStack()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p0

    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    .line 305
    instance-of p2, p0, Ljava/util/Collection;

    if-eqz p2, :cond_c

    move-object p2, p0

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_c

    goto :goto_2

    .line 306
    :cond_c
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/navigation/NavBackStackEntry;

    .line 55
    invoke-virtual {p2}, Landroidx/navigation/NavBackStackEntry;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d

    goto :goto_3

    .line 63
    :cond_e
    :goto_2
    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_f
    :goto_3
    return-void
.end method
