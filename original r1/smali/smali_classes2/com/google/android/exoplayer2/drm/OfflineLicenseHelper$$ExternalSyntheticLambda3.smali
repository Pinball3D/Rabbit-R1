.class public final synthetic Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;

.field public final synthetic f$1:Lcom/google/common/util/concurrent/SettableFuture;

.field public final synthetic f$2:Lcom/google/android/exoplayer2/drm/DrmSession;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;Lcom/google/common/util/concurrent/SettableFuture;Lcom/google/android/exoplayer2/drm/DrmSession;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper$$ExternalSyntheticLambda3;->f$0:Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;

    iput-object p2, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper$$ExternalSyntheticLambda3;->f$1:Lcom/google/common/util/concurrent/SettableFuture;

    iput-object p3, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper$$ExternalSyntheticLambda3;->f$2:Lcom/google/android/exoplayer2/drm/DrmSession;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper$$ExternalSyntheticLambda3;->f$0:Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper$$ExternalSyntheticLambda3;->f$1:Lcom/google/common/util/concurrent/SettableFuture;

    iget-object p0, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper$$ExternalSyntheticLambda3;->f$2:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->lambda$getLicenseDurationRemainingSec$0$com-google-android-exoplayer2-drm-OfflineLicenseHelper(Lcom/google/common/util/concurrent/SettableFuture;Lcom/google/android/exoplayer2/drm/DrmSession;)V

    return-void
.end method
