.class public final Ltech/rabbit/r1launcher/rabbit/event_handler/models/SearchWeatherInfo;
.super Ljava/lang/Object;
.source "SearchWeather.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltech/rabbit/r1launcher/rabbit/event_handler/models/SearchWeatherInfo$HourlyTemperature;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0087\u0008\u0018\u00002\u00020\u0001:\u0001\u001bB+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0002\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J\u000f\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007H\u00c6\u0003J7\u0010\u0014\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u000e\u0008\u0002\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007H\u00c6\u0001J\u0013\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0018\u001a\u00020\u0019H\u00d6\u0001J\t\u0010\u001a\u001a\u00020\u0003H\u00d6\u0001R\u0017\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\r\u00a8\u0006\u001c"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/rabbit/event_handler/models/SearchWeatherInfo;",
        "",
        "location",
        "",
        "weekName",
        "weather",
        "hourlyTemperature",
        "",
        "Ltech/rabbit/r1launcher/rabbit/event_handler/models/SearchWeatherInfo$HourlyTemperature;",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V",
        "getHourlyTemperature",
        "()Ljava/util/List;",
        "getLocation",
        "()Ljava/lang/String;",
        "getWeather",
        "getWeekName",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "HourlyTemperature",
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
.field private final hourlyTemperature:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltech/rabbit/r1launcher/rabbit/event_handler/models/SearchWeatherInfo$HourlyTemperature;",
            ">;"
        }
    .end annotation
.end field

.field private final location:Ljava/lang/String;

.field private final weather:Ljava/lang/String;

.field private final weekName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ltech/rabbit/r1launcher/rabbit/event_handler/models/SearchWeatherInfo$HourlyTemperature;",
            ">;)V"
        }
    .end annotation

    const-string v0, "location"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "weekName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "weather"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hourlyTemperature"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltech/rabbit/r1launcher/rabbit/event_handler/models/SearchWeatherInfo;->location:Ljava/lang/String;

    iput-object p2, p0, Ltech/rabbit/r1launcher/rabbit/event_handler/models/SearchWeatherInfo;->weekName:Ljava/lang/String;

    iput-object p3, p0, Ltech/rabbit/r1launcher/rabbit/event_handler/models/SearchWeatherInfo;->weather:Ljava/lang/String;

    iput-object p4, p0, Ltech/rabbit/r1launcher/rabbit/event_handler/models/SearchWeatherInfo;->hourlyTemperature:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Ltech/rabbit/r1launcher/rabbit/event_handler/models/SearchWeatherInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/Object;)Ltech/rabbit/r1launcher/rabbit/event_handler/models/SearchWeatherInfo;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Ltech/rabbit/r1launcher/rabbit/event_handler/models/SearchWeatherInfo;->location:Ljava/lang/String;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Ltech/rabbit/r1launcher/rabbit/event_handler/models/SearchWeatherInfo;->weekName:Ljava/lang/String;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Ltech/rabbit/r1launcher/rabbit/event_handler/models/SearchWeatherInfo;->weather:Ljava/lang/String;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Ltech/rabbit/r1launcher/rabbit/event_handler/models/SearchWeatherInfo;->hourlyTemperature:Ljava/util/List;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Ltech/rabbit/r1launcher/rabbit/event_handler/models/SearchWeatherInfo;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ltech/rabbit/r1launcher/rabbit/event_handler/models/SearchWeatherInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/rabbit/event_handler/models/SearchWeatherInfo;->location:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/rabbit/event_handler/models/SearchWeatherInfo;->weekName:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/rabbit/event_handler/models/SearchWeatherInfo;->weather:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ltech/rabbit/r1launcher/rabbit/event_handler/models/SearchWeatherInfo$HourlyTemperature;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Ltech/rabbit/r1launcher/rabbit/event_handler/models/SearchWeatherInfo;->hourlyTemperature:Ljava/util/List;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ltech/rabbit/r1launcher/rabbit/event_handler/models/SearchWeatherInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ltech/rabbit/r1launcher/rabbit/event_handler/models/SearchWeatherInfo$HourlyTemperature;",
            ">;)",
            "Ltech/rabbit/r1launcher/rabbit/event_handler/models/SearchWeatherInfo;"
        }
    .end annotation

    const-string p0, "location"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "weekName"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "weather"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "hourlyTemperature"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ltech/rabbit/r1launcher/rabbit/event_handler/models/SearchWeatherInfo;

    invoke-direct {p0, p1, p2, p3, p4}, Ltech/rabbit/r1launcher/rabbit/event_handler/models/SearchWeatherInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ltech/rabbit/r1launcher/rabbit/event_handler/models/SearchWeatherInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ltech/rabbit/r1launcher/rabbit/event_handler/models/SearchWeatherInfo;

    iget-object v1, p0, Ltech/rabbit/r1launcher/rabbit/event_handler/models/SearchWeatherInfo;->location:Ljava/lang/String;

    iget-object v3, p1, Ltech/rabbit/r1launcher/rabbit/event_handler/models/SearchWeatherInfo;->location:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Ltech/rabbit/r1launcher/rabbit/event_handler/models/SearchWeatherInfo;->weekName:Ljava/lang/String;

    iget-object v3, p1, Ltech/rabbit/r1launcher/rabbit/event_handler/models/SearchWeatherInfo;->weekName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Ltech/rabbit/r1launcher/rabbit/event_handler/models/SearchWeatherInfo;->weather:Ljava/lang/String;

    iget-object v3, p1, Ltech/rabbit/r1launcher/rabbit/event_handler/models/SearchWeatherInfo;->weather:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Ltech/rabbit/r1launcher/rabbit/event_handler/models/SearchWeatherInfo;->hourlyTemperature:Ljava/util/List;

    iget-object p1, p1, Ltech/rabbit/r1launcher/rabbit/event_handler/models/SearchWeatherInfo;->hourlyTemperature:Ljava/util/List;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getHourlyTemperature()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ltech/rabbit/r1launcher/rabbit/event_handler/models/SearchWeatherInfo$HourlyTemperature;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Ltech/rabbit/r1launcher/rabbit/event_handler/models/SearchWeatherInfo;->hourlyTemperature:Ljava/util/List;

    return-object p0
.end method

.method public final getLocation()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/rabbit/event_handler/models/SearchWeatherInfo;->location:Ljava/lang/String;

    return-object p0
.end method

.method public final getWeather()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/rabbit/event_handler/models/SearchWeatherInfo;->weather:Ljava/lang/String;

    return-object p0
.end method

.method public final getWeekName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/rabbit/event_handler/models/SearchWeatherInfo;->weekName:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Ltech/rabbit/r1launcher/rabbit/event_handler/models/SearchWeatherInfo;->location:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ltech/rabbit/r1launcher/rabbit/event_handler/models/SearchWeatherInfo;->weekName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ltech/rabbit/r1launcher/rabbit/event_handler/models/SearchWeatherInfo;->weather:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Ltech/rabbit/r1launcher/rabbit/event_handler/models/SearchWeatherInfo;->hourlyTemperature:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SearchWeatherInfo(location="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ltech/rabbit/r1launcher/rabbit/event_handler/models/SearchWeatherInfo;->location:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", weekName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltech/rabbit/r1launcher/rabbit/event_handler/models/SearchWeatherInfo;->weekName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", weather="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltech/rabbit/r1launcher/rabbit/event_handler/models/SearchWeatherInfo;->weather:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hourlyTemperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Ltech/rabbit/r1launcher/rabbit/event_handler/models/SearchWeatherInfo;->hourlyTemperature:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
