.class public final Lio/sentry/android/core/internal/util/DeviceOrientations;
.super Ljava/lang/Object;
.source "DeviceOrientations.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOrientation(I)Lio/sentry/protocol/Device$DeviceOrientation;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 21
    :cond_0
    sget-object p0, Lio/sentry/protocol/Device$DeviceOrientation;->LANDSCAPE:Lio/sentry/protocol/Device$DeviceOrientation;

    return-object p0

    .line 23
    :cond_1
    sget-object p0, Lio/sentry/protocol/Device$DeviceOrientation;->PORTRAIT:Lio/sentry/protocol/Device$DeviceOrientation;

    return-object p0
.end method
