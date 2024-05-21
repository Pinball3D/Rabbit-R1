.class public final Ltech/rabbit/r1launcher/rabbit/event_handler/DeviceStateEventHandler;
.super Ljava/lang/Object;
.source "DeviceStateEventHandler.kt"

# interfaces
.implements Ltech/rabbit/r1launcher/rabbit/event_handler/WebSocketEventHandler;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDeviceStateEventHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeviceStateEventHandler.kt\ntech/rabbit/r1launcher/rabbit/event_handler/DeviceStateEventHandler\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,58:1\n1855#2,2:59\n*S KotlinDebug\n*F\n+ 1 DeviceStateEventHandler.kt\ntech/rabbit/r1launcher/rabbit/event_handler/DeviceStateEventHandler\n*L\n51#1:59,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0007\u001a\u00020\u0008H\u0003J \u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0004H\u0016R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u000f"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/rabbit/event_handler/DeviceStateEventHandler;",
        "Ltech/rabbit/r1launcher/rabbit/event_handler/WebSocketEventHandler;",
        "()V",
        "interestedIn",
        "",
        "getInterestedIn",
        "()Ljava/lang/String;",
        "disconnectAndRemoveAllWifi",
        "",
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
.method public static synthetic $r8$lambda$02NmO0SStp5rqnkozvcmIiMNlP4(Ltech/rabbit/r1launcher/rabbit/event_handler/DeviceStateEventHandler;)V
    .locals 0

    invoke-static {p0}, Ltech/rabbit/r1launcher/rabbit/event_handler/DeviceStateEventHandler;->handleEvent$lambda$0(Ltech/rabbit/r1launcher/rabbit/event_handler/DeviceStateEventHandler;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    sget-object v0, Ltech/rabbit/r1launcher/constant/Service;->DEVICE_STATE:Ltech/rabbit/r1launcher/constant/Service;

    invoke-virtual {v0}, Ltech/rabbit/r1launcher/constant/Service;->getTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltech/rabbit/r1launcher/rabbit/event_handler/DeviceStateEventHandler;->interestedIn:Ljava/lang/String;

    return-void
.end method

.method private final disconnectAndRemoveAllWifi()V
    .locals 2

    .line 48
    sget-object p0, Ltech/rabbit/common/utils/RabbitCommon;->INSTANCE:Ltech/rabbit/common/utils/RabbitCommon;

    invoke-virtual {p0}, Ltech/rabbit/common/utils/RabbitCommon;->getSContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/net/wifi/WifiManager;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    .line 50
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 51
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Iterable;

    .line 59
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 52
    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    goto :goto_1

    .line 54
    :cond_1
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    :cond_2
    return-void
.end method

.method private static final handleEvent$lambda$0(Ltech/rabbit/r1launcher/rabbit/event_handler/DeviceStateEventHandler;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    sget-object v0, Ltech/rabbit/common/utils/SPUtils;->INSTANCE:Ltech/rabbit/common/utils/SPUtils;

    invoke-virtual {v0}, Ltech/rabbit/common/utils/SPUtils;->clearCommit()V

    .line 32
    invoke-direct {p0}, Ltech/rabbit/r1launcher/rabbit/event_handler/DeviceStateEventHandler;->disconnectAndRemoveAllWifi()V

    const/4 p0, 0x0

    .line 33
    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "System.exit returned normally, while it was supposed to halt JVM."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getInterestedIn()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/rabbit/event_handler/DeviceStateEventHandler;->interestedIn:Ljava/lang/String;

    return-object p0
.end method

.method public handleEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "payload"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "rawPayload"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object p1

    const-string p3, "<get-keys>(...)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "verification"

    .line 27
    invoke-interface {p1, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {p2, p3}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    .line 29
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    .line 30
    sget-object p1, LUpdateHelper;->INSTANCE:LUpdateHelper;

    new-instance p2, Ltech/rabbit/r1launcher/rabbit/event_handler/DeviceStateEventHandler$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Ltech/rabbit/r1launcher/rabbit/event_handler/DeviceStateEventHandler$$ExternalSyntheticLambda0;-><init>(Ltech/rabbit/r1launcher/rabbit/event_handler/DeviceStateEventHandler;)V

    invoke-virtual {p1, p2}, LUpdateHelper;->executeIfNoUpdate(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const-string p0, "device"

    .line 36
    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 37
    invoke-static {p2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 38
    invoke-static {p0}, Ltech/rabbit/r1launcher/wss/Constant;->saveLostMode(Ljava/lang/String;)V

    .line 39
    sget-object p1, Ltech/rabbit/r1launcher/wss/RabbitEngine;->INSTANCE:Ltech/rabbit/r1launcher/wss/RabbitEngine;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, p0}, Ltech/rabbit/r1launcher/wss/RabbitEngine;->sendDeviceLostEvent(Ljava/lang/String;)V

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public onEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Z
    .locals 0

    .line 22
    invoke-static {p0, p1, p2, p3}, Ltech/rabbit/r1launcher/rabbit/event_handler/WebSocketEventHandler$DefaultImpls;->onEvent(Ltech/rabbit/r1launcher/rabbit/event_handler/WebSocketEventHandler;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
