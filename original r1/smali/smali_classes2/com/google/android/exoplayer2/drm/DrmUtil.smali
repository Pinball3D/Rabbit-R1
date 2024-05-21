.class public final Lcom/google/android/exoplayer2/drm/DrmUtil;
.super Ljava/lang/Object;
.source "DrmUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/drm/DrmUtil$Api23;,
        Lcom/google/android/exoplayer2/drm/DrmUtil$Api21;,
        Lcom/google/android/exoplayer2/drm/DrmUtil$Api18;,
        Lcom/google/android/exoplayer2/drm/DrmUtil$ErrorSource;
    }
.end annotation


# static fields
.field public static final ERROR_SOURCE_EXO_MEDIA_DRM:I = 0x1

.field public static final ERROR_SOURCE_LICENSE_ACQUISITION:I = 0x2

.field public static final ERROR_SOURCE_PROVISIONING:I = 0x3


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getErrorCodeForMediaDrmException(Ljava/lang/Exception;I)I
    .locals 4

    .line 75
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Lcom/google/android/exoplayer2/drm/DrmUtil$Api21;->isMediaDrmStateException(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-static {p0}, Lcom/google/android/exoplayer2/drm/DrmUtil$Api21;->mediaDrmStateExceptionToErrorCode(Ljava/lang/Throwable;)I

    move-result p0

    return p0

    .line 77
    :cond_0
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    const/16 v2, 0x1776

    if-lt v0, v1, :cond_1

    invoke-static {p0}, Lcom/google/android/exoplayer2/drm/DrmUtil$Api23;->isMediaDrmResetException(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 79
    :cond_1
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x1772

    const/16 v3, 0x12

    if-lt v0, v3, :cond_2

    invoke-static {p0}, Lcom/google/android/exoplayer2/drm/DrmUtil$Api18;->isNotProvisionedException(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 81
    :cond_2
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    if-lt v0, v3, :cond_3

    invoke-static {p0}, Lcom/google/android/exoplayer2/drm/DrmUtil$Api18;->isDeniedByServerException(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 p0, 0x1777

    return p0

    .line 83
    :cond_3
    instance-of v0, p0, Lcom/google/android/exoplayer2/drm/UnsupportedDrmException;

    if-eqz v0, :cond_4

    const/16 p0, 0x1771

    return p0

    .line 85
    :cond_4
    instance-of v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$MissingSchemeDataException;

    if-eqz v0, :cond_5

    const/16 p0, 0x1773

    return p0

    .line 87
    :cond_5
    instance-of p0, p0, Lcom/google/android/exoplayer2/drm/KeysExpiredException;

    if-eqz p0, :cond_6

    const/16 p0, 0x1778

    return p0

    :cond_6
    const/4 p0, 0x1

    if-ne p1, p0, :cond_7

    return v2

    :cond_7
    const/4 p0, 0x2

    if-ne p1, p0, :cond_8

    const/16 p0, 0x1774

    return p0

    :cond_8
    const/4 p0, 0x3

    if-ne p1, p0, :cond_9

    return v1

    .line 99
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method
