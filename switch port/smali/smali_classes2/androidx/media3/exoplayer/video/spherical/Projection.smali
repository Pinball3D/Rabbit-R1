.class final Landroidx/media3/exoplayer/video/spherical/Projection;
.super Ljava/lang/Object;
.source "Projection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/video/spherical/Projection$SubMesh;,
        Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;,
        Landroidx/media3/exoplayer/video/spherical/Projection$DrawMode;
    }
.end annotation


# static fields
.field public static final DRAW_MODE_TRIANGLES:I = 0x0

.field public static final DRAW_MODE_TRIANGLES_FAN:I = 0x2

.field public static final DRAW_MODE_TRIANGLES_STRIP:I = 0x1

.field public static final POSITION_COORDS_PER_VERTEX:I = 0x3

.field public static final TEXTURE_COORDS_PER_VERTEX:I = 0x2


# instance fields
.field public final leftMesh:Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;

.field public final rightMesh:Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;

.field public final singleMesh:Z

.field public final stereoMode:I


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;I)V
    .locals 0

    .line 174
    invoke-direct {p0, p1, p1, p2}, Landroidx/media3/exoplayer/video/spherical/Projection;-><init>(Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;I)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;I)V
    .locals 0

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/video/spherical/Projection;->leftMesh:Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;

    iput-object p2, p0, Landroidx/media3/exoplayer/video/spherical/Projection;->rightMesh:Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;

    iput p3, p0, Landroidx/media3/exoplayer/video/spherical/Projection;->stereoMode:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Landroidx/media3/exoplayer/video/spherical/Projection;->singleMesh:Z

    return-void
.end method

