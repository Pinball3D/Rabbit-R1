.class public final Landroidx/media3/exoplayer/drm/ExoMediaDrm$KeyStatus;
.super Ljava/lang/Object;
.source "ExoMediaDrm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/drm/ExoMediaDrm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KeyStatus"
.end annotation


# instance fields
.field private final keyId:[B

.field private final statusCode:I


# direct methods
.method public constructor <init>(I[B)V
    .locals 0

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/exoplayer/drm/ExoMediaDrm$KeyStatus;->statusCode:I

    iput-object p2, p0, Landroidx/media3/exoplayer/drm/ExoMediaDrm$KeyStatus;->keyId:[B

    return-void
.end method


# virtual methods
.method public getKeyId()[B
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/drm/ExoMediaDrm$KeyStatus;->keyId:[B

    return-object p0
.end method

.method public getStatusCode()I
    .locals 0

    iget p0, p0, Landroidx/media3/exoplayer/drm/ExoMediaDrm$KeyStatus;->statusCode:I

    return p0
.end method
