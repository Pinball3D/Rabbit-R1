.class Lio/flutter/embedding/android/FlutterSurfaceView$1;
.super Ljava/lang/Object;
.source "FlutterSurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/android/FlutterSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/flutter/embedding/android/FlutterSurfaceView;


# direct methods
.method constructor <init>(Lio/flutter/embedding/android/FlutterSurfaceView;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/embedding/android/FlutterSurfaceView$1;->this$0:Lio/flutter/embedding/android/FlutterSurfaceView;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    const-string p1, "FlutterSurfaceView"

    const-string p2, "SurfaceHolder.Callback.surfaceChanged()"

    .line 65
    invoke-static {p1, p2}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lio/flutter/embedding/android/FlutterSurfaceView$1;->this$0:Lio/flutter/embedding/android/FlutterSurfaceView;

    .line 66
    invoke-static {p1}, Lio/flutter/embedding/android/FlutterSurfaceView;->access$100(Lio/flutter/embedding/android/FlutterSurfaceView;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lio/flutter/embedding/android/FlutterSurfaceView$1;->this$0:Lio/flutter/embedding/android/FlutterSurfaceView;

    .line 67
    invoke-static {p0, p3, p4}, Lio/flutter/embedding/android/FlutterSurfaceView;->access$300(Lio/flutter/embedding/android/FlutterSurfaceView;II)V

    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    const-string p1, "FlutterSurfaceView"

    const-string v0, "SurfaceHolder.Callback.startRenderingToSurface()"

    .line 54
    invoke-static {p1, v0}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lio/flutter/embedding/android/FlutterSurfaceView$1;->this$0:Lio/flutter/embedding/android/FlutterSurfaceView;

    const/4 v0, 0x1

    .line 55
    invoke-static {p1, v0}, Lio/flutter/embedding/android/FlutterSurfaceView;->access$002(Lio/flutter/embedding/android/FlutterSurfaceView;Z)Z

    iget-object p1, p0, Lio/flutter/embedding/android/FlutterSurfaceView$1;->this$0:Lio/flutter/embedding/android/FlutterSurfaceView;

    .line 57
    invoke-static {p1}, Lio/flutter/embedding/android/FlutterSurfaceView;->access$100(Lio/flutter/embedding/android/FlutterSurfaceView;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lio/flutter/embedding/android/FlutterSurfaceView$1;->this$0:Lio/flutter/embedding/android/FlutterSurfaceView;

    .line 58
    invoke-static {p0}, Lio/flutter/embedding/android/FlutterSurfaceView;->access$200(Lio/flutter/embedding/android/FlutterSurfaceView;)V

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    const-string p1, "FlutterSurfaceView"

    const-string v0, "SurfaceHolder.Callback.stopRenderingToSurface()"

    .line 73
    invoke-static {p1, v0}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lio/flutter/embedding/android/FlutterSurfaceView$1;->this$0:Lio/flutter/embedding/android/FlutterSurfaceView;

    const/4 v0, 0x0

    .line 74
    invoke-static {p1, v0}, Lio/flutter/embedding/android/FlutterSurfaceView;->access$002(Lio/flutter/embedding/android/FlutterSurfaceView;Z)Z

    iget-object p1, p0, Lio/flutter/embedding/android/FlutterSurfaceView$1;->this$0:Lio/flutter/embedding/android/FlutterSurfaceView;

    .line 76
    invoke-static {p1}, Lio/flutter/embedding/android/FlutterSurfaceView;->access$100(Lio/flutter/embedding/android/FlutterSurfaceView;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lio/flutter/embedding/android/FlutterSurfaceView$1;->this$0:Lio/flutter/embedding/android/FlutterSurfaceView;

    .line 77
    invoke-static {p0}, Lio/flutter/embedding/android/FlutterSurfaceView;->access$400(Lio/flutter/embedding/android/FlutterSurfaceView;)V

    :cond_0
    return-void
.end method
