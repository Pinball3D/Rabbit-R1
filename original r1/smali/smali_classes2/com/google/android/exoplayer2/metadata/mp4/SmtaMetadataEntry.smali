.class public final Lcom/google/android/exoplayer2/metadata/mp4/SmtaMetadataEntry;
.super Ljava/lang/Object;
.source "SmtaMetadataEntry.java"

# interfaces
.implements Lcom/google/android/exoplayer2/metadata/Metadata$Entry;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/exoplayer2/metadata/mp4/SmtaMetadataEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final captureFrameRate:F

.field public final svcTemporalLayerCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 94
    new-instance v0, Lcom/google/android/exoplayer2/metadata/mp4/SmtaMetadataEntry$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/metadata/mp4/SmtaMetadataEntry$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/metadata/mp4/SmtaMetadataEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(FI)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/exoplayer2/metadata/mp4/SmtaMetadataEntry;->captureFrameRate:F

    iput p2, p0, Lcom/google/android/exoplayer2/metadata/mp4/SmtaMetadataEntry;->svcTemporalLayerCount:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/metadata/mp4/SmtaMetadataEntry;->captureFrameRate:F

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/metadata/mp4/SmtaMetadataEntry;->svcTemporalLayerCount:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/exoplayer2/metadata/mp4/SmtaMetadataEntry$1;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/metadata/mp4/SmtaMetadataEntry;-><init>(Landroid/os/Parcel;)V

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

    .line 57
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 60
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/metadata/mp4/SmtaMetadataEntry;

    iget v2, p0, Lcom/google/android/exoplayer2/metadata/mp4/SmtaMetadataEntry;->captureFrameRate:F

    .line 61
    iget v3, p1, Lcom/google/android/exoplayer2/metadata/mp4/SmtaMetadataEntry;->captureFrameRate:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget p0, p0, Lcom/google/android/exoplayer2/metadata/mp4/SmtaMetadataEntry;->svcTemporalLayerCount:I

    iget p1, p1, Lcom/google/android/exoplayer2/metadata/mp4/SmtaMetadataEntry;->svcTemporalLayerCount:I

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

    iget v0, p0, Lcom/google/android/exoplayer2/metadata/mp4/SmtaMetadataEntry;->captureFrameRate:F

    .line 68
    invoke-static {v0}, Lcom/google/common/primitives/Floats;->hashCode(F)I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget p0, p0, Lcom/google/android/exoplayer2/metadata/mp4/SmtaMetadataEntry;->svcTemporalLayerCount:I

    add-int/2addr v1, p0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "smta: captureFrameRate="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/android/exoplayer2/metadata/mp4/SmtaMetadataEntry;->captureFrameRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", svcTemporalLayerCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lcom/google/android/exoplayer2/metadata/mp4/SmtaMetadataEntry;->svcTemporalLayerCount:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/google/android/exoplayer2/metadata/mp4/SmtaMetadataEntry;->captureFrameRate:F

    .line 85
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p0, p0, Lcom/google/android/exoplayer2/metadata/mp4/SmtaMetadataEntry;->svcTemporalLayerCount:I

    .line 86
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
