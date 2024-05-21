.class public final Ltech/rabbit/r1launcher/ota/OtaActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "OtaActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltech/rabbit/r1launcher/ota/OtaActivity$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0015\u001a\u00020\u0016H\u0002J\u0012\u0010\u0017\u001a\u00020\u00162\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0014J\u001a\u0010\u001a\u001a\u00020\u00102\u0006\u0010\u001b\u001a\u00020\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0016J\u001a\u0010\u001f\u001a\u00020\u00102\u0006\u0010\u001b\u001a\u00020\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0016J\u0008\u0010 \u001a\u00020\u0016H\u0014J\u0008\u0010!\u001a\u00020\u0016H\u0014J\u0008\u0010\"\u001a\u00020\u0016H\u0002J\u0010\u0010#\u001a\u00020\u00162\u0006\u0010$\u001a\u00020\u001cH\u0002J\u0008\u0010%\u001a\u00020\u0016H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000cX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000cX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006&"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/ota/OtaActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "()V",
        "TAG",
        "",
        "_config",
        "Ltech/rabbit/r1systemupdater/model/UpdateConfig;",
        "_progressBar",
        "Ltech/rabbit/r1launcher/ota/RoundRectProgressBar;",
        "_retryBtn",
        "Landroid/view/ViewGroup;",
        "_tvInfo",
        "Landroid/widget/TextView;",
        "_tvProgressInfo",
        "_tvTip",
        "_updating",
        "",
        "preparingUpdateCallback",
        "Ltech/rabbit/r1systemupdater/SystemUpdater$CleanUpPreviousUpdateFinishCallback;",
        "updateCallback",
        "Ltech/rabbit/r1systemupdater/SystemUpdater$UpdateCallback;",
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
        "onPause",
        "onResume",
        "reboot",
        "showProgress",
        "progress",
        "startUpdate",
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
.field private final TAG:Ljava/lang/String;

.field private _config:Ltech/rabbit/r1systemupdater/model/UpdateConfig;

.field private _progressBar:Ltech/rabbit/r1launcher/ota/RoundRectProgressBar;

.field private _retryBtn:Landroid/view/ViewGroup;

.field private _tvInfo:Landroid/widget/TextView;

.field private _tvProgressInfo:Landroid/widget/TextView;

.field private _tvTip:Landroid/widget/TextView;

.field private _updating:Z

.field private final preparingUpdateCallback:Ltech/rabbit/r1systemupdater/SystemUpdater$CleanUpPreviousUpdateFinishCallback;

.field private final updateCallback:Ltech/rabbit/r1systemupdater/SystemUpdater$UpdateCallback;


