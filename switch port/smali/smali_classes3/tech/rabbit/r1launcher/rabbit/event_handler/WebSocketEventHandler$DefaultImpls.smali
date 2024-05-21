.class public final Ltech/rabbit/r1launcher/rabbit/event_handler/WebSocketEventHandler$DefaultImpls;
.super Ljava/lang/Object;
.source "WebSocketEventHandler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltech/rabbit/r1launcher/rabbit/event_handler/WebSocketEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static onEvent(Ltech/rabbit/r1launcher/rabbit/event_handler/WebSocketEventHandler;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payload"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rawPayload"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-interface {p0}, Ltech/rabbit/r1launcher/rabbit/event_handler/WebSocketEventHandler;->getInterestedIn()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Ltech/rabbit/r1launcher/rabbit/event_handler/WebSocketEventHandler;->handleEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
