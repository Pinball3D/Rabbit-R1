.class public final Ltech/rabbit/r1launcher/components/wifiutils/utils/VersionUtil;
.super Ljava/lang/Object;
.source "VersionUtil.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0007J\u0006\u0010\u0005\u001a\u00020\u0006J\u0006\u0010\u0007\u001a\u00020\u0006J\u0006\u0010\u0008\u001a\u00020\u0006J\u0006\u0010\t\u001a\u00020\u0006\u00a8\u0006\n"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/components/wifiutils/utils/VersionUtil;",
        "",
        "()V",
        "getPanelIntent",
        "Landroid/content/Intent;",
        "isAndroidQOrLater",
        "",
        "isJellyBeanOrLater",
        "isLollipopOrLater",
        "isMarshmallowOrLater",
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

.field public static final INSTANCE:Ltech/rabbit/r1launcher/components/wifiutils/utils/VersionUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ltech/rabbit/r1launcher/components/wifiutils/utils/VersionUtil;

    invoke-direct {v0}, Ltech/rabbit/r1launcher/components/wifiutils/utils/VersionUtil;-><init>()V

    sput-object v0, Ltech/rabbit/r1launcher/components/wifiutils/utils/VersionUtil;->INSTANCE:Ltech/rabbit/r1launcher/components/wifiutils/utils/VersionUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getPanelIntent()Landroid/content/Intent;
    .locals 1

    .line 28
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.settings.panel.action.WIFI"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public final isAndroidQOrLater()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isJellyBeanOrLater()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final isLollipopOrLater()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final isMarshmallowOrLater()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
