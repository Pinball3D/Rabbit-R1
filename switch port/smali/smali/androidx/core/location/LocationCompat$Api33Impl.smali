.class Landroidx/core/location/LocationCompat$Api33Impl;
.super Ljava/lang/Object;
.source "LocationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/location/LocationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api33Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 627
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static removeBearingAccuracy(Landroid/location/Location;)V
    .locals 0

    .line 641
    invoke-virtual {p0}, Landroid/location/Location;->removeBearingAccuracy()V

    return-void
.end method

.method static removeSpeedAccuracy(Landroid/location/Location;)V
    .locals 0

    .line 636
    invoke-virtual {p0}, Landroid/location/Location;->removeSpeedAccuracy()V

    return-void
.end method

.method static removeVerticalAccuracy(Landroid/location/Location;)V
    .locals 0

    .line 631
    invoke-virtual {p0}, Landroid/location/Location;->removeVerticalAccuracy()V

    return-void
.end method
