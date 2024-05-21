.class public Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;
.super Ljava/io/IOException;
.source "DrmSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/drm/DrmSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DrmSessionException"
.end annotation


# instance fields
.field public final errorCode:I


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;I)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    iput p2, p0, Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;->errorCode:I

    return-void
.end method
