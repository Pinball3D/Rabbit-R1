.class public final Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType$WifiConnectRetry;
.super Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType;
.source "ConnectNetworkFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WifiConnectRetry"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0007H\u00c6\u0003J\'\u0010\u0012\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u00d6\u0003J\t\u0010\u0017\u001a\u00020\u0018H\u00d6\u0001J\t\u0010\u0019\u001a\u00020\u0005H\u00d6\u0001R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u001a"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType$WifiConnectRetry;",
        "Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType;",
        "wifi",
        "Ltech/rabbit/r1launcher/initstep/model/Wifi;",
        "password",
        "",
        "errorType",
        "Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;",
        "(Ltech/rabbit/r1launcher/initstep/model/Wifi;Ljava/lang/String;Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;)V",
        "getErrorType",
        "()Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;",
        "getPassword",
        "()Ljava/lang/String;",
        "getWifi",
        "()Ltech/rabbit/r1launcher/initstep/model/Wifi;",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
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


# instance fields
.field private final errorType:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;

.field private final password:Ljava/lang/String;

.field private final wifi:Ltech/rabbit/r1launcher/initstep/model/Wifi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Ltech/rabbit/r1launcher/initstep/model/Wifi;->$stable:I

    sput v0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType$WifiConnectRetry;->$stable:I

    return-void
.end method

.method public constructor <init>(Ltech/rabbit/r1launcher/initstep/model/Wifi;Ljava/lang/String;Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;)V
    .locals 1

    const-string v0, "wifi"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, v0}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType$WifiConnectRetry;->wifi:Ltech/rabbit/r1launcher/initstep/model/Wifi;

    iput-object p2, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType$WifiConnectRetry;->password:Ljava/lang/String;

    iput-object p3, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType$WifiConnectRetry;->errorType:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;

    return-void
.end method

.method public static synthetic copy$default(Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType$WifiConnectRetry;Ltech/rabbit/r1launcher/initstep/model/Wifi;Ljava/lang/String;Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;ILjava/lang/Object;)Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType$WifiConnectRetry;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType$WifiConnectRetry;->wifi:Ltech/rabbit/r1launcher/initstep/model/Wifi;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType$WifiConnectRetry;->password:Ljava/lang/String;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType$WifiConnectRetry;->errorType:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType$WifiConnectRetry;->copy(Ltech/rabbit/r1launcher/initstep/model/Wifi;Ljava/lang/String;Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;)Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType$WifiConnectRetry;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ltech/rabbit/r1launcher/initstep/model/Wifi;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType$WifiConnectRetry;->wifi:Ltech/rabbit/r1launcher/initstep/model/Wifi;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType$WifiConnectRetry;->password:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType$WifiConnectRetry;->errorType:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;

    return-object p0
.end method

.method public final copy(Ltech/rabbit/r1launcher/initstep/model/Wifi;Ljava/lang/String;Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;)Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType$WifiConnectRetry;
    .locals 0

    const-string p0, "wifi"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "password"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "errorType"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType$WifiConnectRetry;

    invoke-direct {p0, p1, p2, p3}, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType$WifiConnectRetry;-><init>(Ltech/rabbit/r1launcher/initstep/model/Wifi;Ljava/lang/String;Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType$WifiConnectRetry;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType$WifiConnectRetry;

    iget-object v1, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType$WifiConnectRetry;->wifi:Ltech/rabbit/r1launcher/initstep/model/Wifi;

    iget-object v3, p1, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType$WifiConnectRetry;->wifi:Ltech/rabbit/r1launcher/initstep/model/Wifi;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType$WifiConnectRetry;->password:Ljava/lang/String;

    iget-object v3, p1, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType$WifiConnectRetry;->password:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType$WifiConnectRetry;->errorType:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;

    iget-object p1, p1, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType$WifiConnectRetry;->errorType:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getErrorType()Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType$WifiConnectRetry;->errorType:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;

    return-object p0
.end method

.method public final getPassword()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType$WifiConnectRetry;->password:Ljava/lang/String;

    return-object p0
.end method

.method public final getWifi()Ltech/rabbit/r1launcher/initstep/model/Wifi;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType$WifiConnectRetry;->wifi:Ltech/rabbit/r1launcher/initstep/model/Wifi;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType$WifiConnectRetry;->wifi:Ltech/rabbit/r1launcher/initstep/model/Wifi;

    invoke-virtual {v0}, Ltech/rabbit/r1launcher/initstep/model/Wifi;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType$WifiConnectRetry;->password:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType$WifiConnectRetry;->errorType:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WifiConnectRetry(wifi="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType$WifiConnectRetry;->wifi:Ltech/rabbit/r1launcher/initstep/model/Wifi;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", password="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType$WifiConnectRetry;->password:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errorType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/process/ConnectNetworkFragment$ShowType$WifiConnectRetry;->errorType:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
