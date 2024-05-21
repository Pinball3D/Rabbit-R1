.class public final Ltech/rabbit/r1launcher/ota/OtaCheckActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "OtaCheckActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u000f\u001a\u00020\u0010H\u0002J\u0012\u0010\u0011\u001a\u00020\u00102\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0014J\u001a\u0010\u0014\u001a\u00020\u000c2\u0006\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J\u001a\u0010\u0019\u001a\u00020\u000c2\u0006\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J\u0008\u0010\u001a\u001a\u00020\u0010H\u0014J\u0008\u0010\u001b\u001a\u00020\u0010H\u0002R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0008X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0008X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/ota/OtaCheckActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "()V",
        "_config",
        "Ltech/rabbit/r1systemupdater/model/UpdateConfig;",
        "_tvBtnSetNetwork",
        "Landroid/view/ViewGroup;",
        "_tvChargingCheck",
        "Landroid/widget/TextView;",
        "_tvConnectionCheck",
        "_tvTip",
        "isCharging",
        "",
        "isConnected",
        "startCheckingConditions",
        "checkConditions",
        "",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onKeyDown",
        "keyCode",
        "",
        "event",
        "Landroid/view/KeyEvent;",
        "onKeyUp",
        "onResume",
        "updateConditions",
        "app_productionEnvRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private _config:Ltech/rabbit/r1systemupdater/model/UpdateConfig;

.field private _tvBtnSetNetwork:Landroid/view/ViewGroup;

.field private _tvChargingCheck:Landroid/widget/TextView;

.field private _tvConnectionCheck:Landroid/widget/TextView;

.field private _tvTip:Landroid/widget/TextView;

.field private isCharging:Z

.field private isConnected:Z

