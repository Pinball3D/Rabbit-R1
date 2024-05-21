.class Landroidx/media3/extractor/metadata/scte35/SpliceNullCommand$1;
.super Ljava/lang/Object;
.source "SpliceNullCommand.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/metadata/scte35/SpliceNullCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroidx/media3/extractor/metadata/scte35/SpliceNullCommand;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroidx/media3/extractor/metadata/scte35/SpliceNullCommand;
    .locals 0

    .line 37
    new-instance p0, Landroidx/media3/extractor/metadata/scte35/SpliceNullCommand;

    invoke-direct {p0}, Landroidx/media3/extractor/metadata/scte35/SpliceNullCommand;-><init>()V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/metadata/scte35/SpliceNullCommand$1;->createFromParcel(Landroid/os/Parcel;)Landroidx/media3/extractor/metadata/scte35/SpliceNullCommand;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroidx/media3/extractor/metadata/scte35/SpliceNullCommand;
    .locals 0

    .line 42
    new-array p0, p1, [Landroidx/media3/extractor/metadata/scte35/SpliceNullCommand;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/metadata/scte35/SpliceNullCommand$1;->newArray(I)[Landroidx/media3/extractor/metadata/scte35/SpliceNullCommand;

    move-result-object p0

    return-object p0
.end method
