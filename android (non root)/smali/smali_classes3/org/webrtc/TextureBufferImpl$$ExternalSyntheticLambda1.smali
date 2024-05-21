.class public final synthetic Lorg/webrtc/TextureBufferImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/webrtc/TextureBufferImpl;

.field public final synthetic f$1:Lorg/webrtc/TextureBufferImpl$RefCountMonitor;


# direct methods
.method public synthetic constructor <init>(Lorg/webrtc/TextureBufferImpl;Lorg/webrtc/TextureBufferImpl$RefCountMonitor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/webrtc/TextureBufferImpl$$ExternalSyntheticLambda1;->f$0:Lorg/webrtc/TextureBufferImpl;

    iput-object p2, p0, Lorg/webrtc/TextureBufferImpl$$ExternalSyntheticLambda1;->f$1:Lorg/webrtc/TextureBufferImpl$RefCountMonitor;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/webrtc/TextureBufferImpl$$ExternalSyntheticLambda1;->f$0:Lorg/webrtc/TextureBufferImpl;

    iget-object p0, p0, Lorg/webrtc/TextureBufferImpl$$ExternalSyntheticLambda1;->f$1:Lorg/webrtc/TextureBufferImpl$RefCountMonitor;

    invoke-virtual {v0, p0}, Lorg/webrtc/TextureBufferImpl;->lambda$new$0$org-webrtc-TextureBufferImpl(Lorg/webrtc/TextureBufferImpl$RefCountMonitor;)V

    return-void
.end method
