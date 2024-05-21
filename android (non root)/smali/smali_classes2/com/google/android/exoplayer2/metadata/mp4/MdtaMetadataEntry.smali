.class public final Lcom/google/android/exoplayer2/metadata/mp4/MdtaMetadataEntry;
.super Ljava/lang/Object;
.source "MdtaMetadataEntry.java"

# interfaces
.implements Lcom/google/android/exoplayer2/metadata/Metadata$Entry;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/exoplayer2/metadata/mp4/MdtaMetadataEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_ANDROID_CAPTURE_FPS:Ljava/lang/String; = "com.android.capture.fps"


# instance fields
.field public final key:Ljava/lang/String;

.field public final localeIndicator:I

.field public final typeIndicator:I

.field public final value:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 103
    new-instance v0, Lcom/google/android/exoplayer2/metadata/mp4/MdtaMetadataEntry$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/metadata/mp4/MdtaMetadataEntry$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/metadata/mp4/MdtaMetadataEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer2/metadata/mp4/MdtaMetadataEntry;->key:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/google/android/exoplayer2/metadata/mp4/MdtaMetadataEntry;->value:[B

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/metadata/mp4/MdtaMetadataEntry;->localeIndicator:I

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/metadata/mp4/MdtaMetadataEntry;->typeIndicator:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/exoplayer2/metadata/mp4/MdtaMetadataEntry$1;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/metadata/mp4/MdtaMetadataEntry;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BII)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/metadata/mp4/MdtaMetadataEntry;->key:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/exoplayer2/metadata/mp4/MdtaMetadataEntry;->value:[B

    iput p3, p0, Lcom/google/android/exoplayer2/metadata/mp4/MdtaMetadataEntry;->localeIndicator:I

    iput p4, p0, Lcom/google/android/exoplayer2/metadata/mp4/MdtaMetadataEntry;->typeIndicator:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 63
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 66
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/metadata/mp4/MdtaMetadataEntry;

    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/mp4/MdtaMetadataEntry;->key:Ljava/lang/String;

    .line 67
    iget-object v3, p1, Lcom/google/android/exoplayer2/metadata/mp4/MdtaMetadataEntry;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/mp4/MdtaMetadataEntry;->value:[B

    iget-object v3, p1, Lcom/google/android/exoplayer2/metadata/mp4/MdtaMetadataEntry;->value:[B

    .line 68
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/google/android/exoplayer2/metadata/mp4/MdtaMetadataEntry;->localeIndicator:I

    iget v3, p1, Lcom/google/android/exoplayer2/metadata/mp4/MdtaMetadataEntry;->localeIndicator:I

    if-ne v2, v3, :cond_2

    iget p0, p0, Lcom/google/android/exoplayer2/metadata/mp4/MdtaMetadataEntry;->typeIndicator:I

    iget p1, p1, Lcom/google/android/exoplayer2/metadata/mp4/MdtaMetadataEntry;->typeIndicator:I

    if-ne p0, p1, :cond_2

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
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/mp4/MdtaMetadataEntry;->key:Ljava/lang/String;

    .line 76
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/mp4/MdtaMetadataEntry;->value:[B

    .line 77
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/google/android/exoplayer2/metadata/mp4/MdtaMetadataEntry;->localeIndicator:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget p0, p0, Lcom/google/android/exoplayer2/metadata/mp4/MdtaMetadataEntry;->typeIndicator:I

    add-int/2addr v1, p0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mdta: key="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/exoplayer2/metadata/mp4/MdtaMetadataEntry;->key:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/google/android/exoplayer2/metadata/mp4/MdtaMetadataEntry;->key:Ljava/lang/String;

    .line 92
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/exoplayer2/metadata/mp4/MdtaMetadataEntry;->value:[B

    .line 93
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    iget p2, p0, Lcom/google/android/exoplayer2/metadata/mp4/MdtaMetadataEntry;->localeIndicator:I

    .line 94
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Lcom/google/android/exoplayer2/metadata/mp4/MdtaMetadataEntry;->typeIndicator:I

    .line 95
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
