.class public final synthetic Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$PreacquiredSessionReference$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$PreacquiredSessionReference;

.field public final synthetic f$1:Lcom/google/android/exoplayer2/Format;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$PreacquiredSessionReference;Lcom/google/android/exoplayer2/Format;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$PreacquiredSessionReference$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$PreacquiredSessionReference;

    iput-object p2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$PreacquiredSessionReference$$ExternalSyntheticLambda1;->f$1:Lcom/google/android/exoplayer2/Format;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$PreacquiredSessionReference$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$PreacquiredSessionReference;

    iget-object p0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$PreacquiredSessionReference$$ExternalSyntheticLambda1;->f$1:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$PreacquiredSessionReference;->lambda$acquire$0$com-google-android-exoplayer2-drm-DefaultDrmSessionManager$PreacquiredSessionReference(Lcom/google/android/exoplayer2/Format;)V

    return-void
.end method
