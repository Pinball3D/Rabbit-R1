.class Ltech/rabbit/r1launcher/wss/rtc/RTCInstance$1;
.super Ljava/lang/Object;
.source "RTCInstance.java"

# interfaces
.implements Lorg/mediasoup/droid/RecvTransport$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;->createRecvTransport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lorg/mediasoup/droid/PeerConnection$Options;Ljava/lang/String;Ljava/lang/String;)Lorg/mediasoup/droid/RecvTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;


# direct methods
.method constructor <init>(Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance$1;->this$0:Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnect(Lorg/mediasoup/droid/Transport;Ljava/lang/String;)V
    .locals 1

    .line 127
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onConnect , dtlsParameters="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RTCInstance"

    invoke-static {v0, p1}, Ltech/rabbit/common/utils/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance$1;->this$0:Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;

    const-string v0, "Connecting"

    .line 128
    invoke-static {p1, v0}, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;->access$200(Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;Ljava/lang/String;)V

    iget-object p1, p0, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance$1;->this$0:Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;

    .line 129
    invoke-static {p1}, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;->access$300(Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance$1;->this$0:Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;

    .line 130
    invoke-static {p0}, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;->access$400(Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;)Ljava/lang/String;

    move-result-object p0

    .line 129
    invoke-static {p2, p1, p0}, Ltech/rabbit/r1launcher/wss/rtc/RTCNetworkManager;->handleConnectWebRtcTransport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onConnectionStateChange(Lorg/mediasoup/droid/Transport;Ljava/lang/String;)V
    .locals 1

    .line 135
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onConnectionStateChange: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RTCInstance"

    invoke-static {v0, p1}, Ltech/rabbit/common/utils/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance$1;->this$0:Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;

    .line 136
    invoke-static {p1, p2}, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;->access$200(Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;Ljava/lang/String;)V

    iget-object p0, p0, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance$1;->this$0:Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;

    .line 137
    invoke-static {p0, p2}, Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;->access$500(Ltech/rabbit/r1launcher/wss/rtc/RTCInstance;Ljava/lang/String;)V

    return-void
.end method
