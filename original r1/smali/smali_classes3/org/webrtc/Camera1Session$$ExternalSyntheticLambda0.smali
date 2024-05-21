.class public final synthetic Lorg/webrtc/Camera1Session$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lorg/webrtc/VideoSink;


# instance fields
.field public final synthetic f$0:Lorg/webrtc/Camera1Session;


# direct methods
.method public synthetic constructor <init>(Lorg/webrtc/Camera1Session;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/webrtc/Camera1Session$$ExternalSyntheticLambda0;->f$0:Lorg/webrtc/Camera1Session;

    return-void
.end method


# virtual methods
.method public final onFrame(Lorg/webrtc/VideoFrame;)V
    .locals 0

    iget-object p0, p0, Lorg/webrtc/Camera1Session$$ExternalSyntheticLambda0;->f$0:Lorg/webrtc/Camera1Session;

    invoke-virtual {p0, p1}, Lorg/webrtc/Camera1Session;->lambda$listenForTextureFrames$0$org-webrtc-Camera1Session(Lorg/webrtc/VideoFrame;)V

    return-void
.end method
