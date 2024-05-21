.class public final Ltech/rabbit/r1launcher/models/RideStatus;
.super Ljava/lang/Object;
.source "RideStatus.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\t\u0010\u0008\u001a\u00020\u0003H\u00c6\u0003J\u0013\u0010\t\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\r\u001a\u00020\u000eH\u00d6\u0001J\t\u0010\u000f\u001a\u00020\u0010H\u00d6\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0004\u00a8\u0006\u0011"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/models/RideStatus;",
        "",
        "statusInfo",
        "Ltech/rabbit/r1launcher/models/StatusInfo;",
        "(Ltech/rabbit/r1launcher/models/StatusInfo;)V",
        "getStatusInfo",
        "()Ltech/rabbit/r1launcher/models/StatusInfo;",
        "setStatusInfo",
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
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
.field public static final $stable:I = 0x8


# instance fields
.field private statusInfo:Ltech/rabbit/r1launcher/models/StatusInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ltech/rabbit/r1launcher/models/StatusInfo;)V
    .locals 1

    const-string v0, "statusInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltech/rabbit/r1launcher/models/RideStatus;->statusInfo:Ltech/rabbit/r1launcher/models/StatusInfo;

    return-void
.end method

.method public static synthetic copy$default(Ltech/rabbit/r1launcher/models/RideStatus;Ltech/rabbit/r1launcher/models/StatusInfo;ILjava/lang/Object;)Ltech/rabbit/r1launcher/models/RideStatus;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Ltech/rabbit/r1launcher/models/RideStatus;->statusInfo:Ltech/rabbit/r1launcher/models/StatusInfo;

    :cond_0
    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/models/RideStatus;->copy(Ltech/rabbit/r1launcher/models/StatusInfo;)Ltech/rabbit/r1launcher/models/RideStatus;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ltech/rabbit/r1launcher/models/StatusInfo;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/models/RideStatus;->statusInfo:Ltech/rabbit/r1launcher/models/StatusInfo;

    return-object p0
.end method

.method public final copy(Ltech/rabbit/r1launcher/models/StatusInfo;)Ltech/rabbit/r1launcher/models/RideStatus;
    .locals 0

    const-string p0, "statusInfo"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ltech/rabbit/r1launcher/models/RideStatus;

    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/models/RideStatus;-><init>(Ltech/rabbit/r1launcher/models/StatusInfo;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ltech/rabbit/r1launcher/models/RideStatus;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ltech/rabbit/r1launcher/models/RideStatus;

    iget-object p0, p0, Ltech/rabbit/r1launcher/models/RideStatus;->statusInfo:Ltech/rabbit/r1launcher/models/StatusInfo;

    iget-object p1, p1, Ltech/rabbit/r1launcher/models/RideStatus;->statusInfo:Ltech/rabbit/r1launcher/models/StatusInfo;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getStatusInfo()Ltech/rabbit/r1launcher/models/StatusInfo;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/models/RideStatus;->statusInfo:Ltech/rabbit/r1launcher/models/StatusInfo;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/models/RideStatus;->statusInfo:Ltech/rabbit/r1launcher/models/StatusInfo;

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/models/StatusInfo;->hashCode()I

    move-result p0

    return p0
.end method

.method public final setStatusInfo(Ltech/rabbit/r1launcher/models/StatusInfo;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ltech/rabbit/r1launcher/models/RideStatus;->statusInfo:Ltech/rabbit/r1launcher/models/StatusInfo;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RideStatus(statusInfo="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Ltech/rabbit/r1launcher/models/RideStatus;->statusInfo:Ltech/rabbit/r1launcher/models/StatusInfo;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
