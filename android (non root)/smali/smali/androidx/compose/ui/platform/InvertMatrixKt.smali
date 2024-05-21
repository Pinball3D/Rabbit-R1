.class public final Landroidx/compose/ui/platform/InvertMatrixKt;
.super Ljava/lang/Object;
.source "InvertMatrix.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInvertMatrix.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InvertMatrix.kt\nandroidx/compose/ui/platform/InvertMatrixKt\n+ 2 Matrix.kt\nandroidx/compose/ui/graphics/Matrix\n*L\n1#1,77:1\n39#2:78\n39#2:79\n39#2:80\n39#2:81\n39#2:82\n39#2:83\n39#2:84\n39#2:85\n39#2:86\n39#2:87\n39#2:88\n39#2:89\n39#2:90\n39#2:91\n39#2:92\n39#2:93\n42#2,2:94\n42#2,2:96\n42#2,2:98\n42#2,2:100\n42#2,2:102\n42#2,2:104\n42#2,2:106\n42#2,2:108\n42#2,2:110\n42#2,2:112\n42#2,2:114\n42#2,2:116\n42#2,2:118\n42#2,2:120\n42#2,2:122\n42#2,2:124\n*S KotlinDebug\n*F\n+ 1 InvertMatrix.kt\nandroidx/compose/ui/platform/InvertMatrixKt\n*L\n26#1:78\n27#1:79\n28#1:80\n29#1:81\n30#1:82\n31#1:83\n32#1:84\n33#1:85\n34#1:86\n35#1:87\n36#1:88\n37#1:89\n38#1:90\n39#1:91\n40#1:92\n41#1:93\n60#1:94,2\n61#1:96,2\n62#1:98,2\n63#1:100,2\n64#1:102,2\n65#1:104,2\n66#1:106,2\n67#1:108,2\n68#1:110,2\n69#1:112,2\n70#1:114,2\n71#1:116,2\n72#1:118,2\n73#1:120,2\n74#1:122,2\n75#1:124,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001a!\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0000\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006\u0006"
    }
    d2 = {
        "invertTo",
        "",
        "Landroidx/compose/ui/graphics/Matrix;",
        "other",
        "invertTo-JiSxe2E",
        "([F[F)Z",
        "ui_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final invertTo-JiSxe2E([F[F)Z
    .locals 47

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "$this$invertTo"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "other"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 78
    aget v3, v0, v2

    const/4 v4, 0x1

    .line 79
    aget v5, v0, v4

    const/4 v6, 0x2

    .line 80
    aget v7, v0, v6

    const/4 v8, 0x3

    .line 81
    aget v9, v0, v8

    const/4 v10, 0x4

    .line 82
    aget v11, v0, v10

    const/4 v12, 0x5

    .line 83
    aget v13, v0, v12

    const/4 v14, 0x6

    .line 84
    aget v15, v0, v14

    const/16 v16, 0x7

    .line 85
    aget v17, v0, v16

    const/16 v18, 0x8

    .line 86
    aget v14, v0, v18

    const/16 v20, 0x9

    .line 87
    aget v12, v0, v20

    const/16 v22, 0xa

    .line 88
    aget v23, v0, v22

    const/16 v24, 0xb

    .line 89
    aget v25, v0, v24

    const/16 v26, 0xc

    .line 90
    aget v10, v0, v26

    const/16 v27, 0xd

    .line 91
    aget v28, v0, v27

    const/16 v29, 0xe

    .line 92
    aget v30, v0, v29

    const/16 v31, 0xf

    .line 93
    aget v0, v0, v31

    mul-float v32, v3, v13

    mul-float v33, v5, v11

    sub-float v32, v32, v33

    mul-float v33, v3, v15

    mul-float v34, v7, v11

    sub-float v33, v33, v34

    mul-float v34, v3, v17

    mul-float v35, v9, v11

    sub-float v34, v34, v35

    mul-float v35, v5, v15

    mul-float v36, v7, v13

    sub-float v35, v35, v36

    mul-float v36, v5, v17

    mul-float v37, v9, v13

    sub-float v36, v36, v37

    mul-float v37, v7, v17

    mul-float v38, v9, v15

    sub-float v37, v37, v38

    mul-float v38, v14, v28

    mul-float v39, v12, v10

    sub-float v38, v38, v39

    mul-float v39, v14, v30

    mul-float v40, v23, v10

    sub-float v39, v39, v40

    mul-float v40, v14, v0

    mul-float v41, v25, v10

    sub-float v40, v40, v41

    mul-float v41, v12, v30

    mul-float v42, v23, v28

    sub-float v41, v41, v42

    mul-float v42, v12, v0

    mul-float v43, v25, v28

    sub-float v42, v42, v43

    mul-float v43, v23, v0

    mul-float v44, v25, v30

    sub-float v43, v43, v44

    mul-float v44, v32, v43

    mul-float v45, v33, v42

    sub-float v44, v44, v45

    mul-float v45, v34, v41

    add-float v44, v44, v45

    mul-float v45, v35, v40

    add-float v44, v44, v45

    mul-float v45, v36, v39

    sub-float v44, v44, v45

    mul-float v45, v37, v38

    add-float v44, v44, v45

    const/16 v45, 0x0

    cmpg-float v45, v44, v45

    if-nez v45, :cond_0

    return v2

    :cond_0
    const/high16 v45, 0x3f800000    # 1.0f

    div-float v45, v45, v44

    mul-float v44, v13, v43

    mul-float v46, v15, v42

    sub-float v44, v44, v46

    mul-float v46, v17, v41

    add-float v44, v44, v46

    mul-float v44, v44, v45

    .line 94
    aput v44, v1, v2

    neg-float v2, v5

    mul-float v2, v2, v43

    mul-float v44, v7, v42

    add-float v2, v2, v44

    mul-float v44, v9, v41

    sub-float v2, v2, v44

    mul-float v2, v2, v45

    .line 96
    aput v2, v1, v4

    mul-float v2, v28, v37

    mul-float v44, v30, v36

    sub-float v2, v2, v44

    mul-float v44, v0, v35

    add-float v2, v2, v44

    mul-float v2, v2, v45

    .line 98
    aput v2, v1, v6

    neg-float v2, v12

    mul-float v2, v2, v37

    mul-float v6, v23, v36

    add-float/2addr v2, v6

    mul-float v6, v25, v35

    sub-float/2addr v2, v6

    mul-float v2, v2, v45

    .line 100
    aput v2, v1, v8

    neg-float v2, v11

    mul-float v6, v2, v43

    mul-float v8, v15, v40

    add-float/2addr v6, v8

    mul-float v8, v17, v39

    sub-float/2addr v6, v8

    mul-float v6, v6, v45

    const/4 v8, 0x4

    .line 102
    aput v6, v1, v8

    mul-float v43, v43, v3

    mul-float v6, v7, v40

    sub-float v43, v43, v6

    mul-float v6, v9, v39

    add-float v43, v43, v6

    mul-float v43, v43, v45

    const/4 v6, 0x5

    .line 104
    aput v43, v1, v6

    neg-float v6, v10

    mul-float v8, v6, v37

    mul-float v21, v30, v34

    add-float v8, v8, v21

    mul-float v21, v0, v33

    sub-float v8, v8, v21

    mul-float v8, v8, v45

    const/16 v19, 0x6

    .line 106
    aput v8, v1, v19

    mul-float v37, v37, v14

    mul-float v8, v23, v34

    sub-float v37, v37, v8

    mul-float v8, v25, v33

    add-float v37, v37, v8

    mul-float v37, v37, v45

    .line 108
    aput v37, v1, v16

    mul-float v11, v11, v42

    mul-float v8, v13, v40

    sub-float/2addr v11, v8

    mul-float v17, v17, v38

    add-float v11, v11, v17

    mul-float v11, v11, v45

    .line 110
    aput v11, v1, v18

    neg-float v8, v3

    mul-float v8, v8, v42

    mul-float v40, v40, v5

    add-float v8, v8, v40

    mul-float v9, v9, v38

    sub-float/2addr v8, v9

    mul-float v8, v8, v45

    .line 112
    aput v8, v1, v20

    mul-float v10, v10, v36

    mul-float v8, v28, v34

    sub-float/2addr v10, v8

    mul-float v0, v0, v32

    add-float/2addr v10, v0

    mul-float v10, v10, v45

    .line 114
    aput v10, v1, v22

    neg-float v0, v14

    mul-float v0, v0, v36

    mul-float v34, v34, v12

    add-float v0, v0, v34

    mul-float v25, v25, v32

    sub-float v0, v0, v25

    mul-float v0, v0, v45

    .line 116
    aput v0, v1, v24

    mul-float v2, v2, v41

    mul-float v13, v13, v39

    add-float/2addr v2, v13

    mul-float v15, v15, v38

    sub-float/2addr v2, v15

    mul-float v2, v2, v45

    .line 118
    aput v2, v1, v26

    mul-float v3, v3, v41

    mul-float v5, v5, v39

    sub-float/2addr v3, v5

    mul-float v7, v7, v38

    add-float/2addr v3, v7

    mul-float v3, v3, v45

    .line 120
    aput v3, v1, v27

    mul-float v6, v6, v35

    mul-float v28, v28, v33

    add-float v6, v6, v28

    mul-float v30, v30, v32

    sub-float v6, v6, v30

    mul-float v6, v6, v45

    .line 122
    aput v6, v1, v29

    mul-float v14, v14, v35

    mul-float v12, v12, v33

    sub-float/2addr v14, v12

    mul-float v23, v23, v32

    add-float v14, v14, v23

    mul-float v14, v14, v45

    .line 124
    aput v14, v1, v31

    return v4
.end method
