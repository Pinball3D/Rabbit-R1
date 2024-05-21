.class final Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
.super Ljava/lang/Object;
.source "FragmentedMp4Extractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TrackBundle"
.end annotation


# static fields
.field private static final SINGLE_SUBSAMPLE_ENCRYPTION_DATA_LENGTH:I = 0x8


# instance fields
.field public currentSampleInTrackRun:I

.field public currentSampleIndex:I

.field public currentTrackRunIndex:I

.field private currentlyInFragment:Z

.field private final defaultInitializationVector:Landroidx/media3/common/util/ParsableByteArray;

.field public defaultSampleValues:Landroidx/media3/extractor/mp4/DefaultSampleValues;

.field private final encryptionSignalByte:Landroidx/media3/common/util/ParsableByteArray;

.field public firstSampleToOutputIndex:I

.field public final fragment:Landroidx/media3/extractor/mp4/TrackFragment;

.field public moovSampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

.field public final output:Landroidx/media3/extractor/TrackOutput;

.field public final scratch:Landroidx/media3/common/util/ParsableByteArray;


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/TrackOutput;Landroidx/media3/extractor/mp4/TrackSampleTable;Landroidx/media3/extractor/mp4/DefaultSampleValues;)V
    .locals 1

    .line 1661
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Landroidx/media3/extractor/TrackOutput;

    iput-object p2, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iput-object p3, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->defaultSampleValues:Landroidx/media3/extractor/mp4/DefaultSampleValues;

    .line 1665
    new-instance p1, Landroidx/media3/extractor/mp4/TrackFragment;

    invoke-direct {p1}, Landroidx/media3/extractor/mp4/TrackFragment;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    .line 1666
    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {p1}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 1667
    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->encryptionSignalByte:Landroidx/media3/common/util/ParsableByteArray;

    .line 1668
    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {p1}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->defaultInitializationVector:Landroidx/media3/common/util/ParsableByteArray;

    .line 1669
    invoke-virtual {p0, p2, p3}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->reset(Landroidx/media3/extractor/mp4/TrackSampleTable;Landroidx/media3/extractor/mp4/DefaultSampleValues;)V

    return-void
.end method

.method static synthetic access$000(Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;)Z
    .locals 0

    .line 1638
    iget-boolean p0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentlyInFragment:Z

    return p0
.end method

.method static synthetic access$002(Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;Z)Z
    .locals 0

    .line 1638
    iput-boolean p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentlyInFragment:Z

    return p1
.end method


