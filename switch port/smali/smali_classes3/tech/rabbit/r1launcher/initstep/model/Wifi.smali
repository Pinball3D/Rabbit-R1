.class public final Ltech/rabbit/r1launcher/initstep/model/Wifi;
.super Ljava/lang/Object;
.source "Wifi.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltech/rabbit/r1launcher/initstep/model/Wifi$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0013\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u0000 !2\u00020\u0001:\u0001!B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B3\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\u000bJ\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0008H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\u0008H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\u0008H\u00c6\u0003J=\u0010\u001a\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\u00082\u0008\u0008\u0002\u0010\n\u001a\u00020\u0008H\u00c6\u0001J\u0013\u0010\u001b\u001a\u00020\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0096\u0002J\u0008\u0010\u001f\u001a\u00020\u0008H\u0016J\u0008\u0010 \u001a\u00020\u0003H\u0016R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u001a\u0010\u0007\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u000fR\u0011\u0010\n\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u000fR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\r\u00a8\u0006\""
    }
    d2 = {
        "Ltech/rabbit/r1launcher/initstep/model/Wifi;",
        "Ljava/io/Serializable;",
        "wifiSSID",
        "",
        "(Ljava/lang/String;)V",
        "ssid",
        "bssid",
        "dpmWifiSecurity",
        "",
        "networkId",
        "signalLevel",
        "(Ljava/lang/String;Ljava/lang/String;III)V",
        "getBssid",
        "()Ljava/lang/String;",
        "getDpmWifiSecurity",
        "()I",
        "setDpmWifiSecurity",
        "(I)V",
        "getNetworkId",
        "getSignalLevel",
        "getSsid",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
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

.field public static final Companion:Ltech/rabbit/r1launcher/initstep/model/Wifi$Companion;


# instance fields
.field private final bssid:Ljava/lang/String;

.field private dpmWifiSecurity:I

.field private final networkId:I

.field private final signalLevel:I

.field private final ssid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ltech/rabbit/r1launcher/initstep/model/Wifi$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ltech/rabbit/r1launcher/initstep/model/Wifi$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ltech/rabbit/r1launcher/initstep/model/Wifi;->Companion:Ltech/rabbit/r1launcher/initstep/model/Wifi$Companion;

    const/16 v0, 0x8

    sput v0, Ltech/rabbit/r1launcher/initstep/model/Wifi;->$stable:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 7

    const-string v0, "wifiSSID"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-static {}, Ltech/rabbit/r1launcher/settings/network2/UtilsKt;->getDpmSecurityTypeUnknownConstant()I

    move-result v4

    const-string v3, ""

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 62
    invoke-direct/range {v1 .. v6}, Ltech/rabbit/r1launcher/initstep/model/Wifi;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 1

    const-string v0, "ssid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltech/rabbit/r1launcher/initstep/model/Wifi;->ssid:Ljava/lang/String;

    iput-object p2, p0, Ltech/rabbit/r1launcher/initstep/model/Wifi;->bssid:Ljava/lang/String;

    iput p3, p0, Ltech/rabbit/r1launcher/initstep/model/Wifi;->dpmWifiSecurity:I

    iput p4, p0, Ltech/rabbit/r1launcher/initstep/model/Wifi;->networkId:I

    iput p5, p0, Ltech/rabbit/r1launcher/initstep/model/Wifi;->signalLevel:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_0

    const/4 p4, -0x1

    :cond_0
    move v4, p4

    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_1

    const/4 p5, 0x0

    :cond_1
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 16
    invoke-direct/range {v0 .. v5}, Ltech/rabbit/r1launcher/initstep/model/Wifi;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    return-void
.end method

.method public static synthetic copy$default(Ltech/rabbit/r1launcher/initstep/model/Wifi;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/Object;)Ltech/rabbit/r1launcher/initstep/model/Wifi;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Ltech/rabbit/r1launcher/initstep/model/Wifi;->ssid:Ljava/lang/String;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Ltech/rabbit/r1launcher/initstep/model/Wifi;->bssid:Ljava/lang/String;

    :cond_1
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget p3, p0, Ltech/rabbit/r1launcher/initstep/model/Wifi;->dpmWifiSecurity:I

    :cond_2
    move v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget p4, p0, Ltech/rabbit/r1launcher/initstep/model/Wifi;->networkId:I

    :cond_3
    move v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget p5, p0, Ltech/rabbit/r1launcher/initstep/model/Wifi;->signalLevel:I

    :cond_4
    move v2, p5

    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move p5, v0

    move p6, v1

    move p7, v2

    invoke-virtual/range {p2 .. p7}, Ltech/rabbit/r1launcher/initstep/model/Wifi;->copy(Ljava/lang/String;Ljava/lang/String;III)Ltech/rabbit/r1launcher/initstep/model/Wifi;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/model/Wifi;->ssid:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/model/Wifi;->bssid:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()I
    .locals 0

    iget p0, p0, Ltech/rabbit/r1launcher/initstep/model/Wifi;->dpmWifiSecurity:I

    return p0
.end method

.method public final component4()I
    .locals 0

    iget p0, p0, Ltech/rabbit/r1launcher/initstep/model/Wifi;->networkId:I

    return p0
.end method

.method public final component5()I
    .locals 0

    iget p0, p0, Ltech/rabbit/r1launcher/initstep/model/Wifi;->signalLevel:I

    return p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;III)Ltech/rabbit/r1launcher/initstep/model/Wifi;
    .locals 6

    const-string p0, "ssid"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ltech/rabbit/r1launcher/initstep/model/Wifi;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Ltech/rabbit/r1launcher/initstep/model/Wifi;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 72
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    const-string v1, "null cannot be cast to non-null type tech.rabbit.r1launcher.initstep.model.Wifi"

    .line 74
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ltech/rabbit/r1launcher/initstep/model/Wifi;

    iget-object v1, p0, Ltech/rabbit/r1launcher/initstep/model/Wifi;->ssid:Ljava/lang/String;

    .line 76
    iget-object v3, p1, Ltech/rabbit/r1launcher/initstep/model/Wifi;->ssid:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget p0, p0, Ltech/rabbit/r1launcher/initstep/model/Wifi;->dpmWifiSecurity:I

    .line 77
    iget p1, p1, Ltech/rabbit/r1launcher/initstep/model/Wifi;->dpmWifiSecurity:I

    if-ne p0, p1, :cond_4

    goto :goto_1

    :cond_4
    move v0, v2

    :goto_1
    return v0
