.class public final synthetic Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    invoke-static {p0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$ReferenceCountListenerImpl;->lambda$onReferenceCountDecremented$0(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;)V

    return-void
.end method
