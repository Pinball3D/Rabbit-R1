.class Landroidx/core/location/GpsStatusWrapper;
.super Landroidx/core/location/GnssStatusCompat;
.source "GpsStatusWrapper.java"


# static fields
.field private static final BEIDOU_PRN_COUNT:I = 0x23

.field private static final BEIDOU_PRN_OFFSET:I = 0xc8

.field private static final GLONASS_PRN_COUNT:I = 0x18

.field private static final GLONASS_PRN_OFFSET:I = 0x40

.field private static final GPS_PRN_COUNT:I = 0x20

.field private static final GPS_PRN_OFFSET:I = 0x0

.field private static final QZSS_SVID_MAX:I = 0xc8

.field private static final QZSS_SVID_MIN:I = 0xc1

.field private static final SBAS_PRN_MAX:I = 0x40

.field private static final SBAS_PRN_MIN:I = 0x21

.field private static final SBAS_PRN_OFFSET:I = -0x57


# instance fields
.field private mCachedIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Landroid/location/GpsSatellite;",
            ">;"
        }
    .end annotation
.end field

.field private mCachedIteratorPosition:I

.field private mCachedSatellite:Landroid/location/GpsSatellite;

.field private mCachedSatelliteCount:I

.field private final mWrapped:Landroid/location/GpsStatus;


# direct methods
.method constructor <init>(Landroid/location/GpsStatus;)V
    .locals 1

    .line 59
    invoke-direct {p0}, Landroidx/core/location/GnssStatusCompat;-><init>()V

    .line 60
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/GpsStatus;

    iput-object p1, p0, Landroidx/core/location/GpsStatusWrapper;->mWrapped:Landroid/location/GpsStatus;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/core/location/GpsStatusWrapper;->mCachedSatelliteCount:I

    .line 62
    invoke-virtual {p1}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/location/GpsStatusWrapper;->mCachedIterator:Ljava/util/Iterator;

    iput v0, p0, Landroidx/core/location/GpsStatusWrapper;->mCachedIteratorPosition:I

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/core/location/GpsStatusWrapper;->mCachedSatellite:Landroid/location/GpsSatellite;

    return-void
.end method

