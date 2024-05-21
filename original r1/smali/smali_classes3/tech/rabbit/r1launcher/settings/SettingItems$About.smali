.class final Ltech/rabbit/r1launcher/settings/SettingItems$About;
.super Ltech/rabbit/r1launcher/settings/SettingItems;
.source "SettingItems.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltech/rabbit/r1launcher/settings/SettingItems;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "About"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0001\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/settings/SettingItems$About;",
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

    .line 67
    sget v0, Ltech/rabbit/r1launcher/R$string;->settings_page_system_about:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Ltech/rabbit/r1launcher/settings/SettingItems;-><init>(Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public doAction(Landroid/app/Activity;)V
    .locals 0

    const-string p0, "activity"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    sget-object p0, Ltech/rabbit/r1launcher/settings/about/AboutActivity;->Companion:Ltech/rabbit/r1launcher/settings/about/AboutActivity$Companion;

    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/settings/about/AboutActivity$Companion;->launch(Landroid/app/Activity;)V

    return-void
.end method
