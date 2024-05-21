.class public final Ltech/rabbit/r1launcher/passcode/VerifyPasscodeActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "VerifyPasscodeActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltech/rabbit/r1launcher/passcode/VerifyPasscodeActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0015J\u001a\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0016R\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0014"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/passcode/VerifyPasscodeActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "()V",
        "verifyPasscodeFragment",
        "Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;",
        "getVerifyPasscodeFragment",
        "()Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;",
        "verifyPasscodeFragment$delegate",
        "Lkotlin/Lazy;",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onKeyUp",
        "",
        "keyCode",
        "",
        "event",
        "Landroid/view/KeyEvent;",
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

.field public static final Companion:Ltech/rabbit/r1launcher/passcode/VerifyPasscodeActivity$Companion;

.field private static final EXTRA_MODULE_NAME:Ljava/lang/String; = "EXTRA_MODULE_NAME"


# instance fields
.field private final verifyPasscodeFragment$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ltech/rabbit/r1launcher/passcode/VerifyPasscodeActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ltech/rabbit/r1launcher/passcode/VerifyPasscodeActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ltech/rabbit/r1launcher/passcode/VerifyPasscodeActivity;->Companion:Ltech/rabbit/r1launcher/passcode/VerifyPasscodeActivity$Companion;

    const/16 v0, 0x8

    sput v0, Ltech/rabbit/r1launcher/passcode/VerifyPasscodeActivity;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 24
    new-instance v0, Ltech/rabbit/r1launcher/passcode/VerifyPasscodeActivity$verifyPasscodeFragment$2;

    invoke-direct {v0, p0}, Ltech/rabbit/r1launcher/passcode/VerifyPasscodeActivity$verifyPasscodeFragment$2;-><init>(Ltech/rabbit/r1launcher/passcode/VerifyPasscodeActivity;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Ltech/rabbit/r1launcher/passcode/VerifyPasscodeActivity;->verifyPasscodeFragment$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getVerifyPasscodeFragment()Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/passcode/VerifyPasscodeActivity;->verifyPasscodeFragment$delegate:Lkotlin/Lazy;

    .line 24
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;

    return-object p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 32
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/passcode/VerifyPasscodeActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 35
    invoke-direct {p0}, Ltech/rabbit/r1launcher/passcode/VerifyPasscodeActivity;->getVerifyPasscodeFragment()Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/Fragment;

    const v0, 0x1020002

    invoke-virtual {p1, v0, p0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 36
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 40
    invoke-direct {p0}, Ltech/rabbit/r1launcher/passcode/VerifyPasscodeActivity;->getVerifyPasscodeFragment()Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->onKeyCodeEvent(ILandroid/view/KeyEvent;)V

    const/4 p0, 0x1

    return p0
.end method
