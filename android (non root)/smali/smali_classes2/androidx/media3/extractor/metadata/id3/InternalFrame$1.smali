.class Landroidx/media3/extractor/metadata/id3/InternalFrame$1;
.super Ljava/lang/Object;
.source "InternalFrame.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/metadata/id3/InternalFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroidx/media3/extractor/metadata/id3/InternalFrame;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroidx/media3/extractor/metadata/id3/InternalFrame;
    .locals 0

    .line 91
    new-instance p0, Landroidx/media3/extractor/metadata/id3/InternalFrame;

    invoke-direct {p0, p1}, Landroidx/media3/extractor/metadata/id3/InternalFrame;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 87
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/metadata/id3/InternalFrame$1;->createFromParcel(Landroid/os/Parcel;)Landroidx/media3/extractor/metadata/id3/InternalFrame;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroidx/media3/extractor/metadata/id3/InternalFrame;
    .locals 0

    .line 96
    new-array p0, p1, [Landroidx/media3/extractor/metadata/id3/InternalFrame;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 87
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/metadata/id3/InternalFrame$1;->newArray(I)[Landroidx/media3/extractor/metadata/id3/InternalFrame;

    move-result-object p0

    return-object p0
.end method
