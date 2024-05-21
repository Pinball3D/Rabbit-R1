.class public final Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
.super Landroidx/media3/common/MediaPeriodId;
.source "MediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/MediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MediaPeriodId"
.end annotation


# direct methods
.method public constructor <init>(Landroidx/media3/common/MediaPeriodId;)V
    .locals 0

    .line 166
    invoke-direct {p0, p1}, Landroidx/media3/common/MediaPeriodId;-><init>(Landroidx/media3/common/MediaPeriodId;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 145
    invoke-direct {p0, p1}, Landroidx/media3/common/MediaPeriodId;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;IIJ)V
    .locals 0

    .line 161
    invoke-direct/range {p0 .. p5}, Landroidx/media3/common/MediaPeriodId;-><init>(Ljava/lang/Object;IIJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;J)V
    .locals 0

    .line 150
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/common/MediaPeriodId;-><init>(Ljava/lang/Object;J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;JI)V
    .locals 0

    .line 155
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media3/common/MediaPeriodId;-><init>(Ljava/lang/Object;JI)V

    return-void
.end method


# virtual methods
.method public bridge synthetic copyWithPeriodUid(Ljava/lang/Object;)Landroidx/media3/common/MediaPeriodId;
    .locals 0

    .line 140
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->copyWithPeriodUid(Ljava/lang/Object;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object p0

    return-object p0
.end method

.method public copyWithPeriodUid(Ljava/lang/Object;)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .locals 1

    .line 172
    new-instance v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-super {p0, p1}, Landroidx/media3/common/MediaPeriodId;->copyWithPeriodUid(Ljava/lang/Object;)Landroidx/media3/common/MediaPeriodId;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;-><init>(Landroidx/media3/common/MediaPeriodId;)V

    return-object v0
.end method

.method public bridge synthetic copyWithWindowSequenceNumber(J)Landroidx/media3/common/MediaPeriodId;
    .locals 0

    .line 140
    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;->copyWithWindowSequenceNumber(J)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    move-result-object p0

    return-object p0
.end method

.method public copyWithWindowSequenceNumber(J)Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;
    .locals 1

    .line 178
    new-instance v0, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    invoke-super {p0, p1, p2}, Landroidx/media3/common/MediaPeriodId;->copyWithWindowSequenceNumber(J)Landroidx/media3/common/MediaPeriodId;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;-><init>(Landroidx/media3/common/MediaPeriodId;)V

    return-object v0
.end method
