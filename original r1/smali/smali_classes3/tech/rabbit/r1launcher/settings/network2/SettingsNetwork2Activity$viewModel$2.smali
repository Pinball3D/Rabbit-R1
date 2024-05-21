.class final Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity$viewModel$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SettingsNetwork2Activity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroidx/lifecycle/ViewModelProvider$Factory;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/lifecycle/ViewModelProvider$Factory;",
        "invoke"
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
.field final synthetic this$0:Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity;


# direct methods
.method constructor <init>(Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity$viewModel$2;->this$0:Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/lifecycle/ViewModelProvider$Factory;
    .locals 3

    .line 41
    sget-object v0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;->Companion:Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel$Companion;

    iget-object v1, p0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity$viewModel$2;->this$0:Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity;

    invoke-virtual {v1}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "getApplication(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity$viewModel$2;->this$0:Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity;

    check-cast p0, Landroidx/savedstate/SavedStateRegistryOwner;

    invoke-virtual {v0, v1, p0}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel$Companion;->provideFactory(Landroid/app/Application;Landroidx/savedstate/SavedStateRegistryOwner;)Landroidx/lifecycle/AbstractSavedStateViewModelFactory;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/ViewModelProvider$Factory;

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 40
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity$viewModel$2;->invoke()Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object p0

    return-object p0
.end method
