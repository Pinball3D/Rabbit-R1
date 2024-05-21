.class public final Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;
.super Ljava/lang/Object;
.source "GeoLocationManager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGeoLocationManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GeoLocationManager.kt\ntech/rabbit/r1launcher/geoLocation/GeoLocationManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,221:1\n1855#2,2:222\n*S KotlinDebug\n*F\n+ 1 GeoLocationManager.kt\ntech/rabbit/r1launcher/geoLocation/GeoLocationManager\n*L\n84#1:222,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$2\n\u0008\u0002\u0010%\u001a\u0004\u0018\u00010&J\u0008\u0010\'\u001a\u00020\"H\u0002J\u0006\u0010(\u001a\u00020\"J\u0006\u0010)\u001a\u00020\"J\u0008\u0010*\u001a\u00020\"H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000R\u0017\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u001b\u0010\u000e\u001a\u00020\u000f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0010\u0010\u0011R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0016\u001a\u0004\u0018\u00010\u00178FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\u001a\u0010\u001c\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 \u00a8\u0006+"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;",
        "",
        "()V",
        "INIT_REQUEST_RETRY_COUNT",
        "",
        "INSTANT_REQUEST_RETRY_COUNT",
        "LOCATION_EXPIRE_TIME",
        "",
        "RETRY_INTERVAL",
        "callbackList",
        "",
        "Ltech/rabbit/r1launcher/geoLocation/GeoLocationReporter;",
        "getCallbackList",
        "()Ljava/util/List;",
        "geoHandler",
        "Ltech/rabbit/r1launcher/geoLocation/RequestLocationThread;",
        "getGeoHandler",
        "()Ltech/rabbit/r1launcher/geoLocation/RequestLocationThread;",
        "geoHandler$delegate",
        "Lkotlin/Lazy;",
        "isRunning",
        "",
        "lastLocation",
        "Landroid/location/Location;",
        "getLastLocation",
        "()Landroid/location/Location;",
        "setLastLocation",
        "(Landroid/location/Location;)V",
        "lastTimeStamp",
        "getLastTimeStamp",
        "()J",
        "setLastTimeStamp",
        "(J)V",
        "dispatchStatus",
        "",
        "statusCode",
        "Ltech/rabbit/r1launcher/geoLocation/GPSStatusCode;",
        "failReason",
        "",
        "removeFinishedCallbacks",
        "requestLocationDuringDeviceInit",
        "requestLocationInstantly",
        "startCheck",
        "base_release"
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
.field private static final INIT_REQUEST_RETRY_COUNT:I = 0x1e

.field public static final INSTANCE:Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;

.field private static final INSTANT_REQUEST_RETRY_COUNT:I = 0x2

.field private static final LOCATION_EXPIRE_TIME:J = 0x6ddd00L

.field private static final RETRY_INTERVAL:J = 0x2710L

.field private static final callbackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltech/rabbit/r1launcher/geoLocation/GeoLocationReporter;",
            ">;"
        }
    .end annotation
.end field

.field private static final geoHandler$delegate:Lkotlin/Lazy;

.field private static isRunning:Z

.field private static lastLocation:Landroid/location/Location;

.field private static lastTimeStamp:J


