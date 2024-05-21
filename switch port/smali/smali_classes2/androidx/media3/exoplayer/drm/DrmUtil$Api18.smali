.class final Landroidx/media3/exoplayer/drm/DrmUtil$Api18;
.super Ljava/lang/Object;
.source "DrmUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/drm/DrmUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Api18"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isDeniedByServerException(Ljava/lang/Throwable;)Z
    .locals 0

    .line 117
    instance-of p0, p0, Landroid/media/DeniedByServerException;

    return p0
.end method

.method public static isNotProvisionedException(Ljava/lang/Throwable;)Z
    .locals 0

    .line 112
    instance-of p0, p0, Landroid/media/NotProvisionedException;

    return p0
.end method
