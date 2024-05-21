.class public final Landroidx/media3/exoplayer/drm/UnsupportedDrmException;
.super Ljava/lang/Exception;
.source "UnsupportedDrmException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/drm/UnsupportedDrmException$Reason;
    }
.end annotation


# static fields
.field public static final REASON_INSTANTIATION_ERROR:I = 0x2

.field public static final REASON_UNSUPPORTED_SCHEME:I = 0x1


# instance fields
.field public final reason:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput p1, p0, Landroidx/media3/exoplayer/drm/UnsupportedDrmException;->reason:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/Exception;)V
    .locals 0

    .line 69
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    iput p1, p0, Landroidx/media3/exoplayer/drm/UnsupportedDrmException;->reason:I

    return-void
.end method
