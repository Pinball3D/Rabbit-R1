.class public final synthetic Lorg/webrtc/VideoFileRenderer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/webrtc/VideoFileRenderer;


# direct methods
.method public synthetic constructor <init>(Lorg/webrtc/VideoFileRenderer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/webrtc/VideoFileRenderer$$ExternalSyntheticLambda1;->f$0:Lorg/webrtc/VideoFileRenderer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lorg/webrtc/VideoFileRenderer$$ExternalSyntheticLambda1;->f$0:Lorg/webrtc/VideoFileRenderer;

    invoke-virtual {p0}, Lorg/webrtc/VideoFileRenderer;->lambda$release$3$org-webrtc-VideoFileRenderer()V

    return-void
.end method
