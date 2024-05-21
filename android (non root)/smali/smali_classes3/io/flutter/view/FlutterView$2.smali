.class Lio/flutter/view/FlutterView$2;
.super Ljava/lang/Object;
.source "FlutterView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/view/FlutterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lio/flutter/view/FlutterNativeView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/flutter/view/FlutterView;


# direct methods
.method constructor <init>(Lio/flutter/view/FlutterView;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/view/FlutterView$2;->this$0:Lio/flutter/view/FlutterView;

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    iget-object p1, p0, Lio/flutter/view/FlutterView$2;->this$0:Lio/flutter/view/FlutterView;

    .line 199
    invoke-virtual {p1}, Lio/flutter/view/FlutterView;->assertAttached()V

    iget-object p0, p0, Lio/flutter/view/FlutterView$2;->this$0:Lio/flutter/view/FlutterView;

    .line 200
    invoke-static {p0}, Lio/flutter/view/FlutterView;->access$100(Lio/flutter/view/FlutterView;)Lio/flutter/view/FlutterNativeView;

    move-result-object p0

    invoke-virtual {p0}, Lio/flutter/view/FlutterNativeView;->getFlutterJNI()Lio/flutter/embedding/engine/FlutterJNI;

    move-result-object p0

    invoke-virtual {p0, p3, p4}, Lio/flutter/embedding/engine/FlutterJNI;->onSurfaceChanged(II)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object v0, p0, Lio/flutter/view/FlutterView$2;->this$0:Lio/flutter/view/FlutterView;

    .line 193
    invoke-virtual {v0}, Lio/flutter/view/FlutterView;->assertAttached()V

    iget-object p0, p0, Lio/flutter/view/FlutterView$2;->this$0:Lio/flutter/view/FlutterView;

    .line 194
    invoke-static {p0}, Lio/flutter/view/FlutterView;->access$100(Lio/flutter/view/FlutterView;)Lio/flutter/view/FlutterNativeView;

    move-result-object p0

    invoke-virtual {p0}, Lio/flutter/view/FlutterNativeView;->getFlutterJNI()Lio/flutter/embedding/engine/FlutterJNI;

    move-result-object p0

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/flutter/embedding/engine/FlutterJNI;->onSurfaceCreated(Landroid/view/Surface;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    iget-object p1, p0, Lio/flutter/view/FlutterView$2;->this$0:Lio/flutter/view/FlutterView;

    .line 205
    invoke-virtual {p1}, Lio/flutter/view/FlutterView;->assertAttached()V

    iget-object p0, p0, Lio/flutter/view/FlutterView$2;->this$0:Lio/flutter/view/FlutterView;

    .line 206
    invoke-static {p0}, Lio/flutter/view/FlutterView;->access$100(Lio/flutter/view/FlutterView;)Lio/flutter/view/FlutterNativeView;

    move-result-object p0

    invoke-virtual {p0}, Lio/flutter/view/FlutterNativeView;->getFlutterJNI()Lio/flutter/embedding/engine/FlutterJNI;

    move-result-object p0

    invoke-virtual {p0}, Lio/flutter/embedding/engine/FlutterJNI;->onSurfaceDestroyed()V

    return-void
.end method
