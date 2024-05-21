.class final Landroidx/media3/exoplayer/drm/DrmUtil$Api21;
.super Ljava/lang/Object;
.source "DrmUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/drm/DrmUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Api21"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isMediaDrmStateException(Ljava/lang/Throwable;)Z
    .locals 0

    .line 126
    instance-of p0, p0, Landroid/media/MediaDrm$MediaDrmStateException;

    return p0
.end method

.method public static mediaDrmStateExceptionToErrorCode(Ljava/lang/Throwable;)I
    .locals 0

    .line 133
    check-cast p0, Landroid/media/MediaDrm$MediaDrmStateException;

    invoke-virtual {p0}, Landroid/media/MediaDrm$MediaDrmStateException;->getDiagnosticInfo()Ljava/lang/String;

    move-result-object p0

    .line 134
    invoke-static {p0}, Landroidx/media3/common/util/Util;->getErrorCodeFromPlatformDiagnosticsInfo(Ljava/lang/String;)I

    move-result p0

    .line 135
    invoke-static {p0}, Landroidx/media3/common/util/Util;->getErrorCodeForMediaDrmErrorCode(I)I

    move-result p0

    return p0
.end method
