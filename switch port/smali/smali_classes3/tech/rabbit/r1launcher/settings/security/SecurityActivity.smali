.class public final Ltech/rabbit/r1launcher/settings/security/SecurityActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SecurityActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0013\u001a\u00020\u0014J\u0006\u0010\u0015\u001a\u00020\u0014J\u0006\u0010\u0016\u001a\u00020\u0014J\u0012\u0010\u0017\u001a\u00020\u00142\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0014J\u001a\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0016R\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006R\u001b\u0010\t\u001a\u00020\n8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u0008\u001a\u0004\u0008\u000b\u0010\u000cR\u001b\u0010\u000e\u001a\u00020\u000f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0008\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006 "
    }
    d2 = {
        "Ltech/rabbit/r1launcher/settings/security/SecurityActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "()V",
        "changePasscodeFragment",
        "Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;",
        "getChangePasscodeFragment",
        "()Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;",
        "changePasscodeFragment$delegate",
        "Lkotlin/Lazy;",
        "securityFragment",
        "Ltech/rabbit/r1launcher/settings/security/SecurityFragment;",
        "getSecurityFragment",
        "()Ltech/rabbit/r1launcher/settings/security/SecurityFragment;",
        "securityFragment$delegate",
        "verifyPasscodeFragment",
        "Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;",
        "getVerifyPasscodeFragment",
        "()Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;",
        "verifyPasscodeFragment$delegate",
        "gotoChangePasscode",
        "",
        "gotoSecurityFragment",
        "gotoVerifyPasscode",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onKeyUp",
        "",
        "keyCode",
        "",
        "event",
        "Landroid/view/KeyEvent;",
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
.field private final changePasscodeFragment$delegate:Lkotlin/Lazy;

.field private final securityFragment$delegate:Lkotlin/Lazy;

.field private final verifyPasscodeFragment$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 11
    sget-object v0, Ltech/rabbit/r1launcher/settings/security/SecurityActivity$securityFragment$2;->INSTANCE:Ltech/rabbit/r1launcher/settings/security/SecurityActivity$securityFragment$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Ltech/rabbit/r1launcher/settings/security/SecurityActivity;->securityFragment$delegate:Lkotlin/Lazy;

    .line 12
    sget-object v0, Ltech/rabbit/r1launcher/settings/security/SecurityActivity$verifyPasscodeFragment$2;->INSTANCE:Ltech/rabbit/r1launcher/settings/security/SecurityActivity$verifyPasscodeFragment$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Ltech/rabbit/r1launcher/settings/security/SecurityActivity;->verifyPasscodeFragment$delegate:Lkotlin/Lazy;

    .line 13
    sget-object v0, Ltech/rabbit/r1launcher/settings/security/SecurityActivity$changePasscodeFragment$2;->INSTANCE:Ltech/rabbit/r1launcher/settings/security/SecurityActivity$changePasscodeFragment$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Ltech/rabbit/r1launcher/settings/security/SecurityActivity;->changePasscodeFragment$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getChangePasscodeFragment()Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/security/SecurityActivity;->changePasscodeFragment$delegate:Lkotlin/Lazy;

    .line 13
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;

    return-object p0
.end method

.method private final getSecurityFragment()Ltech/rabbit/r1launcher/settings/security/SecurityFragment;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/security/SecurityActivity;->securityFragment$delegate:Lkotlin/Lazy;

    .line 11
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltech/rabbit/r1launcher/settings/security/SecurityFragment;

    return-object p0
.end method

.method private final getVerifyPasscodeFragment()Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/security/SecurityActivity;->verifyPasscodeFragment$delegate:Lkotlin/Lazy;

    .line 12
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;

    return-object p0
.end method


# virtual methods
.method public final gotoChangePasscode()V
    .locals 2

    .line 47
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/security/SecurityActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 48
    sget v1, Ltech/rabbit/r1launcher/R$id;->root_layout:I

    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/security/SecurityActivity;->getChangePasscodeFragment()Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1, p0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 49
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public final gotoSecurityFragment()V
    .locals 2

    .line 35
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/security/SecurityActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 36
    sget v1, Ltech/rabbit/r1launcher/R$id;->root_layout:I

    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/security/SecurityActivity;->getSecurityFragment()Ltech/rabbit/r1launcher/settings/security/SecurityFragment;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1, p0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 37
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public final gotoVerifyPasscode()V
    .locals 2

    .line 41
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/security/SecurityActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 42
    sget v1, Ltech/rabbit/r1launcher/R$id;->root_layout:I

    invoke-direct {p0}, Ltech/rabbit/r1launcher/settings/security/SecurityActivity;->getVerifyPasscodeFragment()Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1, p0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 43
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 16
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    sget p1, Ltech/rabbit/r1launcher/R$layout;->activity_settings_page:I

    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/settings/security/SecurityActivity;->setContentView(I)V

    .line 18
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/security/SecurityActivity;->gotoSecurityFragment()V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 22
    sget-object v0, Ltech/rabbit/r1launcher/initstep/utils/Constants;->INSTANCE:Ltech/rabbit/r1launcher/initstep/utils/Constants;

    invoke-virtual {v0, p1}, Ltech/rabbit/r1launcher/initstep/utils/Constants;->isSideButtonKeyCode(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x13

    if-eq p1, v0, :cond_0

    const/16 v0, 0x14

    if-ne p1, v0, :cond_3

    .line 23
    :cond_0
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/settings/security/SecurityActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    const-string v1, "getFragments(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 24
    instance-of v1, v0, Ltech/rabbit/r1launcher/settings/security/SecurityFragment;

    if-eqz v1, :cond_1

    check-cast v0, Ltech/rabbit/r1launcher/settings/security/SecurityFragment;

    invoke-virtual {v0, p1, p2}, Ltech/rabbit/r1launcher/settings/security/SecurityFragment;->onKeyCodeEvent(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    .line 25
    :cond_1
    instance-of v1, v0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;

    if-eqz v1, :cond_2

    check-cast v0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;

    invoke-virtual {v0, p1, p2}, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;->onKeyCodeEvent(ILandroid/view/KeyEvent;)V

    goto :goto_0

    .line 26
    :cond_2
    instance-of v1, v0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;

    if-eqz v1, :cond_4

    check-cast v0, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;

    invoke-virtual {v0, p1, p2}, Ltech/rabbit/r1launcher/settings/security/ChangePasscodeFragment;->onKeyCodeEvent(ILandroid/view/KeyEvent;)V

    .line 31
    :cond_3
    :goto_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method
