.class final Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;
.super Ljava/lang/Object;
.source "Mp4Extractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/mp4/Mp4Extractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Mp4Track"
.end annotation


# instance fields
.field public sampleIndex:I

.field public final sampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

.field public final track:Landroidx/media3/extractor/mp4/Track;

.field public final trackOutput:Landroidx/media3/extractor/TrackOutput;

.field public final trueHdSampleRechunker:Landroidx/media3/extractor/TrueHdSampleRechunker;


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/mp4/Track;Landroidx/media3/extractor/mp4/TrackSampleTable;Landroidx/media3/extractor/TrackOutput;)V
    .locals 0

    .line 958
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->track:Landroidx/media3/extractor/mp4/Track;

    iput-object p2, p0, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->sampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iput-object p3, p0, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->trackOutput:Landroidx/media3/extractor/TrackOutput;

    .line 963
    iget-object p1, p1, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    iget-object p1, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string p2, "audio/true-hd"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 964
    new-instance p1, Landroidx/media3/extractor/TrueHdSampleRechunker;

    invoke-direct {p1}, Landroidx/media3/extractor/TrueHdSampleRechunker;-><init>()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Landroidx/media3/extractor/mp4/Mp4Extractor$Mp4Track;->trueHdSampleRechunker:Landroidx/media3/extractor/TrueHdSampleRechunker;

    return-void
.end method
