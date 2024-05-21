.class Ltech/rabbit/r1launcher/wss/WssClient$1;
.super Lokhttp3/WebSocketListener;
.source "WssClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/rabbit/r1launcher/wss/WssClient;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltech/rabbit/r1launcher/wss/WssClient;


# direct methods
.method constructor <init>(Ltech/rabbit/r1launcher/wss/WssClient;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/wss/WssClient$1;->this$0:Ltech/rabbit/r1launcher/wss/WssClient;

    .line 50
    invoke-direct {p0}, Lokhttp3/WebSocketListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(Lokhttp3/WebSocket;ILjava/lang/String;)V
    .locals 2

    .line 92
    invoke-super {p0, p1, p2, p3}, Lokhttp3/WebSocketListener;->onClosed(Lokhttp3/WebSocket;ILjava/lang/String;)V

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onClosed code="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WssClient"

    invoke-static {v1, v0}, Ltech/rabbit/common/utils/RLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Ltech/rabbit/r1launcher/wss/WssClient$1;->this$0:Ltech/rabbit/r1launcher/wss/WssClient;

    .line 94
    sget-object v1, Ltech/rabbit/r1launcher/wss/WssClient$WssClientState;->CLOSED:Ltech/rabbit/r1launcher/wss/WssClient$WssClientState;

    iput-object v1, v0, Ltech/rabbit/r1launcher/wss/WssClient;->wssClientState:Ltech/rabbit/r1launcher/wss/WssClient$WssClientState;

    iget-object p0, p0, Ltech/rabbit/r1launcher/wss/WssClient$1;->this$0:Ltech/rabbit/r1launcher/wss/WssClient;

    .line 95
    invoke-static {p0}, Ltech/rabbit/r1launcher/wss/WssClient;->access$000(Ltech/rabbit/r1launcher/wss/WssClient;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/WebSocketListener;

    .line 96
    invoke-virtual {v0, p1, p2, p3}, Lokhttp3/WebSocketListener;->onClosed(Lokhttp3/WebSocket;ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onClosing(Lokhttp3/WebSocket;ILjava/lang/String;)V
    .locals 2

    .line 81
    invoke-super {p0, p1, p2, p3}, Lokhttp3/WebSocketListener;->onClosing(Lokhttp3/WebSocket;ILjava/lang/String;)V

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onClosing code="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WssClient"

    invoke-static {v1, v0}, Ltech/rabbit/common/utils/RLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Ltech/rabbit/r1launcher/wss/WssClient$1;->this$0:Ltech/rabbit/r1launcher/wss/WssClient;

    .line 83
    sget-object v1, Ltech/rabbit/r1launcher/wss/WssClient$WssClientState;->CLOSING:Ltech/rabbit/r1launcher/wss/WssClient$WssClientState;

    iput-object v1, v0, Ltech/rabbit/r1launcher/wss/WssClient;->wssClientState:Ltech/rabbit/r1launcher/wss/WssClient$WssClientState;

    iget-object p0, p0, Ltech/rabbit/r1launcher/wss/WssClient$1;->this$0:Ltech/rabbit/r1launcher/wss/WssClient;

    .line 84
    invoke-static {p0}, Ltech/rabbit/r1launcher/wss/WssClient;->access$000(Ltech/rabbit/r1launcher/wss/WssClient;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/WebSocketListener;

    .line 85
    invoke-virtual {v0, p1, p2, p3}, Lokhttp3/WebSocketListener;->onClosing(Lokhttp3/WebSocket;ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onFailure(Lokhttp3/WebSocket;Ljava/lang/Throwable;Lokhttp3/Response;)V
    .locals 2

    .line 101
    invoke-super {p0, p1, p2, p3}, Lokhttp3/WebSocketListener;->onFailure(Lokhttp3/WebSocket;Ljava/lang/Throwable;Lokhttp3/Response;)V

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onFailure response="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WssClient"

    invoke-static {v1, v0, p2}, Ltech/rabbit/common/utils/RLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Ltech/rabbit/r1launcher/wss/WssClient$1;->this$0:Ltech/rabbit/r1launcher/wss/WssClient;

    .line 103
    sget-object v1, Ltech/rabbit/r1launcher/wss/WssClient$WssClientState;->Failure:Ltech/rabbit/r1launcher/wss/WssClient$WssClientState;

    iput-object v1, v0, Ltech/rabbit/r1launcher/wss/WssClient;->wssClientState:Ltech/rabbit/r1launcher/wss/WssClient$WssClientState;

    iget-object p0, p0, Ltech/rabbit/r1launcher/wss/WssClient$1;->this$0:Ltech/rabbit/r1launcher/wss/WssClient;

    .line 104
    invoke-static {p0}, Ltech/rabbit/r1launcher/wss/WssClient;->access$000(Ltech/rabbit/r1launcher/wss/WssClient;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/WebSocketListener;

    .line 105
    invoke-virtual {v0, p1, p2, p3}, Lokhttp3/WebSocketListener;->onFailure(Lokhttp3/WebSocket;Ljava/lang/Throwable;Lokhttp3/Response;)V

    goto :goto_0

    .line 107
    :cond_0
    invoke-static {}, Ltech/rabbit/r1launcher/wss/reconnct/WssStateMonitor;->getInstance()Ltech/rabbit/r1launcher/wss/reconnct/WssStateMonitor;

    move-result-object p0

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/wss/reconnct/WssStateMonitor;->startConnect()V

    return-void
.end method

.method public onMessage(Lokhttp3/WebSocket;Ljava/lang/String;)V
    .locals 2

    .line 63
    invoke-super {p0, p1, p2}, Lokhttp3/WebSocketListener;->onMessage(Lokhttp3/WebSocket;Ljava/lang/String;)V

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onMessage text:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WssClient"

    invoke-static {v1, v0}, Ltech/rabbit/common/utils/RLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Ltech/rabbit/r1launcher/wss/WssClient$1;->this$0:Ltech/rabbit/r1launcher/wss/WssClient;

    .line 65
    invoke-static {p0}, Ltech/rabbit/r1launcher/wss/WssClient;->access$000(Ltech/rabbit/r1launcher/wss/WssClient;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/WebSocketListener;

    .line 66
    invoke-virtual {v0, p1, p2}, Lokhttp3/WebSocketListener;->onMessage(Lokhttp3/WebSocket;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onMessage(Lokhttp3/WebSocket;Lokio/ByteString;)V
    .locals 2

    .line 72
    invoke-super {p0, p1, p2}, Lokhttp3/WebSocketListener;->onMessage(Lokhttp3/WebSocket;Lokio/ByteString;)V

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onMessage ByteString.size:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lokio/ByteString;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WssClient"

    invoke-static {v1, v0}, Ltech/rabbit/common/utils/RLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Ltech/rabbit/r1launcher/wss/WssClient$1;->this$0:Ltech/rabbit/r1launcher/wss/WssClient;

    .line 74
    invoke-static {p0}, Ltech/rabbit/r1launcher/wss/WssClient;->access$000(Ltech/rabbit/r1launcher/wss/WssClient;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/WebSocketListener;

    .line 75
    invoke-virtual {v0, p1, p2}, Lokhttp3/WebSocketListener;->onMessage(Lokhttp3/WebSocket;Lokio/ByteString;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onOpen(Lokhttp3/WebSocket;Lokhttp3/Response;)V
    .locals 2

    .line 53
    invoke-super {p0, p1, p2}, Lokhttp3/WebSocketListener;->onOpen(Lokhttp3/WebSocket;Lokhttp3/Response;)V

    iget-object v0, p0, Ltech/rabbit/r1launcher/wss/WssClient$1;->this$0:Ltech/rabbit/r1launcher/wss/WssClient;

    .line 54
    sget-object v1, Ltech/rabbit/r1launcher/wss/WssClient$WssClientState;->CONNECTED:Ltech/rabbit/r1launcher/wss/WssClient$WssClientState;

    iput-object v1, v0, Ltech/rabbit/r1launcher/wss/WssClient;->wssClientState:Ltech/rabbit/r1launcher/wss/WssClient$WssClientState;

    iget-object v0, p0, Ltech/rabbit/r1launcher/wss/WssClient$1;->this$0:Ltech/rabbit/r1launcher/wss/WssClient;

    .line 55
    invoke-static {v0}, Ltech/rabbit/r1launcher/wss/WssClient;->access$000(Ltech/rabbit/r1launcher/wss/WssClient;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/WebSocketListener;

    .line 56
    invoke-virtual {v1, p1, p2}, Lokhttp3/WebSocketListener;->onOpen(Lokhttp3/WebSocket;Lokhttp3/Response;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Ltech/rabbit/r1launcher/wss/WssClient$1;->this$0:Ltech/rabbit/r1launcher/wss/WssClient;

    .line 58
    invoke-static {p0, p1}, Ltech/rabbit/r1launcher/wss/WssClient;->access$100(Ltech/rabbit/r1launcher/wss/WssClient;Lokhttp3/WebSocket;)V

    return-void
.end method
