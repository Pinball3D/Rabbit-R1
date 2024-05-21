.class Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand$1;
.super Ljava/lang/Object;
.source "SpliceInsertCommand.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand;
    .locals 1

    .line 248
    new-instance p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand;-><init>(Landroid/os/Parcel;Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 244
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand;
    .locals 0

    .line 253
    new-array p0, p1, [Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 244
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand$1;->newArray(I)[Lcom/google/android/exoplayer2/metadata/scte35/SpliceInsertCommand;

    move-result-object p0

    return-object p0
.end method
