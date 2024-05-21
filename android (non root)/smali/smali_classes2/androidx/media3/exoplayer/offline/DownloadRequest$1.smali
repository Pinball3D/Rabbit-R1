.class Landroidx/media3/exoplayer/offline/DownloadRequest$1;
.super Ljava/lang/Object;
.source "DownloadRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/offline/DownloadRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroidx/media3/exoplayer/offline/DownloadRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroidx/media3/exoplayer/offline/DownloadRequest;
    .locals 0

    .line 304
    new-instance p0, Landroidx/media3/exoplayer/offline/DownloadRequest;

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/offline/DownloadRequest;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 300
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/offline/DownloadRequest$1;->createFromParcel(Landroid/os/Parcel;)Landroidx/media3/exoplayer/offline/DownloadRequest;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroidx/media3/exoplayer/offline/DownloadRequest;
    .locals 0

    .line 309
    new-array p0, p1, [Landroidx/media3/exoplayer/offline/DownloadRequest;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 300
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/offline/DownloadRequest$1;->newArray(I)[Landroidx/media3/exoplayer/offline/DownloadRequest;

    move-result-object p0

    return-object p0
.end method
