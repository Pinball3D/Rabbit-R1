.class Lorg/webrtc/SurfaceTextureHelper$3;
.super Ljava/lang/Object;
.source "SurfaceTextureHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/SurfaceTextureHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/SurfaceTextureHelper;


# direct methods
.method constructor <init>(Lorg/webrtc/SurfaceTextureHelper;)V
    .locals 0

    iput-object p1, p0, Lorg/webrtc/SurfaceTextureHelper$3;->this$0:Lorg/webrtc/SurfaceTextureHelper;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Setting listener to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/webrtc/SurfaceTextureHelper$3;->this$0:Lorg/webrtc/SurfaceTextureHelper;

    invoke-static {v1}, Lorg/webrtc/SurfaceTextureHelper;->access$300(Lorg/webrtc/SurfaceTextureHelper;)Lorg/webrtc/VideoSink;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SurfaceTextureHelper"

    invoke-static {v1, v0}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/webrtc/SurfaceTextureHelper$3;->this$0:Lorg/webrtc/SurfaceTextureHelper;

    .line 166
    invoke-static {v0}, Lorg/webrtc/SurfaceTextureHelper;->access$300(Lorg/webrtc/SurfaceTextureHelper;)Lorg/webrtc/VideoSink;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/SurfaceTextureHelper;->access$402(Lorg/webrtc/SurfaceTextureHelper;Lorg/webrtc/VideoSink;)Lorg/webrtc/VideoSink;

    iget-object v0, p0, Lorg/webrtc/SurfaceTextureHelper$3;->this$0:Lorg/webrtc/SurfaceTextureHelper;

    const/4 v1, 0x0

    .line 167
    invoke-static {v0, v1}, Lorg/webrtc/SurfaceTextureHelper;->access$302(Lorg/webrtc/SurfaceTextureHelper;Lorg/webrtc/VideoSink;)Lorg/webrtc/VideoSink;

    iget-object v0, p0, Lorg/webrtc/SurfaceTextureHelper$3;->this$0:Lorg/webrtc/SurfaceTextureHelper;

    .line 169
    invoke-static {v0}, Lorg/webrtc/SurfaceTextureHelper;->access$500(Lorg/webrtc/SurfaceTextureHelper;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/webrtc/SurfaceTextureHelper$3;->this$0:Lorg/webrtc/SurfaceTextureHelper;

    .line 171
    invoke-static {v0}, Lorg/webrtc/SurfaceTextureHelper;->access$600(Lorg/webrtc/SurfaceTextureHelper;)V

    iget-object p0, p0, Lorg/webrtc/SurfaceTextureHelper$3;->this$0:Lorg/webrtc/SurfaceTextureHelper;

    const/4 v0, 0x0

    .line 172
    invoke-static {p0, v0}, Lorg/webrtc/SurfaceTextureHelper;->access$502(Lorg/webrtc/SurfaceTextureHelper;Z)Z

    :cond_0
    return-void
.end method
