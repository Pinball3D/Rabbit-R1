.class public final synthetic Lorg/webrtc/SurfaceTextureHelper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/webrtc/SurfaceTextureHelper;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lorg/webrtc/SurfaceTextureHelper;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/webrtc/SurfaceTextureHelper$$ExternalSyntheticLambda2;->f$0:Lorg/webrtc/SurfaceTextureHelper;

    iput p2, p0, Lorg/webrtc/SurfaceTextureHelper$$ExternalSyntheticLambda2;->f$1:I

    iput p3, p0, Lorg/webrtc/SurfaceTextureHelper$$ExternalSyntheticLambda2;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/webrtc/SurfaceTextureHelper$$ExternalSyntheticLambda2;->f$0:Lorg/webrtc/SurfaceTextureHelper;

    iget v1, p0, Lorg/webrtc/SurfaceTextureHelper$$ExternalSyntheticLambda2;->f$1:I

    iget p0, p0, Lorg/webrtc/SurfaceTextureHelper$$ExternalSyntheticLambda2;->f$2:I

    invoke-virtual {v0, v1, p0}, Lorg/webrtc/SurfaceTextureHelper;->lambda$setTextureSize$2$org-webrtc-SurfaceTextureHelper(II)V

    return-void
.end method
