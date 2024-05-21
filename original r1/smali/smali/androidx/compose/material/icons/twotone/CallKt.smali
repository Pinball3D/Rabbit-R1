.class public final Landroidx/compose/material/icons/twotone/CallKt;
.super Ljava/lang/Object;
.source "Call.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCall.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Call.kt\nandroidx/compose/material/icons/twotone/CallKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,80:1\n122#2:81\n116#2,3:82\n119#2,3:86\n132#2,18:89\n152#2:126\n132#2,18:127\n152#2:164\n174#3:85\n694#4,2:107\n706#4,2:109\n708#4,11:115\n694#4,2:145\n706#4,2:147\n708#4,11:153\n64#5,4:111\n64#5,4:149\n*S KotlinDebug\n*F\n+ 1 Call.kt\nandroidx/compose/material/icons/twotone/CallKt\n*L\n29#1:81\n29#1:82,3\n29#1:86,3\n30#1:89,18\n30#1:126\n44#1:127,18\n44#1:164\n29#1:85\n30#1:107,2\n30#1:109,2\n30#1:115,11\n44#1:145,2\n44#1:147,2\n44#1:153,11\n30#1:111,4\n44#1:149,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_call",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "Call",
        "Landroidx/compose/material/icons/Icons$TwoTone;",
        "getCall",
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
.field private static _call:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getCall(Landroidx/compose/material/icons/Icons$TwoTone;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 47

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Landroidx/compose/material/icons/twotone/CallKt;->_call:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    const-string v2, "TwoTone.Call"

    .line 82
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-object/from16 v30, v1

    move-object v13, v1

    const/high16 v0, 0x41c00000    # 24.0f

    .line 85
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

    .line 82
    invoke-direct/range {v1 .. v12}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const v18, 0x3e99999a    # 0.3f

    const v20, 0x3e99999a    # 0.3f

    .line 92
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v15

    .line 99
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

    .line 104
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v22

    .line 105
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v23

    const/high16 v24, 0x3f800000    # 1.0f

    const-string v16, ""

    .line 111
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const/high16 v1, 0x41980000    # 19.0f

    const v2, 0x418bc28f    # 17.47f

    .line 31
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x409eb852    # -0.88f

    const v6, -0x4270a3d7    # -0.07f

    const/high16 v7, -0x40200000    # -1.75f

    const v8, -0x419eb852    # -0.22f

    const v9, -0x3fd9999a    # -2.6f

    const v10, -0x4119999a    # -0.45f

    move-object v4, v0

    .line 32
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3f9851ec    # 1.19f

    const v2, -0x4067ae14    # -1.19f

    .line 33
    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f99999a    # 1.2f

    const v6, 0x3ed1eb85    # 0.41f

    const v7, 0x401eb852    # 2.48f

    const v8, 0x3f2b851f    # 0.67f

    const v9, 0x40733333    # 3.8f

    const/high16 v10, 0x3f400000    # 0.75f

    .line 34
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x404147ae    # -1.49f

    .line 35
    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 36
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x40d147ae    # 6.54f

    const/high16 v11, 0x40a00000    # 5.0f

    .line 37
    invoke-virtual {v0, v1, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, -0x40400000    # -1.5f

    .line 38
    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3db851ec    # 0.09f

    const v6, 0x3fa8f5c3    # 1.32f

    const v7, 0x3eb33333    # 0.35f

    const v8, 0x4025c28f    # 2.59f

    const/high16 v9, 0x3f400000    # 0.75f

    const v10, 0x40733333    # 3.8f

    .line 39
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3f99999a    # 1.2f

    const v12, -0x40666666    # -1.2f

    .line 40
    invoke-virtual {v0, v1, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x418a3d71    # -0.24f

    const v6, -0x40a8f5c3    # -0.84f

    const v7, -0x413851ec    # -0.39f

    const v8, -0x40251eb8    # -1.71f

    const v9, -0x4119999a    # -0.45f

    const v10, -0x3fd9999a    # -2.6f

    .line 41
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 42
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 113
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v14

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x3800

    const/16 v29, 0x0

    .line 109
    invoke-static/range {v13 .. v29}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    const/high16 v35, 0x3f800000    # 1.0f

    const/high16 v37, 0x3f800000    # 1.0f

    .line 130
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v32

    .line 137
    new-instance v0, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v4, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v4

    invoke-direct {v0, v4, v5, v3}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v34, v0

    check-cast v34, Landroidx/compose/ui/graphics/Brush;

    const/16 v36, 0x0

    const/high16 v38, 0x3f800000    # 1.0f

    .line 142
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v39

    .line 143
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v40

    const/high16 v41, 0x3f800000    # 1.0f

    const-string v33, ""

    .line 149
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const/high16 v3, 0x41a00000    # 20.0f

    const/high16 v4, 0x41a80000    # 21.0f

    .line 45
    invoke-virtual {v0, v3, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x3f0ccccd    # 0.55f

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const v7, -0x4119999a    # -0.45f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, -0x40800000    # -1.0f

    move-object v3, v0

    .line 46
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v3, -0x3fa0a3d7    # -3.49f

    .line 47
    invoke-virtual {v0, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v4, 0x0

    const v5, -0x40f33333    # -0.55f

    const v6, -0x4119999a    # -0.45f

    const/high16 v7, -0x40800000    # -1.0f

    const/high16 v8, -0x40800000    # -1.0f

    move-object v3, v0

    .line 48
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, -0x406147ae    # -1.24f

    const/4 v5, 0x0

    const v6, -0x3fe33333    # -2.45f

    const v7, -0x41b33333    # -0.2f

    const v8, -0x3f9b851f    # -3.57f

    const v9, -0x40ee147b    # -0.57f

    .line 49
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, -0x42333333    # -0.1f

    const v5, -0x42dc28f6    # -0.04f

    const v6, -0x41a8f5c3    # -0.21f

    const v7, -0x42b33333    # -0.05f

    const v8, -0x416147ae    # -0.31f

    const v9, -0x42b33333    # -0.05f

    .line 50
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, -0x417ae148    # -0.26f

    const/4 v5, 0x0

    const v6, -0x40fd70a4    # -0.51f

    const v7, 0x3dcccccd    # 0.1f

    const v8, -0x40ca3d71    # -0.71f

    const v9, 0x3e947ae1    # 0.29f

    .line 51
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v10, -0x3ff33333    # -2.2f

    const v13, 0x400ccccd    # 2.2f

    .line 52
    invoke-virtual {v0, v10, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, -0x3fcae148    # -2.83f

    const v5, -0x40466666    # -1.45f

    const v6, -0x3f5b3333    # -5.15f

    const v7, -0x3f8f5c29    # -3.76f

    const v8, -0x3f2d1eb8    # -6.59f

    const v9, -0x3f2d1eb8    # -6.59f

    .line 53
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 54
    invoke-virtual {v0, v13, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x3e8f5c29    # 0.28f

    const v5, -0x4170a3d7    # -0.28f

    const v6, 0x3eb851ec    # 0.36f

    const v7, -0x40d47ae1    # -0.67f

    const/high16 v8, 0x3e800000    # 0.25f

    const v9, -0x407d70a4    # -1.02f

    .line 55
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x410b3333    # 8.7f

    const v5, 0x40ce6666    # 6.45f

    const/high16 v6, 0x41080000    # 8.5f

    const/high16 v7, 0x40a80000    # 5.25f

    const/high16 v8, 0x41080000    # 8.5f

    const/high16 v9, 0x40800000    # 4.0f

    .line 56
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v4, 0x0

    const v5, -0x40f33333    # -0.55f

    const v6, -0x4119999a    # -0.45f

    const/high16 v7, -0x40800000    # -1.0f

    const/high16 v8, -0x40800000    # -1.0f

    const/high16 v9, -0x40800000    # -1.0f

    .line 57
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v3, 0x40800000    # 4.0f

    const/high16 v4, 0x40400000    # 3.0f

    .line 58
    invoke-virtual {v0, v3, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, -0x40f33333    # -0.55f

    const/4 v5, 0x0

    const/high16 v6, -0x40800000    # -1.0f

    const v7, 0x3ee66666    # 0.45f

    const/high16 v9, 0x3f800000    # 1.0f

    move-object v3, v0

    .line 59
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v4, 0x0

    const v5, 0x41163d71    # 9.39f

    const v6, 0x40f3851f    # 7.61f

    const/high16 v7, 0x41880000    # 17.0f

    const/high16 v8, 0x41880000    # 17.0f

    const/high16 v9, 0x41880000    # 17.0f

    .line 60
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 61
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v3, 0x41833333    # 16.4f

    const v4, 0x418828f6    # 17.02f

    .line 62
    invoke-virtual {v0, v3, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x3f59999a    # 0.85f

    const v5, 0x3e75c28f    # 0.24f

    const v6, 0x3fdc28f6    # 1.72f

    const v7, 0x3ec7ae14    # 0.39f

    const v8, 0x40266666    # 2.6f

    const v9, 0x3ee66666    # 0.45f

    move-object v3, v0

    .line 63
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v3, 0x3fbeb852    # 1.49f

    .line 64
    invoke-virtual {v0, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, -0x40570a3d    # -1.32f

    const v5, -0x4247ae14    # -0.09f

    const v6, -0x3fda3d71    # -2.59f

    const v7, -0x414ccccd    # -0.35f

    const v8, -0x3f8ccccd    # -3.8f

    const/high16 v9, -0x40c00000    # -0.75f

    move-object v3, v0

    .line 65
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 66
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 67
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v2, 0x40a0f5c3    # 5.03f

    .line 68
    invoke-virtual {v0, v2, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v2, 0x3fc00000    # 1.5f

    .line 69
    invoke-virtual {v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x3d8f5c29    # 0.07f

    const v5, 0x3f63d70a    # 0.89f

    const v6, 0x3e6147ae    # 0.22f

    const v7, 0x3fe147ae    # 1.76f

    const v8, 0x3eeb851f    # 0.46f

    const v9, 0x4025c28f    # 2.59f

    .line 70
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 71
    invoke-virtual {v0, v12, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, -0x412e147b    # -0.41f

    const v5, -0x40666666    # -1.2f

    const v6, -0x40d47ae1    # -0.67f

    const v7, -0x3fe1eb85    # -2.47f

    const v8, -0x40bd70a4    # -0.76f

    const v9, -0x3f8d70a4    # -3.79f

    .line 72
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 73
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 151
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v31

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x3800

    const/16 v46, 0x0

    .line 147
    invoke-static/range {v30 .. v46}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    sput-object v0, Landroidx/compose/material/icons/twotone/CallKt;->_call:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 76
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
