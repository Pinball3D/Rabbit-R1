.class public final Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity$gotoEnterPassword$$inlined$postDelayed$1;
.super Ljava/lang/Object;
.source "View.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity;->gotoEnterPassword(Ltech/rabbit/r1launcher/initstep/model/Wifi;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 View.kt\nandroidx/core/view/ViewKt$postDelayed$runnable$1\n+ 2 SettingsNetwork2Activity.kt\ntech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity\n*L\n1#1,432:1\n159#2,3:433\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "run",
        "androidx/core/view/ViewKt$postDelayed$runnable$1"
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
.field final synthetic $wifi$inlined:Ltech/rabbit/r1launcher/initstep/model/Wifi;

.field final synthetic this$0:Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity;


# direct methods
.method public constructor <init>(Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity;Ltech/rabbit/r1launcher/initstep/model/Wifi;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity$gotoEnterPassword$$inlined$postDelayed$1;->this$0:Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity;

    iput-object p2, p0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity$gotoEnterPassword$$inlined$postDelayed$1;->$wifi$inlined:Ltech/rabbit/r1launcher/initstep/model/Wifi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity$gotoEnterPassword$$inlined$postDelayed$1;->this$0:Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity;

    .line 433
    invoke-static {v0}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity;->access$getRotateDeviceTipFragment(Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity;)Ltech/rabbit/r1launcher/initstep/process/RotateDeviceTipFragment;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    invoke-static {v0, v1}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity;->access$isCurrentContent(Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity;Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity$gotoEnterPassword$$inlined$postDelayed$1;->this$0:Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity;

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity$gotoEnterPassword$$inlined$postDelayed$1;->$wifi$inlined:Ltech/rabbit/r1launcher/initstep/model/Wifi;

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 434
    invoke-static {v0, p0, v2, v1, v2}, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity;->gotoWifiDetail$default(Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity;Ltech/rabbit/r1launcher/initstep/model/Wifi;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method
