.class public Landroidx/navigation/NavHostController;
.super Landroidx/navigation/NavController;
.source "NavHostController.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0016\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008J\u000e\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000bJ\u000e\u0010\u000c\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u000eJ\u000e\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Landroidx/navigation/NavHostController;",
        "Landroidx/navigation/NavController;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "enableOnBackPressed",
        "",
        "enabled",
        "",
        "setLifecycleOwner",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "setOnBackPressedDispatcher",
        "dispatcher",
        "Landroidx/activity/OnBackPressedDispatcher;",
        "setViewModelStore",
        "viewModelStore",
        "Landroidx/lifecycle/ViewModelStore;",
        "navigation-runtime_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-direct {p0, p1}, Landroidx/navigation/NavController;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final enableOnBackPressed(Z)V
    .locals 0

    .line 85
    invoke-super {p0, p1}, Landroidx/navigation/NavController;->enableOnBackPressed(Z)V

    return-void
.end method

.method public final setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-super {p0, p1}, Landroidx/navigation/NavController;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public final setOnBackPressedDispatcher(Landroidx/activity/OnBackPressedDispatcher;)V
    .locals 1

    const-string v0, "dispatcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-super {p0, p1}, Landroidx/navigation/NavController;->setOnBackPressedDispatcher(Landroidx/activity/OnBackPressedDispatcher;)V

    return-void
.end method

.method public final setViewModelStore(Landroidx/lifecycle/ViewModelStore;)V
    .locals 1

    const-string v0, "viewModelStore"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-super {p0, p1}, Landroidx/navigation/NavController;->setViewModelStore(Landroidx/lifecycle/ViewModelStore;)V

    return-void
.end method
