.class Lorg/webrtc/NetworkMonitor$2;
.super Ljava/lang/Object;
.source "NetworkMonitor.java"

# interfaces
.implements Lorg/webrtc/NetworkChangeDetector$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/NetworkMonitor;->createNetworkChangeDetector(Landroid/content/Context;)Lorg/webrtc/NetworkChangeDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/NetworkMonitor;


# direct methods
.method constructor <init>(Lorg/webrtc/NetworkMonitor;)V
    .locals 0

    iput-object p1, p0, Lorg/webrtc/NetworkMonitor$2;->this$0:Lorg/webrtc/NetworkMonitor;

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionTypeChanged(Lorg/webrtc/NetworkChangeDetector$ConnectionType;)V
    .locals 0

    iget-object p0, p0, Lorg/webrtc/NetworkMonitor$2;->this$0:Lorg/webrtc/NetworkMonitor;

    .line 184
    invoke-static {p0, p1}, Lorg/webrtc/NetworkMonitor;->access$100(Lorg/webrtc/NetworkMonitor;Lorg/webrtc/NetworkChangeDetector$ConnectionType;)V

    return-void
.end method

.method public onNetworkConnect(Lorg/webrtc/NetworkChangeDetector$NetworkInformation;)V
    .locals 0

    iget-object p0, p0, Lorg/webrtc/NetworkMonitor$2;->this$0:Lorg/webrtc/NetworkMonitor;

    .line 189
    invoke-static {p0, p1}, Lorg/webrtc/NetworkMonitor;->access$200(Lorg/webrtc/NetworkMonitor;Lorg/webrtc/NetworkChangeDetector$NetworkInformation;)V

    return-void
.end method

.method public onNetworkDisconnect(J)V
    .locals 0

    iget-object p0, p0, Lorg/webrtc/NetworkMonitor$2;->this$0:Lorg/webrtc/NetworkMonitor;

    .line 194
    invoke-static {p0, p1, p2}, Lorg/webrtc/NetworkMonitor;->access$300(Lorg/webrtc/NetworkMonitor;J)V

    return-void
.end method

.method public onNetworkPreference(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/webrtc/NetworkChangeDetector$ConnectionType;",
            ">;I)V"
        }
    .end annotation

    iget-object p0, p0, Lorg/webrtc/NetworkMonitor$2;->this$0:Lorg/webrtc/NetworkMonitor;

    .line 200
    invoke-static {p0, p1, p2}, Lorg/webrtc/NetworkMonitor;->access$400(Lorg/webrtc/NetworkMonitor;Ljava/util/List;I)V

    return-void
.end method