.field private startCheckingConditions:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static final synthetic access$checkConditions(Ltech/rabbit/r1launcher/ota/OtaCheckActivity;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ltech/rabbit/r1launcher/ota/OtaCheckActivity;->checkConditions()V

    return-void
.end method

.method private final checkConditions()V
    .locals 3

    .line 86
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/ota/OtaCheckActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 87
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Ltech/rabbit/r1launcher/utils/HardWareHelperKt;->isWifiConnected(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Ltech/rabbit/r1launcher/ota/OtaCheckActivity;->isConnected:Z

    .line 88
    invoke-static {v0}, Ltech/rabbit/r1launcher/utils/HardWareHelperKt;->isCharging(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Ltech/rabbit/r1launcher/ota/OtaCheckActivity;->isCharging:Z

    .line 90
    invoke-direct {p0}, Ltech/rabbit/r1launcher/ota/OtaCheckActivity;->updateConditions()V

    iget-boolean v0, p0, Ltech/rabbit/r1launcher/ota/OtaCheckActivity;->isCharging:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ltech/rabbit/r1launcher/ota/OtaCheckActivity;->isConnected:Z

    if-eqz v0, :cond_0

    .line 92
    new-instance v0, Landroid/content/Intent;

    const-string v1, "tech.rabbit.r1launcher.action.UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 93
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Ltech/rabbit/r1launcher/ota/OtaCheckActivity;->_config:Ltech/rabbit/r1systemupdater/model/UpdateConfig;

    .line 94
    check-cast v1, Landroid/os/Parcelable;

    const-string v2, "update_config"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 95
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/ota/OtaCheckActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 96
    new-instance v0, Ltech/rabbit/r1launcher/ota/OtaCheckActivity$checkConditions$1;

    invoke-direct {v0, p0}, Ltech/rabbit/r1launcher/ota/OtaCheckActivity$checkConditions$1;-><init>(Ltech/rabbit/r1launcher/ota/OtaCheckActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Ltech/rabbit/common/utils/KotlinUtilKt;->postOnMainThread(Lkotlin/jvm/functions/Function0;)V

    goto :goto_0

    .line 100
    :cond_0
    new-instance v0, Ltech/rabbit/r1launcher/ota/OtaCheckActivity$checkConditions$2;

    invoke-direct {v0, p0}, Ltech/rabbit/r1launcher/ota/OtaCheckActivity$checkConditions$2;-><init>(Ltech/rabbit/r1launcher/ota/OtaCheckActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    const-wide/16 v1, 0x3e8

    invoke-static {v1, v2, v0}, Ltech/rabbit/common/utils/KotlinUtilKt;->postDelayOnMainThread(JLkotlin/jvm/functions/Function0;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final updateConditions()V
    .locals 8

    iget-boolean v0, p0, Ltech/rabbit/r1launcher/ota/OtaCheckActivity;->isCharging:Z

    const/16 v1, 0x8

    const-string v2, "_tvTip"

    const/4 v3, 0x0

    const-string v4, "\u221a"

    const-string v5, "_tvChargingCheck"

    const-string v6, "X"

    const/4 v7, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ltech/rabbit/r1launcher/ota/OtaCheckActivity;->_tvChargingCheck:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 109
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v7

    :cond_0
    move-object v5, v4

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Ltech/rabbit/r1launcher/ota/OtaCheckActivity;->_tvTip:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 110
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v7

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Ltech/rabbit/r1launcher/ota/OtaCheckActivity;->_tvChargingCheck:Landroid/widget/TextView;

    if-nez v0, :cond_3

    .line 112
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v7

    :cond_3
    move-object v5, v6

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Ltech/rabbit/r1launcher/ota/OtaCheckActivity;->_tvTip:Landroid/widget/TextView;

    if-nez v0, :cond_4

    .line 113
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v7

    :cond_4
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    iget-boolean v0, p0, Ltech/rabbit/r1launcher/ota/OtaCheckActivity;->isConnected:Z

    const-string v2, "_tvBtnSetNetwork"

    const-string v5, "_tvConnectionCheck"

    if-eqz v0, :cond_7

    iget-object v0, p0, Ltech/rabbit/r1launcher/ota/OtaCheckActivity;->_tvConnectionCheck:Landroid/widget/TextView;

    if-nez v0, :cond_5

    .line 116
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v7

    :cond_5
    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Ltech/rabbit/r1launcher/ota/OtaCheckActivity;->_tvBtnSetNetwork:Landroid/view/ViewGroup;

    if-nez p0, :cond_6

    .line 117
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    move-object v7, p0

    :goto_1
    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_3

    :cond_7
    iget-object v0, p0, Ltech/rabbit/r1launcher/ota/OtaCheckActivity;->_tvConnectionCheck:Landroid/widget/TextView;

    if-nez v0, :cond_8

    .line 119
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v7

    :cond_8
    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Ltech/rabbit/r1launcher/ota/OtaCheckActivity;->_tvBtnSetNetwork:Landroid/view/ViewGroup;

    if-nez p0, :cond_9

    .line 120
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    move-object v7, p0

    :goto_2
    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_3
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 36
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/ota/OtaCheckActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    const/4 p1, 0x1

    .line 41
    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/ota/OtaCheckActivity;->requestWindowFeature(I)Z

    .line 42
    sget p1, Ltech/rabbit/r1launcher/R$layout;->activity_ota_check:I

    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/ota/OtaCheckActivity;->setContentView(I)V

    .line 44
    sget p1, Ltech/rabbit/r1launcher/R$id;->tv_charging_state:I

    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/ota/OtaCheckActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.widget.TextView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ltech/rabbit/r1launcher/ota/OtaCheckActivity;->_tvChargingCheck:Landroid/widget/TextView;

    .line 45
    sget p1, Ltech/rabbit/r1launcher/R$id;->tv_network_state:I

    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/ota/OtaCheckActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ltech/rabbit/r1launcher/ota/OtaCheckActivity;->_tvConnectionCheck:Landroid/widget/TextView;

    .line 47
    sget p1, Ltech/rabbit/r1launcher/R$id;->tv_tip:I

    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/ota/OtaCheckActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ltech/rabbit/r1launcher/ota/OtaCheckActivity;->_tvTip:Landroid/widget/TextView;

    .line 48
    sget p1, Ltech/rabbit/r1launcher/R$id;->btn_set_network:I

    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/ota/OtaCheckActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Ltech/rabbit/r1launcher/ota/OtaCheckActivity;->_tvBtnSetNetwork:Landroid/view/ViewGroup;

    iget-object p1, p0, Ltech/rabbit/r1launcher/ota/OtaCheckActivity;->_tvTip:Landroid/widget/TextView;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "_tvTip"

    .line 50
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Ltech/rabbit/r1launcher/ota/OtaCheckActivity;->_tvBtnSetNetwork:Landroid/view/ViewGroup;

    if-nez p1, :cond_1

    const-string p1, "_tvBtnSetNetwork"

    .line 51
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, p1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 53
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/ota/OtaCheckActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "update_config"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Ltech/rabbit/r1systemupdater/model/UpdateConfig;

    iput-object p1, p0, Ltech/rabbit/r1launcher/ota/OtaCheckActivity;->_config:Ltech/rabbit/r1systemupdater/model/UpdateConfig;

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 66
    sget-object v0, Ltech/rabbit/r1launcher/utils/LongPressShutdownHelper;->INSTANCE:Ltech/rabbit/r1launcher/utils/LongPressShutdownHelper;

    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1, p1, p2}, Ltech/rabbit/r1launcher/utils/LongPressShutdownHelper;->onKeyDown(Landroid/app/Activity;ILandroid/view/KeyEvent;)Z

    .line 67
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 71
    sget-object v0, Ltech/rabbit/r1launcher/utils/LongPressShutdownHelper;->INSTANCE:Ltech/rabbit/r1launcher/utils/LongPressShutdownHelper;

    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1, p1, p2}, Ltech/rabbit/r1launcher/utils/LongPressShutdownHelper;->onKeyUp(Landroid/app/Activity;ILandroid/view/KeyEvent;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Ltech/rabbit/r1launcher/ota/OtaCheckActivity;->_tvBtnSetNetwork:Landroid/view/ViewGroup;

    if-nez p1, :cond_1

    const-string p1, "_tvBtnSetNetwork"

    .line 75
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    .line 76
    new-instance p1, Landroid/content/Intent;

    move-object p2, p0

    check-cast p2, Landroid/content/Context;

    const-class v1, Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2Activity;

    invoke-direct {p1, p2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x18000000

    .line 77
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 78
    invoke-static {p2, v1, v1}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object p2

    .line 79
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ltech/rabbit/r1launcher/ota/OtaCheckActivity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    :cond_2
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 1

    .line 57
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    iget-boolean v0, p0, Ltech/rabbit/r1launcher/ota/OtaCheckActivity;->startCheckingConditions:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Ltech/rabbit/r1launcher/ota/OtaCheckActivity;->startCheckingConditions:Z

    .line 61
    invoke-direct {p0}, Ltech/rabbit/r1launcher/ota/OtaCheckActivity;->checkConditions()V

    :cond_0
    return-void
.end method
