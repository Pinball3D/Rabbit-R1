.class Landroidx/media3/extractor/metadata/id3/BinaryFrame$1;
.super Ljava/lang/Object;
.source "BinaryFrame.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/metadata/id3/BinaryFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroidx/media3/extractor/metadata/id3/BinaryFrame;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroidx/media3/extractor/metadata/id3/BinaryFrame;
    .locals 0

    .line 73
    new-instance p0, Landroidx/media3/extractor/metadata/id3/BinaryFrame;

    invoke-direct {p0, p1}, Landroidx/media3/extractor/metadata/id3/BinaryFrame;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 69
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/metadata/id3/BinaryFrame$1;->createFromParcel(Landroid/os/Parcel;)Landroidx/media3/extractor/metadata/id3/BinaryFrame;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroidx/media3/extractor/metadata/id3/BinaryFrame;
    .locals 0

    .line 78
    new-array p0, p1, [Landroidx/media3/extractor/metadata/id3/BinaryFrame;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 69
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/metadata/id3/BinaryFrame$1;->newArray(I)[Landroidx/media3/extractor/metadata/id3/BinaryFrame;

    move-result-object p0

    return-object p0
.end method
