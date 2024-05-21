.class final Landroidx/media3/extractor/ts/UserDataReader;
.super Ljava/lang/Object;
.source "UserDataReader.java"


# static fields
.field private static final USER_DATA_START_CODE:I = 0x1b2


# instance fields
.field private final closedCaptionFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/common/Format;",
            ">;"
        }
    .end annotation
.end field

.field private final outputs:[Landroidx/media3/extractor/TrackOutput;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/Format;",
            ">;)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ts/UserDataReader;->closedCaptionFormats:Ljava/util/List;

    .line 39
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Landroidx/media3/extractor/TrackOutput;

    iput-object p1, p0, Landroidx/media3/extractor/ts/UserDataReader;->outputs:[Landroidx/media3/extractor/TrackOutput;

    return-void
.end method


# virtual methods
.method public consume(JLandroidx/media3/common/util/ParsableByteArray;)V
    .locals 4

    .line 67
    invoke-virtual {p3}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    return-void

    .line 70
    :cond_0
    invoke-virtual {p3}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 71
    invoke-virtual {p3}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 72
    invoke-virtual {p3}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    const/16 v3, 0x1b2

    if-ne v0, v3, :cond_1

    const v0, 0x47413934

    if-ne v1, v0, :cond_1

    const/4 v0, 0x3

    if-ne v2, v0, :cond_1

    iget-object p0, p0, Landroidx/media3/extractor/ts/UserDataReader;->outputs:[Landroidx/media3/extractor/TrackOutput;

    .line 76
    invoke-static {p1, p2, p3, p0}, Landroidx/media3/extractor/CeaUtil;->consumeCcData(JLandroidx/media3/common/util/ParsableByteArray;[Landroidx/media3/extractor/TrackOutput;)V

    :cond_1
    return-void
.end method

.method public createTracks(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Landroidx/media3/extractor/ts/UserDataReader;->outputs:[Landroidx/media3/extractor/TrackOutput;

    .line 44
    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 45
    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->generateNewId()V

    .line 46
    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->getTrackId()I

    move-result v2

    const/4 v3, 0x3

    invoke-interface {p1, v2, v3}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v2

    iget-object v3, p0, Landroidx/media3/extractor/ts/UserDataReader;->closedCaptionFormats:Ljava/util/List;

    .line 47
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/common/Format;

    .line 48
    iget-object v4, v3, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    const-string v5, "application/cea-608"

    .line 50
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "application/cea-708"

    .line 51
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    move v5, v0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v5, 0x1

    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Invalid closed caption MIME type provided: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 49
    invoke-static {v5, v6}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 53
    new-instance v5, Landroidx/media3/common/Format$Builder;

    invoke-direct {v5}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 55
    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->getFormatId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/media3/common/Format$Builder;->setId(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v5

    .line 56
    invoke-virtual {v5, v4}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    iget v5, v3, Landroidx/media3/common/Format;->selectionFlags:I

    .line 57
    invoke-virtual {v4, v5}, Landroidx/media3/common/Format$Builder;->setSelectionFlags(I)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    iget-object v5, v3, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    .line 58
    invoke-virtual {v4, v5}, Landroidx/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    iget v5, v3, Landroidx/media3/common/Format;->accessibilityChannel:I

    .line 59
    invoke-virtual {v4, v5}, Landroidx/media3/common/Format$Builder;->setAccessibilityChannel(I)Landroidx/media3/common/Format$Builder;

    move-result-object v4

    iget-object v3, v3, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    .line 60
    invoke-virtual {v4, v3}, Landroidx/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    move-result-object v3

    .line 61
    invoke-virtual {v3}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v3

    .line 53
    invoke-interface {v2, v3}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    iget-object v3, p0, Landroidx/media3/extractor/ts/UserDataReader;->outputs:[Landroidx/media3/extractor/TrackOutput;

    .line 62
    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
