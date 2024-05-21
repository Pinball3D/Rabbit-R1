.class public final Landroidx/compose/material/icons/twotone/BuildKt;
.super Ljava/lang/Object;
.source "Build.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBuild.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Build.kt\nandroidx/compose/material/icons/twotone/BuildKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,81:1\n122#2:82\n116#2,3:83\n119#2,3:87\n132#2,18:90\n152#2:127\n132#2,18:128\n152#2:165\n174#3:86\n694#4,2:108\n706#4,2:110\n708#4,11:116\n694#4,2:146\n706#4,2:148\n708#4,11:154\n64#5,4:112\n64#5,4:150\n*S KotlinDebug\n*F\n+ 1 Build.kt\nandroidx/compose/material/icons/twotone/BuildKt\n*L\n29#1:82\n29#1:83,3\n29#1:87,3\n30#1:90,18\n30#1:127\n46#1:128,18\n46#1:165\n29#1:86\n30#1:108,2\n30#1:110,2\n30#1:116,11\n46#1:146,2\n46#1:148,2\n46#1:154,11\n30#1:112,4\n46#1:150,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_build",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "Build",
        "Landroidx/compose/material/icons/Icons$TwoTone;",
        "getBuild",
        "(Landroidx/compose/material/icons/Icons$TwoTone;)Landroidx/compose/ui/graphics/vector/ImageVector;",
        "material-icons-core_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static _build:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getBuild(Landroidx/compose/material/icons/Icons$TwoTone;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 47

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Landroidx/compose/material/icons/twotone/BuildKt;->_build:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    const-string v2, "TwoTone.Build"

    .line 83
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-object/from16 v30, v1

    move-object v13, v1

    const/high16 v0, 0x41c00000    # 24.0f

    .line 86
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    const/high16 v5, 0x41c00000    # 24.0f

    const/high16 v6, 0x41c00000    # 24.0f

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xe0

    const/4 v12, 0x0

    .line 83
    invoke-direct/range {v1 .. v12}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const v18, 0x3e99999a    # 0.3f

    const v20, 0x3e99999a    # 0.3f

    .line 93
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v15

    .line 100
    new-instance v0, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v17, v0

    check-cast v17, Landroidx/compose/ui/graphics/Brush;

    const/16 v19, 0x0

    const/high16 v21, 0x3f800000    # 1.0f

    .line 105
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v22

    .line 106
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v23

    const/high16 v24, 0x3f800000    # 1.0f

    const-string v16, ""

    .line 112
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const v1, 0x413eb852    # 11.92f

    const v2, 0x41047ae1    # 8.28f

    .line 31
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3e75c28f    # 0.24f

    const v6, -0x404ccccd    # -1.4f

    const v7, -0x41dc28f6    # -0.16f

    const v8, -0x3fc70a3d    # -2.89f

    const v9, -0x406147ae    # -1.24f

    const v10, -0x3f828f5c    # -3.96f

    move-object v4, v0

    .line 32
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x408f5c29    # -0.94f

    const v6, -0x408ccccd    # -0.95f

    const v7, -0x3ff33333    # -2.2f

    const v8, -0x404e147b    # -1.39f

    const v9, -0x3fa3d70a    # -3.44f

    const v10, -0x40570a3d    # -1.32f

    .line 33
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x4045c28f    # 3.09f

    .line 34
    invoke-virtual {v0, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v2, -0x3f7851ec    # -4.24f

    const v11, 0x4087ae14    # 4.24f

    .line 35
    invoke-virtual {v0, v2, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v12, 0x40400000    # 3.0f

    const v14, 0x40e7ae14    # 7.24f

    .line 36
    invoke-virtual {v0, v12, v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x4270a3d7    # -0.07f

    const v6, 0x3f9eb852    # 1.24f

    const v7, 0x3ebd70a4    # 0.37f

    const v8, 0x401f5c29    # 2.49f

    const v9, 0x3fa7ae14    # 1.31f

    const v10, 0x405c28f6    # 3.44f

    .line 37
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f851eb8    # 1.04f

    const v6, 0x3f851eb8    # 1.04f

    const v7, 0x401e147b    # 2.47f

    const v8, 0x3fb9999a    # 1.45f

    const v9, 0x40751eb8    # 3.83f

    const/high16 v10, 0x3fa00000    # 1.25f

    .line 38
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f35c28f    # 0.71f

    const v6, -0x42333333    # -0.1f

    const v7, 0x3fb33333    # 1.4f

    const v8, -0x413d70a4    # -0.38f

    const/high16 v9, 0x40000000    # 2.0f

    const v10, -0x40ae147b    # -0.82f

    .line 39
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x41175c29    # 9.46f

    .line 40
    invoke-virtual {v0, v4, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x3f6147ae    # 0.88f

    const v10, -0x409eb852    # -0.88f

    .line 41
    invoke-virtual {v0, v4, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, -0x3ee8cccd    # -9.45f

    .line 42
    invoke-virtual {v0, v4, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3ef0a3d7    # 0.47f

    const v6, -0x40e66666    # -0.6f

    const v7, 0x3f451eb8    # 0.77f

    const v8, -0x405eb852    # -1.26f

    const v9, 0x3f63d70a    # 0.89f

    const v25, -0x40051eb8    # -1.96f

    move-object v4, v0

    move/from16 v10, v25

    .line 43
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 44
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 114
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v0

    move v4, v14

    move-object v14, v0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x3800

    const/16 v29, 0x0

    .line 110
    invoke-static/range {v13 .. v29}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    const/high16 v35, 0x3f800000    # 1.0f

    const/high16 v37, 0x3f800000    # 1.0f

    .line 131
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v32

    .line 138
    new-instance v0, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v5, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v5

    invoke-direct {v0, v5, v6, v3}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v34, v0

    check-cast v34, Landroidx/compose/ui/graphics/Brush;

    const/16 v36, 0x0

    const/high16 v38, 0x3f800000    # 1.0f

    .line 143
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v39

    .line 144
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v40

    const/high16 v41, 0x3f800000    # 1.0f

    const-string v33, ""

    .line 150
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const v3, 0x41b4e148    # 22.61f

    const v5, 0x4197c28f    # 18.97f

    .line 47
    invoke-virtual {v0, v3, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v3, 0x4158a3d7    # 13.54f

    const v5, 0x411e6666    # 9.9f

    .line 48
    invoke-virtual {v0, v3, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v14, 0x3f6e147b    # 0.93f

    const v15, -0x3fea3d71    # -2.34f

    const v16, 0x3ee66666    # 0.45f

    const v17, -0x3f5ccccd    # -5.1f

    const v18, -0x4047ae14    # -1.44f

    const/high16 v19, -0x3f200000    # -7.0f

    move-object v13, v0

    .line 49
    invoke-virtual/range {v13 .. v19}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v14, 0x411ccccd    # 9.8f

    const v15, 0x3f19999a    # 0.6f

    const v16, 0x40c70a3d    # 6.22f

    const v17, 0x3ec7ae14    # 0.39f

    const v18, 0x406ae148    # 3.67f

    const/high16 v19, 0x40100000    # 2.25f

    .line 50
    invoke-virtual/range {v13 .. v19}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v3, 0x40f00000    # 7.5f

    const v5, 0x40c28f5c    # 6.08f

    .line 51
    invoke-virtual {v0, v3, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 52
    invoke-virtual {v0, v5, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v3, 0x40100000    # 2.25f

    const v5, 0x406ae148    # 3.67f

    .line 53
    invoke-virtual {v0, v3, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v14, 0x3ec7ae14    # 0.39f

    const v15, 0x40c6b852    # 6.21f

    const v16, 0x3f19999a    # 0.6f

    const v17, 0x411ca3d7    # 9.79f

    const v18, 0x4039999a    # 2.9f

    const v19, 0x414170a4    # 12.09f

    .line 54
    invoke-virtual/range {v13 .. v19}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v14, 0x3fee147b    # 1.86f

    const v15, 0x3fee147b    # 1.86f

    const v16, 0x40923d71    # 4.57f

    const v17, 0x40166666    # 2.35f

    const v18, 0x40dc7ae1    # 6.89f

    const v19, 0x3fbd70a4    # 1.48f

    .line 55
    invoke-virtual/range {v13 .. v19}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v3, 0x4111c28f    # 9.11f

    .line 56
    invoke-virtual {v0, v3, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v14, 0x3ec7ae14    # 0.39f

    const v15, 0x3ec7ae14    # 0.39f

    const v16, 0x3f828f5c    # 1.02f

    const v17, 0x3ec7ae14    # 0.39f

    const v18, 0x3fb47ae1    # 1.41f

    const/16 v19, 0x0

    .line 57
    invoke-virtual/range {v13 .. v19}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v3, 0x40133333    # 2.3f

    const v5, -0x3feccccd    # -2.3f

    .line 58
    invoke-virtual {v0, v3, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v14, 0x3ecccccd    # 0.4f

    const v15, -0x413d70a4    # -0.38f

    const v16, 0x3ecccccd    # 0.4f

    const v17, -0x407d70a4    # -1.02f

    const/16 v18, 0x0

    const v19, -0x404b851f    # -1.41f

    .line 59
    invoke-virtual/range {v13 .. v19}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 60
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v3, 0x419ce148    # 19.61f

    const v5, 0x41a48f5c    # 20.57f

    .line 61
    invoke-virtual {v0, v3, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v3, -0x3ee8a3d7    # -9.46f

    .line 62
    invoke-virtual {v0, v3, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v14, -0x40e3d70a    # -0.61f

    const v15, 0x3ee66666    # 0.45f

    const v16, -0x405ae148    # -1.29f

    const v17, 0x3f3851ec    # 0.72f

    const/high16 v18, -0x40000000    # -2.0f

    const v19, 0x3f51eb85    # 0.82f

    .line 63
    invoke-virtual/range {v13 .. v19}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v14, -0x4051eb85    # -1.36f

    const v15, 0x3e4ccccd    # 0.2f

    const v16, -0x3fcd70a4    # -2.79f

    const v17, -0x41a8f5c3    # -0.21f

    const v18, -0x3f8ae148    # -3.83f

    const/high16 v19, -0x40600000    # -1.25f

    .line 64
    invoke-virtual/range {v13 .. v19}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v14, -0x408ccccd    # -0.95f

    const v15, -0x408f5c29    # -0.94f

    const v16, -0x404e147b    # -1.39f

    const v17, -0x3ff33333    # -2.2f

    const v18, -0x40570a3d    # -1.32f

    const v19, -0x3fa3d70a    # -3.44f

    .line 65
    invoke-virtual/range {v13 .. v19}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 66
    invoke-virtual {v0, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 67
    invoke-virtual {v0, v11, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 68
    invoke-virtual {v0, v4, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v14, 0x3f9eb852    # 1.24f

    const v15, -0x4270a3d7    # -0.07f

    const v16, 0x401f5c29    # 2.49f

    const v17, 0x3ebd70a4    # 0.37f

    const v18, 0x405c28f6    # 3.44f

    const v19, 0x3fa7ae14    # 1.31f

    .line 69
    invoke-virtual/range {v13 .. v19}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v14, 0x3f8a3d71    # 1.08f

    const v15, 0x3f8a3d71    # 1.08f

    const v16, 0x3fbeb852    # 1.49f

    const v17, 0x40247ae1    # 2.57f

    const v18, 0x3f9eb852    # 1.24f

    const v19, 0x407d70a4    # 3.96f

    .line 70
    invoke-virtual/range {v13 .. v19}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v14, -0x420a3d71    # -0.12f

    const v15, 0x3f333333    # 0.7f

    const v16, -0x4128f5c3    # -0.42f

    const v17, 0x3fae147b    # 1.36f

    const v18, -0x409eb852    # -0.88f

    const v19, 0x3ff9999a    # 1.95f

    .line 71
    invoke-virtual/range {v13 .. v19}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x41173333    # 9.45f

    .line 72
    invoke-virtual {v0, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3f666666    # 0.9f

    const v2, -0x409eb852    # -0.88f

    .line 73
    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 74
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 152
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v31

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x3800

    const/16 v46, 0x0

    .line 148
    invoke-static/range {v30 .. v46}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    sput-object v0, Landroidx/compose/material/icons/twotone/BuildKt;->_build:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 77
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
