.class public final synthetic Lorg/webrtc/SurfaceViewRenderer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/webrtc/SurfaceViewRenderer;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lorg/webrtc/SurfaceViewRenderer;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/webrtc/SurfaceViewRenderer$$ExternalSyntheticLambda0;->f$0:Lorg/webrtc/SurfaceViewRenderer;

    iput p2, p0, Lorg/webrtc/SurfaceViewRenderer$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Lorg/webrtc/SurfaceViewRenderer$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/webrtc/SurfaceViewRenderer$$ExternalSyntheticLambda0;->f$0:Lorg/webrtc/SurfaceViewRenderer;

    iget v1, p0, Lorg/webrtc/SurfaceViewRenderer$$ExternalSyntheticLambda0;->f$1:I

    iget p0, p0, Lorg/webrtc/SurfaceViewRenderer$$ExternalSyntheticLambda0;->f$2:I

    invoke-virtual {v0, v1, p0}, Lorg/webrtc/SurfaceViewRenderer;->lambda$onFrameResolutionChanged$0$org-webrtc-SurfaceViewRenderer(II)V

    return-void
.end method
