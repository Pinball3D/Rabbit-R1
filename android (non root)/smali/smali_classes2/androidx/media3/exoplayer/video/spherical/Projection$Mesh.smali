.class public final Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;
.super Ljava/lang/Object;
.source "Projection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/video/spherical/Projection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Mesh"
.end annotation


# instance fields
.field private final subMeshes:[Landroidx/media3/exoplayer/video/spherical/Projection$SubMesh;


# direct methods
.method public varargs constructor <init>([Landroidx/media3/exoplayer/video/spherical/Projection$SubMesh;)V
    .locals 0

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;->subMeshes:[Landroidx/media3/exoplayer/video/spherical/Projection$SubMesh;

    return-void
.end method


# virtual methods
.method public getSubMesh(I)Landroidx/media3/exoplayer/video/spherical/Projection$SubMesh;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;->subMeshes:[Landroidx/media3/exoplayer/video/spherical/Projection$SubMesh;

    .line 237
    aget-object p0, p0, p1

    return-object p0
.end method

.method public getSubMeshCount()I
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;->subMeshes:[Landroidx/media3/exoplayer/video/spherical/Projection$SubMesh;

    .line 232
    array-length p0, p0

    return p0
.end method
