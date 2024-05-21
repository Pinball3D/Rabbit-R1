.class public final synthetic Landroidx/media3/extractor/flac/FlacBinarySearchSeeker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/media3/extractor/BinarySearchSeeker$SeekTimestampConverter;


# instance fields
.field public final synthetic f$0:Landroidx/media3/extractor/FlacStreamMetadata;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/extractor/FlacStreamMetadata;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/flac/FlacBinarySearchSeeker$$ExternalSyntheticLambda0;->f$0:Landroidx/media3/extractor/FlacStreamMetadata;

    return-void
.end method


# virtual methods
.method public final timeUsToTargetTime(J)J
    .locals 0

    iget-object p0, p0, Landroidx/media3/extractor/flac/FlacBinarySearchSeeker$$ExternalSyntheticLambda0;->f$0:Landroidx/media3/extractor/FlacStreamMetadata;

    invoke-virtual {p0, p1, p2}, Landroidx/media3/extractor/FlacStreamMetadata;->getSampleNumber(J)J

    move-result-wide p0

    return-wide p0
.end method
