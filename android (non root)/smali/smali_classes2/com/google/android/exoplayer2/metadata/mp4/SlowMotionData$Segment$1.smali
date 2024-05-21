.class Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData$Segment$1;
.super Ljava/lang/Object;
.source "SlowMotionData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData$Segment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData$Segment;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData$Segment;
    .locals 6

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 117
    new-instance p0, Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData$Segment;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData$Segment;-><init>(JJI)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData$Segment$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData$Segment;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData$Segment;
    .locals 0

    .line 122
    new-array p0, p1, [Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData$Segment;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 110
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData$Segment$1;->newArray(I)[Lcom/google/android/exoplayer2/metadata/mp4/SlowMotionData$Segment;

    move-result-object p0

    return-object p0
.end method
