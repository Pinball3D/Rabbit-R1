.class public final Lcom/google/android/exoplayer2/util/SurfaceInfo;
.super Ljava/lang/Object;
.source "SurfaceInfo.java"


# instance fields
.field public final height:I

.field public final orientationDegrees:I

.field public final surface:Landroid/view/Surface;

.field public final width:I


# direct methods
.method public constructor <init>(Landroid/view/Surface;II)V
    .locals 1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/exoplayer2/util/SurfaceInfo;-><init>(Landroid/view/Surface;III)V

    return-void
.end method

.method public constructor <init>(Landroid/view/Surface;III)V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p4, :cond_1

    const/16 v0, 0x5a

    if-eq p4, v0, :cond_1

    const/16 v0, 0xb4

    if-eq p4, v0, :cond_1

    const/16 v0, 0x10e

    if-ne p4, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v1, "orientationDegrees must be 0, 90, 180, or 270"

    .line 46
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/util/SurfaceInfo;->surface:Landroid/view/Surface;

    iput p2, p0, Lcom/google/android/exoplayer2/util/SurfaceInfo;->width:I

    iput p3, p0, Lcom/google/android/exoplayer2/util/SurfaceInfo;->height:I

    iput p4, p0, Lcom/google/android/exoplayer2/util/SurfaceInfo;->orientationDegrees:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 63
    :cond_0
    instance-of v1, p1, Lcom/google/android/exoplayer2/util/SurfaceInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 66
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/util/SurfaceInfo;

    iget v1, p0, Lcom/google/android/exoplayer2/util/SurfaceInfo;->width:I

    .line 67
    iget v3, p1, Lcom/google/android/exoplayer2/util/SurfaceInfo;->width:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/google/android/exoplayer2/util/SurfaceInfo;->height:I

    iget v3, p1, Lcom/google/android/exoplayer2/util/SurfaceInfo;->height:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/google/android/exoplayer2/util/SurfaceInfo;->orientationDegrees:I

    iget v3, p1, Lcom/google/android/exoplayer2/util/SurfaceInfo;->orientationDegrees:I

    if-ne v1, v3, :cond_2

    iget-object p0, p0, Lcom/google/android/exoplayer2/util/SurfaceInfo;->surface:Landroid/view/Surface;

    iget-object p1, p1, Lcom/google/android/exoplayer2/util/SurfaceInfo;->surface:Landroid/view/Surface;

    .line 70
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/util/SurfaceInfo;->surface:Landroid/view/Surface;

    .line 75
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/exoplayer2/util/SurfaceInfo;->width:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/exoplayer2/util/SurfaceInfo;->height:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/google/android/exoplayer2/util/SurfaceInfo;->orientationDegrees:I

    add-int/2addr v0, p0

    return v0
.end method
