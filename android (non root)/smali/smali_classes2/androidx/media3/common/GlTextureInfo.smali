.class public final Landroidx/media3/common/GlTextureInfo;
.super Ljava/lang/Object;
.source "GlTextureInfo.java"


# static fields
.field public static final UNSET:Landroidx/media3/common/GlTextureInfo;


# instance fields
.field private final fboId:I

.field private final height:I

.field private isReleased:Z

.field private final rboId:I

.field private final texId:I

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 27
    new-instance v6, Landroidx/media3/common/GlTextureInfo;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroidx/media3/common/GlTextureInfo;-><init>(IIIII)V

    sput-object v6, Landroidx/media3/common/GlTextureInfo;->UNSET:Landroidx/media3/common/GlTextureInfo;

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/common/GlTextureInfo;->texId:I

    iput p2, p0, Landroidx/media3/common/GlTextureInfo;->fboId:I

    iput p3, p0, Landroidx/media3/common/GlTextureInfo;->rboId:I

    iput p4, p0, Landroidx/media3/common/GlTextureInfo;->width:I

    iput p5, p0, Landroidx/media3/common/GlTextureInfo;->height:I

    return-void
.end method


# virtual methods
.method public getFboId()I
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/common/GlTextureInfo;->isReleased:Z

    xor-int/lit8 v0, v0, 0x1

    .line 73
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iget p0, p0, Landroidx/media3/common/GlTextureInfo;->fboId:I

    return p0
.end method

.method public getHeight()I
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/common/GlTextureInfo;->isReleased:Z

    xor-int/lit8 v0, v0, 0x1

    .line 94
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iget p0, p0, Landroidx/media3/common/GlTextureInfo;->height:I

    return p0
.end method

.method public getRboId()I
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/common/GlTextureInfo;->isReleased:Z

    xor-int/lit8 v0, v0, 0x1

    .line 82
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iget p0, p0, Landroidx/media3/common/GlTextureInfo;->rboId:I

    return p0
.end method

.method public getTexId()I
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/common/GlTextureInfo;->isReleased:Z

    xor-int/lit8 v0, v0, 0x1

    .line 64
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iget p0, p0, Landroidx/media3/common/GlTextureInfo;->texId:I

    return p0
.end method

.method public getWidth()I
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/common/GlTextureInfo;->isReleased:Z

    xor-int/lit8 v0, v0, 0x1

    .line 88
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iget p0, p0, Landroidx/media3/common/GlTextureInfo;->width:I

    return p0
.end method

.method public release()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/common/GlTextureInfo;->isReleased:Z

    iget v0, p0, Landroidx/media3/common/GlTextureInfo;->texId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 101
    invoke-static {v0}, Landroidx/media3/common/util/GlUtil;->deleteTexture(I)V

    :cond_0
    iget v0, p0, Landroidx/media3/common/GlTextureInfo;->fboId:I

    if-eq v0, v1, :cond_1

    .line 104
    invoke-static {v0}, Landroidx/media3/common/util/GlUtil;->deleteFbo(I)V

    :cond_1
    iget p0, p0, Landroidx/media3/common/GlTextureInfo;->rboId:I

    if-eq p0, v1, :cond_2

    .line 107
    invoke-static {p0}, Landroidx/media3/common/util/GlUtil;->deleteRbo(I)V

    :cond_2
    return-void
.end method
