.class final Landroidx/navigation/Navigator$navigate$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Navigator.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/navigation/Navigator;->navigate(Ljava/util/List;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/navigation/NavBackStackEntry;",
        "Landroidx/navigation/NavBackStackEntry;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/navigation/NavBackStackEntry;",
        "D",
        "Landroidx/navigation/NavDestination;",
        "backStackEntry",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $navOptions:Landroidx/navigation/NavOptions;

.field final synthetic $navigatorExtras:Landroidx/navigation/Navigator$Extras;

.field final synthetic this$0:Landroidx/navigation/Navigator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/navigation/Navigator<",
            "TD;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/navigation/Navigator;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/navigation/Navigator<",
            "TD;>;",
            "Landroidx/navigation/NavOptions;",
            "Landroidx/navigation/Navigator$Extras;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/navigation/Navigator$navigate$1;->this$0:Landroidx/navigation/Navigator;

    iput-object p2, p0, Landroidx/navigation/Navigator$navigate$1;->$navOptions:Landroidx/navigation/NavOptions;

    iput-object p3, p0, Landroidx/navigation/Navigator$navigate$1;->$navigatorExtras:Landroidx/navigation/Navigator$Extras;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/navigation/NavBackStackEntry;)Landroidx/navigation/NavBackStackEntry;
    .locals 6

    const-string v0, "backStackEntry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
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

    return-object v2

    :cond_1
    iget-object v1, p0, Landroidx/navigation/Navigator$navigate$1;->this$0:Landroidx/navigation/Navigator;

    .line 119
    invoke-virtual {p1}, Landroidx/navigation/NavBackStackEntry;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    iget-object v4, p0, Landroidx/navigation/Navigator$navigate$1;->$navOptions:Landroidx/navigation/NavOptions;

    iget-object v5, p0, Landroidx/navigation/Navigator$navigate$1;->$navigatorExtras:Landroidx/navigation/Navigator$Extras;

    .line 118
    invoke-virtual {v1, v0, v3, v4, v5}, Landroidx/navigation/Navigator;->navigate(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)Landroidx/navigation/NavDestination;

    move-result-object v1

    if-nez v1, :cond_2

    move-object p1, v2

    goto :goto_1

    .line 123
    :cond_2
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    iget-object p0, p0, Landroidx/navigation/Navigator$navigate$1;->this$0:Landroidx/navigation/Navigator;

    .line 125
    invoke-virtual {p0}, Landroidx/navigation/Navigator;->getState()Landroidx/navigation/NavigatorState;

    move-result-object p0

    .line 127
    invoke-virtual {p1}, Landroidx/navigation/NavBackStackEntry;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/navigation/NavDestination;->addInDefaultArgs(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    .line 125
    invoke-virtual {p0, v1, p1}, Landroidx/navigation/NavigatorState;->createBackStackEntry(Landroidx/navigation/NavDestination;Landroid/os/Bundle;)Landroidx/navigation/NavBackStackEntry;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 116
    check-cast p1, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {p0, p1}, Landroidx/navigation/Navigator$navigate$1;->invoke(Landroidx/navigation/NavBackStackEntry;)Landroidx/navigation/NavBackStackEntry;

    move-result-object p0

    return-object p0
.end method
