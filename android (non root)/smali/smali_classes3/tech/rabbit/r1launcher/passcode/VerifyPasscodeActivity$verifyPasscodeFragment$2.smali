.class final Ltech/rabbit/r1launcher/passcode/VerifyPasscodeActivity$verifyPasscodeFragment$2;
.super Lkotlin/jvm/internal/Lambda;
.source "VerifyPasscodeActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/rabbit/r1launcher/passcode/VerifyPasscodeActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;",
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
.field final synthetic this$0:Ltech/rabbit/r1launcher/passcode/VerifyPasscodeActivity;


# direct methods
.method constructor <init>(Ltech/rabbit/r1launcher/passcode/VerifyPasscodeActivity;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/passcode/VerifyPasscodeActivity$verifyPasscodeFragment$2;->this$0:Ltech/rabbit/r1launcher/passcode/VerifyPasscodeActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 24
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/passcode/VerifyPasscodeActivity$verifyPasscodeFragment$2;->invoke()Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;
    .locals 2

    .line 25
    new-instance v0, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;

    iget-object p0, p0, Ltech/rabbit/r1launcher/passcode/VerifyPasscodeActivity$verifyPasscodeFragment$2;->this$0:Ltech/rabbit/r1launcher/passcode/VerifyPasscodeActivity;

    .line 26
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/passcode/VerifyPasscodeActivity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-string v1, "EXTRA_MODULE_NAME"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    .line 25
    :cond_0
    invoke-direct {v0, p0}, Ltech/rabbit/r1launcher/settings/security/VerifyPasscodeFragment;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
