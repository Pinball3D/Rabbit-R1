.class Landroidx/core/location/LocationCompat$Api26Impl;
.super Ljava/lang/Object;
.source "LocationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/location/LocationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api26Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 867
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getBearingAccuracyDegrees(Landroid/location/Location;)F
    .locals 0

    .line 937
    invoke-virtual {p0}, Landroid/location/Location;->getBearingAccuracyDegrees()F

    move-result p0

    return p0
.end method

.method static getSpeedAccuracyMetersPerSecond(Landroid/location/Location;)F
    .locals 0

    .line 905
    invoke-virtual {p0}, Landroid/location/Location;->getSpeedAccuracyMetersPerSecond()F

    move-result p0

    return p0
.end method

.method static getVerticalAccuracyMeters(Landroid/location/Location;)F
    .locals 0

    .line 877
    invoke-virtual {p0}, Landroid/location/Location;->getVerticalAccuracyMeters()F

    move-result p0

    return p0
.end method

.method static hasBearingAccuracy(Landroid/location/Location;)Z
    .locals 0

    .line 932
    invoke-virtual {p0}, Landroid/location/Location;->hasBearingAccuracy()Z

    move-result p0

    return p0
.end method

.method static hasSpeedAccuracy(Landroid/location/Location;)Z
    .locals 0

    .line 900
    invoke-virtual {p0}, Landroid/location/Location;->hasSpeedAccuracy()Z

    move-result p0

    return p0
.end method

.method static hasVerticalAccuracy(Landroid/location/Location;)Z
    .locals 0

    .line 872
    invoke-virtual {p0}, Landroid/location/Location;->hasVerticalAccuracy()Z

    move-result p0

    return p0
.end method

.method static removeBearingAccuracy(Landroid/location/Location;)V
    .locals 2

    .line 948
    :try_start_0
    invoke-static {}, Landroidx/core/location/LocationCompat;->getFieldsMaskField()Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getByte(Ljava/lang/Object;)B

    move-result v0

    .line 949
    invoke-static {}, Landroidx/core/location/LocationCompat;->getHasBearingAccuracyMask()I

    move-result v1

    not-int v1, v1

    and-int/2addr v0, v1

    int-to-byte v0, v0

    .line 950
    invoke-static {}, Landroidx/core/location/LocationCompat;->getFieldsMaskField()Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Field;->setByte(Ljava/lang/Object;B)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 956
    new-instance v0, Ljava/lang/IllegalAccessError;

    invoke-direct {v0}, Ljava/lang/IllegalAccessError;-><init>()V

    .line 957
    invoke-virtual {v0, p0}, Ljava/lang/Error;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 958
    throw v0

    :catch_1
    move-exception p0

    .line 952
    new-instance v0, Ljava/lang/NoSuchFieldError;

    invoke-direct {v0}, Ljava/lang/NoSuchFieldError;-><init>()V

    .line 953
    invoke-virtual {v0, p0}, Ljava/lang/Error;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 954
    throw v0
.end method

.method static removeSpeedAccuracy(Landroid/location/Location;)V
    .locals 2

    .line 916
    :try_start_0
    invoke-static {}, Landroidx/core/location/LocationCompat;->getFieldsMaskField()Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getByte(Ljava/lang/Object;)B

    move-result v0

    .line 917
    invoke-static {}, Landroidx/core/location/LocationCompat;->getHasSpeedAccuracyMask()I

    move-result v1

    not-int v1, v1

    and-int/2addr v0, v1

    int-to-byte v0, v0

    .line 918
    invoke-static {}, Landroidx/core/location/LocationCompat;->getFieldsMaskField()Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Field;->setByte(Ljava/lang/Object;B)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 924
    new-instance v0, Ljava/lang/IllegalAccessError;

    invoke-direct {v0}, Ljava/lang/IllegalAccessError;-><init>()V

    .line 925
    invoke-virtual {v0, p0}, Ljava/lang/Error;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 926
    throw v0

    :catch_1
    move-exception p0

    .line 920
    new-instance v0, Ljava/lang/NoSuchFieldError;

    invoke-direct {v0}, Ljava/lang/NoSuchFieldError;-><init>()V

    .line 921
    invoke-virtual {v0, p0}, Ljava/lang/Error;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 922
    throw v0
.end method

.method static removeVerticalAccuracy(Landroid/location/Location;)V
    .locals 2

    .line 888
    :try_start_0
    invoke-static {}, Landroidx/core/location/LocationCompat;->getFieldsMaskField()Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getByte(Ljava/lang/Object;)B

    move-result v0

    .line 889
    invoke-static {}, Landroidx/core/location/LocationCompat;->getHasVerticalAccuracyMask()I

    move-result v1

    not-int v1, v1

    and-int/2addr v0, v1

    int-to-byte v0, v0

    .line 890
    invoke-static {}, Landroidx/core/location/LocationCompat;->getFieldsMaskField()Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Field;->setByte(Ljava/lang/Object;B)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 892
    new-instance v0, Ljava/lang/IllegalAccessError;

    invoke-direct {v0}, Ljava/lang/IllegalAccessError;-><init>()V

    .line 893
    invoke-virtual {v0, p0}, Ljava/lang/Error;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 894
    throw v0
.end method

.method static setBearingAccuracyDegrees(Landroid/location/Location;F)V
    .locals 0

    .line 942
    invoke-virtual {p0, p1}, Landroid/location/Location;->setBearingAccuracyDegrees(F)V

    return-void
.end method

.method static setSpeedAccuracyMetersPerSecond(Landroid/location/Location;F)V
    .locals 0

    .line 910
    invoke-virtual {p0, p1}, Landroid/location/Location;->setSpeedAccuracyMetersPerSecond(F)V

    return-void
.end method

.method static setVerticalAccuracyMeters(Landroid/location/Location;F)V
    .locals 0

    .line 882
    invoke-virtual {p0, p1}, Landroid/location/Location;->setVerticalAccuracyMeters(F)V

    return-void
.end method
