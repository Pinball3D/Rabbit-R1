.class Lorg/webrtc/NetworkMonitor$1;
.super Ljava/lang/Object;
.source "NetworkMonitor.java"

# interfaces
.implements Lorg/webrtc/NetworkChangeDetectorFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/NetworkMonitor;
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

    iput-object p1, p0, Lorg/webrtc/NetworkMonitor$1;->this$0:Lorg/webrtc/NetworkMonitor;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lorg/webrtc/NetworkChangeDetector$Observer;Landroid/content/Context;)Lorg/webrtc/NetworkChangeDetector;
    .locals 0

    .line 50
    new-instance p0, Lorg/webrtc/NetworkMonitorAutoDetect;

    invoke-direct {p0, p1, p2}, Lorg/webrtc/NetworkMonitorAutoDetect;-><init>(Lorg/webrtc/NetworkChangeDetector$Observer;Landroid/content/Context;)V

    return-object p0
.end method
