.class public final Landroidx/media3/extractor/DummyExtractorOutput;
.super Ljava/lang/Object;
.source "DummyExtractorOutput.java"

# interfaces
.implements Landroidx/media3/extractor/ExtractorOutput;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public endTracks()V
    .locals 0

    return-void
.end method

.method public seekMap(Landroidx/media3/extractor/SeekMap;)V
    .locals 0

    return-void
.end method

.method public track(II)Landroidx/media3/extractor/TrackOutput;
    .locals 0

    .line 26
    new-instance p0, Landroidx/media3/extractor/DummyTrackOutput;

    invoke-direct {p0}, Landroidx/media3/extractor/DummyTrackOutput;-><init>()V

    return-object p0
.end method
