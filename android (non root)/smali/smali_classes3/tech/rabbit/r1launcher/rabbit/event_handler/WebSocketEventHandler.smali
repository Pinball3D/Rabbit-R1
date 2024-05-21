.class public interface abstract Ltech/rabbit/r1launcher/rabbit/event_handler/WebSocketEventHandler;
.super Ljava/lang/Object;
.source "WebSocketEventHandler.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltech/rabbit/r1launcher/rabbit/event_handler/WebSocketEventHandler$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001J \u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0003H&J \u0010\u000c\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0003H\u0016R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\r"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/rabbit/event_handler/WebSocketEventHandler;",
        "",
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
        "onEvent",
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


# virtual methods
.method public abstract getInterestedIn()Ljava/lang/String;
.end method

.method public abstract handleEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Z
.end method

.method public abstract onEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Z
.end method
