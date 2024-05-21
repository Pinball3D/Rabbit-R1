.class public final Landroidx/navigation/NavGraphViewModelLazyKt$navGraphViewModels$1;
.super Lkotlin/jvm/internal/Lambda;
.source "NavGraphViewModelLazy.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/navigation/NavGraphViewModelLazyKt;->navGraphViewModels(Landroidx/fragment/app/Fragment;ILkotlin/jvm/functions/Function0;)Lkotlin/Lazy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroidx/lifecycle/viewmodel/CreationExtras;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNavGraphViewModelLazy.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavGraphViewModelLazy.kt\nandroidx/navigation/NavGraphViewModelLazyKt$navGraphViewModels$1\n*L\n1#1,220:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\n\u0008\u0000\u0010\u0002\u0018\u0001*\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/lifecycle/viewmodel/CreationExtras;",
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
.field final synthetic $backStackEntry$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Lazy<",
            "Landroidx/navigation/NavBackStackEntry;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/navigation/NavGraphViewModelLazyKt$navGraphViewModels$1;->$backStackEntry$delegate:Lkotlin/Lazy;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/lifecycle/viewmodel/CreationExtras;
    .locals 0

    iget-object p0, p0, Landroidx/navigation/NavGraphViewModelLazyKt$navGraphViewModels$1;->$backStackEntry$delegate:Lkotlin/Lazy;

    .line 71
    invoke-static {p0}, Landroidx/navigation/NavGraphViewModelLazyKt;->access$navGraphViewModels$lambda-0(Lkotlin/Lazy;)Landroidx/navigation/NavBackStackEntry;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/navigation/NavBackStackEntry;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 69
    invoke-virtual {p0}, Landroidx/navigation/NavGraphViewModelLazyKt$navGraphViewModels$1;->invoke()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object p0

    return-object p0
.end method
