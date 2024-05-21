.class public final Ltech/rabbit/r1launcher/rabbit/event_handler/models/StockSpotInfo;
.super Ljava/lang/Object;
.source "SearchStock.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000c\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\r\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0011\u001a\u00020\u0012H\u00d6\u0001J\t\u0010\u0013\u001a\u00020\u0005H\u00d6\u0001R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0014"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/rabbit/event_handler/models/StockSpotInfo;",
        "",
        "price",
        "",
        "date",
        "",
        "(DLjava/lang/String;)V",
        "getDate",
        "()Ljava/lang/String;",
        "getPrice",
        "()D",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
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
.field private final date:Ljava/lang/String;

.field private final price:D


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(DLjava/lang/String;)V
    .locals 1

    const-string v0, "date"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Ltech/rabbit/r1launcher/rabbit/event_handler/models/StockSpotInfo;->price:D

    iput-object p3, p0, Ltech/rabbit/r1launcher/rabbit/event_handler/models/StockSpotInfo;->date:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Ltech/rabbit/r1launcher/rabbit/event_handler/models/StockSpotInfo;DLjava/lang/String;ILjava/lang/Object;)Ltech/rabbit/r1launcher/rabbit/event_handler/models/StockSpotInfo;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-wide p1, p0, Ltech/rabbit/r1launcher/rabbit/event_handler/models/StockSpotInfo;->price:D

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    iget-object p3, p0, Ltech/rabbit/r1launcher/rabbit/event_handler/models/StockSpotInfo;->date:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Ltech/rabbit/r1launcher/rabbit/event_handler/models/StockSpotInfo;->copy(DLjava/lang/String;)Ltech/rabbit/r1launcher/rabbit/event_handler/models/StockSpotInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()D
    .locals 2

    iget-wide v0, p0, Ltech/rabbit/r1launcher/rabbit/event_handler/models/StockSpotInfo;->price:D

    return-wide v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/rabbit/event_handler/models/StockSpotInfo;->date:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(DLjava/lang/String;)Ltech/rabbit/r1launcher/rabbit/event_handler/models/StockSpotInfo;
    .locals 0

    const-string p0, "date"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ltech/rabbit/r1launcher/rabbit/event_handler/models/StockSpotInfo;

    invoke-direct {p0, p1, p2, p3}, Ltech/rabbit/r1launcher/rabbit/event_handler/models/StockSpotInfo;-><init>(DLjava/lang/String;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ltech/rabbit/r1launcher/rabbit/event_handler/models/StockSpotInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ltech/rabbit/r1launcher/rabbit/event_handler/models/StockSpotInfo;

    iget-wide v3, p0, Ltech/rabbit/r1launcher/rabbit/event_handler/models/StockSpotInfo;->price:D

    iget-wide v5, p1, Ltech/rabbit/r1launcher/rabbit/event_handler/models/StockSpotInfo;->price:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Ltech/rabbit/r1launcher/rabbit/event_handler/models/StockSpotInfo;->date:Ljava/lang/String;

    iget-object p1, p1, Ltech/rabbit/r1launcher/rabbit/event_handler/models/StockSpotInfo;->date:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getDate()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/rabbit/event_handler/models/StockSpotInfo;->date:Ljava/lang/String;

    return-object p0
.end method

.method public final getPrice()D
    .locals 2

    iget-wide v0, p0, Ltech/rabbit/r1launcher/rabbit/event_handler/models/StockSpotInfo;->price:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Ltech/rabbit/r1launcher/rabbit/event_handler/models/StockSpotInfo;->price:D

    invoke-static {v0, v1}, Ljava/lang/Double;->hashCode(D)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Ltech/rabbit/r1launcher/rabbit/event_handler/models/StockSpotInfo;->date:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "StockSpotInfo(price="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Ltech/rabbit/r1launcher/rabbit/event_handler/models/StockSpotInfo;->price:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", date="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Ltech/rabbit/r1launcher/rabbit/event_handler/models/StockSpotInfo;->date:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