.end method

.method public final getBssid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/model/Wifi;->bssid:Ljava/lang/String;

    return-object p0
.end method

.method public final getDpmWifiSecurity()I
    .locals 0

    iget p0, p0, Ltech/rabbit/r1launcher/initstep/model/Wifi;->dpmWifiSecurity:I

    return p0
.end method

.method public final getNetworkId()I
    .locals 0

    iget p0, p0, Ltech/rabbit/r1launcher/initstep/model/Wifi;->networkId:I

    return p0
.end method

.method public final getSignalLevel()I
    .locals 0

    iget p0, p0, Ltech/rabbit/r1launcher/initstep/model/Wifi;->signalLevel:I

    return p0
.end method

.method public final getSsid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/model/Wifi;->ssid:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/model/Wifi;->ssid:Ljava/lang/String;

    .line 81
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Ltech/rabbit/r1launcher/initstep/model/Wifi;->dpmWifiSecurity:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final setDpmWifiSecurity(I)V
    .locals 0

    iput p1, p0, Ltech/rabbit/r1launcher/initstep/model/Wifi;->dpmWifiSecurity:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Wifi(ssid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ltech/rabbit/r1launcher/initstep/model/Wifi;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bssid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltech/rabbit/r1launcher/initstep/model/Wifi;->bssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dpmWifiSecurity=$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltech/rabbit/r1launcher/initstep/model/Wifi;->dpmWifiSecurity:I

    .line 89
    invoke-static {v1}, Ltech/rabbit/r1launcher/settings/network2/UtilsKt;->getDpmWifiSecurityText(I)Ljava/lang/String;

    move-result-object v1

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", networkId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltech/rabbit/r1launcher/initstep/model/Wifi;->networkId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", signalLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Ltech/rabbit/r1launcher/initstep/model/Wifi;->signalLevel:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
