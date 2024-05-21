.class public final synthetic Landroidx/media3/exoplayer/drm/DefaultDrmSession$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/media3/common/util/Consumer;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession$$ExternalSyntheticLambda1;->f$0:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget p0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSession$$ExternalSyntheticLambda1;->f$0:I

    check-cast p1, Landroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/drm/DefaultDrmSession;->lambda$openInternal$0(ILandroidx/media3/exoplayer/drm/DrmSessionEventListener$EventDispatcher;)V

    return-void
.end method
