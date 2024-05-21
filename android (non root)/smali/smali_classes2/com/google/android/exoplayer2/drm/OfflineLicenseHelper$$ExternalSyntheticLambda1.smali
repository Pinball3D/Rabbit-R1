.class public final synthetic Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;

.field public final synthetic f$1:Lcom/google/android/exoplayer2/drm/DrmSession;

.field public final synthetic f$2:Lcom/google/common/util/concurrent/SettableFuture;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;Lcom/google/android/exoplayer2/drm/DrmSession;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;

    iput-object p2, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper$$ExternalSyntheticLambda1;->f$1:Lcom/google/android/exoplayer2/drm/DrmSession;

    iput-object p3, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper$$ExternalSyntheticLambda1;->f$2:Lcom/google/common/util/concurrent/SettableFuture;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;

    iget-object v1, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper$$ExternalSyntheticLambda1;->f$1:Lcom/google/android/exoplayer2/drm/DrmSession;

    iget-object p0, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper$$ExternalSyntheticLambda1;->f$2:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->lambda$acquireFirstSessionOnHandlerThread$3$com-google-android-exoplayer2-drm-OfflineLicenseHelper(Lcom/google/android/exoplayer2/drm/DrmSession;Lcom/google/common/util/concurrent/SettableFuture;)V

    return-void
.end method
