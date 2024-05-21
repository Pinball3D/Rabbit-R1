.class final Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MessageData;
.super Ljava/lang/Object;
.source "ConcatenatingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MessageData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final customData:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final index:I

.field public final onCompletionAction:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$HandlerAndRunnable;


# direct methods
.method public constructor <init>(ILjava/lang/Object;Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$HandlerAndRunnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;",
            "Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$HandlerAndRunnable;",
            ")V"
        }
    .end annotation

    .line 905
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MessageData;->index:I

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MessageData;->customData:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$MessageData;->onCompletionAction:Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$HandlerAndRunnable;

    return-void
.end method
