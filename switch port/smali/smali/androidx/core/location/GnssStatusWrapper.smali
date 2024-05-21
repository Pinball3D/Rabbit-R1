.class Landroidx/core/location/GnssStatusWrapper;
.super Landroidx/core/location/GnssStatusCompat;
.source "GnssStatusWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/location/GnssStatusWrapper$Api26Impl;,
        Landroidx/core/location/GnssStatusWrapper$Api30Impl;
    }
.end annotation


# instance fields
.field private final mWrapped:Landroid/location/GnssStatus;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Landroidx/core/location/GnssStatusCompat;-><init>()V

    .line 37
    check-cast p1, Landroid/location/GnssStatus;

    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/GnssStatus;

    iput-object p1, p0, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 126
    :cond_0
    instance-of v0, p1, Landroidx/core/location/GnssStatusWrapper;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 129
    :cond_1
    check-cast p1, Landroidx/core/location/GnssStatusWrapper;

    iget-object p0, p0, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    .line 130
    iget-object p1, p1, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    invoke-virtual {p0, p1}, Landroid/location/GnssStatus;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getAzimuthDegrees(I)F
    .locals 0

    iget-object p0, p0, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    .line 67
    invoke-virtual {p0, p1}, Landroid/location/GnssStatus;->getAzimuthDegrees(I)F

    move-result p0

    return p0
.end method

.method public getBasebandCn0DbHz(I)F
    .locals 0

    iget-object p0, p0, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    .line 115
    invoke-static {p0, p1}, Landroidx/core/location/GnssStatusWrapper$Api30Impl;->getBasebandCn0DbHz(Landroid/location/GnssStatus;I)F

    move-result p0

    return p0
.end method

.method public getCarrierFrequencyHz(I)F
    .locals 0

    iget-object p0, p0, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    .line 97
    invoke-static {p0, p1}, Landroidx/core/location/GnssStatusWrapper$Api26Impl;->getCarrierFrequencyHz(Landroid/location/GnssStatus;I)F

    move-result p0

    return p0
.end method

.method public getCn0DbHz(I)F
    .locals 0

    iget-object p0, p0, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    .line 57
    invoke-virtual {p0, p1}, Landroid/location/GnssStatus;->getCn0DbHz(I)F

    move-result p0

    return p0
.end method

.method public getConstellationType(I)I
    .locals 0

    iget-object p0, p0, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    .line 47
    invoke-virtual {p0, p1}, Landroid/location/GnssStatus;->getConstellationType(I)I

    move-result p0

    return p0
.end method

.method public getElevationDegrees(I)F
    .locals 0

    iget-object p0, p0, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    .line 62
    invoke-virtual {p0, p1}, Landroid/location/GnssStatus;->getElevationDegrees(I)F

    move-result p0

    return p0
.end method

.method public getSatelliteCount()I
    .locals 0

    iget-object p0, p0, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    .line 42
    invoke-virtual {p0}, Landroid/location/GnssStatus;->getSatelliteCount()I

    move-result p0

    return p0
.end method

.method public getSvid(I)I
    .locals 0

    iget-object p0, p0, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    .line 52
    invoke-virtual {p0, p1}, Landroid/location/GnssStatus;->getSvid(I)I

    move-result p0

    return p0
.end method

.method public hasAlmanacData(I)Z
    .locals 0

    iget-object p0, p0, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    .line 77
    invoke-virtual {p0, p1}, Landroid/location/GnssStatus;->hasAlmanacData(I)Z

    move-result p0

    return p0
.end method

.method public hasBasebandCn0DbHz(I)Z
    .locals 0

    iget-object p0, p0, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    .line 106
    invoke-static {p0, p1}, Landroidx/core/location/GnssStatusWrapper$Api30Impl;->hasBasebandCn0DbHz(Landroid/location/GnssStatus;I)Z

    move-result p0

    return p0
.end method

.method public hasCarrierFrequencyHz(I)Z
    .locals 0

    iget-object p0, p0, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    .line 88
    invoke-static {p0, p1}, Landroidx/core/location/GnssStatusWrapper$Api26Impl;->hasCarrierFrequencyHz(Landroid/location/GnssStatus;I)Z

    move-result p0

    return p0
.end method

.method public hasEphemerisData(I)Z
    .locals 0

    iget-object p0, p0, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    .line 72
    invoke-virtual {p0, p1}, Landroid/location/GnssStatus;->hasEphemerisData(I)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    .line 135
    invoke-virtual {p0}, Landroid/location/GnssStatus;->hashCode()I

    move-result p0

    return p0
.end method

.method public usedInFix(I)Z
    .locals 0

    iget-object p0, p0, Landroidx/core/location/GnssStatusWrapper;->mWrapped:Landroid/location/GnssStatus;

    .line 82
    invoke-virtual {p0, p1}, Landroid/location/GnssStatus;->usedInFix(I)Z

    move-result p0

    return p0
.end method
