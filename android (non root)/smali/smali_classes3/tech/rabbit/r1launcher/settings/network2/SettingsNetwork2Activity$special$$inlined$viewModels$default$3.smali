.class public final Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity$special$$inlined$viewModels$default$3;
.super Lkotlin/jvm/internal/Lambda;
.source "ActivityViewModelLazy.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity;-><init>()V
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
    value = "SMAP\nActivityViewModelLazy.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActivityViewModelLazy.kt\nandroidx/activity/ActivityViewModelLazyKt$viewModels$4\n*L\n1#1,90:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001\"\n\u0008\u0000\u0010\u0002\u0018\u0001*\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/lifecycle/viewmodel/CreationExtras;",
        "VM",
        "Landroidx/lifecycle/ViewModel;",
        "invoke",
        "androidx/activity/ActivityViewModelLazyKt$viewModels$4"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $extrasProducer:Lkotlin/jvm/functions/Function0;

.field final synthetic $this_viewModels:Landroidx/activity/ComponentActivity;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity$special$$inlined$viewModels$default$3;->$extrasProducer:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity$special$$inlined$viewModels$default$3;->$this_viewModels:Landroidx/activity/ComponentActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/lifecycle/viewmodel/CreationExtras;
    .locals 1

    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity$special$$inlined$viewModels$default$3;->$extrasProducer:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_0

    .line 87
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/viewmodel/CreationExtras;

    if-nez v0, :cond_1

    :cond_0
    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity$special$$inlined$viewModels$default$3;->$this_viewModels:Landroidx/activity/ComponentActivity;

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 87
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity$special$$inlined$viewModels$default$3;->invoke()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object p0

    return-object p0
.end method
