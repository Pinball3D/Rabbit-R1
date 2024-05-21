.class Lcom/google/android/exoplayer2/metadata/Metadata$1;
.super Ljava/lang/Object;
.source "Metadata.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/metadata/Metadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/exoplayer2/metadata/Metadata;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 0

    .line 215
    new-instance p0, Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 212
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/metadata/Metadata$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 0

    .line 220
    new-array p0, p1, [Lcom/google/android/exoplayer2/metadata/Metadata;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 212
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/metadata/Metadata$1;->newArray(I)[Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object p0

    return-object p0
.end method
