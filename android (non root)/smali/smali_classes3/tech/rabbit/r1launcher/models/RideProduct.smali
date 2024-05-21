.class public final Ltech/rabbit/r1launcher/models/RideProduct;
.super Ljava/lang/Object;
.source "RideProduct.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0017\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001B?\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\u0005\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u000cJ\t\u0010\u0017\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\u0008H\u00c6\u0003J\t\u0010\u001b\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001c\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u001d\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003JQ\u0010\u001e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\u00052\u0008\u0008\u0002\u0010\n\u001a\u00020\u00032\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003H\u00c6\u0001J\u0013\u0010\u001f\u001a\u00020 2\u0008\u0010!\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\"\u001a\u00020\u0005H\u00d6\u0001J\t\u0010#\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000eR\u0011\u0010\t\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000eR\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\n\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0014R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0014\u00a8\u0006$"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/models/RideProduct;",
        "",
        "name",
        "",
        "capacity",
        "",
        "estMinutesToPickup",
        "estTimeToArriveServerTimeZone",
        "Ljava/util/Date;",
        "estPriceUsdCents",
        "id",
        "routePolyline",
        "(Ljava/lang/String;IILjava/util/Date;ILjava/lang/String;Ljava/lang/String;)V",
        "getCapacity",
        "()I",
        "getEstMinutesToPickup",
        "getEstPriceUsdCents",
        "getEstTimeToArriveServerTimeZone",
        "()Ljava/util/Date;",
        "getId",
        "()Ljava/lang/String;",
        "getName",
        "getRoutePolyline",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
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
.field public static final $stable:I = 0x8


# instance fields
.field private final capacity:I

.field private final estMinutesToPickup:I

.field private final estPriceUsdCents:I

.field private final estTimeToArriveServerTimeZone:Ljava/util/Date;

.field private final id:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final routePolyline:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/util/Date;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "estTimeToArriveServerTimeZone"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltech/rabbit/r1launcher/models/RideProduct;->name:Ljava/lang/String;

    iput p2, p0, Ltech/rabbit/r1launcher/models/RideProduct;->capacity:I

    iput p3, p0, Ltech/rabbit/r1launcher/models/RideProduct;->estMinutesToPickup:I

    iput-object p4, p0, Ltech/rabbit/r1launcher/models/RideProduct;->estTimeToArriveServerTimeZone:Ljava/util/Date;

    iput p5, p0, Ltech/rabbit/r1launcher/models/RideProduct;->estPriceUsdCents:I

    iput-object p6, p0, Ltech/rabbit/r1launcher/models/RideProduct;->id:Ljava/lang/String;

    iput-object p7, p0, Ltech/rabbit/r1launcher/models/RideProduct;->routePolyline:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Ltech/rabbit/r1launcher/models/RideProduct;Ljava/lang/String;IILjava/util/Date;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ltech/rabbit/r1launcher/models/RideProduct;
    .locals 5

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    iget-object p1, p0, Ltech/rabbit/r1launcher/models/RideProduct;->name:Ljava/lang/String;

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    iget p2, p0, Ltech/rabbit/r1launcher/models/RideProduct;->capacity:I

    :cond_1
    move p9, p2

    and-int/lit8 p2, p8, 0x4

    if-eqz p2, :cond_2

    iget p3, p0, Ltech/rabbit/r1launcher/models/RideProduct;->estMinutesToPickup:I

    :cond_2
    move v0, p3

    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Ltech/rabbit/r1launcher/models/RideProduct;->estTimeToArriveServerTimeZone:Ljava/util/Date;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_4

    iget p5, p0, Ltech/rabbit/r1launcher/models/RideProduct;->estPriceUsdCents:I

    :cond_4
    move v2, p5

    and-int/lit8 p2, p8, 0x20

    if-eqz p2, :cond_5

    iget-object p6, p0, Ltech/rabbit/r1launcher/models/RideProduct;->id:Ljava/lang/String;

    :cond_5
    move-object v3, p6

    and-int/lit8 p2, p8, 0x40

    if-eqz p2, :cond_6

    iget-object p7, p0, Ltech/rabbit/r1launcher/models/RideProduct;->routePolyline:Ljava/lang/String;

    :cond_6
    move-object v4, p7

    move-object p2, p0

    move-object p3, p1

    move p4, p9

    move p5, v0

    move-object p6, v1

    move p7, v2

    move-object p8, v3

    move-object p9, v4

    invoke-virtual/range {p2 .. p9}, Ltech/rabbit/r1launcher/models/RideProduct;->copy(Ljava/lang/String;IILjava/util/Date;ILjava/lang/String;Ljava/lang/String;)Ltech/rabbit/r1launcher/models/RideProduct;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/models/RideProduct;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()I
    .locals 0

    iget p0, p0, Ltech/rabbit/r1launcher/models/RideProduct;->capacity:I

    return p0
