.class Lio/flutter/view/VsyncWaiter$DisplayListener;
.super Ljava/lang/Object;
.source "VsyncWaiter.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/view/VsyncWaiter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DisplayListener"
.end annotation


# instance fields
.field private displayManager:Landroid/hardware/display/DisplayManager;

.field final synthetic this$0:Lio/flutter/view/VsyncWaiter;


# direct methods
.method constructor <init>(Lio/flutter/view/VsyncWaiter;Landroid/hardware/display/DisplayManager;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/view/VsyncWaiter$DisplayListener;->this$0:Lio/flutter/view/VsyncWaiter;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/flutter/view/VsyncWaiter$DisplayListener;->displayManager:Landroid/hardware/display/DisplayManager;

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 5

    if-nez p1, :cond_0

    iget-object p1, p0, Lio/flutter/view/VsyncWaiter$DisplayListener;->displayManager:Landroid/hardware/display/DisplayManager;

    const/4 v0, 0x0

    .line 38
    invoke-virtual {p1, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    .line 39
    invoke-virtual {p1}, Landroid/view/Display;->getRefreshRate()F

    move-result p1

    iget-object v0, p0, Lio/flutter/view/VsyncWaiter$DisplayListener;->this$0:Lio/flutter/view/VsyncWaiter;

    const-wide v1, 0x41cdcd6500000000L    # 1.0E9

    float-to-double v3, p1

    div-double/2addr v1, v3

    double-to-long v1, v1

    .line 40
    invoke-static {v0, v1, v2}, Lio/flutter/view/VsyncWaiter;->access$002(Lio/flutter/view/VsyncWaiter;J)J

    iget-object p0, p0, Lio/flutter/view/VsyncWaiter$DisplayListener;->this$0:Lio/flutter/view/VsyncWaiter;

    .line 41
    invoke-static {p0}, Lio/flutter/view/VsyncWaiter;->access$100(Lio/flutter/view/VsyncWaiter;)Lio/flutter/embedding/engine/FlutterJNI;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/flutter/embedding/engine/FlutterJNI;->setRefreshRateFPS(F)V

    :cond_0
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method

.method register()V
    .locals 2

    iget-object v0, p0, Lio/flutter/view/VsyncWaiter$DisplayListener;->displayManager:Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    .line 26
    invoke-virtual {v0, p0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    return-void
.end method
