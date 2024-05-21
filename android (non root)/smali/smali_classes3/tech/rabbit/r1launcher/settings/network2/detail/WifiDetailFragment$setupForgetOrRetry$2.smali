.class final Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment$setupForgetOrRetry$2;
.super Lkotlin/jvm/internal/Lambda;
.source "WifiDetailFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->setupForgetOrRetry()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Landroid/view/View;",
        "Ljava/lang/Integer;",
        "Landroid/view/KeyEvent;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\n\u00a2\u0006\u0002\u0008\u0008"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Landroid/view/View;",
        "<anonymous parameter 1>",
        "",
        "<anonymous parameter 2>",
        "Landroid/view/KeyEvent;",
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
.field final synthetic this$0:Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;


# direct methods
.method constructor <init>(Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment$setupForgetOrRetry$2;->this$0:Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 119
    check-cast p1, Landroid/view/View;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    check-cast p3, Landroid/view/KeyEvent;

    invoke-virtual {p0, p1, p2, p3}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment$setupForgetOrRetry$2;->invoke(Landroid/view/View;ILandroid/view/KeyEvent;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroid/view/View;ILandroid/view/KeyEvent;)V
    .locals 1

    const-string p2, "<anonymous parameter 0>"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "<anonymous parameter 2>"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment$setupForgetOrRetry$2;->this$0:Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;

    .line 120
    invoke-static {p1}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->access$getCurrentState$p(Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;)Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment$setupForgetOrRetry$2;->this$0:Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;

    .line 122
    invoke-static {p1}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->access$getCurrentState$p(Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;)Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;

    move-result-object p1

    sget-object p2, Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;->ConnectFailure:Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;

    if-ne p1, p2, :cond_3

    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment$setupForgetOrRetry$2;->this$0:Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;

    .line 123
    invoke-static {p1}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->access$getHasPassword(Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment$setupForgetOrRetry$2;->this$0:Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;

    .line 124
    invoke-static {p1}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->access$getViewModel(Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;)Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;

    move-result-object p1

    iget-object p2, p0, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment$setupForgetOrRetry$2;->this$0:Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;

    invoke-virtual {p2}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->getWifi()Ltech/rabbit/r1launcher/initstep/model/Wifi;

    move-result-object p2

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment$setupForgetOrRetry$2;->this$0:Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->getPassword()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, ""

    :cond_1
    invoke-virtual {p1, p2, p0}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;->connectWifiAtPassword(Ltech/rabbit/r1launcher/initstep/model/Wifi;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment$setupForgetOrRetry$2;->this$0:Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;

    .line 126
    invoke-static {p1}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->access$getViewModel(Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;)Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;

    move-result-object p1

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment$setupForgetOrRetry$2;->this$0:Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->getWifi()Ltech/rabbit/r1launcher/initstep/model/Wifi;

    move-result-object p0

    invoke-virtual {p1, p0}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;->connectWifiAtSavedWifi(Ltech/rabbit/r1launcher/initstep/model/Wifi;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment$setupForgetOrRetry$2;->this$0:Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;

    .line 129
    invoke-static {p1}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->access$getViewModel(Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;)Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;

    move-result-object p1

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment$setupForgetOrRetry$2;->this$0:Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/network2/detail/WifiDetailFragment;->getWifi()Ltech/rabbit/r1launcher/initstep/model/Wifi;

    move-result-object p0

    const/4 p2, 0x2

    const/4 p3, 0x0

    const/4 v0, 0x0

    invoke-static {p1, p0, v0, p2, p3}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;->forgetWifi$default(Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;Ltech/rabbit/r1launcher/initstep/model/Wifi;ZILjava/lang/Object;)V

    :goto_0
    return-void
.end method
