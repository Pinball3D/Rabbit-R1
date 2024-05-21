.class Lcom/google/android/exoplayer2/metadata/id3/GeobFrame$1;
.super Ljava/lang/Object;
.source "GeobFrame.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/metadata/id3/GeobFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/exoplayer2/metadata/id3/GeobFrame;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/exoplayer2/metadata/id3/GeobFrame;
    .locals 0

    .line 103
    new-instance p0, Lcom/google/android/exoplayer2/metadata/id3/GeobFrame;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/metadata/id3/GeobFrame;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 99
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/metadata/id3/GeobFrame$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/exoplayer2/metadata/id3/GeobFrame;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/google/android/exoplayer2/metadata/id3/GeobFrame;
    .locals 0

    .line 108
    new-array p0, p1, [Lcom/google/android/exoplayer2/metadata/id3/GeobFrame;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 99
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/metadata/id3/GeobFrame$1;->newArray(I)[Lcom/google/android/exoplayer2/metadata/id3/GeobFrame;

    move-result-object p0

    return-object p0
.end method
