.class public final Landroidx/navigation/NavGraphViewModelLazyKt$navGraphViewModels$backStackEntry$8;
.super Lkotlin/jvm/internal/Lambda;
.source "NavGraphViewModelLazy.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/navigation/NavGraphViewModelLazyKt;->navGraphViewModels(Landroidx/fragment/app/Fragment;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroidx/navigation/NavBackStackEntry;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNavGraphViewModelLazy.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavGraphViewModelLazy.kt\nandroidx/navigation/NavGraphViewModelLazyKt$navGraphViewModels$backStackEntry$8\n*L\n1#1,220:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\n\u0008\u0000\u0010\u0002\u0018\u0001*\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/navigation/NavBackStackEntry;",
        "VM",
        "Landroidx/lifecycle/ViewModel;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0xb0
.end annotation


# instance fields
.field final synthetic $navGraphRoute:Ljava/lang/String;

.field final synthetic $this_navGraphViewModels:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroidx/navigation/NavGraphViewModelLazyKt$navGraphViewModels$backStackEntry$8;->$this_navGraphViewModels:Landroidx/fragment/app/Fragment;

    iput-object p2, p0, Landroidx/navigation/NavGraphViewModelLazyKt$navGraphViewModels$backStackEntry$8;->$navGraphRoute:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/navigation/NavBackStackEntry;
    .locals 1

    iget-object v0, p0, Landroidx/navigation/NavGraphViewModelLazyKt$navGraphViewModels$backStackEntry$8;->$this_navGraphViewModels:Landroidx/fragment/app/Fragment;

    .line 209
    invoke-static {v0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v0

    iget-object p0, p0, Landroidx/navigation/NavGraphViewModelLazyKt$navGraphViewModels$backStackEntry$8;->$navGraphRoute:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroidx/navigation/NavController;->getBackStackEntry(Ljava/lang/String;)Landroidx/navigation/NavBackStackEntry;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 208
    invoke-virtual {p0}, Landroidx/navigation/NavGraphViewModelLazyKt$navGraphViewModels$backStackEntry$8;->invoke()Landroidx/navigation/NavBackStackEntry;

    move-result-object p0

    return-object p0
.end method