# direct methods
.method public static synthetic $r8$lambda$_VdltZaqjDLWsrAtSRcraRon2V8(Z)V
    .locals 0

    invoke-static {p0}, Ltech/rabbit/r1launcher/ota/OtaActivity;->preparingUpdateCallback$lambda$1(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$wscWdToENHwnSek58dawqbLfLv8(Ltech/rabbit/r1launcher/ota/OtaActivity;Ltech/rabbit/r1systemupdater/OtaState;)V
    .locals 0

    invoke-static {p0, p1}, Ltech/rabbit/r1launcher/ota/OtaActivity;->onCreate$lambda$0(Ltech/rabbit/r1launcher/ota/OtaActivity;Ltech/rabbit/r1systemupdater/OtaState;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const-string v0, "OtaActivity"

    iput-object v0, p0, Ltech/rabbit/r1launcher/ota/OtaActivity;->TAG:Ljava/lang/String;

    .line 165
    new-instance v0, Ltech/rabbit/r1launcher/ota/OtaActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ltech/rabbit/r1launcher/ota/OtaActivity$$ExternalSyntheticLambda0;-><init>()V

    iput-object v0, p0, Ltech/rabbit/r1launcher/ota/OtaActivity;->preparingUpdateCallback:Ltech/rabbit/r1systemupdater/SystemUpdater$CleanUpPreviousUpdateFinishCallback;

    .line 173
    new-instance v0, Ltech/rabbit/r1launcher/ota/OtaActivity$updateCallback$1;

    invoke-direct {v0, p0}, Ltech/rabbit/r1launcher/ota/OtaActivity$updateCallback$1;-><init>(Ltech/rabbit/r1launcher/ota/OtaActivity;)V

    check-cast v0, Ltech/rabbit/r1systemupdater/SystemUpdater$UpdateCallback;

    iput-object v0, p0, Ltech/rabbit/r1launcher/ota/OtaActivity;->updateCallback:Ltech/rabbit/r1systemupdater/SystemUpdater$UpdateCallback;

    return-void
.end method

.method public static final synthetic access$checkConditions(Ltech/rabbit/r1launcher/ota/OtaActivity;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ltech/rabbit/r1launcher/ota/OtaActivity;->checkConditions()V

    return-void
.end method

.method public static final synthetic access$getTAG$p(Ltech/rabbit/r1launcher/ota/OtaActivity;)Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Ltech/rabbit/r1launcher/ota/OtaActivity;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$get_progressBar$p(Ltech/rabbit/r1launcher/ota/OtaActivity;)Ltech/rabbit/r1launcher/ota/RoundRectProgressBar;
    .locals 0

    .line 32
    iget-object p0, p0, Ltech/rabbit/r1launcher/ota/OtaActivity;->_progressBar:Ltech/rabbit/r1launcher/ota/RoundRectProgressBar;

    return-object p0
.end method

.method public static final synthetic access$get_tvProgressInfo$p(Ltech/rabbit/r1launcher/ota/OtaActivity;)Landroid/widget/TextView;
    .locals 0

    .line 32
    iget-object p0, p0, Ltech/rabbit/r1launcher/ota/OtaActivity;->_tvProgressInfo:Landroid/widget/TextView;

    return-object p0
.end method

.method public static final synthetic access$reboot(Ltech/rabbit/r1launcher/ota/OtaActivity;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ltech/rabbit/r1launcher/ota/OtaActivity;->reboot()V

    return-void
.end method

.method public static final synthetic access$showProgress(Ltech/rabbit/r1launcher/ota/OtaActivity;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/ota/OtaActivity;->showProgress(I)V

    return-void
.end method

.method private final checkConditions()V
    .locals 3

    .line 233
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Ltech/rabbit/r1launcher/utils/HardWareHelperKt;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Ltech/rabbit/r1launcher/utils/HardWareHelperKt;->isCharging(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 239
    :cond_0
    new-instance v0, Ltech/rabbit/r1launcher/ota/OtaActivity$checkConditions$1;

    invoke-direct {v0, p0}, Ltech/rabbit/r1launcher/ota/OtaActivity$checkConditions$1;-><init>(Ltech/rabbit/r1launcher/ota/OtaActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    const-wide/16 v1, 0x3e8

    invoke-static {v1, v2, v0}, Ltech/rabbit/common/utils/KotlinUtilKt;->postDelayOnMainThread(JLkotlin/jvm/functions/Function0;)V

    goto :goto_1

    .line 234
    :cond_1
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "tech.rabbit.r1launcher.action.UPDATE_CHECK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    .line 235
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v2, 0x0

    .line 236
    invoke-static {v0, v2, v2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v0

    .line 237
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ltech/rabbit/r1launcher/ota/OtaActivity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    :goto_1
    return-void
.end method

.method private static final onCreate$lambda$0(Ltech/rabbit/r1launcher/ota/OtaActivity;Ltech/rabbit/r1systemupdater/OtaState;)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 61
    :cond_0
    sget-object v0, Ltech/rabbit/r1launcher/ota/OtaActivity$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ltech/rabbit/r1systemupdater/OtaState;->ordinal()I

    move-result p1

    aget p1, v0, p1

    :goto_0
    const-string v0, ""

    const/4 v1, 0x0

    const-string v2, "_tvTip"

    const-string v3, "_tvInfo"

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_b

    .line 113
    :pswitch_1
    iget-object p1, p0, Ltech/rabbit/r1launcher/ota/OtaActivity;->_tvInfo:Landroid/widget/TextView;

    if-nez p1, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v4

    :cond_1
    const-string v3, "update failed"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object p1, p0, Ltech/rabbit/r1launcher/ota/OtaActivity;->_tvTip:Landroid/widget/TextView;

    if-nez p1, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v4

    :cond_2
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iput-boolean v1, p0, Ltech/rabbit/r1launcher/ota/OtaActivity;->_updating:Z

    .line 117
    iget-object p0, p0, Ltech/rabbit/r1launcher/ota/OtaActivity;->_retryBtn:Landroid/view/ViewGroup;

    if-nez p0, :cond_3

    const-string p0, "_retryBtn"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v4, p0

    :goto_1
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_b

    .line 104
    :pswitch_2
    iget-object p1, p0, Ltech/rabbit/r1launcher/ota/OtaActivity;->_tvInfo:Landroid/widget/TextView;

    if-nez p1, :cond_4

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v4

    :cond_4
    const-string v3, "no updates"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object p1, p0, Ltech/rabbit/r1launcher/ota/OtaActivity;->_tvTip:Landroid/widget/TextView;

    if-nez p1, :cond_5

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    move-object v4, p1

    :goto_2
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iput-boolean v1, p0, Ltech/rabbit/r1launcher/ota/OtaActivity;->_updating:Z

    goto/16 :goto_b

    .line 95
    :pswitch_3
    iget-object p1, p0, Ltech/rabbit/r1launcher/ota/OtaActivity;->_tvInfo:Landroid/widget/TextView;

    if-nez p1, :cond_6

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v4

    :cond_6
    const-string v0, "update complete"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object p1, p0, Ltech/rabbit/r1launcher/ota/OtaActivity;->_tvTip:Landroid/widget/TextView;

    if-nez p1, :cond_7

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    move-object v4, p1

    :goto_3
    const-string p1, "will reboot in 5 seconds"

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    new-instance p1, Ltech/rabbit/r1launcher/ota/OtaActivity$onCreate$1$1;

    invoke-direct {p1, p0}, Ltech/rabbit/r1launcher/ota/OtaActivity$onCreate$1$1;-><init>(Ltech/rabbit/r1launcher/ota/OtaActivity;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    const-wide/16 v0, 0x1388

    invoke-static {v0, v1, p1}, Ltech/rabbit/common/utils/KotlinUtilKt;->postDelayOnMainThread(JLkotlin/jvm/functions/Function0;)V

    goto/16 :goto_b

    .line 92
    :pswitch_4
    iget-object p0, p0, Ltech/rabbit/r1launcher/ota/OtaActivity;->_tvInfo:Landroid/widget/TextView;

    if-nez p0, :cond_8

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    move-object v4, p0

    :goto_4
    const-string p0, "finalizing"

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_b

    .line 89
    :pswitch_5
    iget-object p0, p0, Ltech/rabbit/r1launcher/ota/OtaActivity;->_tvInfo:Landroid/widget/TextView;

    if-nez p0, :cond_9

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    move-object v4, p0

    :goto_5
    const-string p0, "verifying"

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_b

    .line 84
    :pswitch_6
    iget-object p0, p0, Ltech/rabbit/r1launcher/ota/OtaActivity;->_tvInfo:Landroid/widget/TextView;

    if-nez p0, :cond_a

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_6

    :cond_a
    move-object v4, p0

    :goto_6
    const-string p0, "downloading"

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_b

    .line 71
    :pswitch_7
    iget-object p1, p0, Ltech/rabbit/r1launcher/ota/OtaActivity;->_tvInfo:Landroid/widget/TextView;

    if-nez p1, :cond_b

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v4

    :cond_b
    const-string v0, "updating"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "OtaStateHelper.updateConfig: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Ltech/rabbit/r1systemupdater/OtaStateHelper;->INSTANCE:Ltech/rabbit/r1systemupdater/OtaStateHelper;

    invoke-virtual {v0}, Ltech/rabbit/r1systemupdater/OtaStateHelper;->getUpdateConfig()Ltech/rabbit/r1systemupdater/model/UpdateConfig;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ltech/rabbit/r1systemupdater/model/UpdateConfig;->getUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_c
    move-object v0, v4

    :goto_7
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OtaStateHelper.updateConfig"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    sget-object p1, Ltech/rabbit/r1systemupdater/OtaStateHelper;->INSTANCE:Ltech/rabbit/r1systemupdater/OtaStateHelper;

    invoke-virtual {p1}, Ltech/rabbit/r1systemupdater/OtaStateHelper;->getUpdateConfig()Ltech/rabbit/r1systemupdater/model/UpdateConfig;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 75
    move-object p1, p0

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Ltech/rabbit/r1systemupdater/SystemUpdater;->getInstance(Landroid/content/Context;)Ltech/rabbit/r1systemupdater/SystemUpdater;

    move-result-object p1

    sget-object v0, Ltech/rabbit/r1systemupdater/OtaStateHelper;->INSTANCE:Ltech/rabbit/r1systemupdater/OtaStateHelper;

    invoke-virtual {v0}, Ltech/rabbit/r1systemupdater/OtaStateHelper;->getUpdateConfig()Ltech/rabbit/r1systemupdater/model/UpdateConfig;

    move-result-object v0

    iget-object p0, p0, Ltech/rabbit/r1launcher/ota/OtaActivity;->updateCallback:Ltech/rabbit/r1systemupdater/SystemUpdater$UpdateCallback;

    invoke-virtual {p1, v0, p0}, Ltech/rabbit/r1systemupdater/SystemUpdater;->update(Ltech/rabbit/r1systemupdater/model/UpdateConfig;Ltech/rabbit/r1systemupdater/SystemUpdater$UpdateCallback;)V

    goto :goto_b

    .line 77
    :cond_d
    iget-object p0, p0, Ltech/rabbit/r1launcher/ota/OtaActivity;->_tvTip:Landroid/widget/TextView;

    if-nez p0, :cond_e

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_8

    :cond_e
    move-object v4, p0

    :goto_8
    const-string p0, "Error updateConfig is null"

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b

    .line 67
    :pswitch_8
    iget-object p1, p0, Ltech/rabbit/r1launcher/ota/OtaActivity;->_tvInfo:Landroid/widget/TextView;

    if-nez p1, :cond_f

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_9

    :cond_f
    move-object v4, p1

    :goto_9
    const-string p1, "preparing update"

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    move-object p1, p0

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Ltech/rabbit/r1systemupdater/SystemUpdater;->getInstance(Landroid/content/Context;)Ltech/rabbit/r1systemupdater/SystemUpdater;

    move-result-object p1

    iget-object p0, p0, Ltech/rabbit/r1launcher/ota/OtaActivity;->preparingUpdateCallback:Ltech/rabbit/r1systemupdater/SystemUpdater$CleanUpPreviousUpdateFinishCallback;

    invoke-virtual {p1, p0}, Ltech/rabbit/r1systemupdater/SystemUpdater;->waitCleanUpPreviousUpdateFinish(Ltech/rabbit/r1systemupdater/SystemUpdater$CleanUpPreviousUpdateFinishCallback;)V

    goto :goto_b

    .line 63
    :pswitch_9
    iget-object p1, p0, Ltech/rabbit/r1launcher/ota/OtaActivity;->_tvInfo:Landroid/widget/TextView;

    if-nez p1, :cond_10

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v4

    :cond_10
    const-string v0, "checking update"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object p0, p0, Ltech/rabbit/r1launcher/ota/OtaActivity;->_tvTip:Landroid/widget/TextView;

    if-nez p0, :cond_11

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_a

    :cond_11
    move-object v4, p0

    :goto_a
    const-string p0, "please stay connected to the internet"

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_b
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static final preparingUpdateCallback$lambda$1(Z)V
    .locals 1

    if-eqz p0, :cond_0

    .line 167
    sget-object p0, Ltech/rabbit/r1systemupdater/OtaStateHelper;->INSTANCE:Ltech/rabbit/r1systemupdater/OtaStateHelper;

    invoke-virtual {p0}, Ltech/rabbit/r1systemupdater/OtaStateHelper;->getLiveState()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    sget-object v0, Ltech/rabbit/r1systemupdater/OtaState;->START_UPDATE:Ltech/rabbit/r1systemupdater/OtaState;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 169
    :cond_0
    sget-object p0, Ltech/rabbit/r1systemupdater/OtaStateHelper;->INSTANCE:Ltech/rabbit/r1systemupdater/OtaStateHelper;

    invoke-virtual {p0}, Ltech/rabbit/r1systemupdater/OtaStateHelper;->getLiveState()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    sget-object v0, Ltech/rabbit/r1systemupdater/OtaState;->PREPARE_UPDATE_FAILED:Ltech/rabbit/r1systemupdater/OtaState;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private final reboot()V
    .locals 3

    .line 246
    sget-object v0, LAppConfig;->INSTANCE:LAppConfig;

    invoke-virtual {v0}, LAppConfig;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 247
    check-cast v0, Landroid/os/PowerManager;

    const-string v1, " "

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 249
    :cond_0
    new-instance v0, Ltech/rabbit/r1launcher/ota/OtaActivity$reboot$2;

    invoke-direct {v0, p0}, Ltech/rabbit/r1launcher/ota/OtaActivity$reboot$2;-><init>(Ltech/rabbit/r1launcher/ota/OtaActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    const-wide/16 v1, 0x3e8

    invoke-static {v1, v2, v0}, Ltech/rabbit/common/utils/KotlinUtilKt;->postDelayOnMainThread(JLkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final showProgress(I)V
    .locals 2

    .line 152
    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    iput p1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 153
    iget p1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/16 v1, 0x64

    if-le p1, v1, :cond_0

    .line 154
    iput v1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    goto :goto_0

    .line 155
    :cond_0
    iget p1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-gez p1, :cond_1

    const/4 p1, 0x0

    .line 156
    iput p1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 158
    :cond_1
    :goto_0
    new-instance p1, Ltech/rabbit/r1launcher/ota/OtaActivity$showProgress$1;

    invoke-direct {p1, p0, v0}, Ltech/rabbit/r1launcher/ota/OtaActivity$showProgress$1;-><init>(Ltech/rabbit/r1launcher/ota/OtaActivity;Lkotlin/jvm/internal/Ref$IntRef;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Ltech/rabbit/common/utils/KotlinUtilKt;->runOnMainThread(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final startUpdate()V
    .locals 3

    iget-boolean v0, p0, Ltech/rabbit/r1launcher/ota/OtaActivity;->_updating:Z

    if-nez v0, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p0, Ltech/rabbit/r1launcher/ota/OtaActivity;->_updating:Z

    iget-object v0, p0, Ltech/rabbit/r1launcher/ota/OtaActivity;->_config:Ltech/rabbit/r1systemupdater/model/UpdateConfig;

    if-eqz v0, :cond_0

    .line 140
    sget-object v0, Ltech/rabbit/r1systemupdater/OtaStateHelper;->INSTANCE:Ltech/rabbit/r1systemupdater/OtaStateHelper;

    iget-object p0, p0, Ltech/rabbit/r1launcher/ota/OtaActivity;->_config:Ltech/rabbit/r1systemupdater/model/UpdateConfig;

    invoke-virtual {v0, p0}, Ltech/rabbit/r1systemupdater/OtaStateHelper;->setUpdateConfig(Ltech/rabbit/r1systemupdater/model/UpdateConfig;)V

    .line 141
    sget-object p0, Ltech/rabbit/r1systemupdater/OtaStateHelper;->INSTANCE:Ltech/rabbit/r1systemupdater/OtaStateHelper;

    invoke-virtual {p0}, Ltech/rabbit/r1systemupdater/OtaStateHelper;->getLiveState()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    sget-object v0, Ltech/rabbit/r1systemupdater/OtaState;->PREPARE_UPDATE:Ltech/rabbit/r1systemupdater/OtaState;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ltech/rabbit/r1launcher/ota/OtaActivity;->_tvInfo:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "_tvInfo"

    .line 143
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    const-string v2, "checking update"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Ltech/rabbit/r1launcher/ota/OtaActivity;->_tvTip:Landroid/widget/TextView;

    if-nez v0, :cond_2

    const-string v0, "_tvTip"

    .line 144
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    const-string v2, ""

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Ltech/rabbit/r1launcher/ota/OtaActivity;->_retryBtn:Landroid/view/ViewGroup;

    if-nez v0, :cond_3

    const-string v0, "_retryBtn"

    .line 145
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_3
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 146
    sget-object v0, LUpdateHelper;->INSTANCE:LUpdateHelper;

    check-cast p0, Landroid/content/Context;

    const/4 v2, 0x2

    invoke-static {v0, p0, v1, v2, v1}, LUpdateHelper;->triggerOnceCheckInSubThread$default(LUpdateHelper;Landroid/content/Context;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 44
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/ota/OtaActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    const/4 p1, 0x1

    .line 47
    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/ota/OtaActivity;->requestWindowFeature(I)Z

    .line 49
    sget p1, Ltech/rabbit/r1launcher/R$layout;->activity_ota:I

    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/ota/OtaActivity;->setContentView(I)V

    .line 51
    sget p1, Ltech/rabbit/r1launcher/R$id;->progress_bar:I

    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/ota/OtaActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type tech.rabbit.r1launcher.ota.RoundRectProgressBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ltech/rabbit/r1launcher/ota/RoundRectProgressBar;

    iput-object p1, p0, Ltech/rabbit/r1launcher/ota/OtaActivity;->_progressBar:Ltech/rabbit/r1launcher/ota/RoundRectProgressBar;

    .line 52
    sget p1, Ltech/rabbit/r1launcher/R$id;->tv_progress:I

    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/ota/OtaActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.widget.TextView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ltech/rabbit/r1launcher/ota/OtaActivity;->_tvProgressInfo:Landroid/widget/TextView;

    .line 53
    sget p1, Ltech/rabbit/r1launcher/R$id;->tv_info:I

    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/ota/OtaActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ltech/rabbit/r1launcher/ota/OtaActivity;->_tvInfo:Landroid/widget/TextView;

    .line 54
    sget p1, Ltech/rabbit/r1launcher/R$id;->tv_tip:I

    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/ota/OtaActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ltech/rabbit/r1launcher/ota/OtaActivity;->_tvTip:Landroid/widget/TextView;

    .line 55
    sget p1, Ltech/rabbit/r1launcher/R$id;->btn_retry:I

    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/ota/OtaActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Ltech/rabbit/r1launcher/ota/OtaActivity;->_retryBtn:Landroid/view/ViewGroup;

    if-nez p1, :cond_0

    const-string p1, "_retryBtn"

    .line 56
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 58
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/ota/OtaActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "update_config"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Ltech/rabbit/r1systemupdater/model/UpdateConfig;

    iput-object p1, p0, Ltech/rabbit/r1launcher/ota/OtaActivity;->_config:Ltech/rabbit/r1systemupdater/model/UpdateConfig;

    .line 60
    sget-object p1, Ltech/rabbit/r1systemupdater/OtaStateHelper;->INSTANCE:Ltech/rabbit/r1systemupdater/OtaStateHelper;

    invoke-virtual {p1}, Ltech/rabbit/r1systemupdater/OtaStateHelper;->getLiveState()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    new-instance v1, Ltech/rabbit/r1launcher/ota/OtaActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Ltech/rabbit/r1launcher/ota/OtaActivity$$ExternalSyntheticLambda1;-><init>(Ltech/rabbit/r1launcher/ota/OtaActivity;)V

    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 255
    sget-object v0, Ltech/rabbit/r1launcher/utils/LongPressShutdownHelper;->INSTANCE:Ltech/rabbit/r1launcher/utils/LongPressShutdownHelper;

    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1, p1, p2}, Ltech/rabbit/r1launcher/utils/LongPressShutdownHelper;->onKeyDown(Landroid/app/Activity;ILandroid/view/KeyEvent;)Z

    .line 256
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 260
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
    iget-object p1, p0, Ltech/rabbit/r1launcher/ota/OtaActivity;->_retryBtn:Landroid/view/ViewGroup;

    const/4 p2, 0x0

    if-nez p1, :cond_1

    const-string p1, "_retryBtn"

    .line 265
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    iput-object p2, p0, Ltech/rabbit/r1launcher/ota/OtaActivity;->_config:Ltech/rabbit/r1systemupdater/model/UpdateConfig;

    .line 267
    invoke-direct {p0}, Ltech/rabbit/r1launcher/ota/OtaActivity;->startUpdate()V

    :cond_2
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .line 132
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 133
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/ota/OtaActivity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 125
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 126
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/ota/OtaActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 127
    invoke-direct {p0}, Ltech/rabbit/r1launcher/ota/OtaActivity;->checkConditions()V

    .line 128
    invoke-direct {p0}, Ltech/rabbit/r1launcher/ota/OtaActivity;->startUpdate()V

    return-void
.end method
