.class public final Ltech/rabbit/r1launcher/wss/WebSocketManager;
.super Ljava/lang/Object;
.source "WebSocketManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bJ\u0006\u0010\u001c\u001a\u00020\u0019J\u0006\u0010\u001d\u001a\u00020\u0019J\u000e\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u0004J\u000e\u0010\u001e\u001a\u00020\u001f2\u0006\u0010!\u001a\u00020\"R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001b\u0010\t\u001a\u00020\n8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\u000f\u001a\u00020\u0004X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0006\"\u0004\u0008\u0011\u0010\u0008R\u001a\u0010\u0012\u001a\u00020\u0004X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0006\"\u0004\u0008\u0014\u0010\u0008R\u001a\u0010\u0015\u001a\u00020\u0004X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0006\"\u0004\u0008\u0017\u0010\u0008\u00a8\u0006#"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/wss/WebSocketManager;",
        "",
        "()V",
        "appVersion",
        "",
        "getAppVersion",
        "()Ljava/lang/String;",
        "setAppVersion",
        "(Ljava/lang/String;)V",
        "client",
        "Ltech/rabbit/r1launcher/wss/WssClient;",
        "getClient",
        "()Ltech/rabbit/r1launcher/wss/WssClient;",
        "client$delegate",
        "Lkotlin/Lazy;",
        "deviceId",
        "getDeviceId",
        "setDeviceId",
        "osVersion",
        "getOsVersion",
        "setOsVersion",
        "rabbitServiceUrl",
        "getRabbitServiceUrl",
        "setRabbitServiceUrl",
        "addMessageListener",
        "",
        "listener",
        "Ltech/rabbit/r1launcher/wss/RWebSocketListener;",
        "connect",
        "disconnect",
        "send",
        "",
        "stringData",
        "data",
        "Lokio/ByteString;",
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
.field public static final INSTANCE:Ltech/rabbit/r1launcher/wss/WebSocketManager;

.field public static appVersion:Ljava/lang/String;

.field private static final client$delegate:Lkotlin/Lazy;

.field public static deviceId:Ljava/lang/String;

.field public static osVersion:Ljava/lang/String;

.field public static rabbitServiceUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ltech/rabbit/r1launcher/wss/WebSocketManager;

    invoke-direct {v0}, Ltech/rabbit/r1launcher/wss/WebSocketManager;-><init>()V

    sput-object v0, Ltech/rabbit/r1launcher/wss/WebSocketManager;->INSTANCE:Ltech/rabbit/r1launcher/wss/WebSocketManager;

    .line 7
    sget-object v0, Ltech/rabbit/r1launcher/wss/WebSocketManager$client$2;->INSTANCE:Ltech/rabbit/r1launcher/wss/WebSocketManager$client$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Ltech/rabbit/r1launcher/wss/WebSocketManager;->client$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getClient()Ltech/rabbit/r1launcher/wss/WssClient;
    .locals 0

    sget-object p0, Ltech/rabbit/r1launcher/wss/WebSocketManager;->client$delegate:Lkotlin/Lazy;

    .line 7
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ltech/rabbit/r1launcher/wss/WssClient;

    return-object p0
.end method


# virtual methods
.method public final addMessageListener(Ltech/rabbit/r1launcher/wss/RWebSocketListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ltech/rabbit/r1launcher/wss/WebSocketManager;->getClient()Ltech/rabbit/r1launcher/wss/WssClient;

    move-result-object p0

    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/wss/WssClient;->addListener(Ltech/rabbit/r1launcher/wss/RWebSocketListener;)V

    return-void
.end method

.method public final connect()V
    .locals 4

    .line 15
    invoke-direct {p0}, Ltech/rabbit/r1launcher/wss/WebSocketManager;->getClient()Ltech/rabbit/r1launcher/wss/WssClient;

    move-result-object v0

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/wss/WebSocketManager;->getRabbitServiceUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/wss/WebSocketManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/wss/WebSocketManager;->getAppVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/wss/WebSocketManager;->getOsVersion()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, v2, v3, p0}, Ltech/rabbit/r1launcher/wss/WssClient;->connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final disconnect()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ltech/rabbit/r1launcher/wss/WebSocketManager;->getClient()Ltech/rabbit/r1launcher/wss/WssClient;

    move-result-object p0

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/wss/WssClient;->disconnect()V

    return-void
.end method

.method public final getAppVersion()Ljava/lang/String;
    .locals 0

    sget-object p0, Ltech/rabbit/r1launcher/wss/WebSocketManager;->appVersion:Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "appVersion"

    .line 11
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getDeviceId()Ljava/lang/String;
    .locals 0

    sget-object p0, Ltech/rabbit/r1launcher/wss/WebSocketManager;->deviceId:Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "deviceId"

    .line 10
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getOsVersion()Ljava/lang/String;
    .locals 0

    sget-object p0, Ltech/rabbit/r1launcher/wss/WebSocketManager;->osVersion:Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "osVersion"

    .line 12
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getRabbitServiceUrl()Ljava/lang/String;
    .locals 0

    sget-object p0, Ltech/rabbit/r1launcher/wss/WebSocketManager;->rabbitServiceUrl:Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "rabbitServiceUrl"

    .line 9
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final send(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "stringData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ltech/rabbit/r1launcher/wss/WebSocketManager;->getClient()Ltech/rabbit/r1launcher/wss/WssClient;

    move-result-object p0

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/wss/WssClient;->getWebSocket()Lokhttp3/WebSocket;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lokhttp3/WebSocket;->send(Ljava/lang/String;)Z

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    move v0, p1

    :cond_0
    return v0
.end method

.method public final send(Lokio/ByteString;)Z
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ltech/rabbit/r1launcher/wss/WebSocketManager;->getClient()Ltech/rabbit/r1launcher/wss/WssClient;

    move-result-object p0

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/wss/WssClient;->getWebSocket()Lokhttp3/WebSocket;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lokhttp3/WebSocket;->send(Lokio/ByteString;)Z

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    move v0, p1

    :cond_0
    return v0
.end method

.method public final setAppVersion(Ljava/lang/String;)V
    .locals 0

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Ltech/rabbit/r1launcher/wss/WebSocketManager;->appVersion:Ljava/lang/String;

    return-void
.end method

.method public final setDeviceId(Ljava/lang/String;)V
    .locals 0

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Ltech/rabbit/r1launcher/wss/WebSocketManager;->deviceId:Ljava/lang/String;

    return-void
.end method

.method public final setOsVersion(Ljava/lang/String;)V
    .locals 0

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Ltech/rabbit/r1launcher/wss/WebSocketManager;->osVersion:Ljava/lang/String;

    return-void
.end method

.method public final setRabbitServiceUrl(Ljava/lang/String;)V
    .locals 0

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Ltech/rabbit/r1launcher/wss/WebSocketManager;->rabbitServiceUrl:Ljava/lang/String;

    return-void
.end method
