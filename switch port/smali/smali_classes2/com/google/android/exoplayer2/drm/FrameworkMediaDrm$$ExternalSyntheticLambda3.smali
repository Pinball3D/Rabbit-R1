.class public final synthetic Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/media/MediaDrm$OnKeyStatusChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;

.field public final synthetic f$1:Lcom/google/android/exoplayer2/drm/ExoMediaDrm$OnKeyStatusChangeListener;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;Lcom/google/android/exoplayer2/drm/ExoMediaDrm$OnKeyStatusChangeListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm$$ExternalSyntheticLambda3;->f$0:Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;

    iput-object p2, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm$$ExternalSyntheticLambda3;->f$1:Lcom/google/android/exoplayer2/drm/ExoMediaDrm$OnKeyStatusChangeListener;

    return-void
.end method


# virtual methods
.method public final onKeyStatusChange(Landroid/media/MediaDrm;[BLjava/util/List;Z)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm$$ExternalSyntheticLambda3;->f$0:Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm$$ExternalSyntheticLambda3;->f$1:Lcom/google/android/exoplayer2/drm/ExoMediaDrm$OnKeyStatusChangeListener;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/drm/FrameworkMediaDrm;->lambda$setOnKeyStatusChangeListener$2$com-google-android-exoplayer2-drm-FrameworkMediaDrm(Lcom/google/android/exoplayer2/drm/ExoMediaDrm$OnKeyStatusChangeListener;Landroid/media/MediaDrm;[BLjava/util/List;Z)V

    return-void
.end method
