.class public final synthetic Lorg/webrtc/JavaI420Buffer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/webrtc/VideoFrame$I420Buffer;


# direct methods
.method public synthetic constructor <init>(Lorg/webrtc/VideoFrame$I420Buffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/webrtc/JavaI420Buffer$$ExternalSyntheticLambda0;->f$0:Lorg/webrtc/VideoFrame$I420Buffer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lorg/webrtc/JavaI420Buffer$$ExternalSyntheticLambda0;->f$0:Lorg/webrtc/VideoFrame$I420Buffer;

    invoke-interface {p0}, Lorg/webrtc/VideoFrame$Buffer;->release()V

    return-void
.end method
