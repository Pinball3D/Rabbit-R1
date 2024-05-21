.class public final synthetic Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/media/MediaDrm$OnExpirationUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;

.field public final synthetic f$1:Lcom/google/android/exoplayer2/drm/ExoMediaDrm$OnExpirationUpdateListener;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;Lcom/google/android/exoplayer2/drm/ExoMediaDrm$OnExpirationUpdateListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;

    iput-object p2, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm$$ExternalSyntheticLambda0;->f$1:Lcom/google/android/exoplayer2/drm/ExoMediaDrm$OnExpirationUpdateListener;

    return-void
.end method


# virtual methods
.method public final onExpirationUpdate(Landroid/media/MediaDrm;[BJ)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm$$ExternalSyntheticLambda0;->f$1:Lcom/google/android/exoplayer2/drm/ExoMediaDrm$OnExpirationUpdateListener;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->lambda$setOnExpirationUpdateListener$3$com-google-android-exoplayer2-drm-FrameworkMediaDrm(Lcom/google/android/exoplayer2/drm/ExoMediaDrm$OnExpirationUpdateListener;Landroid/media/MediaDrm;[BJ)V

    return-void
.end method
