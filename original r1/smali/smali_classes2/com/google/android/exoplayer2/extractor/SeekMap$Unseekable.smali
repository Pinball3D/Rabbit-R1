.class public Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;
.super Ljava/lang/Object;
.source "SeekMap.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/SeekMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/SeekMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Unseekable"
.end annotation


# instance fields
.field private final durationUs:J

.field private final startSeekPoints:Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;


# direct methods
.method public constructor <init>(J)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;-><init>(JJ)V

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;->durationUs:J

    .line 48
    new-instance p1, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    const-wide/16 v0, 0x0

    cmp-long p2, p3, v0

    if-nez p2, :cond_0

    .line 49
    sget-object p2, Lcom/google/android/exoplayer2/extractor/SeekPoint;->START:Lcom/google/android/exoplayer2/extractor/SeekPoint;

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/google/android/exoplayer2/extractor/SeekPoint;

    invoke-direct {p2, v0, v1, p3, p4}, Lcom/google/android/exoplayer2/extractor/SeekPoint;-><init>(JJ)V

    :goto_0
    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lcom/google/android/exoplayer2/extractor/SeekPoint;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;->startSeekPoints:Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    return-void
.end method


# virtual methods
.method public getDurationUs()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;->durationUs:J

    return-wide v0
.end method

.method public getSeekPoints(J)Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;->startSeekPoints:Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    return-object p0
.end method

.method public isSeekable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
