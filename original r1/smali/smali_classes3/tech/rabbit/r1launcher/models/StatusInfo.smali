.class public final Ltech/rabbit/r1launcher/models/StatusInfo;
.super Ljava/lang/Object;
.source "RideStatus.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\u0011\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0015\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0016\u001a\u00020\u0017H\u00d6\u0001R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0018"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/models/StatusInfo;",
        "",
        "eta",
        "",
        "driver",
        "Ltech/rabbit/r1launcher/models/Driver;",
        "(ILtech/rabbit/r1launcher/models/Driver;)V",
        "getDriver",
        "()Ltech/rabbit/r1launcher/models/Driver;",
        "setDriver",
        "(Ltech/rabbit/r1launcher/models/Driver;)V",
        "getEta",
        "()I",
        "setEta",
        "(I)V",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
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
.field public static final $stable:I = 0x8


# instance fields
.field private driver:Ltech/rabbit/r1launcher/models/Driver;

.field private eta:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ILtech/rabbit/r1launcher/models/Driver;)V
    .locals 1

    const-string v0, "driver"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ltech/rabbit/r1launcher/models/StatusInfo;->eta:I

    iput-object p2, p0, Ltech/rabbit/r1launcher/models/StatusInfo;->driver:Ltech/rabbit/r1launcher/models/Driver;

    return-void
.end method

.method public static synthetic copy$default(Ltech/rabbit/r1launcher/models/StatusInfo;ILtech/rabbit/r1launcher/models/Driver;ILjava/lang/Object;)Ltech/rabbit/r1launcher/models/StatusInfo;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Ltech/rabbit/r1launcher/models/StatusInfo;->eta:I

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Ltech/rabbit/r1launcher/models/StatusInfo;->driver:Ltech/rabbit/r1launcher/models/Driver;

    :cond_1
    invoke-virtual {p0, p1, p2}, Ltech/rabbit/r1launcher/models/StatusInfo;->copy(ILtech/rabbit/r1launcher/models/Driver;)Ltech/rabbit/r1launcher/models/StatusInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Ltech/rabbit/r1launcher/models/StatusInfo;->eta:I

    return p0
.end method

.method public final component2()Ltech/rabbit/r1launcher/models/Driver;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/models/StatusInfo;->driver:Ltech/rabbit/r1launcher/models/Driver;

    return-object p0
.end method

.method public final copy(ILtech/rabbit/r1launcher/models/Driver;)Ltech/rabbit/r1launcher/models/StatusInfo;
    .locals 0

    const-string p0, "driver"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ltech/rabbit/r1launcher/models/StatusInfo;

    invoke-direct {p0, p1, p2}, Ltech/rabbit/r1launcher/models/StatusInfo;-><init>(ILtech/rabbit/r1launcher/models/Driver;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ltech/rabbit/r1launcher/models/StatusInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ltech/rabbit/r1launcher/models/StatusInfo;

    iget v1, p0, Ltech/rabbit/r1launcher/models/StatusInfo;->eta:I

    iget v3, p1, Ltech/rabbit/r1launcher/models/StatusInfo;->eta:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Ltech/rabbit/r1launcher/models/StatusInfo;->driver:Ltech/rabbit/r1launcher/models/Driver;

    iget-object p1, p1, Ltech/rabbit/r1launcher/models/StatusInfo;->driver:Ltech/rabbit/r1launcher/models/Driver;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getDriver()Ltech/rabbit/r1launcher/models/Driver;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/models/StatusInfo;->driver:Ltech/rabbit/r1launcher/models/Driver;

    return-object p0
.end method

.method public final getEta()I
    .locals 0

    iget p0, p0, Ltech/rabbit/r1launcher/models/StatusInfo;->eta:I

    return p0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Ltech/rabbit/r1launcher/models/StatusInfo;->eta:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Ltech/rabbit/r1launcher/models/StatusInfo;->driver:Ltech/rabbit/r1launcher/models/Driver;

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/models/Driver;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final setDriver(Ltech/rabbit/r1launcher/models/Driver;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ltech/rabbit/r1launcher/models/StatusInfo;->driver:Ltech/rabbit/r1launcher/models/Driver;

    return-void
.end method

.method public final setEta(I)V
    .locals 0

    iput p1, p0, Ltech/rabbit/r1launcher/models/StatusInfo;->eta:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "StatusInfo(eta="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Ltech/rabbit/r1launcher/models/StatusInfo;->eta:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", driver="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Ltech/rabbit/r1launcher/models/StatusInfo;->driver:Ltech/rabbit/r1launcher/models/Driver;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