.method private static getConstellationFromPrn(I)I
    .locals 2

    if-lez p0, :cond_0

    const/16 v0, 0x20

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/16 v0, 0x21

    const/16 v1, 0x40

    if-lt p0, v0, :cond_1

    if-gt p0, v1, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    if-le p0, v1, :cond_2

    const/16 v0, 0x58

    if-gt p0, v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/16 v0, 0xc8

    if-le p0, v0, :cond_3

    const/16 v1, 0xeb

    if-gt p0, v1, :cond_3

    const/4 p0, 0x5

    return p0

    :cond_3
    const/16 v1, 0xc1

    if-lt p0, v1, :cond_4

    if-gt p0, v0, :cond_4

    const/4 p0, 0x4

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method private getSatellite(I)Landroid/location/GpsSatellite;
    .locals 2

    iget-object v0, p0, Landroidx/core/location/GpsStatusWrapper;->mWrapped:Landroid/location/GpsStatus;

    .line 151
    monitor-enter v0

    :try_start_0
    iget v1, p0, Landroidx/core/location/GpsStatusWrapper;->mCachedIteratorPosition:I

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Landroidx/core/location/GpsStatusWrapper;->mWrapped:Landroid/location/GpsStatus;

    .line 153
    invoke-virtual {v1}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iput-object v1, p0, Landroidx/core/location/GpsStatusWrapper;->mCachedIterator:Ljava/util/Iterator;

    const/4 v1, -0x1

    iput v1, p0, Landroidx/core/location/GpsStatusWrapper;->mCachedIteratorPosition:I

    :cond_0
    :goto_0
    iget v1, p0, Landroidx/core/location/GpsStatusWrapper;->mCachedIteratorPosition:I

    if-ge v1, p1, :cond_2

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/core/location/GpsStatusWrapper;->mCachedIteratorPosition:I

    iget-object v1, p0, Landroidx/core/location/GpsStatusWrapper;->mCachedIterator:Ljava/util/Iterator;

    .line 158
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/core/location/GpsStatusWrapper;->mCachedSatellite:Landroid/location/GpsSatellite;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Landroidx/core/location/GpsStatusWrapper;->mCachedIterator:Ljava/util/Iterator;

    .line 162
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/GpsSatellite;

    iput-object v1, p0, Landroidx/core/location/GpsStatusWrapper;->mCachedSatellite:Landroid/location/GpsSatellite;

    goto :goto_0

    :cond_2
    :goto_1
    iget-object p0, p0, Landroidx/core/location/GpsStatusWrapper;->mCachedSatellite:Landroid/location/GpsSatellite;

    .line 166
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    invoke-static {p0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/GpsSatellite;

    return-object p0

    :catchall_0
    move-exception p0

    .line 166
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static getSvidFromPrn(I)I
    .locals 2

    .line 204
    invoke-static {p0}, Landroidx/core/location/GpsStatusWrapper;->getConstellationFromPrn(I)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit16 p0, p0, -0xc8

    goto :goto_0

    :cond_1
    add-int/lit8 p0, p0, -0x40

    goto :goto_0

    :cond_2
    add-int/lit8 p0, p0, 0x57

    :goto_0
    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 175
    :cond_0
    instance-of v0, p1, Landroidx/core/location/GpsStatusWrapper;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 178
    :cond_1
    check-cast p1, Landroidx/core/location/GpsStatusWrapper;

    iget-object p0, p0, Landroidx/core/location/GpsStatusWrapper;->mWrapped:Landroid/location/GpsStatus;

    .line 179
    iget-object p1, p1, Landroidx/core/location/GpsStatusWrapper;->mWrapped:Landroid/location/GpsStatus;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getAzimuthDegrees(I)F
    .locals 0

    .line 111
    invoke-direct {p0, p1}, Landroidx/core/location/GpsStatusWrapper;->getSatellite(I)Landroid/location/GpsSatellite;

    move-result-object p0

    invoke-virtual {p0}, Landroid/location/GpsSatellite;->getAzimuth()F

    move-result p0

    return p0
.end method

.method public getBasebandCn0DbHz(I)F
    .locals 0

    .line 146
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public getCarrierFrequencyHz(I)F
    .locals 0

    .line 136
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public getCn0DbHz(I)F
    .locals 0

    .line 101
    invoke-direct {p0, p1}, Landroidx/core/location/GpsStatusWrapper;->getSatellite(I)Landroid/location/GpsSatellite;

    move-result-object p0

    invoke-virtual {p0}, Landroid/location/GpsSatellite;->getSnr()F

    move-result p0

    return p0
.end method

.method public getConstellationType(I)I
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Landroidx/core/location/GpsStatusWrapper;->getSatellite(I)Landroid/location/GpsSatellite;

    move-result-object p0

    invoke-virtual {p0}, Landroid/location/GpsSatellite;->getPrn()I

    move-result p0

    invoke-static {p0}, Landroidx/core/location/GpsStatusWrapper;->getConstellationFromPrn(I)I

    move-result p0

    return p0
.end method

.method public getElevationDegrees(I)F
    .locals 0

    .line 106
    invoke-direct {p0, p1}, Landroidx/core/location/GpsStatusWrapper;->getSatellite(I)Landroid/location/GpsSatellite;

    move-result-object p0

    invoke-virtual {p0}, Landroid/location/GpsSatellite;->getElevation()F

    move-result p0

    return p0
.end method

.method public getSatelliteCount()I
    .locals 3

    iget-object v0, p0, Landroidx/core/location/GpsStatusWrapper;->mWrapped:Landroid/location/GpsStatus;

    .line 69
    monitor-enter v0

    :try_start_0
    iget v1, p0, Landroidx/core/location/GpsStatusWrapper;->mCachedSatelliteCount:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Landroidx/core/location/GpsStatusWrapper;->mWrapped:Landroid/location/GpsStatus;

    .line 71
    invoke-virtual {v1}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/GpsSatellite;

    iget v2, p0, Landroidx/core/location/GpsStatusWrapper;->mCachedSatelliteCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroidx/core/location/GpsStatusWrapper;->mCachedSatelliteCount:I

    goto :goto_0

    :cond_0
    iget v1, p0, Landroidx/core/location/GpsStatusWrapper;->mCachedSatelliteCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/core/location/GpsStatusWrapper;->mCachedSatelliteCount:I

    :cond_1
    iget p0, p0, Landroidx/core/location/GpsStatusWrapper;->mCachedSatelliteCount:I

    .line 77
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 78
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getSvid(I)I
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Landroidx/core/location/GpsStatusWrapper;->getSatellite(I)Landroid/location/GpsSatellite;

    move-result-object p0

    invoke-virtual {p0}, Landroid/location/GpsSatellite;->getPrn()I

    move-result p0

    invoke-static {p0}, Landroidx/core/location/GpsStatusWrapper;->getSvidFromPrn(I)I

    move-result p0

    return p0
.end method

.method public hasAlmanacData(I)Z
    .locals 0

    .line 121
    invoke-direct {p0, p1}, Landroidx/core/location/GpsStatusWrapper;->getSatellite(I)Landroid/location/GpsSatellite;

    move-result-object p0

    invoke-virtual {p0}, Landroid/location/GpsSatellite;->hasAlmanac()Z

    move-result p0

    return p0
.end method

.method public hasBasebandCn0DbHz(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public hasCarrierFrequencyHz(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public hasEphemerisData(I)Z
    .locals 0

    .line 116
    invoke-direct {p0, p1}, Landroidx/core/location/GpsStatusWrapper;->getSatellite(I)Landroid/location/GpsSatellite;

    move-result-object p0

    invoke-virtual {p0}, Landroid/location/GpsSatellite;->hasEphemeris()Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Landroidx/core/location/GpsStatusWrapper;->mWrapped:Landroid/location/GpsStatus;

    .line 184
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public usedInFix(I)Z
    .locals 0

    .line 126
    invoke-direct {p0, p1}, Landroidx/core/location/GpsStatusWrapper;->getSatellite(I)Landroid/location/GpsSatellite;

    move-result-object p0

    invoke-virtual {p0}, Landroid/location/GpsSatellite;->usedInFix()Z

    move-result p0

    return p0
.end method