# virtual methods
.method public getCurrentSampleFlags()I
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentlyInFragment:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    .line 1743
    iget-object v0, v0, Landroidx/media3/extractor/mp4/TrackSampleTable;->flags:[I

    iget v1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    aget v0, v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    .line 1744
    iget-object v0, v0, Landroidx/media3/extractor/mp4/TrackFragment;->sampleIsSyncFrameTable:[Z

    iget v1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1745
    :goto_0
    invoke-virtual {p0}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->getEncryptionBoxIfEncrypted()Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    move-result-object p0

    if-eqz p0, :cond_2

    const/high16 p0, 0x40000000    # 2.0f

    or-int/2addr v0, p0

    :cond_2
    return v0
.end method

.method public getCurrentSampleOffset()J
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentlyInFragment:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    .line 1728
    iget-object v0, v0, Landroidx/media3/extractor/mp4/TrackSampleTable;->offsets:[J

    iget p0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    aget-wide v0, v0, p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    .line 1729
    iget-object v0, v0, Landroidx/media3/extractor/mp4/TrackFragment;->trunDataPosition:[J

    iget p0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentTrackRunIndex:I

    aget-wide v0, v0, p0

    :goto_0
    return-wide v0
.end method

.method public getCurrentSamplePresentationTimeUs()J
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentlyInFragment:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    .line 1721
    iget-object v0, v0, Landroidx/media3/extractor/mp4/TrackSampleTable;->timestampsUs:[J

    iget p0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    aget-wide v0, v0, p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    iget p0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    .line 1722
    invoke-virtual {v0, p0}, Landroidx/media3/extractor/mp4/TrackFragment;->getSamplePresentationTimeUs(I)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getCurrentSampleSize()I
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentlyInFragment:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    .line 1735
    iget-object v0, v0, Landroidx/media3/extractor/mp4/TrackSampleTable;->sizes:[I

    iget p0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    aget p0, v0, p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    .line 1736
    iget-object v0, v0, Landroidx/media3/extractor/mp4/TrackFragment;->sampleSizeTable:[I

    iget p0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    aget p0, v0, p0

    :goto_0
    return p0
.end method

.method public getEncryptionBoxIfEncrypted()Landroidx/media3/extractor/mp4/TrackEncryptionBox;
    .locals 3

    iget-boolean v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentlyInFragment:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    .line 1899
    iget-object v0, v0, Landroidx/media3/extractor/mp4/TrackFragment;->header:Landroidx/media3/extractor/mp4/DefaultSampleValues;

    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/mp4/DefaultSampleValues;

    iget v0, v0, Landroidx/media3/extractor/mp4/DefaultSampleValues;->sampleDescriptionIndex:I

    iget-object v2, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    .line 1902
    iget-object v2, v2, Landroidx/media3/extractor/mp4/TrackFragment;->trackEncryptionBox:Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    if-eqz v2, :cond_1

    iget-object p0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    .line 1903
    iget-object p0, p0, Landroidx/media3/extractor/mp4/TrackFragment;->trackEncryptionBox:Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    .line 1904
    iget-object p0, p0, Landroidx/media3/extractor/mp4/TrackSampleTable;->track:Landroidx/media3/extractor/mp4/Track;

    invoke-virtual {p0, v0}, Landroidx/media3/extractor/mp4/Track;->getSampleDescriptionEncryptionBox(I)Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    .line 1905
    iget-boolean v0, p0, Landroidx/media3/extractor/mp4/TrackEncryptionBox;->isEncrypted:Z

    if-eqz v0, :cond_2

    move-object v1, p0

    :cond_2
    return-object v1
.end method

.method public next()Z
    .locals 5

    iget v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    iget-boolean v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentlyInFragment:Z

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    :cond_0
    iget v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleInTrackRun:I

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleInTrackRun:I

    iget-object v3, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    .line 1770
    iget-object v3, v3, Landroidx/media3/extractor/mp4/TrackFragment;->trunLength:[I

    iget v4, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentTrackRunIndex:I

    aget v3, v3, v4

    if-ne v0, v3, :cond_1

    add-int/2addr v4, v1

    iput v4, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentTrackRunIndex:I

    iput v2, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleInTrackRun:I

    return v2

    :cond_1
    return v1
.end method

.method public outputSampleEncryptionData(II)I
    .locals 9

    .line 1790
    invoke-virtual {p0}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->getEncryptionBoxIfEncrypted()Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1797
    :cond_0
    iget v2, v0, Landroidx/media3/extractor/mp4/TrackEncryptionBox;->perSampleIvSize:I

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    .line 1798
    iget-object v2, v2, Landroidx/media3/extractor/mp4/TrackFragment;->sampleEncryptionData:Landroidx/media3/common/util/ParsableByteArray;

    .line 1799
    iget v0, v0, Landroidx/media3/extractor/mp4/TrackEncryptionBox;->perSampleIvSize:I

    goto :goto_0

    .line 1802
    :cond_1
    iget-object v0, v0, Landroidx/media3/extractor/mp4/TrackEncryptionBox;->defaultInitializationVector:[B

    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iget-object v2, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->defaultInitializationVector:Landroidx/media3/common/util/ParsableByteArray;

    .line 1803
    array-length v3, v0

    invoke-virtual {v2, v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->reset([BI)V

    iget-object v2, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->defaultInitializationVector:Landroidx/media3/common/util/ParsableByteArray;

    .line 1805
    array-length v0, v0

    :goto_0
    iget-object v3, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    iget v4, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    .line 1809
    invoke-virtual {v3, v4}, Landroidx/media3/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable(I)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_3

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    move v5, v1

    goto :goto_2

    :cond_3
    :goto_1
    move v5, v4

    :goto_2
    iget-object v6, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->encryptionSignalByte:Landroidx/media3/common/util/ParsableByteArray;

    .line 1813
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v6

    if-eqz v5, :cond_4

    const/16 v7, 0x80

    goto :goto_3

    :cond_4
    move v7, v1

    :goto_3
    or-int/2addr v7, v0

    int-to-byte v7, v7

    .line 1814
    aput-byte v7, v6, v1

    iget-object v6, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->encryptionSignalByte:Landroidx/media3/common/util/ParsableByteArray;

    .line 1815
    invoke-virtual {v6, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    iget-object v6, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Landroidx/media3/extractor/TrackOutput;

    iget-object v7, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->encryptionSignalByte:Landroidx/media3/common/util/ParsableByteArray;

    .line 1816
    invoke-interface {v6, v7, v4, v4}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;II)V

    iget-object v6, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Landroidx/media3/extractor/TrackOutput;

    .line 1818
    invoke-interface {v6, v2, v0, v4}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;II)V

    if-nez v5, :cond_5

    add-int/2addr v0, v4

    return v0

    :cond_5
    const/4 v2, 0x6

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/16 v7, 0x8

    if-nez v3, :cond_6

    iget-object v3, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 1829
    invoke-virtual {v3, v7}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    iget-object v3, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 1831
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v3

    .line 1832
    aput-byte v1, v3, v1

    .line 1833
    aput-byte v4, v3, v4

    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 1835
    aput-byte v1, v3, v6

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    .line 1836
    aput-byte p2, v3, v5

    shr-int/lit8 p2, p1, 0x18

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    const/4 v1, 0x4

    .line 1838
    aput-byte p2, v3, v1

    shr-int/lit8 p2, p1, 0x10

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    const/4 v1, 0x5

    .line 1839
    aput-byte p2, v3, v1

    shr-int/lit8 p2, p1, 0x8

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    .line 1840
    aput-byte p2, v3, v2

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 p2, 0x7

    .line 1841
    aput-byte p1, v3, p2

    iget-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Landroidx/media3/extractor/TrackOutput;

    iget-object p0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 1842
    invoke-interface {p1, p0, v7, v4}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;II)V

    add-int/lit8 v0, v0, 0x9

    return v0

    :cond_6
    iget-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    .line 1849
    iget-object p1, p1, Landroidx/media3/extractor/mp4/TrackFragment;->sampleEncryptionData:Landroidx/media3/common/util/ParsableByteArray;

    .line 1850
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v3

    const/4 v8, -0x2

    .line 1851
    invoke-virtual {p1, v8}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    mul-int/2addr v3, v2

    add-int/2addr v3, v6

    if-eqz p2, :cond_7

    iget-object v2, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 1857
    invoke-virtual {v2, v3}, Landroidx/media3/common/util/ParsableByteArray;->reset(I)V

    iget-object v2, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 1858
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v2

    .line 1859
    invoke-virtual {p1, v2, v1, v3}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 1861
    aget-byte p1, v2, v6

    and-int/lit16 p1, p1, 0xff

    shl-int/2addr p1, v7

    aget-byte v1, v2, v5

    and-int/lit16 v1, v1, 0xff

    or-int/2addr p1, v1

    add-int/2addr p1, p2

    shr-int/lit8 p2, p1, 0x8

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    .line 1863
    aput-byte p2, v2, v6

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 1864
    aput-byte p1, v2, v5

    iget-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    :cond_7
    iget-object p0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Landroidx/media3/extractor/TrackOutput;

    .line 1868
    invoke-interface {p0, p1, v3, v4}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;II)V

    add-int/2addr v0, v4

    add-int/2addr v0, v3

    return v0
.end method

.method public reset(Landroidx/media3/extractor/mp4/TrackSampleTable;Landroidx/media3/extractor/mp4/DefaultSampleValues;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iput-object p2, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->defaultSampleValues:Landroidx/media3/extractor/mp4/DefaultSampleValues;

    iget-object p2, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Landroidx/media3/extractor/TrackOutput;

    .line 1675
    iget-object p1, p1, Landroidx/media3/extractor/mp4/TrackSampleTable;->track:Landroidx/media3/extractor/mp4/Track;

    iget-object p1, p1, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    invoke-interface {p2, p1}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    .line 1676
    invoke-virtual {p0}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->resetFragmentInfo()V

    return-void
.end method

.method public resetFragmentInfo()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    .line 1693
    invoke-virtual {v0}, Landroidx/media3/extractor/mp4/TrackFragment;->reset()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    iput v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentTrackRunIndex:I

    iput v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleInTrackRun:I

    iput v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->firstSampleToOutputIndex:I

    iput-boolean v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentlyInFragment:Z

    return-void
.end method

.method public seek(J)V
    .locals 3

    iget v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    :goto_0
    iget-object v1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    .line 1709
    iget v1, v1, Landroidx/media3/extractor/mp4/TrackFragment;->sampleCount:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    .line 1710
    invoke-virtual {v1, v0}, Landroidx/media3/extractor/mp4/TrackFragment;->getSamplePresentationTimeUs(I)J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-gtz v1, :cond_1

    iget-object v1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    .line 1711
    iget-object v1, v1, Landroidx/media3/extractor/mp4/TrackFragment;->sampleIsSyncFrameTable:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    iput v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->firstSampleToOutputIndex:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public skipSampleEncryptionData()V
    .locals 3

    .line 1879
    invoke-virtual {p0}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->getEncryptionBoxIfEncrypted()Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    .line 1884
    iget-object v1, v1, Landroidx/media3/extractor/mp4/TrackFragment;->sampleEncryptionData:Landroidx/media3/common/util/ParsableByteArray;

    .line 1885
    iget v2, v0, Landroidx/media3/extractor/mp4/TrackEncryptionBox;->perSampleIvSize:I

    if-eqz v2, :cond_1

    .line 1886
    iget v0, v0, Landroidx/media3/extractor/mp4/TrackEncryptionBox;->perSampleIvSize:I

    invoke-virtual {v1, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    :cond_1
    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    iget p0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    .line 1888
    invoke-virtual {v0, p0}, Landroidx/media3/extractor/mp4/TrackFragment;->sampleHasSubsampleEncryptionTable(I)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 1889
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result p0

    mul-int/lit8 p0, p0, 0x6

    invoke-virtual {v1, p0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    :cond_2
    return-void
.end method

.method public updateDrmInitData(Landroidx/media3/common/DrmInitData;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    .line 1681
    iget-object v0, v0, Landroidx/media3/extractor/mp4/TrackSampleTable;->track:Landroidx/media3/extractor/mp4/Track;

    iget-object v1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Landroidx/media3/extractor/mp4/TrackFragment;

    iget-object v1, v1, Landroidx/media3/extractor/mp4/TrackFragment;->header:Landroidx/media3/extractor/mp4/DefaultSampleValues;

    .line 1683
    invoke-static {v1}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/extractor/mp4/DefaultSampleValues;

    iget v1, v1, Landroidx/media3/extractor/mp4/DefaultSampleValues;->sampleDescriptionIndex:I

    .line 1682
    invoke-virtual {v0, v1}, Landroidx/media3/extractor/mp4/Track;->getSampleDescriptionEncryptionBox(I)Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1684
    iget-object v0, v0, Landroidx/media3/extractor/mp4/TrackEncryptionBox;->schemeType:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1685
    :goto_0
    invoke-virtual {p1, v0}, Landroidx/media3/common/DrmInitData;->copyWithSchemeType(Ljava/lang/String;)Landroidx/media3/common/DrmInitData;

    move-result-object p1

    iget-object v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->moovSampleTable:Landroidx/media3/extractor/mp4/TrackSampleTable;

    .line 1686
    iget-object v0, v0, Landroidx/media3/extractor/mp4/TrackSampleTable;->track:Landroidx/media3/extractor/mp4/Track;

    iget-object v0, v0, Landroidx/media3/extractor/mp4/Track;->format:Landroidx/media3/common/Format;

    .line 1687
    invoke-virtual {v0}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/media3/common/Format$Builder;->setDrmInitData(Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object p1

    iget-object p0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Landroidx/media3/extractor/TrackOutput;

    .line 1688
    invoke-interface {p0, p1}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    return-void
.end method
