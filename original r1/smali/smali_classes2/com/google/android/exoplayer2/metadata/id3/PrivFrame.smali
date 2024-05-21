.class public final Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;
.super Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
.source "PrivFrame.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;",
            ">;"
        }
    .end annotation
.end field

.field public static final ID:Ljava/lang/String; = "PRIV"


# instance fields
.field public final owner:Ljava/lang/String;

.field public final privateData:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 78
    new-instance v0, Lcom/google/android/exoplayer2/metadata/id3/PrivFrame$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/metadata/id3/PrivFrame$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    const-string v0, "PRIV"

    .line 41
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;->owner:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;->privateData:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 1

    const-string v0, "PRIV"

    .line 35
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;->owner:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;->privateData:[B

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

    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 54
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;

    iget-object v2, p0, Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;->owner:Ljava/lang/String;

    .line 55
    iget-object v3, p1, Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;->owner:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;->privateData:[B

    iget-object p1, p1, Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;->privateData:[B

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
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;->owner:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;->privateData:[B

    .line 62
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    move-result p0

    add-int/2addr v1, p0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": owner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;->owner:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;->owner:Ljava/lang/String;

    .line 74
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;->privateData:[B

    .line 75
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
