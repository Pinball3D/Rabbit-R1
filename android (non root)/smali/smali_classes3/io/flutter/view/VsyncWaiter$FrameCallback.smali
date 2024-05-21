.class Lio/flutter/view/VsyncWaiter$FrameCallback;
.super Ljava/lang/Object;
.source "VsyncWaiter.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/view/VsyncWaiter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FrameCallback"
.end annotation


# instance fields
.field private cookie:J

.field final synthetic this$0:Lio/flutter/view/VsyncWaiter;


# direct methods
.method constructor <init>(Lio/flutter/view/VsyncWaiter;J)V
    .locals 0

    iput-object p1, p0, Lio/flutter/view/VsyncWaiter$FrameCallback;->this$0:Lio/flutter/view/VsyncWaiter;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lio/flutter/view/VsyncWaiter$FrameCallback;->cookie:J

    return-void
.end method

.method static synthetic access$302(Lio/flutter/view/VsyncWaiter$FrameCallback;J)J
    .locals 0

    .line 89
    iput-wide p1, p0, Lio/flutter/view/VsyncWaiter$FrameCallback;->cookie:J

    return-wide p1
.end method


# virtual methods
.method public doFrame(J)V
    .locals 10

    .line 99
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/16 p1, 0x0

    cmp-long v2, v0, p1

    if-gez v2, :cond_0

    move-wide v4, p1

    goto :goto_0

    :cond_0
    move-wide v4, v0

    :goto_0
    iget-object p1, p0, Lio/flutter/view/VsyncWaiter$FrameCallback;->this$0:Lio/flutter/view/VsyncWaiter;

    .line 103
    invoke-static {p1}, Lio/flutter/view/VsyncWaiter;->access$100(Lio/flutter/view/VsyncWaiter;)Lio/flutter/embedding/engine/FlutterJNI;

    move-result-object v3

    iget-object p1, p0, Lio/flutter/view/VsyncWaiter$FrameCallback;->this$0:Lio/flutter/view/VsyncWaiter;

    invoke-static {p1}, Lio/flutter/view/VsyncWaiter;->access$000(Lio/flutter/view/VsyncWaiter;)J

    move-result-wide v6

    iget-wide v8, p0, Lio/flutter/view/VsyncWaiter$FrameCallback;->cookie:J

    invoke-virtual/range {v3 .. v9}, Lio/flutter/embedding/engine/FlutterJNI;->onVsync(JJJ)V

    iget-object p1, p0, Lio/flutter/view/VsyncWaiter$FrameCallback;->this$0:Lio/flutter/view/VsyncWaiter;

    .line 104
    invoke-static {p1, p0}, Lio/flutter/view/VsyncWaiter;->access$202(Lio/flutter/view/VsyncWaiter;Lio/flutter/view/VsyncWaiter$FrameCallback;)Lio/flutter/view/VsyncWaiter$FrameCallback;

    return-void
.end method
