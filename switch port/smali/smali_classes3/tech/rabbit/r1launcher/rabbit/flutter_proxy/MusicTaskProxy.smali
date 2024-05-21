.class public final Ltech/rabbit/r1launcher/rabbit/flutter_proxy/MusicTaskProxy;
.super Ljava/lang/Object;
.source "MusicTaskProxy.kt"

# interfaces
.implements Ltech/rabbit/r1launcher/rabbit/flutter_proxy/FlutterTaskProxy;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0004H\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\t\u001a\u00020\u0004X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0006\u00a8\u0006\u000e"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/rabbit/flutter_proxy/MusicTaskProxy;",
        "Ltech/rabbit/r1launcher/rabbit/flutter_proxy/FlutterTaskProxy;",
        "()V",
        "lastSuicideId",
        "",
        "getLastSuicideId",
        "()Ljava/lang/String;",
        "setLastSuicideId",
        "(Ljava/lang/String;)V",
        "task",
        "getTask",
        "onFlutterEvent",
        "",
        "payload",
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

.field public static final INSTANCE:Ltech/rabbit/r1launcher/rabbit/flutter_proxy/MusicTaskProxy;

.field private static lastSuicideId:Ljava/lang/String;

.field private static final task:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ltech/rabbit/r1launcher/rabbit/flutter_proxy/MusicTaskProxy;

    invoke-direct {v0}, Ltech/rabbit/r1launcher/rabbit/flutter_proxy/MusicTaskProxy;-><init>()V

    sput-object v0, Ltech/rabbit/r1launcher/rabbit/flutter_proxy/MusicTaskProxy;->INSTANCE:Ltech/rabbit/r1launcher/rabbit/flutter_proxy/MusicTaskProxy;

    const-string v0, "music_play"

    sput-object v0, Ltech/rabbit/r1launcher/rabbit/flutter_proxy/MusicTaskProxy;->task:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Ltech/rabbit/r1launcher/rabbit/flutter_proxy/MusicTaskProxy;->lastSuicideId:Ljava/lang/String;

    const/16 v0, 0x8

    sput v0, Ltech/rabbit/r1launcher/rabbit/flutter_proxy/MusicTaskProxy;->$stable:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 10
    invoke-static {p0, p1}, Ltech/rabbit/r1launcher/rabbit/flutter_proxy/FlutterTaskProxy$DefaultImpls;->getInfo(Ltech/rabbit/r1launcher/rabbit/flutter_proxy/FlutterTaskProxy;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getLastSuicideId()Ljava/lang/String;
    .locals 0

    sget-object p0, Ltech/rabbit/r1launcher/rabbit/flutter_proxy/MusicTaskProxy;->lastSuicideId:Ljava/lang/String;

    return-object p0
.end method

.method public getTask()Ljava/lang/String;
    .locals 0

    sget-object p0, Ltech/rabbit/r1launcher/rabbit/flutter_proxy/MusicTaskProxy;->task:Ljava/lang/String;

    return-object p0
.end method

.method public onFlutterEvent(Ljava/lang/String;)V
    .locals 4

    const-string p0, "payload"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p0

    .line 17
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "<get-keys>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 18
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const-string v2, "id"

    const-string v3, "{\""

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string p1, "play_track"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 43
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 44
    sget-object p1, Ltech/rabbit/r1launcher/wss/WebSocketManager;->INSTANCE:Ltech/rabbit/r1launcher/wss/WebSocketManager;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ltech/rabbit/r1launcher/constant/Service;->SPOTIFY:Ltech/rabbit/r1launcher/constant/Service;

    invoke-virtual {v1}, Ltech/rabbit/r1launcher/constant/Service;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\": {\"playerControl\": {\"playTrackById\": {\"id\": \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "\"}}}}"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ltech/rabbit/r1launcher/wss/WebSocketManager;->send(Ljava/lang/String;)Z

    goto/16 :goto_0

    :sswitch_1
    const-string p0, "pause"

    .line 18
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    .line 33
    :cond_1
    invoke-static {}, Ltech/rabbit/r1launcher/wss/rtc/RTCNetworkManager;->pausePlay()V

    .line 34
    sget-object p0, Ltech/rabbit/r1launcher/rabbit/MusicOutTimeOp;->INSTANCE:Ltech/rabbit/r1launcher/rabbit/MusicOutTimeOp;

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/rabbit/MusicOutTimeOp;->cancleTiming()V

    goto/16 :goto_0

    :sswitch_2
    const-string p0, "prev"

    .line 18
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    .line 20
    :cond_2
    sget-object p0, Ltech/rabbit/r1launcher/wss/WebSocketManager;->INSTANCE:Ltech/rabbit/r1launcher/wss/WebSocketManager;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Ltech/rabbit/r1launcher/constant/Service;->SPOTIFY:Ltech/rabbit/r1launcher/constant/Service;

    invoke-virtual {v0}, Ltech/rabbit/r1launcher/constant/Service;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\": {\"playerControl\": {\"previous\": {}}}}"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/wss/WebSocketManager;->send(Ljava/lang/String;)Z

    .line 21
    sget-object p0, Ltech/rabbit/r1launcher/wss/RabbitEngine;->INSTANCE:Ltech/rabbit/r1launcher/wss/RabbitEngine;

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ltech/rabbit/r1launcher/wss/RabbitEngine;->setPlayedSeconds(J)V

    goto/16 :goto_0

    :sswitch_3
    const-string p0, "next"

    .line 18
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    .line 25
    :cond_3
    sget-object p0, Ltech/rabbit/r1launcher/wss/WebSocketManager;->INSTANCE:Ltech/rabbit/r1launcher/wss/WebSocketManager;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Ltech/rabbit/r1launcher/constant/Service;->SPOTIFY:Ltech/rabbit/r1launcher/constant/Service;

    invoke-virtual {v0}, Ltech/rabbit/r1launcher/constant/Service;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\": {\"playerControl\": {\"next\": {}}}}"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/wss/WebSocketManager;->send(Ljava/lang/String;)Z

    goto :goto_0

    :sswitch_4
    const-string p0, "update"

    .line 18
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    .line 29
    :cond_4
    sget-object p0, Ltech/rabbit/r1launcher/wss/WebSocketManager;->INSTANCE:Ltech/rabbit/r1launcher/wss/WebSocketManager;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Ltech/rabbit/r1launcher/constant/Service;->SPOTIFY:Ltech/rabbit/r1launcher/constant/Service;

    invoke-virtual {v0}, Ltech/rabbit/r1launcher/constant/Service;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\": {\"information\": {\"getPlayingStatus\": {}}}}"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/wss/WebSocketManager;->send(Ljava/lang/String;)Z

    goto :goto_0

    :sswitch_5
    const-string p0, "resume"

    .line 18
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    .line 38
    :cond_5
    invoke-static {}, Ltech/rabbit/r1launcher/wss/rtc/RTCNetworkManager;->resumePlay()V

    .line 39
    sget-object p0, Ltech/rabbit/r1launcher/rabbit/MusicOutTimeOp;->INSTANCE:Ltech/rabbit/r1launcher/rabbit/MusicOutTimeOp;

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/rabbit/MusicOutTimeOp;->startTiming()V

    goto :goto_0

    :sswitch_6
    const-string p0, "suicide"

    .line 18
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    .line 47
    :cond_6
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "getString(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p0, Ltech/rabbit/r1launcher/rabbit/flutter_proxy/MusicTaskProxy;->lastSuicideId:Ljava/lang/String;

    :cond_7
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6ef625d2 -> :sswitch_6
        -0x37b237d3 -> :sswitch_5
        -0x31ffc737 -> :sswitch_4
        0x338af3 -> :sswitch_3
        0x34a233 -> :sswitch_2
        0x65825f6 -> :sswitch_1
        0x72d8a880 -> :sswitch_0
    .end sparse-switch
.end method

.method public final setLastSuicideId(Ljava/lang/String;)V
    .locals 0

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Ltech/rabbit/r1launcher/rabbit/flutter_proxy/MusicTaskProxy;->lastSuicideId:Ljava/lang/String;

    return-void
.end method
