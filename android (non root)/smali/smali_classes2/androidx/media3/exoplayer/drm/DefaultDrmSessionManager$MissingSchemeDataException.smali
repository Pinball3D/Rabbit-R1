.class public final Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$MissingSchemeDataException;
.super Ljava/lang/Exception;
.source "DefaultDrmSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MissingSchemeDataException"
.end annotation


# direct methods
.method private constructor <init>(Ljava/util/UUID;)V
    .locals 2

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Media does not support uuid: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/UUID;Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$1;)V
    .locals 0

    .line 257
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$MissingSchemeDataException;-><init>(Ljava/util/UUID;)V

    return-void
.end method
