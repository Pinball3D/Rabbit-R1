.class Ltech/rabbit/r1launcher/wss/reconnct/WssStateMonitor$1;
.super Landroid/os/Handler;
.source "WssStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltech/rabbit/r1launcher/wss/reconnct/WssStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltech/rabbit/r1launcher/wss/reconnct/WssStateMonitor;


# direct methods
.method constructor <init>(Ltech/rabbit/r1launcher/wss/reconnct/WssStateMonitor;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/wss/reconnct/WssStateMonitor$1;->this$0:Ltech/rabbit/r1launcher/wss/reconnct/WssStateMonitor;

    .line 28
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 31
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    const-string p0, "\u91cd\u8fde\u4e2d"

    .line 32
    invoke-static {p0}, Ltech/rabbit/common/utils/RLog;->d(Ljava/lang/String;)V

    .line 33
    sget-object p0, Ltech/rabbit/r1launcher/wss/WebSocketManager;->INSTANCE:Ltech/rabbit/r1launcher/wss/WebSocketManager;

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/wss/WebSocketManager;->connect()V

    return-void
.end method
