.class public final synthetic Lorg/webrtc/SurfaceTextureHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/webrtc/SurfaceTextureHelper;


# direct methods
.method public synthetic constructor <init>(Lorg/webrtc/SurfaceTextureHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/webrtc/SurfaceTextureHelper$$ExternalSyntheticLambda1;->f$0:Lorg/webrtc/SurfaceTextureHelper;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lorg/webrtc/SurfaceTextureHelper$$ExternalSyntheticLambda1;->f$0:Lorg/webrtc/SurfaceTextureHelper;

    invoke-virtual {p0}, Lorg/webrtc/SurfaceTextureHelper;->lambda$dispose$6$org-webrtc-SurfaceTextureHelper()V

    return-void
.end method
