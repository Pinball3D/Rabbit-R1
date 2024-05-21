.class public final Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;
.super Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
.source "ApicFrame.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;",
            ">;"
        }
    .end annotation
.end field

.field public static final ID:Ljava/lang/String; = "APIC"


# instance fields
.field public final description:Ljava/lang/String;

.field public final mimeType:Ljava/lang/String;

.field public final pictureData:[B

.field public final pictureType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 99
    new-instance v0, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    const-string v0, "APIC"

    .line 47
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;->mimeType:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;->description:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;->pictureType:I

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;->pictureData:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I[B)V
    .locals 1

    const-string v0, "APIC"

    .line 39
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;->mimeType:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;->description:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;->pictureType:I

    iput-object p4, p0, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;->pictureData:[B

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 64
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 67
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;

    iget v2, p0, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;->pictureType:I

    .line 68
    iget v3, p1, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;->pictureType:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;->mimeType:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;->mimeType:Ljava/lang/String;

    .line 69
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;->description:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;->description:Ljava/lang/String;

    .line 70
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;->pictureData:[B

    iget-object p1, p1, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;->pictureData:[B

    .line 71
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x20f

    iget v1, p0, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;->pictureType:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;->mimeType:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 78
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;->description:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 79
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;->pictureData:[B

    .line 80
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public populateMediaMetadata(Lcom/google/android/exoplayer2/MediaMetadata$Builder;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;->pictureData:[B

    iget p0, p0, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;->pictureType:I

    .line 56
    invoke-virtual {p1, v0, p0}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->maybeSetArtworkData([BI)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": mimeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;->description:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;->mimeType:Ljava/lang/String;

    .line 93
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;->description:Ljava/lang/String;

    .line 94
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;->pictureType:I

    .line 95
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;->pictureData:[B

    .line 96
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
