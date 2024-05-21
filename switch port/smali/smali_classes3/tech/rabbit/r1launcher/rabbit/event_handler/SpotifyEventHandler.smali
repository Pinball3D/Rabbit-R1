.class public final Ltech/rabbit/r1launcher/rabbit/event_handler/SpotifyEventHandler;
.super Ljava/lang/Object;
.source "SpotifyEventHandler.kt"

# interfaces
.implements Ltech/rabbit/r1launcher/rabbit/event_handler/WebSocketEventHandler;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSpotifyEventHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SpotifyEventHandler.kt\ntech/rabbit/r1launcher/rabbit/event_handler/SpotifyEventHandler\n+ 2 KotlinUtil.kt\ntech/rabbit/common/utils/KotlinUtilKt\n*L\n1#1,55:1\n68#2,10:56\n*S KotlinDebug\n*F\n+ 1 SpotifyEventHandler.kt\ntech/rabbit/r1launcher/rabbit/event_handler/SpotifyEventHandler\n*L\n28#1:56,10\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J \u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0004H\u0016R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\r"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/rabbit/event_handler/SpotifyEventHandler;",
        "Ltech/rabbit/r1launcher/rabbit/event_handler/WebSocketEventHandler;",
        "()V",
        "interestedIn",
        "",
        "getInterestedIn",
        "()Ljava/lang/String;",
        "handleEvent",
        "",
        "event",
        "payload",
        "Lcom/alibaba/fastjson/JSONObject;",
        "rawPayload",
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
.field private final interestedIn:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    sget-object v0, Ltech/rabbit/r1launcher/constant/Service;->SPOTIFY:Ltech/rabbit/r1launcher/constant/Service;

    invoke-virtual {v0}, Ltech/rabbit/r1launcher/constant/Service;->getTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltech/rabbit/r1launcher/rabbit/event_handler/SpotifyEventHandler;->interestedIn:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getInterestedIn()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/rabbit/event_handler/SpotifyEventHandler;->interestedIn:Ljava/lang/String;

    return-object p0
.end method

.method public handleEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Z
    .locals 5

    const-string p0, "event"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "payload"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "rawPayload"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object p0

    const-string p1, "<get-keys>(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 20
    invoke-virtual {p2, p1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const-string v1, "playerReady"

    .line 22
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "serviceUrl"

    .line 24
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "iceServersJson"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ltech/rabbit/r1launcher/wss/rtc/RTCNetworkManager;->handlePlayerReady(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "playerStatus"

    .line 27
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 29
    :try_start_0
    new-instance p1, Ltech/rabbit/r1launcher/wss/rtc/PlayerStatus;

    invoke-direct {p1}, Ltech/rabbit/r1launcher/wss/rtc/PlayerStatus;-><init>()V

    const-string v2, "playing"

    .line 30
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :goto_1
    invoke-virtual {p1, v2}, Ltech/rabbit/r1launcher/wss/rtc/PlayerStatus;->setPlaying(Z)V

    const-string v2, "playedSeconds"

    .line 31
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, ""

    if-nez v2, :cond_3

    move-object v2, v4

    :cond_3
    :try_start_1
    invoke-virtual {p1, v2}, Ltech/rabbit/r1launcher/wss/rtc/PlayerStatus;->setMatchingStartPlayingTime(Ljava/lang/String;)V

    const-string v2, "durationSeconds"

    .line 32
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Ltech/rabbit/r1launcher/wss/rtc/PlayerStatus;->setDurationSeconds(I)V

    const-string v2, "shuffle"

    .line 33
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    :goto_2
    invoke-virtual {p1, v3}, Ltech/rabbit/r1launcher/wss/rtc/PlayerStatus;->setShuffle(Z)V

    const-string v2, "repeatMode"

    .line 34
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    move-object v2, v4

    :cond_5
    invoke-virtual {p1, v2}, Ltech/rabbit/r1launcher/wss/rtc/PlayerStatus;->setRepeatMode(Ljava/lang/String;)V

    const-string v2, "trackName"

    .line 35
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    move-object v2, v4

    :cond_6
    invoke-virtual {p1, v2}, Ltech/rabbit/r1launcher/wss/rtc/PlayerStatus;->setTrackName(Ljava/lang/String;)V

    const-string v2, "trackSpotifyUri"

    .line 36
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_7

    move-object v2, v4

    :cond_7
    invoke-virtual {p1, v2}, Ltech/rabbit/r1launcher/wss/rtc/PlayerStatus;->setTrackSpotifyUri(Ljava/lang/String;)V

    const-string v2, "albumImageUrl"

    .line 37
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_8

    move-object v2, v4

    :cond_8
    invoke-virtual {p1, v2}, Ltech/rabbit/r1launcher/wss/rtc/PlayerStatus;->setAlbumImageUrl(Ljava/lang/String;)V

    const-string v2, "artistName"

    .line 38
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_3

    :cond_9
    move-object v4, v0

    :goto_3
    invoke-virtual {p1, v4}, Ltech/rabbit/r1launcher/wss/rtc/PlayerStatus;->setArtistName(Ljava/lang/String;)V

    .line 41
    invoke-static {p1}, Ltech/rabbit/r1launcher/wss/rtc/RTCNetworkManager;->setPlayStatus(Ltech/rabbit/r1launcher/wss/rtc/PlayerStatus;)V

    .line 42
    sget-object p1, Ltech/rabbit/r1launcher/wss/RabbitEngine;->INSTANCE:Ltech/rabbit/r1launcher/wss/RabbitEngine;

    invoke-virtual {p1, v1, p3}, Ltech/rabbit/r1launcher/wss/RabbitEngine;->sendMusicPlayerMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-static {}, Ltech/rabbit/r1launcher/wss/rtc/RTCNetworkManager;->checkChangeToPlay()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 45
    sget-object p1, Ltech/rabbit/r1launcher/rabbit/MusicOutTimeOp;->INSTANCE:Ltech/rabbit/r1launcher/rabbit/MusicOutTimeOp;

    invoke-virtual {p1}, Ltech/rabbit/r1launcher/rabbit/MusicOutTimeOp;->startTiming()V

    .line 47
    :cond_a
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "catched Exception : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "KotUtil"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_b
    const/4 p0, 0x1

    return p0
.end method

.method public onEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Z
    .locals 0

    .line 14
    invoke-static {p0, p1, p2, p3}, Ltech/rabbit/r1launcher/rabbit/event_handler/WebSocketEventHandler$DefaultImpls;->onEvent(Ltech/rabbit/r1launcher/rabbit/event_handler/WebSocketEventHandler;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
