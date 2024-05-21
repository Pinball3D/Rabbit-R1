.class public final Ltech/rabbit/r1launcher/wss/RabbitWebSocketListener;
.super Ltech/rabbit/r1launcher/wss/RWebSocketListener;
.source "RabbitWebSocketListener.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016J\u0008\u0010\u000b\u001a\u00020\u0004H\u0016J\"\u0010\u000c\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016J\u0018\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\nH\u0016J\u0018\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0018\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0008\u0010\u0016\u001a\u00020\u0004H\u0002\u00a8\u0006\u0017"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/wss/RabbitWebSocketListener;",
        "Ltech/rabbit/r1launcher/wss/RWebSocketListener;",
        "()V",
        "onClosed",
        "",
        "webSocket",
        "Lokhttp3/WebSocket;",
        "code",
        "",
        "reason",
        "",
        "onConnecting",
        "onFailure",
        "t",
        "",
        "response",
        "Lokhttp3/Response;",
        "onMessage",
        "text",
        "bytes",
        "Lokio/ByteString;",
        "onOpen",
        "release",
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

.field public static final INSTANCE:Ltech/rabbit/r1launcher/wss/RabbitWebSocketListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ltech/rabbit/r1launcher/wss/RabbitWebSocketListener;

    invoke-direct {v0}, Ltech/rabbit/r1launcher/wss/RabbitWebSocketListener;-><init>()V

    sput-object v0, Ltech/rabbit/r1launcher/wss/RabbitWebSocketListener;->INSTANCE:Ltech/rabbit/r1launcher/wss/RabbitWebSocketListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ltech/rabbit/r1launcher/wss/RWebSocketListener;-><init>()V

    return-void
.end method

.method private final release()V
    .locals 0

    .line 39
    sget-object p0, Ltech/rabbit/r1launcher/wss/RabbitEngine;->INSTANCE:Ltech/rabbit/r1launcher/wss/RabbitEngine;

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/wss/RabbitEngine;->clearAllTask()V

    .line 40
    sget-object p0, Ltech/rabbit/r1launcher/wss/RabbitEngine;->INSTANCE:Ltech/rabbit/r1launcher/wss/RabbitEngine;

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/wss/RabbitEngine;->clearCover()V

    .line 41
    invoke-static {}, Ltech/rabbit/r1launcher/wss/rtc/RTCNetworkManager;->pausePlay()V

    return-void
.end method


# virtual methods
.method public onClosed(Lokhttp3/WebSocket;ILjava/lang/String;)V
    .locals 0

    const-string p2, "webSocket"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "reason"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    sget-object p1, Ltech/rabbit/r1launcher/wss/RabbitEngine;->INSTANCE:Ltech/rabbit/r1launcher/wss/RabbitEngine;

    sget-object p2, Ltech/rabbit/r1launcher/wss/LoginState;->Disconnected:Ltech/rabbit/r1launcher/wss/LoginState;

    invoke-virtual {p1, p2}, Ltech/rabbit/r1launcher/wss/RabbitEngine;->sendLoginState(Ltech/rabbit/r1launcher/wss/LoginState;)V

    .line 30
    invoke-direct {p0}, Ltech/rabbit/r1launcher/wss/RabbitWebSocketListener;->release()V

    return-void
.end method

.method public onConnecting()V
    .locals 1

    .line 21
    sget-object p0, Ltech/rabbit/r1launcher/wss/RabbitEngine;->INSTANCE:Ltech/rabbit/r1launcher/wss/RabbitEngine;

    sget-object v0, Ltech/rabbit/r1launcher/wss/LoginState;->Connecting:Ltech/rabbit/r1launcher/wss/LoginState;

    invoke-virtual {p0, v0}, Ltech/rabbit/r1launcher/wss/RabbitEngine;->sendLoginState(Ltech/rabbit/r1launcher/wss/LoginState;)V

    return-void
.end method

.method public onFailure(Lokhttp3/WebSocket;Ljava/lang/Throwable;Lokhttp3/Response;)V
    .locals 0

    const-string p3, "webSocket"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "t"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    sget-object p1, Ltech/rabbit/r1launcher/wss/RabbitEngine;->INSTANCE:Ltech/rabbit/r1launcher/wss/RabbitEngine;

    sget-object p2, Ltech/rabbit/r1launcher/wss/LoginState;->Disconnected:Ltech/rabbit/r1launcher/wss/LoginState;

    invoke-virtual {p1, p2}, Ltech/rabbit/r1launcher/wss/RabbitEngine;->sendLoginState(Ltech/rabbit/r1launcher/wss/LoginState;)V

    .line 35
    invoke-direct {p0}, Ltech/rabbit/r1launcher/wss/RabbitWebSocketListener;->release()V

    return-void
.end method

.method public onMessage(Lokhttp3/WebSocket;Ljava/lang/String;)V
    .locals 0

    const-string p0, "webSocket"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "text"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    sget-object p0, Ltech/rabbit/r1launcher/rabbit/RabbitServiceEventProcessor;->INSTANCE:Ltech/rabbit/r1launcher/rabbit/RabbitServiceEventProcessor;

    invoke-virtual {p0, p2}, Ltech/rabbit/r1launcher/rabbit/RabbitServiceEventProcessor;->onEvent(Ljava/lang/String;)V

    return-void
.end method

.method public onMessage(Lokhttp3/WebSocket;Lokio/ByteString;)V
    .locals 0

    const-string p0, "webSocket"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "bytes"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onOpen(Lokhttp3/WebSocket;Lokhttp3/Response;)V
    .locals 0

    const-string p0, "webSocket"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "response"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    sget-object p0, Ltech/rabbit/r1launcher/wss/RabbitEngine;->INSTANCE:Ltech/rabbit/r1launcher/wss/RabbitEngine;

    sget-object p1, Ltech/rabbit/r1launcher/wss/LoginState;->Connected:Ltech/rabbit/r1launcher/wss/LoginState;

    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/wss/RabbitEngine;->sendLoginState(Ltech/rabbit/r1launcher/wss/LoginState;)V

    return-void
.end method
