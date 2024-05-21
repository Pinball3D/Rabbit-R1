.class public final Ltech/rabbit/r1launcher/factorymode/FactoryModeActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "FactoryModeActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltech/rabbit/r1launcher/factorymode/FactoryModeActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFactoryModeActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FactoryModeActivity.kt\ntech/rabbit/r1launcher/factorymode/FactoryModeActivity\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,82:1\n193#2,3:83\n*S KotlinDebug\n*F\n+ 1 FactoryModeActivity.kt\ntech/rabbit/r1launcher/factorymode/FactoryModeActivity\n*L\n37#1:83,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u0000 \r2\u00020\u0001:\u0001\rB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0008H\u0002J\u0012\u0010\n\u001a\u00020\u00062\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0015R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/factorymode/FactoryModeActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "()V",
        "isDoubleClick",
        "",
        "launch",
        "",
        "packageName",
        "",
        "mainActivityRefPath",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "Companion",
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
.field public static final $stable:I

.field public static final Companion:Ltech/rabbit/r1launcher/factorymode/FactoryModeActivity$Companion;


# instance fields
.field private isDoubleClick:Z


# direct methods
.method public static synthetic $r8$lambda$1NvBjwOditxduktpUkok3XR6AT8(Ltech/rabbit/r1launcher/factorymode/FactoryModeActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Ltech/rabbit/r1launcher/factorymode/FactoryModeActivity;->onCreate$lambda$2(Ltech/rabbit/r1launcher/factorymode/FactoryModeActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IgCx9bUT6QKC0Nb_xkL_kw905X8(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Ltech/rabbit/r1launcher/factorymode/FactoryModeActivity;->onCreate$lambda$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VWfJeVJNFLCmLhWFRXfc8-iKOE0(Ltech/rabbit/r1launcher/factorymode/FactoryModeActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Ltech/rabbit/r1launcher/factorymode/FactoryModeActivity;->onCreate$lambda$3(Ltech/rabbit/r1launcher/factorymode/FactoryModeActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kEoRPXpdxTlYcihQ-OE_uyo1_XE(Ltech/rabbit/r1launcher/factorymode/FactoryModeActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Ltech/rabbit/r1launcher/factorymode/FactoryModeActivity;->onCreate$lambda$5(Ltech/rabbit/r1launcher/factorymode/FactoryModeActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mYEkGG15YTRX_W13HMHPYzubf_M(Ltech/rabbit/r1launcher/factorymode/FactoryModeActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Ltech/rabbit/r1launcher/factorymode/FactoryModeActivity;->onCreate$lambda$1(Ltech/rabbit/r1launcher/factorymode/FactoryModeActivity;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ltech/rabbit/r1launcher/factorymode/FactoryModeActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ltech/rabbit/r1launcher/factorymode/FactoryModeActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ltech/rabbit/r1launcher/factorymode/FactoryModeActivity;->Companion:Ltech/rabbit/r1launcher/factorymode/FactoryModeActivity$Companion;

    const/16 v0, 0x8

    sput v0, Ltech/rabbit/r1launcher/factorymode/FactoryModeActivity;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 17
    sget v0, Ltech/rabbit/r1launcher/R$layout;->activity_factory_mode:I

    invoke-direct {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;-><init>(I)V

    return-void
.end method

.method public static final synthetic access$setDoubleClick$p(Ltech/rabbit/r1launcher/factorymode/FactoryModeActivity;Z)V
    .locals 0

    .line 17
    iput-boolean p1, p0, Ltech/rabbit/r1launcher/factorymode/FactoryModeActivity;->isDoubleClick:Z

    return-void
.end method

.method private final launch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 71
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v0, p0

    check-cast v0, Ltech/rabbit/r1launcher/factorymode/FactoryModeActivity;

    .line 72
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/factorymode/FactoryModeActivity;->startActivity(Landroid/content/Intent;)V

    .line 73
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 71
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 73
    :goto_0
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 75
    :cond_0
    check-cast p0, Landroid/content/Context;

    .line 76
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "not found activity: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    const/4 p2, 0x0

    .line 74
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 78
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method

.method private static final onCreate$lambda$1(Ltech/rabbit/r1launcher/factorymode/FactoryModeActivity;Landroid/view/View;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-boolean v0, p0, Ltech/rabbit/r1launcher/factorymode/FactoryModeActivity;->isDoubleClick:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/factorymode/FactoryModeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "adb_enabled"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 34
    check-cast p0, Landroid/content/Context;

    const-string p1, "ADB Opened"

    check-cast p1, Ljava/lang/CharSequence;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 36
    :cond_0
    iput-boolean v1, p0, Ltech/rabbit/r1launcher/factorymode/FactoryModeActivity;->isDoubleClick:Z

    .line 37
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 83
    new-instance v0, Ltech/rabbit/r1launcher/factorymode/FactoryModeActivity$onCreate$lambda$1$$inlined$postDelayed$1;

    invoke-direct {v0, p0}, Ltech/rabbit/r1launcher/factorymode/FactoryModeActivity$onCreate$lambda$1$$inlined$postDelayed$1;-><init>(Ltech/rabbit/r1launcher/factorymode/FactoryModeActivity;)V

    check-cast v0, Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    .line 84
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method private static final onCreate$lambda$2(Ltech/rabbit/r1launcher/factorymode/FactoryModeActivity;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "com.yk.factorytest"

    const-string v0, "com.yk.factorytest.ui.MainActivity"

    .line 44
    invoke-direct {p0, p1, v0}, Ltech/rabbit/r1launcher/factorymode/FactoryModeActivity;->launch(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final onCreate$lambda$3(Ltech/rabbit/r1launcher/factorymode/FactoryModeActivity;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "com.yk.phonetest"

    const-string v0, "com.yk.phonetest.activities.PhoneTestActivity"

    .line 51
    invoke-direct {p0, p1, v0}, Ltech/rabbit/r1launcher/factorymode/FactoryModeActivity;->launch(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final onCreate$lambda$4(Landroid/view/View;)V
    .locals 0

    .line 58
    sget-object p0, Ltech/rabbit/r1launcher/settings/utils/SystemControllerUtil;->INSTANCE:Ltech/rabbit/r1launcher/settings/utils/SystemControllerUtil;

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/utils/SystemControllerUtil;->shutdownDevice()V

    return-void
.end method

.method private static final onCreate$lambda$5(Ltech/rabbit/r1launcher/factorymode/FactoryModeActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/factorymode/FactoryModeActivity;->finish()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 29
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    sget p1, Ltech/rabbit/r1launcher/R$id;->view_adb_open:I

    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/factorymode/FactoryModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Ltech/rabbit/r1launcher/factorymode/FactoryModeActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Ltech/rabbit/r1launcher/factorymode/FactoryModeActivity$$ExternalSyntheticLambda0;-><init>(Ltech/rabbit/r1launcher/factorymode/FactoryModeActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    sget p1, Ltech/rabbit/r1launcher/R$id;->tv_factory:I

    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/factorymode/FactoryModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    new-instance v0, Ltech/rabbit/r1launcher/factorymode/FactoryModeActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Ltech/rabbit/r1launcher/factorymode/FactoryModeActivity$$ExternalSyntheticLambda1;-><init>(Ltech/rabbit/r1launcher/factorymode/FactoryModeActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    sget p1, Ltech/rabbit/r1launcher/R$id;->tv_aging:I

    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/factorymode/FactoryModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    new-instance v0, Ltech/rabbit/r1launcher/factorymode/FactoryModeActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Ltech/rabbit/r1launcher/factorymode/FactoryModeActivity$$ExternalSyntheticLambda2;-><init>(Ltech/rabbit/r1launcher/factorymode/FactoryModeActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    sget p1, Ltech/rabbit/r1launcher/R$id;->tv_shutdown:I

    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/factorymode/FactoryModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    new-instance v0, Ltech/rabbit/r1launcher/factorymode/FactoryModeActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Ltech/rabbit/r1launcher/factorymode/FactoryModeActivity$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    sget p1, Ltech/rabbit/r1launcher/R$id;->tv_back:I

    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/factorymode/FactoryModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    new-instance v0, Ltech/rabbit/r1launcher/factorymode/FactoryModeActivity$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Ltech/rabbit/r1launcher/factorymode/FactoryModeActivity$$ExternalSyntheticLambda4;-><init>(Ltech/rabbit/r1launcher/factorymode/FactoryModeActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    sget p1, Ltech/rabbit/r1launcher/R$id;->tv_device_id:I

    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/factorymode/FactoryModeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DeviceId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ltech/rabbit/r1launcher/settings/utils/SystemControllerUtil;->INSTANCE:Ltech/rabbit/r1launcher/settings/utils/SystemControllerUtil;

    check-cast p0, Landroid/content/Context;

    invoke-virtual {v1, p0}, Ltech/rabbit/r1launcher/settings/utils/SystemControllerUtil;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