.method public static createEquirectangular(FIIFFI)Landroidx/media3/exoplayer/video/spherical/Projection;
    .locals 31

    move/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    const/4 v5, 0x0

    cmpl-float v6, v0, v5

    const/4 v8, 0x1

    if-lez v6, :cond_0

    move v6, v8

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 85
    :goto_0
    invoke-static {v6}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    if-lt v1, v8, :cond_1

    move v6, v8

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    .line 86
    :goto_1
    invoke-static {v6}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    if-lt v2, v8, :cond_2

    move v6, v8

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    .line 87
    :goto_2
    invoke-static {v6}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    cmpl-float v6, v3, v5

    if-lez v6, :cond_3

    const/high16 v6, 0x43340000    # 180.0f

    cmpg-float v6, v3, v6

    if-gtz v6, :cond_3

    move v6, v8

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    .line 88
    :goto_3
    invoke-static {v6}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    cmpl-float v5, v4, v5

    if-lez v5, :cond_4

    const/high16 v5, 0x43b40000    # 360.0f

    cmpg-float v5, v4, v5

    if-gtz v5, :cond_4

    move v5, v8

    goto :goto_4

    :cond_4
    const/4 v5, 0x0

    .line 89
    :goto_4
    invoke-static {v5}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    float-to-double v5, v3

    .line 92
    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    double-to-float v3, v5

    float-to-double v4, v4

    .line 93
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    double-to-float v4, v4

    int-to-float v5, v1

    div-float v5, v3, v5

    int-to-float v6, v2

    div-float v6, v4, v6

    add-int/lit8 v9, v2, 0x1

    mul-int/lit8 v10, v9, 0x2

    const/4 v11, 0x2

    add-int/2addr v10, v11

    mul-int/2addr v10, v1

    mul-int/lit8 v12, v10, 0x3

    .line 100
    new-array v12, v12, [F

    mul-int/2addr v10, v11

    .line 101
    new-array v10, v10, [F

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_5
    if-ge v13, v1, :cond_b

    int-to-float v7, v13

    mul-float/2addr v7, v5

    const/high16 v16, 0x40000000    # 2.0f

    div-float v17, v3, v16

    sub-float v7, v7, v17

    add-int/lit8 v8, v13, 0x1

    int-to-float v11, v8

    mul-float/2addr v11, v5

    sub-float v11, v11, v17

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v9, :cond_a

    move/from16 p4, v7

    move/from16 v17, v8

    const/4 v7, 0x0

    const/4 v8, 0x2

    :goto_7
    if-ge v7, v8, :cond_9

    if-nez v7, :cond_5

    move/from16 v8, p4

    move/from16 v18, v9

    goto :goto_8

    :cond_5
    move/from16 v18, v9

    move v8, v11

    :goto_8
    int-to-float v9, v1

    mul-float/2addr v9, v6

    const v19, 0x40490fdb    # (float)Math.PI

    add-float v19, v9, v19

    div-float v20, v4, v16

    move/from16 v21, v6

    sub-float v6, v19, v20

    add-int/lit8 v19, v14, 0x1

    move/from16 v20, v1

    float-to-double v1, v0

    move/from16 v22, v5

    float-to-double v5, v6

    .line 121
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v23

    mul-double v23, v23, v1

    move/from16 v25, v7

    float-to-double v7, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v26

    move-object/from16 v28, v10

    move/from16 v29, v11

    mul-double v10, v23, v26

    double-to-float v10, v10

    neg-float v10, v10

    aput v10, v12, v14

    add-int/lit8 v10, v14, 0x2

    .line 122
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v23

    move v11, v3

    move/from16 v26, v4

    mul-double v3, v1, v23

    double-to-float v3, v3

    aput v3, v12, v19

    add-int/lit8 v3, v14, 0x3

    .line 123
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v1, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v1, v4

    double-to-float v1, v1

    aput v1, v12, v10

    add-int/lit8 v1, v15, 0x1

    div-float v9, v9, v26

    .line 125
    aput v9, v28, v15

    add-int/lit8 v2, v15, 0x2

    add-int v7, v13, v25

    int-to-float v4, v7

    mul-float v4, v4, v22

    div-float/2addr v4, v11

    .line 126
    aput v4, v28, v1

    if-nez v20, :cond_7

    if-eqz v25, :cond_6

    goto :goto_9

    :cond_6
    move/from16 v1, p2

    move/from16 v4, v20

    move/from16 v5, v25

    goto :goto_a

    :cond_7
    :goto_9
    move/from16 v1, p2

    move/from16 v4, v20

    move/from16 v5, v25

    if-ne v4, v1, :cond_8

    const/4 v6, 0x1

    if-ne v5, v6, :cond_8

    :goto_a
    const/4 v6, 0x3

    .line 130
    invoke-static {v12, v14, v12, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v14, v14, 0x6

    move-object/from16 v6, v28

    const/4 v7, 0x2

    .line 137
    invoke-static {v6, v15, v6, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v15, v15, 0x4

    goto :goto_b

    :cond_8
    move-object/from16 v6, v28

    const/4 v7, 0x2

    move v15, v2

    move v14, v3

    :goto_b
    add-int/lit8 v2, v5, 0x1

    move-object v10, v6

    move v8, v7

    move v3, v11

    move/from16 v9, v18

    move/from16 v6, v21

    move/from16 v5, v22

    move/from16 v11, v29

    move v7, v2

    move v2, v1

    move v1, v4

    move/from16 v4, v26

    goto/16 :goto_7

    :cond_9
    move/from16 v26, v4

    move/from16 v22, v5

    move/from16 v21, v6

    move v7, v8

    move/from16 v18, v9

    move-object v6, v10

    move/from16 v29, v11

    move v4, v1

    move v1, v2

    move v11, v3

    add-int/lit8 v2, v4, 0x1

    move/from16 v7, p4

    move/from16 v8, v17

    move/from16 v6, v21

    move/from16 v4, v26

    move/from16 v11, v29

    move/from16 v30, v2

    move v2, v1

    move/from16 v1, v30

    goto/16 :goto_6

    :cond_a
    move/from16 v17, v8

    move/from16 v1, p1

    move/from16 v13, v17

    const/4 v8, 0x1

    const/4 v11, 0x2

    goto/16 :goto_5

    :cond_b
    move-object v6, v10

    .line 150
    new-instance v0, Landroidx/media3/exoplayer/video/spherical/Projection$SubMesh;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v12, v6, v2}, Landroidx/media3/exoplayer/video/spherical/Projection$SubMesh;-><init>(I[F[FI)V

    .line 152
    new-instance v3, Landroidx/media3/exoplayer/video/spherical/Projection;

    new-instance v4, Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;

    new-array v2, v2, [Landroidx/media3/exoplayer/video/spherical/Projection$SubMesh;

    aput-object v0, v2, v1

    invoke-direct {v4, v2}, Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;-><init>([Landroidx/media3/exoplayer/video/spherical/Projection$SubMesh;)V

    move/from16 v0, p5

    invoke-direct {v3, v4, v0}, Landroidx/media3/exoplayer/video/spherical/Projection;-><init>(Landroidx/media3/exoplayer/video/spherical/Projection$Mesh;I)V

    return-object v3
.end method

.method public static createEquirectangular(I)Landroidx/media3/exoplayer/video/spherical/Projection;
    .locals 6

    const/high16 v0, 0x42480000    # 50.0f

    const/16 v1, 0x24

    const/16 v2, 0x48

    const/high16 v3, 0x43340000    # 180.0f

    const/high16 v4, 0x43b40000    # 360.0f

    move v5, p0

    .line 56
    invoke-static/range {v0 .. v5}, Landroidx/media3/exoplayer/video/spherical/Projection;->createEquirectangular(FIIFFI)Landroidx/media3/exoplayer/video/spherical/Projection;

    move-result-object p0

    return-object p0
.end method
