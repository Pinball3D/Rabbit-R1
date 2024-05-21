.class final Ltech/rabbit/r1launcher/settings/SettingItems$Security;
.super Ltech/rabbit/r1launcher/settings/SettingItems;
.source "SettingItems.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltech/rabbit/r1launcher/settings/SettingItems;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Security"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0001\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/settings/SettingItems$Security;",
        "Ltech/rabbit/r1launcher/settings/SettingItems;",
        "doAction",
        "",
        "activity",
        "Landroid/app/Activity;",
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


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 48
    sget v0, Ltech/rabbit/r1launcher/R$string;->settings_page_security:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Ltech/rabbit/r1launcher/settings/SettingItems;-><init>(Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public doAction(Landroid/app/Activity;)V
    .locals 2

    const-string p0, "activity"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    new-instance p0, Landroid/content/Intent;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    const-class v1, Ltech/rabbit/r1launcher/settings/security/SecurityActivity;

    invoke-direct {p0, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
