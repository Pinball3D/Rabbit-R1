.class final Lcom/google/android/exoplayer2/text/ExoplayerCuesDecoder$SingleEventSubtitle;
.super Ljava/lang/Object;
.source "ExoplayerCuesDecoder.java"

# interfaces
.implements Lcom/google/android/exoplayer2/text/Subtitle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/text/ExoplayerCuesDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SingleEventSubtitle"
.end annotation


# instance fields
.field private final cues:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation
.end field

.field private final timeUs:J


# direct methods
.method public constructor <init>(JLcom/google/common/collect/ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;)V"
        }
    .end annotation

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/exoplayer2/text/ExoplayerCuesDecoder$SingleEventSubtitle;->timeUs:J

    iput-object p3, p0, Lcom/google/android/exoplayer2/text/ExoplayerCuesDecoder$SingleEventSubtitle;->cues:Lcom/google/common/collect/ImmutableList;

    return-void
.end method


# virtual methods
.method public getCues(J)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/Cue;",
            ">;"
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/android/exoplayer2/text/ExoplayerCuesDecoder$SingleEventSubtitle;->timeUs:J

    cmp-long p1, p1, v0

    if-ltz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/text/ExoplayerCuesDecoder$SingleEventSubtitle;->cues:Lcom/google/common/collect/ImmutableList;

    goto :goto_0

    .line 172
    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getEventTime(I)J
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 166
    :goto_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    iget-wide p0, p0, Lcom/google/android/exoplayer2/text/ExoplayerCuesDecoder$SingleEventSubtitle;->timeUs:J

    return-wide p0
.end method

.method public getEventTimeCount()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getNextEventTimeIndex(J)I
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/text/ExoplayerCuesDecoder$SingleEventSubtitle;->timeUs:J

    cmp-long p0, v0, p1

    if-lez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method
