.class Landroidx/media3/extractor/metadata/dvbsi/AppInfoTable$1;
.super Ljava/lang/Object;
.source "AppInfoTable.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/metadata/dvbsi/AppInfoTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroidx/media3/extractor/metadata/dvbsi/AppInfoTable;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroidx/media3/extractor/metadata/dvbsi/AppInfoTable;
    .locals 1

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 74
    new-instance v0, Landroidx/media3/extractor/metadata/dvbsi/AppInfoTable;

    invoke-direct {v0, p1, p0}, Landroidx/media3/extractor/metadata/dvbsi/AppInfoTable;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 69
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/metadata/dvbsi/AppInfoTable$1;->createFromParcel(Landroid/os/Parcel;)Landroidx/media3/extractor/metadata/dvbsi/AppInfoTable;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroidx/media3/extractor/metadata/dvbsi/AppInfoTable;
    .locals 0

    .line 79
    new-array p0, p1, [Landroidx/media3/extractor/metadata/dvbsi/AppInfoTable;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 69
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/metadata/dvbsi/AppInfoTable$1;->newArray(I)[Landroidx/media3/extractor/metadata/dvbsi/AppInfoTable;

    move-result-object p0

    return-object p0
.end method
