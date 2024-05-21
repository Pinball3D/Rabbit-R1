.class final Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30$SeekMapAdapter;
.super Ljava/lang/Object;
.source "OutputConsumerAdapterV30.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/SeekMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SeekMapAdapter"
.end annotation


# instance fields
.field private final adaptedSeekMap:Landroid/media/MediaParser$SeekMap;


# direct methods
.method public constructor <init>(Landroid/media/MediaParser$SeekMap;)V
    .locals 0

    .line 616
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30$SeekMapAdapter;->adaptedSeekMap:Landroid/media/MediaParser$SeekMap;

    return-void
.end method

.method private static asExoPlayerSeekPoint(Landroid/media/MediaParser$SeekPoint;)Lcom/google/android/exoplayer2/extractor/SeekPoint;
    .locals 5

    .line 648
    new-instance v0, Lcom/google/android/exoplayer2/extractor/SeekPoint;

    iget-wide v1, p0, Landroid/media/MediaParser$SeekPoint;->timeMicros:J

    iget-wide v3, p0, Landroid/media/MediaParser$SeekPoint;->position:J

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/extractor/SeekPoint;-><init>(JJ)V

    return-object v0
.end method


# virtual methods
.method public getDurationUs()J
    .locals 4

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30$SeekMapAdapter;->adaptedSeekMap:Landroid/media/MediaParser$SeekMap;

    .line 627
    invoke-virtual {p0}, Landroid/media/MediaParser$SeekMap;->getDurationMicros()J

    move-result-wide v0

    const-wide/32 v2, -0x80000000

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    return-wide v0
.end method

.method public getSeekPoints(J)Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30$SeekMapAdapter;->adaptedSeekMap:Landroid/media/MediaParser$SeekMap;

    .line 635
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaParser$SeekMap;->getSeekPoints(J)Landroid/util/Pair;

    move-result-object p0

    .line 637
    iget-object p1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object p2, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-ne p1, p2, :cond_0

    .line 638
    new-instance p1, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Landroid/media/MediaParser$SeekPoint;

    invoke-static {p0}, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30$SeekMapAdapter;->asExoPlayerSeekPoint(Landroid/media/MediaParser$SeekPoint;)Lcom/google/android/exoplayer2/extractor/SeekPoint;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lcom/google/android/exoplayer2/extractor/SeekPoint;)V

    goto :goto_0

    .line 640
    :cond_0
    new-instance p1, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;

    iget-object p2, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Landroid/media/MediaParser$SeekPoint;

    .line 642
    invoke-static {p2}, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30$SeekMapAdapter;->asExoPlayerSeekPoint(Landroid/media/MediaParser$SeekPoint;)Lcom/google/android/exoplayer2/extractor/SeekPoint;

    move-result-object p2

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Landroid/media/MediaParser$SeekPoint;

    invoke-static {p0}, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30$SeekMapAdapter;->asExoPlayerSeekPoint(Landroid/media/MediaParser$SeekPoint;)Lcom/google/android/exoplayer2/extractor/SeekPoint;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Lcom/google/android/exoplayer2/extractor/SeekMap$SeekPoints;-><init>(Lcom/google/android/exoplayer2/extractor/SeekPoint;Lcom/google/android/exoplayer2/extractor/SeekPoint;)V

    :goto_0
    return-object p1
.end method

.method public isSeekable()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/mediaparser/OutputConsumerAdapterV30$SeekMapAdapter;->adaptedSeekMap:Landroid/media/MediaParser$SeekMap;

    .line 622
    invoke-virtual {p0}, Landroid/media/MediaParser$SeekMap;->isSeekable()Z

    move-result p0

    return p0
.end method