.end method

.method public final component3()I
    .locals 0

    iget p0, p0, Ltech/rabbit/r1launcher/models/RideProduct;->estMinutesToPickup:I

    return p0
.end method

.method public final component4()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/models/RideProduct;->estTimeToArriveServerTimeZone:Ljava/util/Date;

    return-object p0
.end method

.method public final component5()I
    .locals 0

    iget p0, p0, Ltech/rabbit/r1launcher/models/RideProduct;->estPriceUsdCents:I

    return p0
.end method

.method public final component6()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/models/RideProduct;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final component7()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/models/RideProduct;->routePolyline:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;IILjava/util/Date;ILjava/lang/String;Ljava/lang/String;)Ltech/rabbit/r1launcher/models/RideProduct;
    .locals 8

    const-string p0, "name"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "estTimeToArriveServerTimeZone"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "id"

    invoke-static {p6, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ltech/rabbit/r1launcher/models/RideProduct;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Ltech/rabbit/r1launcher/models/RideProduct;-><init>(Ljava/lang/String;IILjava/util/Date;ILjava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ltech/rabbit/r1launcher/models/RideProduct;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ltech/rabbit/r1launcher/models/RideProduct;

    iget-object v1, p0, Ltech/rabbit/r1launcher/models/RideProduct;->name:Ljava/lang/String;

    iget-object v3, p1, Ltech/rabbit/r1launcher/models/RideProduct;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Ltech/rabbit/r1launcher/models/RideProduct;->capacity:I

    iget v3, p1, Ltech/rabbit/r1launcher/models/RideProduct;->capacity:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Ltech/rabbit/r1launcher/models/RideProduct;->estMinutesToPickup:I

    iget v3, p1, Ltech/rabbit/r1launcher/models/RideProduct;->estMinutesToPickup:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Ltech/rabbit/r1launcher/models/RideProduct;->estTimeToArriveServerTimeZone:Ljava/util/Date;

    iget-object v3, p1, Ltech/rabbit/r1launcher/models/RideProduct;->estTimeToArriveServerTimeZone:Ljava/util/Date;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Ltech/rabbit/r1launcher/models/RideProduct;->estPriceUsdCents:I

    iget v3, p1, Ltech/rabbit/r1launcher/models/RideProduct;->estPriceUsdCents:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Ltech/rabbit/r1launcher/models/RideProduct;->id:Ljava/lang/String;

    iget-object v3, p1, Ltech/rabbit/r1launcher/models/RideProduct;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object p0, p0, Ltech/rabbit/r1launcher/models/RideProduct;->routePolyline:Ljava/lang/String;

    iget-object p1, p1, Ltech/rabbit/r1launcher/models/RideProduct;->routePolyline:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final getCapacity()I
    .locals 0

    iget p0, p0, Ltech/rabbit/r1launcher/models/RideProduct;->capacity:I

    return p0
.end method

.method public final getEstMinutesToPickup()I
    .locals 0

    iget p0, p0, Ltech/rabbit/r1launcher/models/RideProduct;->estMinutesToPickup:I

    return p0
.end method

.method public final getEstPriceUsdCents()I
    .locals 0

    iget p0, p0, Ltech/rabbit/r1launcher/models/RideProduct;->estPriceUsdCents:I

    return p0
.end method

.method public final getEstTimeToArriveServerTimeZone()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/models/RideProduct;->estTimeToArriveServerTimeZone:Ljava/util/Date;

    return-object p0
.end method

.method public final getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/models/RideProduct;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/models/RideProduct;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final getRoutePolyline()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/models/RideProduct;->routePolyline:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Ltech/rabbit/r1launcher/models/RideProduct;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Ltech/rabbit/r1launcher/models/RideProduct;->capacity:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Ltech/rabbit/r1launcher/models/RideProduct;->estMinutesToPickup:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ltech/rabbit/r1launcher/models/RideProduct;->estTimeToArriveServerTimeZone:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Ltech/rabbit/r1launcher/models/RideProduct;->estPriceUsdCents:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ltech/rabbit/r1launcher/models/RideProduct;->id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Ltech/rabbit/r1launcher/models/RideProduct;->routePolyline:Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RideProduct(name="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ltech/rabbit/r1launcher/models/RideProduct;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", capacity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltech/rabbit/r1launcher/models/RideProduct;->capacity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", estMinutesToPickup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltech/rabbit/r1launcher/models/RideProduct;->estMinutesToPickup:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", estTimeToArriveServerTimeZone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltech/rabbit/r1launcher/models/RideProduct;->estTimeToArriveServerTimeZone:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", estPriceUsdCents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltech/rabbit/r1launcher/models/RideProduct;->estPriceUsdCents:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltech/rabbit/r1launcher/models/RideProduct;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", routePolyline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Ltech/rabbit/r1launcher/models/RideProduct;->routePolyline:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
