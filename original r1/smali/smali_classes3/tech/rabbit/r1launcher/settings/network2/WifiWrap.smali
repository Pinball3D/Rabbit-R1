.class public final Ltech/rabbit/r1launcher/settings/network2/WifiWrap;
.super Ljava/lang/Object;
.source "SettingsNetwork2ViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0010\n\u0002\u0010\u000e\n\u0000\u0008\u0087\u0008\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\tJ\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0007H\u00c6\u0003J3\u0010\u0013\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010\u0014\u001a\u00020\u00072\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u0010\u0016\u001a\u00020\u0003H\u0016J\t\u0010\u0017\u001a\u00020\u0018H\u00d6\u0001R\u0011\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0019"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/settings/network2/WifiWrap;",
        "",
        "viewType",
        "",
        "wifi",
        "Ltech/rabbit/r1launcher/initstep/model/Wifi;",
        "isNoUsedWifi",
        "",
        "isCurrentConnected",
        "(ILtech/rabbit/r1launcher/initstep/model/Wifi;ZZ)V",
        "()Z",
        "getViewType",
        "()I",
        "getWifi",
        "()Ltech/rabbit/r1launcher/initstep/model/Wifi;",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "other",
        "hashCode",
        "toString",
        "",
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
.field private final isCurrentConnected:Z

.field private final isNoUsedWifi:Z

.field private final viewType:I

.field private final wifi:Ltech/rabbit/r1launcher/initstep/model/Wifi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Ltech/rabbit/r1launcher/initstep/model/Wifi;->$stable:I

    sput v0, Ltech/rabbit/r1launcher/settings/network2/WifiWrap;->$stable:I

    return-void
.end method

.method public constructor <init>(ILtech/rabbit/r1launcher/initstep/model/Wifi;ZZ)V
    .locals 0

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ltech/rabbit/r1launcher/settings/network2/WifiWrap;->viewType:I

    iput-object p2, p0, Ltech/rabbit/r1launcher/settings/network2/WifiWrap;->wifi:Ltech/rabbit/r1launcher/initstep/model/Wifi;

    iput-boolean p3, p0, Ltech/rabbit/r1launcher/settings/network2/WifiWrap;->isNoUsedWifi:Z

    iput-boolean p4, p0, Ltech/rabbit/r1launcher/settings/network2/WifiWrap;->isCurrentConnected:Z

    return-void
.end method

.method public synthetic constructor <init>(ILtech/rabbit/r1launcher/initstep/model/Wifi;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move p4, v0

    .line 279
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Ltech/rabbit/r1launcher/settings/network2/WifiWrap;-><init>(ILtech/rabbit/r1launcher/initstep/model/Wifi;ZZ)V

    return-void
.end method

.method public static synthetic copy$default(Ltech/rabbit/r1launcher/settings/network2/WifiWrap;ILtech/rabbit/r1launcher/initstep/model/Wifi;ZZILjava/lang/Object;)Ltech/rabbit/r1launcher/settings/network2/WifiWrap;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Ltech/rabbit/r1launcher/settings/network2/WifiWrap;->viewType:I

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Ltech/rabbit/r1launcher/settings/network2/WifiWrap;->wifi:Ltech/rabbit/r1launcher/initstep/model/Wifi;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-boolean p3, p0, Ltech/rabbit/r1launcher/settings/network2/WifiWrap;->isNoUsedWifi:Z

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-boolean p4, p0, Ltech/rabbit/r1launcher/settings/network2/WifiWrap;->isCurrentConnected:Z

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Ltech/rabbit/r1launcher/settings/network2/WifiWrap;->copy(ILtech/rabbit/r1launcher/initstep/model/Wifi;ZZ)Ltech/rabbit/r1launcher/settings/network2/WifiWrap;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Ltech/rabbit/r1launcher/settings/network2/WifiWrap;->viewType:I

    return p0
.end method

.method public final component2()Ltech/rabbit/r1launcher/initstep/model/Wifi;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/network2/WifiWrap;->wifi:Ltech/rabbit/r1launcher/initstep/model/Wifi;

    return-object p0
.end method

.method public final component3()Z
    .locals 0

    iget-boolean p0, p0, Ltech/rabbit/r1launcher/settings/network2/WifiWrap;->isNoUsedWifi:Z

    return p0
.end method

.method public final component4()Z
    .locals 0

    iget-boolean p0, p0, Ltech/rabbit/r1launcher/settings/network2/WifiWrap;->isCurrentConnected:Z

    return p0
.end method

.method public final copy(ILtech/rabbit/r1launcher/initstep/model/Wifi;ZZ)Ltech/rabbit/r1launcher/settings/network2/WifiWrap;
    .locals 0

    new-instance p0, Ltech/rabbit/r1launcher/settings/network2/WifiWrap;

    invoke-direct {p0, p1, p2, p3, p4}, Ltech/rabbit/r1launcher/settings/network2/WifiWrap;-><init>(ILtech/rabbit/r1launcher/initstep/model/Wifi;ZZ)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 287
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    return v1

    :cond_2
    const-string v0, "null cannot be cast to non-null type tech.rabbit.r1launcher.settings.network2.WifiWrap"

    .line 289
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ltech/rabbit/r1launcher/settings/network2/WifiWrap;

    iget v0, p0, Ltech/rabbit/r1launcher/settings/network2/WifiWrap;->viewType:I

    .line 291
    iget v2, p1, Ltech/rabbit/r1launcher/settings/network2/WifiWrap;->viewType:I

    if-eq v0, v2, :cond_3

    return v1

    :cond_3
    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/network2/WifiWrap;->wifi:Ltech/rabbit/r1launcher/initstep/model/Wifi;

    .line 292
    iget-object p1, p1, Ltech/rabbit/r1launcher/settings/network2/WifiWrap;->wifi:Ltech/rabbit/r1launcher/initstep/model/Wifi;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final getViewType()I
    .locals 0

    iget p0, p0, Ltech/rabbit/r1launcher/settings/network2/WifiWrap;->viewType:I

    return p0
.end method

.method public final getWifi()Ltech/rabbit/r1launcher/initstep/model/Wifi;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/network2/WifiWrap;->wifi:Ltech/rabbit/r1launcher/initstep/model/Wifi;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Ltech/rabbit/r1launcher/settings/network2/WifiWrap;->viewType:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Ltech/rabbit/r1launcher/settings/network2/WifiWrap;->wifi:Ltech/rabbit/r1launcher/initstep/model/Wifi;

    if-eqz p0, :cond_0

    .line 297
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/initstep/model/Wifi;->hashCode()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final isCurrentConnected()Z
    .locals 0

    iget-boolean p0, p0, Ltech/rabbit/r1launcher/settings/network2/WifiWrap;->isCurrentConnected:Z

    return p0
.end method

.method public final isNoUsedWifi()Z
    .locals 0

    iget-boolean p0, p0, Ltech/rabbit/r1launcher/settings/network2/WifiWrap;->isNoUsedWifi:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WifiWrap(viewType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Ltech/rabbit/r1launcher/settings/network2/WifiWrap;->viewType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", wifi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltech/rabbit/r1launcher/settings/network2/WifiWrap;->wifi:Ltech/rabbit/r1launcher/initstep/model/Wifi;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isNoUsedWifi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltech/rabbit/r1launcher/settings/network2/WifiWrap;->isNoUsedWifi:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isCurrentConnected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean p0, p0, Ltech/rabbit/r1launcher/settings/network2/WifiWrap;->isCurrentConnected:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
