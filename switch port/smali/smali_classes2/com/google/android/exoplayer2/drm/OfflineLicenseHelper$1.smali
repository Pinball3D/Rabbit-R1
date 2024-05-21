.class Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper$1;
.super Ljava/lang/Object;
.source "OfflineLicenseHelper.java"

# interfaces
.implements Lcom/google/android/exoplayer2/drm/DrmSessionEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;-><init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper$1;->this$0:Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrmKeysLoaded(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper$1;->this$0:Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;

    .line 167
    invoke-static {p0}, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->access$000(Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;)Landroid/os/ConditionVariable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method public onDrmKeysRemoved(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper$1;->this$0:Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;

    .line 183
    invoke-static {p0}, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->access$000(Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;)Landroid/os/ConditionVariable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method public onDrmKeysRestored(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper$1;->this$0:Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;

    .line 178
    invoke-static {p0}, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->access$000(Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;)Landroid/os/ConditionVariable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method public onDrmSessionManagerError(ILcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Ljava/lang/Exception;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper$1;->this$0:Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;

    .line 173
    invoke-static {p0}, Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;->access$000(Lcom/google/android/exoplayer2/drm/OfflineLicenseHelper;)Landroid/os/ConditionVariable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method
