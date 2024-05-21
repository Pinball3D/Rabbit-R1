.class public final synthetic Lorg/webrtc/TextureBufferImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lorg/webrtc/TextureBufferImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/webrtc/TextureBufferImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/webrtc/TextureBufferImpl$$ExternalSyntheticLambda0;->f$0:Lorg/webrtc/TextureBufferImpl;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/webrtc/TextureBufferImpl$$ExternalSyntheticLambda0;->f$0:Lorg/webrtc/TextureBufferImpl;

    invoke-virtual {p0}, Lorg/webrtc/TextureBufferImpl;->lambda$toI420$1$org-webrtc-TextureBufferImpl()Lorg/webrtc/VideoFrame$I420Buffer;

    move-result-object p0

    return-object p0
.end method
