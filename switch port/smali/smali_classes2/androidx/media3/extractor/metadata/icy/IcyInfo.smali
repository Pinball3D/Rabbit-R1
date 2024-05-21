.class public final Landroidx/media3/extractor/metadata/icy/IcyInfo;
.super Ljava/lang/Object;
.source "IcyInfo.java"

# interfaces
.implements Landroidx/media3/common/Metadata$Entry;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/media3/extractor/metadata/icy/IcyInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final rawMetadata:[B

.field public final title:Ljava/lang/String;

.field public final url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 104
    new-instance v0, Landroidx/media3/extractor/metadata/icy/IcyInfo$1;

    invoke-direct {v0}, Landroidx/media3/extractor/metadata/icy/IcyInfo$1;-><init>()V

    sput-object v0, Landroidx/media3/extractor/metadata/icy/IcyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroidx/media3/extractor/metadata/icy/IcyInfo;->rawMetadata:[B

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/metadata/icy/IcyInfo;->title:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/extractor/metadata/icy/IcyInfo;->url:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([BLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/metadata/icy/IcyInfo;->rawMetadata:[B

    iput-object p2, p0, Landroidx/media3/extractor/metadata/icy/IcyInfo;->title:Ljava/lang/String;

    iput-object p3, p0, Landroidx/media3/extractor/metadata/icy/IcyInfo;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p1, :cond_2

    .line 70
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 73
    :cond_1
    check-cast p1, Landroidx/media3/extractor/metadata/icy/IcyInfo;

    iget-object p0, p0, Landroidx/media3/extractor/metadata/icy/IcyInfo;->rawMetadata:[B

    .line 75
    iget-object p1, p1, Landroidx/media3/extractor/metadata/icy/IcyInfo;->rawMetadata:[B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Landroidx/media3/extractor/metadata/icy/IcyInfo;->rawMetadata:[B

    .line 81
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    move-result p0

    return p0
.end method

.method public populateMediaMetadata(Landroidx/media3/common/MediaMetadata$Builder;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/extractor/metadata/icy/IcyInfo;->title:Ljava/lang/String;

    if-eqz p0, :cond_0

    .line 61
    invoke-virtual {p1, p0}, Landroidx/media3/common/MediaMetadata$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/media3/common/MediaMetadata$Builder;

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroidx/media3/extractor/metadata/icy/IcyInfo;->title:Ljava/lang/String;

    iget-object v1, p0, Landroidx/media3/extractor/metadata/icy/IcyInfo;->url:Ljava/lang/String;

    iget-object p0, p0, Landroidx/media3/extractor/metadata/icy/IcyInfo;->rawMetadata:[B

    .line 86
    array-length p0, p0

    .line 87
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "ICY: title=\"%s\", url=\"%s\", rawMetadata.length=\"%s\""

    .line 86
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Landroidx/media3/extractor/metadata/icy/IcyInfo;->rawMetadata:[B

    .line 94
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object p2, p0, Landroidx/media3/extractor/metadata/icy/IcyInfo;->title:Ljava/lang/String;

    .line 95
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/media3/extractor/metadata/icy/IcyInfo;->url:Ljava/lang/String;

    .line 96
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
