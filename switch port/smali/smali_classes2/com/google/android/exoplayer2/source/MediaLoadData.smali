.class public final Lcom/google/android/exoplayer2/source/MediaLoadData;
.super Ljava/lang/Object;
.source "MediaLoadData.java"


# instance fields
.field public final dataType:I

.field public final mediaEndTimeMs:J

.field public final mediaStartTimeMs:J

.field public final trackFormat:Lcom/google/android/exoplayer2/Format;

.field public final trackSelectionData:Ljava/lang/Object;

.field public final trackSelectionReason:I

.field public final trackType:I


# direct methods
.method public constructor <init>(I)V
    .locals 10

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move v1, p1

    .line 63
    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/source/MediaLoadData;-><init>(IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V

    return-void
.end method

.method public constructor <init>(IILcom/google/android/exoplayer2/Format;ILjava/lang/Object;JJ)V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/exoplayer2/source/MediaLoadData;->dataType:I

    iput p2, p0, Lcom/google/android/exoplayer2/source/MediaLoadData;->trackType:I

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/MediaLoadData;->trackFormat:Lcom/google/android/exoplayer2/Format;

    iput p4, p0, Lcom/google/android/exoplayer2/source/MediaLoadData;->trackSelectionReason:I

    iput-object p5, p0, Lcom/google/android/exoplayer2/source/MediaLoadData;->trackSelectionData:Ljava/lang/Object;

    iput-wide p6, p0, Lcom/google/android/exoplayer2/source/MediaLoadData;->mediaStartTimeMs:J

    iput-wide p8, p0, Lcom/google/android/exoplayer2/source/MediaLoadData;->mediaEndTimeMs:J

    return-void
.end method
