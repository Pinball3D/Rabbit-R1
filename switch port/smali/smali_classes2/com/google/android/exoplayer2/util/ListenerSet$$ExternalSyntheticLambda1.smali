.class public final synthetic Lcom/google/android/exoplayer2/util/ListenerSet$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/google/android/exoplayer2/util/ListenerSet$Event;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/CopyOnWriteArraySet;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/util/ListenerSet$$ExternalSyntheticLambda1;->f$0:Ljava/util/concurrent/CopyOnWriteArraySet;

    iput p2, p0, Lcom/google/android/exoplayer2/util/ListenerSet$$ExternalSyntheticLambda1;->f$1:I

    iput-object p3, p0, Lcom/google/android/exoplayer2/util/ListenerSet$$ExternalSyntheticLambda1;->f$2:Lcom/google/android/exoplayer2/util/ListenerSet$Event;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ListenerSet$$ExternalSyntheticLambda1;->f$0:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget v1, p0, Lcom/google/android/exoplayer2/util/ListenerSet$$ExternalSyntheticLambda1;->f$1:I

    iget-object p0, p0, Lcom/google/android/exoplayer2/util/ListenerSet$$ExternalSyntheticLambda1;->f$2:Lcom/google/android/exoplayer2/util/ListenerSet$Event;

    invoke-static {v0, v1, p0}, Lcom/google/android/exoplayer2/util/ListenerSet;->lambda$queueEvent$0(Ljava/util/concurrent/CopyOnWriteArraySet;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    return-void
.end method
