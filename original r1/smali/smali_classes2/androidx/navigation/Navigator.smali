.class public abstract Landroidx/navigation/Navigator;
.super Ljava/lang/Object;
.source "Navigator.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/navigation/Navigator$Extras;,
        Landroidx/navigation/Navigator$Name;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Landroidx/navigation/NavDestination;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNavigator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Navigator.kt\nandroidx/navigation/Navigator\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,241:1\n1295#2,2:242\n*S KotlinDebug\n*F\n+ 1 Navigator.kt\nandroidx/navigation/Navigator\n*L\n131#1:242,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008&\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u00020\u0003:\u0002%&B\u0005\u00a2\u0006\u0002\u0010\u0004J\r\u0010\u000e\u001a\u00028\u0000H&\u00a2\u0006\u0002\u0010\u000fJ5\u0010\u0010\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0011\u001a\u00028\u00002\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016\u00a2\u0006\u0002\u0010\u0018J*\u0010\u0010\u001a\u00020\u00192\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\u001b2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016J\u0010\u0010\u001d\u001a\u00020\u00192\u0006\u0010\u000b\u001a\u00020\u0006H\u0017J\u0010\u0010\u001e\u001a\u00020\u00192\u0006\u0010\u001f\u001a\u00020\u001cH\u0016J\u0010\u0010 \u001a\u00020\u00192\u0006\u0010!\u001a\u00020\u0013H\u0016J\n\u0010\"\u001a\u0004\u0018\u00010\u0013H\u0016J\u0008\u0010#\u001a\u00020\u0008H\u0016J\u0018\u0010#\u001a\u00020\u00192\u0006\u0010$\u001a\u00020\u001c2\u0006\u0010!\u001a\u00020\u0008H\u0016R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0008@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0014\u0010\u000b\u001a\u00020\u00068DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\'"
    }
    d2 = {
        "Landroidx/navigation/Navigator;",
        "D",
        "Landroidx/navigation/NavDestination;",
        "",
        "()V",
        "_state",
        "Landroidx/navigation/NavigatorState;",
        "<set-?>",
        "",
        "isAttached",
        "()Z",
        "state",
        "getState",
        "()Landroidx/navigation/NavigatorState;",
        "createDestination",
        "()Landroidx/navigation/NavDestination;",
        "navigate",
        "destination",
        "args",
        "Landroid/os/Bundle;",
        "navOptions",
        "Landroidx/navigation/NavOptions;",
        "navigatorExtras",
        "Landroidx/navigation/Navigator$Extras;",
        "(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)Landroidx/navigation/NavDestination;",
        "",
        "entries",
        "",
        "Landroidx/navigation/NavBackStackEntry;",
        "onAttach",
        "onLaunchSingleTop",
        "backStackEntry",
        "onRestoreState",
        "savedState",
        "onSaveState",
        "popBackStack",
        "popUpTo",
        "Extras",
        "Name",
        "navigation-common_release"
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
.field private _state:Landroidx/navigation/NavigatorState;

.field private isAttached:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract createDestination()Landroidx/navigation/NavDestination;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation
.end method

.method protected final getState()Landroidx/navigation/NavigatorState;
    .locals 1

    iget-object p0, p0, Landroidx/navigation/Navigator;->_state:Landroidx/navigation/NavigatorState;

    if-eqz p0, :cond_0

    return-object p0

    .line 68
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "You cannot access the Navigator\'s state until the Navigator is attached"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final isAttached()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/navigation/Navigator;->isAttached:Z

    return p0
.end method

.method public navigate(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)Landroidx/navigation/NavDestination;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;",
            "Landroid/os/Bundle;",
            "Landroidx/navigation/NavOptions;",
            "Landroidx/navigation/Navigator$Extras;",
            ")",
            "Landroidx/navigation/NavDestination;"
        }
    .end annotation

    const-string p0, "destination"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public navigate(Ljava/util/List;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Landroidx/navigation/NavOptions;",
            "Landroidx/navigation/Navigator$Extras;",
            ")V"
        }
    .end annotation

    const-string v0, "entries"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object p1

    new-instance v0, Landroidx/navigation/Navigator$navigate$1;

    invoke-direct {v0, p0, p2, p3}, Landroidx/navigation/Navigator$navigate$1;-><init>(Landroidx/navigation/Navigator;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {p1, v0}, Lkotlin/sequences/SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p1

    .line 131
    invoke-static {p1}, Lkotlin/sequences/SequencesKt;->filterNotNull(Lkotlin/sequences/Sequence;)Lkotlin/sequences/Sequence;

    move-result-object p1

    .line 242
    invoke-interface {p1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/navigation/NavBackStackEntry;

    .line 132
    invoke-virtual {p0}, Landroidx/navigation/Navigator;->getState()Landroidx/navigation/NavigatorState;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroidx/navigation/NavigatorState;->push(Landroidx/navigation/NavBackStackEntry;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onAttach(Landroidx/navigation/NavigatorState;)V
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/navigation/Navigator;->_state:Landroidx/navigation/NavigatorState;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/navigation/Navigator;->isAttached:Z

    return-void
.end method

.method public onLaunchSingleTop(Landroidx/navigation/NavBackStackEntry;)V
    .locals 3

    const-string v0, "backStackEntry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    invoke-virtual {p1}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v0

    instance-of v1, v0, Landroidx/navigation/NavDestination;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 145
    :cond_1
    sget-object v1, Landroidx/navigation/Navigator$onLaunchSingleTop$1;->INSTANCE:Landroidx/navigation/Navigator$onLaunchSingleTop$1;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v1}, Landroidx/navigation/NavOptionsBuilderKt;->navOptions(Lkotlin/jvm/functions/Function1;)Landroidx/navigation/NavOptions;

    move-result-object v1

    invoke-virtual {p0, v0, v2, v1, v2}, Landroidx/navigation/Navigator;->navigate(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)Landroidx/navigation/NavDestination;

    .line 146
    invoke-virtual {p0}, Landroidx/navigation/Navigator;->getState()Landroidx/navigation/NavigatorState;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/navigation/NavigatorState;->onLaunchSingleTop(Landroidx/navigation/NavBackStackEntry;)V

    return-void
.end method

.method public onRestoreState(Landroid/os/Bundle;)V
    .locals 0

    const-string p0, "savedState"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onSaveState()Landroid/os/Bundle;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public popBackStack(Landroidx/navigation/NavBackStackEntry;Z)V
    .locals 3

    const-string v0, "popUpTo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0}, Landroidx/navigation/Navigator;->getState()Landroidx/navigation/NavigatorState;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/navigation/NavigatorState;->getBackStack()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 186
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 189
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    const/4 v0, 0x0

    .line 192
    :cond_0
    invoke-virtual {p0}, Landroidx/navigation/Navigator;->popBackStack()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 196
    :cond_1
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavBackStackEntry;

    .line 197
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    if-eqz v0, :cond_2

    .line 199
    invoke-virtual {p0}, Landroidx/navigation/Navigator;->getState()Landroidx/navigation/NavigatorState;

    move-result-object p0

    invoke-virtual {p0, v0, p2}, Landroidx/navigation/NavigatorState;->pop(Landroidx/navigation/NavBackStackEntry;Z)V

    :cond_2
    return-void

    .line 187
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "popBackStack was called with "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " which does not exist in back stack "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 186
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public popBackStack()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
