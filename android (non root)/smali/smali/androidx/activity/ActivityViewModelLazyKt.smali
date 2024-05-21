.class public final Landroidx/activity/ActivityViewModelLazyKt;
.super Ljava/lang/Object;
.source "ActivityViewModelLazy.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a1\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\n\u0008\u0000\u0010\u0002\u0018\u0001*\u00020\u0003*\u00020\u00042\u0010\u0008\n\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006H\u0087\u0008\u001aC\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\n\u0008\u0000\u0010\u0002\u0018\u0001*\u00020\u0003*\u00020\u00042\u0010\u0008\n\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u00062\u0010\u0008\n\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006H\u0087\u0008\u00a8\u0006\n"
    }
    d2 = {
        "viewModels",
        "Lkotlin/Lazy;",
        "VM",
        "Landroidx/lifecycle/ViewModel;",
        "Landroidx/activity/ComponentActivity;",
        "factoryProducer",
        "Lkotlin/Function0;",
        "Landroidx/lifecycle/ViewModelProvider$Factory;",
        "extrasProducer",
        "Landroidx/lifecycle/viewmodel/CreationExtras;",
        "activity-ktx_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final synthetic viewModels(Landroidx/activity/ComponentActivity;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<VM:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Landroidx/activity/ComponentActivity;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Landroidx/lifecycle/ViewModelProvider$Factory;",
            ">;)",
            "Lkotlin/Lazy<",
            "TVM;>;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Superseded by viewModels that takes a CreationExtras"
    .end annotation

    if-nez p1, :cond_0

    .line 48
    new-instance p1, Landroidx/activity/ActivityViewModelLazyKt$viewModels$factoryPromise$1;

    invoke-direct {p1, p0}, Landroidx/activity/ActivityViewModelLazyKt$viewModels$factoryPromise$1;-><init>(Landroidx/activity/ComponentActivity;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    .line 52
    :cond_0
    new-instance v0, Landroidx/lifecycle/ViewModelLazy;

    const/4 v1, 0x4

    const-string v2, "VM"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v1, Landroidx/lifecycle/ViewModel;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 54
    new-instance v2, Landroidx/activity/ActivityViewModelLazyKt$viewModels$1;

    invoke-direct {v2, p0}, Landroidx/activity/ActivityViewModelLazyKt$viewModels$1;-><init>(Landroidx/activity/ComponentActivity;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    .line 56
    new-instance v3, Landroidx/activity/ActivityViewModelLazyKt$viewModels$2;

    invoke-direct {v3, p0}, Landroidx/activity/ActivityViewModelLazyKt$viewModels$2;-><init>(Landroidx/activity/ComponentActivity;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 52
    invoke-direct {v0, v1, v2, p1, v3}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    check-cast v0, Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic viewModels(Landroidx/activity/ComponentActivity;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<VM:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Landroidx/activity/ComponentActivity;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Landroidx/lifecycle/viewmodel/CreationExtras;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Landroidx/lifecycle/ViewModelProvider$Factory;",
            ">;)",
            "Lkotlin/Lazy<",
            "TVM;>;"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 79
    new-instance p2, Landroidx/activity/ActivityViewModelLazyKt$viewModels$factoryPromise$2;

    invoke-direct {p2, p0}, Landroidx/activity/ActivityViewModelLazyKt$viewModels$factoryPromise$2;-><init>(Landroidx/activity/ComponentActivity;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    .line 83
    :cond_0
    new-instance v0, Landroidx/lifecycle/ViewModelLazy;

    const/4 v1, 0x4

    const-string v2, "VM"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v1, Landroidx/lifecycle/ViewModel;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 85
    new-instance v2, Landroidx/activity/ActivityViewModelLazyKt$viewModels$3;

    invoke-direct {v2, p0}, Landroidx/activity/ActivityViewModelLazyKt$viewModels$3;-><init>(Landroidx/activity/ComponentActivity;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    .line 87
    new-instance v3, Landroidx/activity/ActivityViewModelLazyKt$viewModels$4;

    invoke-direct {v3, p1, p0}, Landroidx/activity/ActivityViewModelLazyKt$viewModels$4;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 83
    invoke-direct {v0, v1, v2, p2, v3}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    check-cast v0, Lkotlin/Lazy;

    return-object v0
.end method

.method public static synthetic viewModels$default(Landroidx/activity/ComponentActivity;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lkotlin/Lazy;
    .locals 2

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    if-nez p1, :cond_1

    .line 48
    new-instance p1, Landroidx/activity/ActivityViewModelLazyKt$viewModels$factoryPromise$1;

    invoke-direct {p1, p0}, Landroidx/activity/ActivityViewModelLazyKt$viewModels$factoryPromise$1;-><init>(Landroidx/activity/ComponentActivity;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    .line 52
    :cond_1
    new-instance p2, Landroidx/lifecycle/ViewModelLazy;

    const/4 p3, 0x4

    const-string v0, "VM"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class p3, Landroidx/lifecycle/ViewModel;

    invoke-static {p3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p3

    .line 54
    new-instance v0, Landroidx/activity/ActivityViewModelLazyKt$viewModels$1;

    invoke-direct {v0, p0}, Landroidx/activity/ActivityViewModelLazyKt$viewModels$1;-><init>(Landroidx/activity/ComponentActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 56
    new-instance v1, Landroidx/activity/ActivityViewModelLazyKt$viewModels$2;

    invoke-direct {v1, p0}, Landroidx/activity/ActivityViewModelLazyKt$viewModels$2;-><init>(Landroidx/activity/ComponentActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 52
    invoke-direct {p2, p3, v0, p1, v1}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    check-cast p2, Lkotlin/Lazy;

    return-object p2
.end method

.method public static synthetic viewModels$default(Landroidx/activity/ComponentActivity;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lkotlin/Lazy;
    .locals 2

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    :cond_1
    if-nez p2, :cond_2

    .line 79
    new-instance p2, Landroidx/activity/ActivityViewModelLazyKt$viewModels$factoryPromise$2;

    invoke-direct {p2, p0}, Landroidx/activity/ActivityViewModelLazyKt$viewModels$factoryPromise$2;-><init>(Landroidx/activity/ComponentActivity;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    .line 83
    :cond_2
    new-instance p3, Landroidx/lifecycle/ViewModelLazy;

    const/4 p4, 0x4

    const-string v0, "VM"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class p4, Landroidx/lifecycle/ViewModel;

    invoke-static {p4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p4

    .line 85
    new-instance v0, Landroidx/activity/ActivityViewModelLazyKt$viewModels$3;

    invoke-direct {v0, p0}, Landroidx/activity/ActivityViewModelLazyKt$viewModels$3;-><init>(Landroidx/activity/ComponentActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    .line 87
    new-instance v1, Landroidx/activity/ActivityViewModelLazyKt$viewModels$4;

    invoke-direct {v1, p1, p0}, Landroidx/activity/ActivityViewModelLazyKt$viewModels$4;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 83
    invoke-direct {p3, p4, v0, p2, v1}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    check-cast p3, Lkotlin/Lazy;

    return-object p3
.end method
