.class public final Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;
.super Ljava/lang/Object;
.source "Projection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/video/spherical/Projection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Mesh"
.end annotation


# instance fields
.field private final subMeshes:[Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;


# direct methods
.method public varargs constructor <init>([Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;)V
    .locals 0

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;->subMeshes:[Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;

    return-void
.end method


# virtual methods
.method public getSubMesh(I)Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;->subMeshes:[Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;

    .line 237
    aget-object p0, p0, p1

    return-object p0
.end method

.method public getSubMeshCount()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;->subMeshes:[Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;

    .line 232
    array-length p0, p0

    return p0
.end method
