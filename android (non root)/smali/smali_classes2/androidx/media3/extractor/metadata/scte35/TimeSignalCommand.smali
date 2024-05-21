.class public final Landroidx/media3/extractor/metadata/scte35/TimeSignalCommand;
.super Landroidx/media3/extractor/metadata/scte35/SpliceCommand;
.source "TimeSignalCommand.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/media3/extractor/metadata/scte35/TimeSignalCommand;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final playbackPositionUs:J

.field public final ptsTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 83
    new-instance v0, Landroidx/media3/extractor/metadata/scte35/TimeSignalCommand$1;

    invoke-direct {v0}, Landroidx/media3/extractor/metadata/scte35/TimeSignalCommand$1;-><init>()V

    sput-object v0, Landroidx/media3/extractor/metadata/scte35/TimeSignalCommand;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(JJ)V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroidx/media3/extractor/metadata/scte35/SpliceCommand;-><init>()V

    iput-wide p1, p0, Landroidx/media3/extractor/metadata/scte35/TimeSignalCommand;->ptsTime:J

    iput-wide p3, p0, Landroidx/media3/extractor/metadata/scte35/TimeSignalCommand;->playbackPositionUs:J

    return-void
.end method

.method synthetic constructor <init>(JJLandroidx/media3/extractor/metadata/scte35/TimeSignalCommand$1;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media3/extractor/metadata/scte35/TimeSignalCommand;-><init>(JJ)V

    return-void
.end method

.method static parseFromSection(Landroidx/media3/common/util/ParsableByteArray;JLandroidx/media3/common/util/TimestampAdjuster;)Landroidx/media3/extractor/metadata/scte35/TimeSignalCommand;
    .locals 1

    .line 40
    invoke-static {p0, p1, p2}, Landroidx/media3/extractor/metadata/scte35/TimeSignalCommand;->parseSpliceTime(Landroidx/media3/common/util/ParsableByteArray;J)J

    move-result-wide p0

    .line 41
    invoke-virtual {p3, p0, p1}, Landroidx/media3/common/util/TimestampAdjuster;->adjustTsTimestamp(J)J

    move-result-wide p2

    .line 42
    new-instance v0, Landroidx/media3/extractor/metadata/scte35/TimeSignalCommand;

    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/media3/extractor/metadata/scte35/TimeSignalCommand;-><init>(JJ)V

    return-object v0
.end method

.method static parseSpliceTime(Landroidx/media3/common/util/ParsableByteArray;J)J
    .locals 6

    .line 55
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x80

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    .line 59
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v2

    or-long/2addr v0, v2

    add-long/2addr v0, p1

    const-wide p0, 0x1ffffffffL

    and-long/2addr p0, v0

    goto :goto_0

    :cond_0
    const-wide p0, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    return-wide p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SCTE-35 TimeSignalCommand { ptsTime="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Landroidx/media3/extractor/metadata/scte35/TimeSignalCommand;->ptsTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", playbackPositionUs= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroidx/media3/extractor/metadata/scte35/TimeSignalCommand;->playbackPositionUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " }"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Landroidx/media3/extractor/metadata/scte35/TimeSignalCommand;->ptsTime:J

    .line 79
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroidx/media3/extractor/metadata/scte35/TimeSignalCommand;->playbackPositionUs:J

    .line 80
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
