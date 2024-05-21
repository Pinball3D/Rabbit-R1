.class public final synthetic Lorg/webrtc/EglRenderer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/webrtc/EglRenderer;

.field public final synthetic f$1:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic f$2:Lorg/webrtc/EglRenderer$FrameListener;


# direct methods
.method public synthetic constructor <init>(Lorg/webrtc/EglRenderer;Ljava/util/concurrent/CountDownLatch;Lorg/webrtc/EglRenderer$FrameListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/webrtc/EglRenderer$$ExternalSyntheticLambda1;->f$0:Lorg/webrtc/EglRenderer;

    iput-object p2, p0, Lorg/webrtc/EglRenderer$$ExternalSyntheticLambda1;->f$1:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Lorg/webrtc/EglRenderer$$ExternalSyntheticLambda1;->f$2:Lorg/webrtc/EglRenderer$FrameListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/webrtc/EglRenderer$$ExternalSyntheticLambda1;->f$0:Lorg/webrtc/EglRenderer;

    iget-object v1, p0, Lorg/webrtc/EglRenderer$$ExternalSyntheticLambda1;->f$1:Ljava/util/concurrent/CountDownLatch;

    iget-object p0, p0, Lorg/webrtc/EglRenderer$$ExternalSyntheticLambda1;->f$2:Lorg/webrtc/EglRenderer$FrameListener;

    invoke-virtual {v0, v1, p0}, Lorg/webrtc/EglRenderer;->lambda$removeFrameListener$4$org-webrtc-EglRenderer(Ljava/util/concurrent/CountDownLatch;Lorg/webrtc/EglRenderer$FrameListener;)V

    return-void
.end method
