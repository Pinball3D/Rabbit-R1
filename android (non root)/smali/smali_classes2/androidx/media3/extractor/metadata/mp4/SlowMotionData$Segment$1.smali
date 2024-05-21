.class Landroidx/media3/extractor/metadata/mp4/SlowMotionData$Segment$1;
.super Ljava/lang/Object;
.source "SlowMotionData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;
    .locals 6

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 119
    new-instance p0, Landroidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;-><init>(JJI)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 112
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/metadata/mp4/SlowMotionData$Segment$1;->createFromParcel(Landroid/os/Parcel;)Landroidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;
    .locals 0

    .line 124
    new-array p0, p1, [Landroidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 112
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/metadata/mp4/SlowMotionData$Segment$1;->newArray(I)[Landroidx/media3/extractor/metadata/mp4/SlowMotionData$Segment;

    move-result-object p0

    return-object p0
.end method
