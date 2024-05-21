.class public final Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;
.super Ljava/lang/Object;
.source "MotionPhotoMetadata.java"

# interfaces
.implements Landroidx/media3/common/Metadata$Entry;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final photoPresentationTimestampUs:J

.field public final photoSize:J

.field public final photoStartPosition:J

.field public final videoSize:J

.field public final videoStartPosition:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 123
    new-instance v0, Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata$1;

    invoke-direct {v0}, Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata$1;-><init>()V

    sput-object v0, Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JJJJJ)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;->photoStartPosition:J

    iput-wide p3, p0, Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;->photoSize:J

    iput-wide p5, p0, Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;->photoPresentationTimestampUs:J

    iput-wide p7, p0, Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;->videoStartPosition:J

    iput-wide p9, p0, Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;->videoSize:J

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;->photoStartPosition:J

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;->photoSize:J

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;->photoPresentationTimestampUs:J

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;->videoStartPosition:J

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;->videoSize:J

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata$1;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 71
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 74
    :cond_1
    check-cast p1, Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;

    iget-wide v2, p0, Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;->photoStartPosition:J

    .line 75
    iget-wide v4, p1, Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;->photoStartPosition:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;->photoSize:J

    iget-wide v4, p1, Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;->photoSize:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;->photoPresentationTimestampUs:J

    iget-wide v4, p1, Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;->photoPresentationTimestampUs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;->videoStartPosition:J

    iget-wide v4, p1, Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;->videoStartPosition:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;->videoSize:J

    iget-wide p0, p1, Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;->videoSize:J

    cmp-long p0, v2, p0

    if-nez p0, :cond_2

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
    .locals 4

    iget-wide v0, p0, Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;->photoStartPosition:J

    .line 85
    invoke-static {v0, v1}, Lcom/google/common/primitives/Longs;->hashCode(J)I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;->photoSize:J

    .line 86
    invoke-static {v2, v3}, Lcom/google/common/primitives/Longs;->hashCode(J)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;->photoPresentationTimestampUs:J

    .line 87
    invoke-static {v2, v3}, Lcom/google/common/primitives/Longs;->hashCode(J)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;->videoStartPosition:J

    .line 88
    invoke-static {v2, v3}, Lcom/google/common/primitives/Longs;->hashCode(J)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;->videoSize:J

    .line 89
    invoke-static {v2, v3}, Lcom/google/common/primitives/Longs;->hashCode(J)I

    move-result p0

    add-int/2addr v1, p0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Motion photo metadata: photoStartPosition="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;->photoStartPosition:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", photoSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;->photoSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", photoPresentationTimestampUs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;->photoPresentationTimestampUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", videoStartPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;->videoStartPosition:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", videoSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;->videoSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;->photoStartPosition:J

    .line 111
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;->photoSize:J

    .line 112
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;->photoPresentationTimestampUs:J

    .line 113
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;->videoStartPosition:J

    .line 114
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroidx/media3/extractor/metadata/mp4/MotionPhotoMetadata;->videoSize:J

    .line 115
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
