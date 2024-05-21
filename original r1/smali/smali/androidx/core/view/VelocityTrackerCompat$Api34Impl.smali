.class Landroidx/core/view/VelocityTrackerCompat$Api34Impl;
.super Ljava/lang/Object;
.source "VelocityTrackerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/VelocityTrackerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api34Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getAxisVelocity(Landroid/view/VelocityTracker;I)F
    .locals 0

    .line 179
    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->getAxisVelocity(I)F

    move-result p0

    return p0
.end method

.method static getAxisVelocity(Landroid/view/VelocityTracker;II)F
    .locals 0

    .line 174
    invoke-virtual {p0, p1, p2}, Landroid/view/VelocityTracker;->getAxisVelocity(II)F

    move-result p0

    return p0
.end method

.method static isAxisSupported(Landroid/view/VelocityTracker;I)Z
    .locals 0

    .line 169
    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->isAxisSupported(I)Z

    move-result p0

    return p0
.end method
