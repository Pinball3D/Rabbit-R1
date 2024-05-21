.class public final synthetic Lorg/webrtc/SurfaceTextureHelper$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/webrtc/SurfaceTextureHelper;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lorg/webrtc/SurfaceTextureHelper;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/webrtc/SurfaceTextureHelper$$ExternalSyntheticLambda4;->f$0:Lorg/webrtc/SurfaceTextureHelper;

    iput p2, p0, Lorg/webrtc/SurfaceTextureHelper$$ExternalSyntheticLambda4;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/webrtc/SurfaceTextureHelper$$ExternalSyntheticLambda4;->f$0:Lorg/webrtc/SurfaceTextureHelper;

    iget p0, p0, Lorg/webrtc/SurfaceTextureHelper$$ExternalSyntheticLambda4;->f$1:I

    invoke-virtual {v0, p0}, Lorg/webrtc/SurfaceTextureHelper;->lambda$setFrameRotation$4$org-webrtc-SurfaceTextureHelper(I)V

    return-void
.end method
