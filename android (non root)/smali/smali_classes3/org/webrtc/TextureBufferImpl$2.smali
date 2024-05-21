.class Lorg/webrtc/TextureBufferImpl$2;
.super Ljava/lang/Object;
.source "TextureBufferImpl.java"

# interfaces
.implements Lorg/webrtc/TextureBufferImpl$RefCountMonitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/TextureBufferImpl;->applyTransformMatrix(Landroid/graphics/Matrix;IIII)Lorg/webrtc/TextureBufferImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/TextureBufferImpl;


# direct methods
.method constructor <init>(Lorg/webrtc/TextureBufferImpl;)V
    .locals 0

    iput-object p1, p0, Lorg/webrtc/TextureBufferImpl$2;->this$0:Lorg/webrtc/TextureBufferImpl;

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDestroy(Lorg/webrtc/TextureBufferImpl;)V
    .locals 0

    iget-object p0, p0, Lorg/webrtc/TextureBufferImpl$2;->this$0:Lorg/webrtc/TextureBufferImpl;

    .line 198
    invoke-virtual {p0}, Lorg/webrtc/TextureBufferImpl;->release()V

    return-void
.end method

.method public onRelease(Lorg/webrtc/TextureBufferImpl;)V
    .locals 0

    iget-object p1, p0, Lorg/webrtc/TextureBufferImpl$2;->this$0:Lorg/webrtc/TextureBufferImpl;

    .line 193
    invoke-static {p1}, Lorg/webrtc/TextureBufferImpl;->access$000(Lorg/webrtc/TextureBufferImpl;)Lorg/webrtc/TextureBufferImpl$RefCountMonitor;

    move-result-object p1

    iget-object p0, p0, Lorg/webrtc/TextureBufferImpl$2;->this$0:Lorg/webrtc/TextureBufferImpl;

    invoke-interface {p1, p0}, Lorg/webrtc/TextureBufferImpl$RefCountMonitor;->onRelease(Lorg/webrtc/TextureBufferImpl;)V

    return-void
.end method

.method public onRetain(Lorg/webrtc/TextureBufferImpl;)V
    .locals 0

    iget-object p1, p0, Lorg/webrtc/TextureBufferImpl$2;->this$0:Lorg/webrtc/TextureBufferImpl;

    .line 188
    invoke-static {p1}, Lorg/webrtc/TextureBufferImpl;->access$000(Lorg/webrtc/TextureBufferImpl;)Lorg/webrtc/TextureBufferImpl$RefCountMonitor;

    move-result-object p1

    iget-object p0, p0, Lorg/webrtc/TextureBufferImpl$2;->this$0:Lorg/webrtc/TextureBufferImpl;

    invoke-interface {p1, p0}, Lorg/webrtc/TextureBufferImpl$RefCountMonitor;->onRetain(Lorg/webrtc/TextureBufferImpl;)V

    return-void
.end method
