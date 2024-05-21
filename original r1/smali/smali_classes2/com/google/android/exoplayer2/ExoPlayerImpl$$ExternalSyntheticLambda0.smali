.class public final synthetic Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/exoplayer2/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda0;->f$0:I

    iput p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda0;->f$0:I

    iget p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$$ExternalSyntheticLambda0;->f$1:I

    check-cast p1, Lcom/google/android/exoplayer2/Player$Listener;

    invoke-static {v0, p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->lambda$maybeNotifySurfaceSizeChanged$27(IILcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method
