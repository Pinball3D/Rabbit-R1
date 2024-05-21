.class public final Ltech/rabbit/r1launcher/rabbit/event_handler/KernelEventHandler;
.super Ljava/lang/Object;
.source "KernelEventHandler.kt"

# interfaces
.implements Ltech/rabbit/r1launcher/rabbit/event_handler/WebSocketEventHandler;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J \u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0004H\u0016R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\r"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/rabbit/event_handler/KernelEventHandler;",
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

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    sget-object v0, Ltech/rabbit/r1launcher/constant/Service;->KERNEL:Ltech/rabbit/r1launcher/constant/Service;

    invoke-virtual {v0}, Ltech/rabbit/r1launcher/constant/Service;->getTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltech/rabbit/r1launcher/rabbit/event_handler/KernelEventHandler;->interestedIn:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getInterestedIn()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/rabbit/event_handler/KernelEventHandler;->interestedIn:Ljava/lang/String;

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

    const-string p0, "assistantResponse"

    .line 20
    invoke-virtual {p2, p0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    if-eqz p0, :cond_0

    const-string p2, "AssistantResponse"

    .line 21
    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    :cond_0
    const-string p0, "assistantResponseDevice"

    .line 25
    invoke-virtual {p2, p0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p0

    const-string p3, ""

    if-eqz p0, :cond_3

    const-string p2, "audio"

    .line 26
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 27
    invoke-static {p2, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p2

    .line 28
    sget-object v0, Ltech/rabbit/r1launcher/rabbit/TTSPlayer;->INSTANCE:Ltech/rabbit/r1launcher/rabbit/TTSPlayer;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v1, "text"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object p3, p0

    :goto_0
    invoke-virtual {v0, p2, p3}, Ltech/rabbit/r1launcher/rabbit/TTSPlayer;->play([BLjava/lang/String;)V

    :cond_2
    return p1

    :cond_3
    const-string p0, "serpModal"

    .line 32
    invoke-virtual {p2, p0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "toJSONString(...)"

    if-eqz v0, :cond_9

    .line 33
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p2

    const/4 p3, 0x0

    if-eqz p2, :cond_4

    const-string v0, "answer_box"

    .line 34
    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, p3

    .line 35
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "answerBox.type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "type"

    if-eqz v0, :cond_5

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_5
    move-object v4, p3

    :goto_2
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_6

    .line 36
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_6
    const-string p0, "finance_results"

    .line 37
    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 38
    sget-object p0, Ltech/rabbit/r1launcher/wss/RabbitEngine;->INSTANCE:Ltech/rabbit/r1launcher/wss/RabbitEngine;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p2}, Ltech/rabbit/r1launcher/rabbit/event_handler/models/SearchStockKt;->generateStockInfo(Lcom/alibaba/fastjson/JSONObject;)Ltech/rabbit/r1launcher/rabbit/event_handler/models/SearchStockInfo;

    move-result-object p2

    invoke-static {p2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ltech/rabbit/r1launcher/wss/RabbitEngine;->sendStockShow(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    const-string p0, "weather_result"

    .line 40
    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 41
    sget-object p0, Ltech/rabbit/r1launcher/wss/RabbitEngine;->INSTANCE:Ltech/rabbit/r1launcher/wss/RabbitEngine;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p2}, Ltech/rabbit/r1launcher/rabbit/event_handler/models/SearchWeatherKt;->generateWeatherInfo(Lcom/alibaba/fastjson/JSONObject;)Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ltech/rabbit/r1launcher/wss/RabbitEngine;->sendWeatherShow(Ljava/lang/String;)V

    :cond_8
    :goto_3
    return p1

    :cond_9
    const-string p0, "rabbitThinking"

    .line 57
    invoke-virtual {p2, p0}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_a

    .line 59
    sget-object p0, Ltech/rabbit/r1launcher/wss/RabbitEngine;->INSTANCE:Ltech/rabbit/r1launcher/wss/RabbitEngine;

    const-string p2, "thinking"

    invoke-virtual {p0, p2}, Ltech/rabbit/r1launcher/wss/RabbitEngine;->sendRabbitState(Ljava/lang/String;)V

    goto :goto_4

    .line 61
    :cond_a
    sget-object p0, Ltech/rabbit/r1launcher/wss/RabbitEngine;->INSTANCE:Ltech/rabbit/r1launcher/wss/RabbitEngine;

    const-string p2, "thinkEnd"

    invoke-virtual {p0, p2}, Ltech/rabbit/r1launcher/wss/RabbitEngine;->sendRabbitState(Ljava/lang/String;)V

    :goto_4
    return p1

    :cond_b
    const-string p0, "openCard"

    .line 65
    invoke-virtual {p2, p0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_e

    .line 66
    sget-object p2, Ltech/rabbit/r1launcher/constant/Service;->UBER:Ltech/rabbit/r1launcher/constant/Service;

    invoke-virtual {p2}, Ltech/rabbit/r1launcher/constant/Service;->getTag()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 67
    sget-object p0, Ltech/rabbit/r1launcher/wss/RabbitEngine;->INSTANCE:Ltech/rabbit/r1launcher/wss/RabbitEngine;

    const-string p2, "rideShare"

    invoke-virtual {p0, p2}, Ltech/rabbit/r1launcher/wss/RabbitEngine;->sendRabbitAddressPageShow(Ljava/lang/String;)V

    goto :goto_5

    .line 68
    :cond_c
    sget-object p2, Ltech/rabbit/r1launcher/constant/Service;->SPOTIFY:Ltech/rabbit/r1launcher/constant/Service;

    invoke-virtual {p2}, Ltech/rabbit/r1launcher/constant/Service;->getTag()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    .line 69
    sget-object p0, Ltech/rabbit/r1launcher/wss/RabbitEngine;->INSTANCE:Ltech/rabbit/r1launcher/wss/RabbitEngine;

    const-string p2, "userRequestedMusic"

    invoke-virtual {p0, p2, p3}, Ltech/rabbit/r1launcher/wss/RabbitEngine;->sendMusicPlayerMessage(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    :goto_5
    return p1

    :cond_e
    const-string p0, "closeCard"

    .line 73
    invoke-virtual {p2, p0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_14

    .line 75
    sget-object p2, Ltech/rabbit/r1launcher/constant/Service;->UBER:Ltech/rabbit/r1launcher/constant/Service;

    invoke-virtual {p2}, Ltech/rabbit/r1launcher/constant/Service;->getTag()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_f

    sget-object p0, Ltech/rabbit/r1launcher/wss/RabbitEngine;->INSTANCE:Ltech/rabbit/r1launcher/wss/RabbitEngine;

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/wss/RabbitEngine;->sendRideShareCardClose()V

    goto :goto_6

    .line 76
    :cond_f
    sget-object p2, Ltech/rabbit/r1launcher/constant/Service;->DOORDASH:Ltech/rabbit/r1launcher/constant/Service;

    invoke-virtual {p2}, Ltech/rabbit/r1launcher/constant/Service;->getTag()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_10

    sget-object p0, Ltech/rabbit/r1launcher/wss/RabbitEngine;->INSTANCE:Ltech/rabbit/r1launcher/wss/RabbitEngine;

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/wss/RabbitEngine;->sendFoodDeliveryCardClose()V

    goto :goto_6

    .line 77
    :cond_10
    sget-object p2, Ltech/rabbit/r1launcher/constant/Service;->FOOD_DELIVERY:Ltech/rabbit/r1launcher/constant/Service;

    invoke-virtual {p2}, Ltech/rabbit/r1launcher/constant/Service;->getTag()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_11

    sget-object p0, Ltech/rabbit/r1launcher/wss/RabbitEngine;->INSTANCE:Ltech/rabbit/r1launcher/wss/RabbitEngine;

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/wss/RabbitEngine;->sendFoodDeliveryCardClose()V

    goto :goto_6

    .line 78
    :cond_11
    sget-object p2, Ltech/rabbit/r1launcher/constant/Service;->SPOTIFY:Ltech/rabbit/r1launcher/constant/Service;

    invoke-virtual {p2}, Ltech/rabbit/r1launcher/constant/Service;->getTag()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_12

    sget-object p0, Ltech/rabbit/r1launcher/wss/RabbitEngine;->INSTANCE:Ltech/rabbit/r1launcher/wss/RabbitEngine;

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/wss/RabbitEngine;->sendMusicCardClose()V

    goto :goto_6

    .line 79
    :cond_12
    sget-object p2, Ltech/rabbit/r1launcher/constant/Service;->VISION:Ltech/rabbit/r1launcher/constant/Service;

    invoke-virtual {p2}, Ltech/rabbit/r1launcher/constant/Service;->getTag()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_13

    sget-object p0, Ltech/rabbit/r1launcher/wss/RabbitEngine;->INSTANCE:Ltech/rabbit/r1launcher/wss/RabbitEngine;

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/wss/RabbitEngine;->sendVisionCardClose()V

    goto :goto_6

    .line 80
    :cond_13
    sget-object p0, Ltech/rabbit/r1launcher/wss/RabbitEngine;->INSTANCE:Ltech/rabbit/r1launcher/wss/RabbitEngine;

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/wss/RabbitEngine;->clearAllTask()V

    :goto_6
    return p1

    :cond_14
    const-string p0, "rabbitStatus"

    .line 84
    invoke-virtual {p2, p0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_18

    .line 85
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p2

    const p3, -0x15d3e19

    if-eq p2, p3, :cond_17

    const p3, 0x300c5e

    if-eq p2, p3, :cond_16

    const p3, 0x313fd4

    if-eq p2, p3, :cond_15

    goto :goto_8

    :cond_15
    const-string p2, "idle"

    :goto_7
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_16
    const-string p2, "food"

    goto :goto_7

    :cond_17
    const-string p2, "rideshare"

    goto :goto_7

    :goto_8
    return p1

    :cond_18
    const-string p0, "travelPlan"

    .line 95
    invoke-virtual {p2, p0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_19

    .line 96
    sget-object p3, Ltech/rabbit/r1launcher/wss/RabbitEngine;->INSTANCE:Ltech/rabbit/r1launcher/wss/RabbitEngine;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Ltech/rabbit/r1launcher/wss/RabbitEngine;->sendManualTask(Ljava/lang/String;)V

    :cond_19
    const-string p0, "stateInfo"

    .line 99
    invoke-virtual {p2, p0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1a

    .line 100
    sget-object p3, Ltech/rabbit/r1launcher/wss/RabbitEngine;->INSTANCE:Ltech/rabbit/r1launcher/wss/RabbitEngine;

    invoke-virtual {p3, p0}, Ltech/rabbit/r1launcher/wss/RabbitEngine;->sendServerStateInfo(Ljava/lang/String;)V

    :cond_1a
    const-string p0, "requestGPS"

    .line 103
    invoke-virtual {p2, p0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1b

    .line 104
    sget-object p0, Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;->INSTANCE:Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/geoLocation/GeoLocationManager;->requestLocationInstantly()V

    :cond_1b
    return p1
.end method

.method public onEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Z
    .locals 0

    .line 16
    invoke-static {p0, p1, p2, p3}, Ltech/rabbit/r1launcher/rabbit/event_handler/WebSocketEventHandler$DefaultImpls;->onEvent(Ltech/rabbit/r1launcher/rabbit/event_handler/WebSocketEventHandler;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
