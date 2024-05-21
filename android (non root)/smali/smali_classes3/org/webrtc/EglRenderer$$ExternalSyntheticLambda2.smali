.class public final synthetic Lorg/webrtc/EglRenderer$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/webrtc/EglRenderer;

.field public final synthetic f$1:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Lorg/webrtc/EglRenderer;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/webrtc/EglRenderer$$ExternalSyntheticLambda2;->f$0:Lorg/webrtc/EglRenderer;

    iput-object p2, p0, Lorg/webrtc/EglRenderer$$ExternalSyntheticLambda2;->f$1:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/webrtc/EglRenderer$$ExternalSyntheticLambda2;->f$0:Lorg/webrtc/EglRenderer;

    iget-object p0, p0, Lorg/webrtc/EglRenderer$$ExternalSyntheticLambda2;->f$1:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, p0}, Lorg/webrtc/EglRenderer;->lambda$release$1$org-webrtc-EglRenderer(Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method