# direct methods
.method public static synthetic $r8$lambda$VhPO1ZBIopS_duygaiKxigOZ0FE(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;->removeFinishedCallbacks$lambda$3(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;

    invoke-direct {v0}, Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;-><init>()V

    sput-object v0, Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;->INSTANCE:Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    sput-object v0, Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;->callbackList:Ljava/util/List;

    .line 42
    sget-object v0, Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager$geoHandler$2;->INSTANCE:Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager$geoHandler$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;->geoHandler$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getGeoHandler(Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;)Ltech/rabbit/r1launcher/geoLocation/RequestLocationThread;
    .locals 0

    .line 20
    invoke-direct {p0}, Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;->getGeoHandler()Ltech/rabbit/r1launcher/geoLocation/RequestLocationThread;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setRunning$p(Z)V
    .locals 0

    sput-boolean p0, Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;->isRunning:Z

    return-void
.end method

.method public static synthetic dispatchStatus$default(Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;Ltech/rabbit/r1launcher/geoLocation/GPSStatusCode;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 83
    :cond_0
    invoke-virtual {p0, p1, p2}, Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;->dispatchStatus(Ltech/rabbit/r1launcher/geoLocation/GPSStatusCode;Ljava/lang/String;)V

    return-void
.end method

.method private final getGeoHandler()Ltech/rabbit/r1launcher/geoLocation/RequestLocationThread;
    .locals 0

    sget-object p0, Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;->geoHandler$delegate:Lkotlin/Lazy;

    .line 42
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltech/rabbit/r1launcher/geoLocation/RequestLocationThread;

    return-object p0
.end method

.method private final removeFinishedCallbacks()V
    .locals 2

    sget-object p0, Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;->callbackList:Ljava/util/List;

    .line 91
    sget-object v0, Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager$removeFinishedCallbacks$1;->INSTANCE:Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager$removeFinishedCallbacks$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    new-instance v1, Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {p0, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method private static final removeFinishedCallbacks$lambda$3(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private final startCheck()V
    .locals 2

    sget-boolean v0, Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;->isRunning:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;->isRunning:Z

    .line 65
    invoke-direct {p0}, Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;->getGeoHandler()Ltech/rabbit/r1launcher/geoLocation/RequestLocationThread;

    move-result-object v0

    invoke-direct {p0}, Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;->getGeoHandler()Ltech/rabbit/r1launcher/geoLocation/RequestLocationThread;

    move-result-object v1

    invoke-virtual {v1}, Ltech/rabbit/r1launcher/geoLocation/RequestLocationThread;->getREQUEST_LOCATION()I

    move-result v1

    invoke-virtual {v0, v1}, Ltech/rabbit/r1launcher/geoLocation/RequestLocationThread;->removeMessages(I)V

    .line 66
    invoke-direct {p0}, Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;->getGeoHandler()Ltech/rabbit/r1launcher/geoLocation/RequestLocationThread;

    move-result-object p0

    new-instance v0, Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager$startCheck$1;

    invoke-direct {v0}, Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager$startCheck$1;-><init>()V

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Ltech/rabbit/r1launcher/geoLocation/RequestLocationThread;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final dispatchStatus(Ltech/rabbit/r1launcher/geoLocation/GPSStatusCode;Ljava/lang/String;)V
    .locals 3

    const-string v0, "statusCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;->callbackList:Ljava/util/List;

    .line 84
    check-cast v0, Ljava/lang/Iterable;

    .line 222
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltech/rabbit/r1launcher/geoLocation/GeoLocationReporter;

    .line 85
    invoke-virtual {p1}, Ltech/rabbit/r1launcher/geoLocation/GPSStatusCode;->getCode()I

    move-result v2

    invoke-virtual {v1, v2, p2}, Ltech/rabbit/r1launcher/geoLocation/GeoLocationReporter;->onResult(ILjava/lang/String;)V

    goto :goto_0

    .line 87
    :cond_0
    invoke-direct {p0}, Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;->removeFinishedCallbacks()V

    return-void
.end method

.method public final getCallbackList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ltech/rabbit/r1launcher/geoLocation/GeoLocationReporter;",
            ">;"
        }
    .end annotation

    sget-object p0, Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;->callbackList:Ljava/util/List;

    return-object p0
.end method

.method public final getLastLocation()Landroid/location/Location;
    .locals 4

    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;->lastTimeStamp:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x6ddd00

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    sget-object p0, Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;->lastLocation:Landroid/location/Location;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getLastTimeStamp()J
    .locals 2

    sget-wide v0, Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;->lastTimeStamp:J

    return-wide v0
.end method

.method public final requestLocationDuringDeviceInit()V
    .locals 4

    .line 54
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;->getLastLocation()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    sget-object p0, Ltech/rabbit/r1launcher/wss/WebSocketManager;->INSTANCE:Ltech/rabbit/r1launcher/wss/WebSocketManager;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{\"kernel\": {\"gps\": {\"location\": { \"latitude\":"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", \"longitude\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}}}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltech/rabbit/r1launcher/wss/WebSocketManager;->send(Ljava/lang/String;)Z

    goto :goto_0

    .line 56
    :cond_0
    move-object v0, p0

    check-cast v0, Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;

    sget-object v0, Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;->callbackList:Ljava/util/List;

    .line 57
    new-instance v1, Ltech/rabbit/r1launcher/geoLocation/GeoLocationReporter;

    const/16 v2, 0x1e

    invoke-direct {v1, v2}, Ltech/rabbit/r1launcher/geoLocation/GeoLocationReporter;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    invoke-direct {p0}, Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;->startCheck()V

    :goto_0
    return-void
.end method

.method public final requestLocationInstantly()V
    .locals 3

    sget-object v0, Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;->callbackList:Ljava/util/List;

    .line 49
    new-instance v1, Ltech/rabbit/r1launcher/geoLocation/GeoLocationReporter;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ltech/rabbit/r1launcher/geoLocation/GeoLocationReporter;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    invoke-direct {p0}, Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;->startCheck()V

    return-void
.end method

.method public final setLastLocation(Landroid/location/Location;)V
    .locals 0

    sput-object p1, Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;->lastLocation:Landroid/location/Location;

    return-void
.end method

.method public final setLastTimeStamp(J)V
    .locals 0

    sput-wide p1, Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;->lastTimeStamp:J

    return-void
.end method
