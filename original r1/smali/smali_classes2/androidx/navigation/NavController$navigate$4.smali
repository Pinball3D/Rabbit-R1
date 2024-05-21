.class final Landroidx/navigation/NavController$navigate$4;
.super Lkotlin/jvm/internal/Lambda;
.source "NavController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/navigation/NavController;->navigate(Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V
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
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroidx/navigation/NavBackStackEntry;",
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
.field final synthetic $finalArgs:Landroid/os/Bundle;

.field final synthetic $navigated:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic $node:Landroidx/navigation/NavDestination;

.field final synthetic this$0:Landroidx/navigation/NavController;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Landroidx/navigation/NavController;Landroidx/navigation/NavDestination;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Landroidx/navigation/NavController$navigate$4;->$navigated:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p2, p0, Landroidx/navigation/NavController$navigate$4;->this$0:Landroidx/navigation/NavController;

    iput-object p3, p0, Landroidx/navigation/NavController$navigate$4;->$node:Landroidx/navigation/NavDestination;

    iput-object p4, p0, Landroidx/navigation/NavController$navigate$4;->$finalArgs:Landroid/os/Bundle;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1832
    check-cast p1, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {p0, p1}, Landroidx/navigation/NavController$navigate$4;->invoke(Landroidx/navigation/NavBackStackEntry;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/navigation/NavBackStackEntry;)V
    .locals 9

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/navigation/NavController$navigate$4;->$navigated:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 v1, 0x1

    .line 1833
    iput-boolean v1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    iget-object v2, p0, Landroidx/navigation/NavController$navigate$4;->this$0:Landroidx/navigation/NavController;

    iget-object v3, p0, Landroidx/navigation/NavController$navigate$4;->$node:Landroidx/navigation/NavDestination;

    iget-object v4, p0, Landroidx/navigation/NavController$navigate$4;->$finalArgs:Landroid/os/Bundle;

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v5, p1

    .line 1834
    invoke-static/range {v2 .. v8}, Landroidx/navigation/NavController;->addEntryToBackStack$default(Landroidx/navigation/NavController;Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavBackStackEntry;Ljava/util/List;ILjava/lang/Object;)V

    return-void
.end method
