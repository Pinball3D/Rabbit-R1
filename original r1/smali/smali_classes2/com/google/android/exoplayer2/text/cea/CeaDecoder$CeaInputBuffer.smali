.class final Lcom/google/android/exoplayer2/text/cea/CeaDecoder$CeaInputBuffer;
.super Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;
.source "CeaDecoder.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/text/cea/CeaDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CeaInputBuffer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;",
        "Ljava/lang/Comparable<",
        "Lcom/google/android/exoplayer2/text/cea/CeaDecoder$CeaInputBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field private queuedInputBufferCount:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 176
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/SubtitleInputBuffer;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/text/cea/CeaDecoder$1;)V
    .locals 0

    .line 176
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder$CeaInputBuffer;-><init>()V

    return-void
.end method

.method static synthetic access$102(Lcom/google/android/exoplayer2/text/cea/CeaDecoder$CeaInputBuffer;J)J
    .locals 0

    .line 176
    iput-wide p1, p0, Lcom/google/android/exoplayer2/text/cea/CeaDecoder$CeaInputBuffer;->queuedInputBufferCount:J

    return-wide p1
.end method


# virtual methods
.method public compareTo(Lcom/google/android/exoplayer2/text/cea/CeaDecoder$CeaInputBuffer;)I
    .locals 7

    .line 183
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder$CeaInputBuffer;->isEndOfStream()Z

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder$CeaInputBuffer;->isEndOfStream()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v1, :cond_1

    .line 184
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder$CeaInputBuffer;->isEndOfStream()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    return v2

    .line 186
    :cond_1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/text/cea/CeaDecoder$CeaInputBuffer;->timeUs:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/text/cea/CeaDecoder$CeaInputBuffer;->timeUs:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-nez v6, :cond_2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/text/cea/CeaDecoder$CeaInputBuffer;->queuedInputBufferCount:J

    .line 188
    iget-wide p0, p1, Lcom/google/android/exoplayer2/text/cea/CeaDecoder$CeaInputBuffer;->queuedInputBufferCount:J

    sub-long/2addr v0, p0

    cmp-long p0, v0, v4

    if-nez p0, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    cmp-long p0, v0, v4

    if-lez p0, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    :goto_1
    return v2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 176
    check-cast p1, Lcom/google/android/exoplayer2/text/cea/CeaDecoder$CeaInputBuffer;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder$CeaInputBuffer;->compareTo(Lcom/google/android/exoplayer2/text/cea/CeaDecoder$CeaInputBuffer;)I

    move-result p0

    return p0
.end method
