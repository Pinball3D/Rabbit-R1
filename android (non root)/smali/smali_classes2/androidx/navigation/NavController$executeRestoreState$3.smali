.class final Landroidx/navigation/NavController$executeRestoreState$3;
.super Lkotlin/jvm/internal/Lambda;
.source "NavController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/navigation/NavController;->executeRestoreState(Ljava/util/List;Landroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)Z
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
        "entry",
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
.field final synthetic $args:Landroid/os/Bundle;

.field final synthetic $entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $lastNavigatedIndex:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic $navigated:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic this$0:Landroidx/navigation/NavController;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/util/List;Lkotlin/jvm/internal/Ref$IntRef;Landroidx/navigation/NavController;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$BooleanRef;",
            "Ljava/util/List<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;",
            "Lkotlin/jvm/internal/Ref$IntRef;",
            "Landroidx/navigation/NavController;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/navigation/NavController$executeRestoreState$3;->$navigated:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p2, p0, Landroidx/navigation/NavController$executeRestoreState$3;->$entries:Ljava/util/List;

    iput-object p3, p0, Landroidx/navigation/NavController$executeRestoreState$3;->$lastNavigatedIndex:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p4, p0, Landroidx/navigation/NavController$executeRestoreState$3;->this$0:Landroidx/navigation/NavController;

    iput-object p5, p0, Landroidx/navigation/NavController$executeRestoreState$3;->$args:Landroid/os/Bundle;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1971
    check-cast p1, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {p0, p1}, Landroidx/navigation/NavController$executeRestoreState$3;->invoke(Landroidx/navigation/NavBackStackEntry;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/navigation/NavBackStackEntry;)V
    .locals 4

    const-string v0, "entry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/navigation/NavController$executeRestoreState$3;->$navigated:Lkotlin/jvm/internal/Ref$BooleanRef;

    const/4 v1, 0x1

    .line 1972
    iput-boolean v1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    iget-object v0, p0, Landroidx/navigation/NavController$executeRestoreState$3;->$entries:Ljava/util/List;

    .line 1976
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Landroidx/navigation/NavController$executeRestoreState$3;->$entries:Ljava/util/List;

    iget-object v3, p0, Landroidx/navigation/NavController$executeRestoreState$3;->$lastNavigatedIndex:Lkotlin/jvm/internal/Ref$IntRef;

    .line 1978
    iget v3, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr v0, v1

    invoke-interface {v2, v3, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Landroidx/navigation/NavController$executeRestoreState$3;->$lastNavigatedIndex:Lkotlin/jvm/internal/Ref$IntRef;

    .line 1979
    iput v0, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    goto :goto_0

    .line 1982
    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    :goto_0
    iget-object v0, p0, Landroidx/navigation/NavController$executeRestoreState$3;->this$0:Landroidx/navigation/NavController;

    .line 1984
    invoke-virtual {p1}, Landroidx/navigation/NavBackStackEntry;->getDestination()Landroidx/navigation/NavDestination;

    move-result-object v2

    iget-object p0, p0, Landroidx/navigation/NavController$executeRestoreState$3;->$args:Landroid/os/Bundle;

    invoke-static {v0, v2, p0, p1, v1}, Landroidx/navigation/NavController;->access$addEntryToBackStack(Landroidx/navigation/NavController;Landroidx/navigation/NavDestination;Landroid/os/Bundle;Landroidx/navigation/NavBackStackEntry;Ljava/util/List;)V

    return-void
.end method
