.class public final Lcom/google/android/exoplayer2/offline/StreamKey;
.super Ljava/lang/Object;
.source "StreamKey.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/android/exoplayer2/offline/StreamKey;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/exoplayer2/offline/StreamKey;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final groupIndex:I

.field public final periodIndex:I

.field public final streamIndex:I

.field public final trackIndex:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 139
    new-instance v0, Lcom/google/android/exoplayer2/offline/StreamKey$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/offline/StreamKey$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/offline/StreamKey;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/exoplayer2/offline/StreamKey;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/exoplayer2/offline/StreamKey;->periodIndex:I

    iput p2, p0, Lcom/google/android/exoplayer2/offline/StreamKey;->groupIndex:I

    iput p3, p0, Lcom/google/android/exoplayer2/offline/StreamKey;->streamIndex:I

    iput p3, p0, Lcom/google/android/exoplayer2/offline/StreamKey;->trackIndex:I

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/offline/StreamKey;->periodIndex:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/offline/StreamKey;->groupIndex:I

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/offline/StreamKey;->streamIndex:I

    iput p1, p0, Lcom/google/android/exoplayer2/offline/StreamKey;->trackIndex:I

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/google/android/exoplayer2/offline/StreamKey;)I
    .locals 2

    iget v0, p0, Lcom/google/android/exoplayer2/offline/StreamKey;->periodIndex:I

    .line 115
    iget v1, p1, Lcom/google/android/exoplayer2/offline/StreamKey;->periodIndex:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/offline/StreamKey;->groupIndex:I

    .line 117
    iget v1, p1, Lcom/google/android/exoplayer2/offline/StreamKey;->groupIndex:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    iget p0, p0, Lcom/google/android/exoplayer2/offline/StreamKey;->streamIndex:I

    .line 119
    iget p1, p1, Lcom/google/android/exoplayer2/offline/StreamKey;->streamIndex:I

    sub-int v0, p0, p1

    :cond_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 36
    check-cast p1, Lcom/google/android/exoplayer2/offline/StreamKey;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/offline/StreamKey;->compareTo(Lcom/google/android/exoplayer2/offline/StreamKey;)I

    move-result p0

    return p0
.end method

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

    .line 93
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 97
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/offline/StreamKey;

    iget v2, p0, Lcom/google/android/exoplayer2/offline/StreamKey;->periodIndex:I

    .line 98
    iget v3, p1, Lcom/google/android/exoplayer2/offline/StreamKey;->periodIndex:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/android/exoplayer2/offline/StreamKey;->groupIndex:I

    iget v3, p1, Lcom/google/android/exoplayer2/offline/StreamKey;->groupIndex:I

    if-ne v2, v3, :cond_2

    iget p0, p0, Lcom/google/android/exoplayer2/offline/StreamKey;->streamIndex:I

    iget p1, p1, Lcom/google/android/exoplayer2/offline/StreamKey;->streamIndex:I

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

    iget v0, p0, Lcom/google/android/exoplayer2/offline/StreamKey;->periodIndex:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/exoplayer2/offline/StreamKey;->groupIndex:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/google/android/exoplayer2/offline/StreamKey;->streamIndex:I

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/google/android/exoplayer2/offline/StreamKey;->periodIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/android/exoplayer2/offline/StreamKey;->groupIndex:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lcom/google/android/exoplayer2/offline/StreamKey;->streamIndex:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/google/android/exoplayer2/offline/StreamKey;->periodIndex:I

    .line 134
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/google/android/exoplayer2/offline/StreamKey;->groupIndex:I

    .line 135
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Lcom/google/android/exoplayer2/offline/StreamKey;->streamIndex:I

    .line 136
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
