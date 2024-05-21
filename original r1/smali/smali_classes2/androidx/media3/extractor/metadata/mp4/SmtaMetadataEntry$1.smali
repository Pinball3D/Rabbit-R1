.class Landroidx/media3/extractor/metadata/mp4/SmtaMetadataEntry$1;
.super Ljava/lang/Object;
.source "SmtaMetadataEntry.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/metadata/mp4/SmtaMetadataEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroidx/media3/extractor/metadata/mp4/SmtaMetadataEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroidx/media3/extractor/metadata/mp4/SmtaMetadataEntry;
    .locals 1

    .line 101
    new-instance p0, Landroidx/media3/extractor/metadata/mp4/SmtaMetadataEntry;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/media3/extractor/metadata/mp4/SmtaMetadataEntry;-><init>(Landroid/os/Parcel;Landroidx/media3/extractor/metadata/mp4/SmtaMetadataEntry$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 97
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/metadata/mp4/SmtaMetadataEntry$1;->createFromParcel(Landroid/os/Parcel;)Landroidx/media3/extractor/metadata/mp4/SmtaMetadataEntry;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroidx/media3/extractor/metadata/mp4/SmtaMetadataEntry;
    .locals 0

    .line 106
    new-array p0, p1, [Landroidx/media3/extractor/metadata/mp4/SmtaMetadataEntry;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 97
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/metadata/mp4/SmtaMetadataEntry$1;->newArray(I)[Landroidx/media3/extractor/metadata/mp4/SmtaMetadataEntry;

    move-result-object p0

    return-object p0
.end method
