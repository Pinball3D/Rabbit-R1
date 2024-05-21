.class Landroidx/media3/extractor/metadata/scte35/TimeSignalCommand$1;
.super Ljava/lang/Object;
.source "TimeSignalCommand.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/metadata/scte35/TimeSignalCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroidx/media3/extractor/metadata/scte35/TimeSignalCommand;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroidx/media3/extractor/metadata/scte35/TimeSignalCommand;
    .locals 6

    .line 88
    new-instance p0, Landroidx/media3/extractor/metadata/scte35/TimeSignalCommand;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroidx/media3/extractor/metadata/scte35/TimeSignalCommand;-><init>(JJLandroidx/media3/extractor/metadata/scte35/TimeSignalCommand$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 84
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/metadata/scte35/TimeSignalCommand$1;->createFromParcel(Landroid/os/Parcel;)Landroidx/media3/extractor/metadata/scte35/TimeSignalCommand;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroidx/media3/extractor/metadata/scte35/TimeSignalCommand;
    .locals 0

    .line 93
    new-array p0, p1, [Landroidx/media3/extractor/metadata/scte35/TimeSignalCommand;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 84
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/metadata/scte35/TimeSignalCommand$1;->newArray(I)[Landroidx/media3/extractor/metadata/scte35/TimeSignalCommand;

    move-result-object p0

    return-object p0
.end method
