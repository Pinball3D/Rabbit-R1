.class final Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;
.super Ljava/lang/Object;
.source "ProjectionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer$MeshData;
    }
.end annotation


# static fields
.field private static final FRAGMENT_SHADER:Ljava/lang/String; = "// This is required since the texture data is GL_TEXTURE_EXTERNAL_OES.\n#extension GL_OES_EGL_image_external : require\nprecision mediump float;\n// Standard texture rendering shader.\nuniform samplerExternalOES uTexture;\nvarying vec2 vTexCoords;\nvoid main() {\n  gl_FragColor = texture2D(uTexture, vTexCoords);\n}\n"

.field private static final TAG:Ljava/lang/String; = "ProjectionRenderer"

.field private static final TEX_MATRIX_BOTTOM:[F

.field private static final TEX_MATRIX_LEFT:[F

.field private static final TEX_MATRIX_RIGHT:[F

.field private static final TEX_MATRIX_TOP:[F

.field private static final TEX_MATRIX_WHOLE:[F

.field private static final VERTEX_SHADER:Ljava/lang/String; = "uniform mat4 uMvpMatrix;\nuniform mat3 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec2 aTexCoords;\nvarying vec2 vTexCoords;\n// Standard transformation.\nvoid main() {\n  gl_Position = uMvpMatrix * aPosition;\n  vTexCoords = (uTexMatrix * vec3(aTexCoords, 1)).xy;\n}\n"


# instance fields
.field private leftMeshData:Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer$MeshData;

.field private mvpMatrixHandle:I

.field private positionHandle:I

.field private program:Lcom/google/android/exoplayer2/util/GlProgram;

.field private rightMeshData:Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer$MeshData;

.field private stereoMode:I

.field private texCoordsHandle:I

.field private textureHandle:I

.field private uTexMatrixHandle:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x9

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->TEX_MATRIX_WHOLE:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_1

    sput-object v1, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->TEX_MATRIX_TOP:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_2

    sput-object v1, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->TEX_MATRIX_BOTTOM:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_3

    sput-object v1, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->TEX_MATRIX_LEFT:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_4

    sput-object v0, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->TEX_MATRIX_RIGHT:[F

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        -0x41000000    # -0.5f
        0x0
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        -0x41000000    # -0.5f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f000000    # 0.5f
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x3f000000    # 0.5f
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSupported(Lcom/google/android/exoplayer2/video/spherical/Projection;)Z
    .locals 4

    .line 41
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/Projection;->leftMesh:Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;

    .line 42
    iget-object p0, p0, Lcom/google/android/exoplayer2/video/spherical/Projection;->rightMesh:Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;

    .line 43
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;->getSubMeshCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 44
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;->getSubMesh(I)Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;->textureId:I

    if-nez v0, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;->getSubMeshCount()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 46
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;->getSubMesh(I)Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;

    move-result-object p0

    iget p0, p0, Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;->textureId:I

    if-nez p0, :cond_0

    move v2, v3

    :cond_0
    return v2
.end method


# virtual methods
.method public draw(I[FZ)V
    .locals 11

    const-string v0, "ProjectionRenderer"

    if-eqz p3, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->rightMeshData:Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer$MeshData;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->leftMeshData:Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer$MeshData;

    :goto_0
    if-nez v1, :cond_1

    return-void

    :cond_1
    iget v2, p0, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->stereoMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    if-eqz p3, :cond_2

    sget-object p3, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->TEX_MATRIX_BOTTOM:[F

    goto :goto_1

    :cond_2
    sget-object p3, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->TEX_MATRIX_TOP:[F

    goto :goto_1

    :cond_3
    const/4 v4, 0x2

    if-ne v2, v4, :cond_5

    if-eqz p3, :cond_4

    sget-object p3, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->TEX_MATRIX_RIGHT:[F

    goto :goto_1

    :cond_4
    sget-object p3, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->TEX_MATRIX_LEFT:[F

    goto :goto_1

    :cond_5
    sget-object p3, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->TEX_MATRIX_WHOLE:[F

    :goto_1
    iget v2, p0, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->uTexMatrixHandle:I

    const/4 v4, 0x0

    .line 157
    invoke-static {v2, v3, v4, p3, v4}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    iget p3, p0, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->mvpMatrixHandle:I

    .line 160
    invoke-static {p3, v3, v4, p2, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const p2, 0x84c0

    .line 161
    invoke-static {p2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const p2, 0x8d65

    .line 162
    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget p1, p0, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->textureHandle:I

    .line 163
    invoke-static {p1, v4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 165
    :try_start_0
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/util/GlUtil$GlException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string p2, "Failed to bind uniforms"

    .line 167
    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    iget v5, p0, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->positionHandle:I

    const/4 v6, 0x3

    const/16 v7, 0x1406

    const/4 v8, 0x0

    const/16 v9, 0xc

    .line 177
    invoke-static {v1}, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer$MeshData;->access$000(Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer$MeshData;)Ljava/nio/FloatBuffer;

    move-result-object v10

    .line 171
    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 179
    :try_start_1
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V
    :try_end_1
    .catch Lcom/google/android/exoplayer2/util/GlUtil$GlException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    const-string p2, "Failed to load position data"

    .line 181
    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    iget v5, p0, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->texCoordsHandle:I

    const/4 v6, 0x2

    const/16 v7, 0x1406

    const/4 v8, 0x0

    const/16 v9, 0x8

    .line 191
    invoke-static {v1}, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer$MeshData;->access$100(Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer$MeshData;)Ljava/nio/FloatBuffer;

    move-result-object v10

    .line 185
    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 193
    :try_start_2
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V
    :try_end_2
    .catch Lcom/google/android/exoplayer2/util/GlUtil$GlException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception p0

    const-string p1, "Failed to load texture data"

    .line 195
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 199
    :goto_4
    invoke-static {v1}, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer$MeshData;->access$200(Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer$MeshData;)I

    move-result p0

    invoke-static {v1}, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer$MeshData;->access$300(Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer$MeshData;)I

    move-result p1

    invoke-static {p0, v4, p1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 201
    :try_start_3
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V
    :try_end_3
    .catch Lcom/google/android/exoplayer2/util/GlUtil$GlException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_5

    :catch_3
    move-exception p0

    const-string p1, "Failed to render"

    .line 203
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5
    return-void
.end method

.method public init()V
    .locals 3

    .line 122
    :try_start_0
    new-instance v0, Lcom/google/android/exoplayer2/util/GlProgram;

    const-string v1, "uniform mat4 uMvpMatrix;\nuniform mat3 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec2 aTexCoords;\nvarying vec2 vTexCoords;\n// Standard transformation.\nvoid main() {\n  gl_Position = uMvpMatrix * aPosition;\n  vTexCoords = (uTexMatrix * vec3(aTexCoords, 1)).xy;\n}\n"

    const-string v2, "// This is required since the texture data is GL_TEXTURE_EXTERNAL_OES.\n#extension GL_OES_EGL_image_external : require\nprecision mediump float;\n// Standard texture rendering shader.\nuniform samplerExternalOES uTexture;\nvarying vec2 vTexCoords;\nvoid main() {\n  gl_FragColor = texture2D(uTexture, vTexCoords);\n}\n"

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer2/util/GlProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->program:Lcom/google/android/exoplayer2/util/GlProgram;

    const-string v1, "uMvpMatrix"

    .line 123
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/GlProgram;->getUniformLocation(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->mvpMatrixHandle:I

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->program:Lcom/google/android/exoplayer2/util/GlProgram;

    const-string v1, "uTexMatrix"

    .line 124
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/GlProgram;->getUniformLocation(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->uTexMatrixHandle:I

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->program:Lcom/google/android/exoplayer2/util/GlProgram;

    const-string v1, "aPosition"

    .line 125
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/GlProgram;->getAttributeArrayLocationAndEnable(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->positionHandle:I

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->program:Lcom/google/android/exoplayer2/util/GlProgram;

    const-string v1, "aTexCoords"

    .line 126
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/GlProgram;->getAttributeArrayLocationAndEnable(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->texCoordsHandle:I

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->program:Lcom/google/android/exoplayer2/util/GlProgram;

    const-string v1, "uTexture"

    .line 127
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/GlProgram;->getUniformLocation(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->textureHandle:I
    :try_end_0
    .catch Lcom/google/android/exoplayer2/util/GlUtil$GlException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "ProjectionRenderer"

    const-string v1, "Failed to initialize the program"

    .line 129
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setProjection(Lcom/google/android/exoplayer2/video/spherical/Projection;)V
    .locals 3

    .line 110
    invoke-static {p1}, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->isSupported(Lcom/google/android/exoplayer2/video/spherical/Projection;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 113
    :cond_0
    iget v0, p1, Lcom/google/android/exoplayer2/video/spherical/Projection;->stereoMode:I

    iput v0, p0, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->stereoMode:I

    .line 114
    new-instance v0, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer$MeshData;

    iget-object v1, p1, Lcom/google/android/exoplayer2/video/spherical/Projection;->leftMesh:Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;->getSubMesh(I)Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer$MeshData;-><init>(Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->leftMeshData:Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer$MeshData;

    .line 116
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/video/spherical/Projection;->singleMesh:Z

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->leftMeshData:Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer$MeshData;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer$MeshData;

    iget-object p1, p1, Lcom/google/android/exoplayer2/video/spherical/Projection;->rightMesh:Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/video/spherical/Projection$Mesh;->getSubMesh(I)Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer$MeshData;-><init>(Lcom/google/android/exoplayer2/video/spherical/Projection$SubMesh;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->rightMeshData:Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer$MeshData;

    return-void
.end method

.method public shutdown()V
    .locals 2

    iget-object p0, p0, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->program:Lcom/google/android/exoplayer2/util/GlProgram;

    if-eqz p0, :cond_0

    .line 211
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/GlProgram;->delete()V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/util/GlUtil$GlException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "ProjectionRenderer"

    const-string v1, "Failed to delete the shader program"

    .line 213
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
