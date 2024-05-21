.class public final Landroidx/compose/material/icons/twotone/SettingsKt;
.super Ljava/lang/Object;
.source "Settings.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSettings.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Settings.kt\nandroidx/compose/material/icons/twotone/SettingsKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,205:1\n122#2:206\n116#2,3:207\n119#2,3:211\n132#2,18:214\n152#2:251\n132#2,18:252\n152#2:289\n174#3:210\n694#4,2:232\n706#4,2:234\n708#4,11:240\n694#4,2:270\n706#4,2:272\n708#4,11:278\n64#5,4:236\n64#5,4:274\n*S KotlinDebug\n*F\n+ 1 Settings.kt\nandroidx/compose/material/icons/twotone/SettingsKt\n*L\n29#1:206\n29#1:207,3\n29#1:211,3\n30#1:214,18\n30#1:251\n90#1:252,18\n90#1:289\n29#1:210\n30#1:232,2\n30#1:234,2\n30#1:240,11\n90#1:270,2\n90#1:272,2\n90#1:278,11\n30#1:236,4\n90#1:274,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_settings",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "Settings",
        "Landroidx/compose/material/icons/Icons$TwoTone;",
        "getSettings",
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
.field private static _settings:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getSettings(Landroidx/compose/material/icons/Icons$TwoTone;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 47

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Landroidx/compose/material/icons/twotone/SettingsKt;->_settings:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    const-string v2, "TwoTone.Settings"

    .line 207
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-object/from16 v30, v1

    move-object v13, v1

    const/high16 v0, 0x41c00000    # 24.0f

    .line 210
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

    .line 207
    invoke-direct/range {v1 .. v12}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const v18, 0x3e99999a    # 0.3f

    const v20, 0x3e99999a    # 0.3f

    .line 217
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v15

    .line 224
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

    .line 229
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v22

    .line 230
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v23

    const/high16 v24, 0x3f800000    # 1.0f

    const-string v16, ""

    .line 236
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const v0, 0x419a3d71    # 19.28f

    const v1, 0x4109999a    # 8.6f

    .line 31
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v8, -0x40cccccd    # -0.7f

    const v9, -0x40651eb8    # -1.21f

    .line 32
    invoke-virtual {v7, v8, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v10, -0x405d70a4    # -1.27f

    const v11, 0x3f028f5c    # 0.51f

    .line 33
    invoke-virtual {v7, v10, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v12, -0x407851ec    # -1.06f

    const v14, 0x3edc28f6    # 0.43f

    .line 34
    invoke-virtual {v7, v12, v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x40970a3d    # -0.91f

    .line 35
    invoke-virtual {v7, v0, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x413851ec    # -0.39f

    const v2, -0x41666666    # -0.3f

    const v3, -0x40b33333    # -0.8f

    const v4, -0x40f5c28f    # -0.54f

    const v5, -0x40628f5c    # -1.23f

    const v6, -0x40ca3d71    # -0.71f

    move-object v0, v7

    .line 36
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v6, -0x4123d70a    # -0.43f

    .line 37
    invoke-virtual {v7, v12, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x41dc28f6    # -0.16f

    const v4, -0x406f5c29    # -1.13f

    .line 38
    invoke-virtual {v7, v5, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x414b3333    # 12.7f

    const/high16 v3, 0x40800000    # 4.0f

    .line 39
    invoke-virtual {v7, v0, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x404ccccd    # -1.4f

    .line 40
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x41bd70a4    # -0.19f

    const v1, 0x3faccccd    # 1.35f

    .line 41
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v2, 0x3f90a3d7    # 1.13f

    .line 42
    invoke-virtual {v7, v5, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3ee147ae    # 0.44f

    .line 43
    invoke-virtual {v7, v12, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x412e147b    # -0.41f

    const v25, 0x3e2e147b    # 0.17f

    const v26, -0x40ae147b    # -0.82f

    const v27, 0x3ed1eb85    # 0.41f

    const/high16 v28, -0x40600000    # -1.25f

    const v29, 0x3f3ae148    # 0.73f

    move-object v0, v7

    move v12, v2

    move/from16 v2, v25

    move/from16 v3, v26

    move v9, v4

    move/from16 v4, v27

    move/from16 v5, v28

    move v11, v6

    move/from16 v6, v29

    .line 44
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x4099999a    # -0.9f

    const v1, 0x3f2e147b    # 0.68f

    .line 45
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x4079999a    # -1.05f

    const v1, -0x4128f5c3    # -0.42f

    .line 46
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x40fae148    # -0.52f

    .line 47
    invoke-virtual {v7, v10, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v6, 0x3f9ae148    # 1.21f

    .line 48
    invoke-virtual {v7, v8, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3f8a3d71    # 1.08f

    const v1, 0x3f570a3d    # 0.84f

    .line 49
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3f63d70a    # 0.89f

    const v4, 0x3f333333    # 0.7f

    .line 50
    invoke-virtual {v7, v5, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v3, -0x41f0a3d7    # -0.14f

    .line 51
    invoke-virtual {v7, v3, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x430a3d71    # -0.03f

    const v2, 0x3e99999a    # 0.3f

    const v25, -0x42b33333    # -0.05f

    const v26, 0x3f07ae14    # 0.53f

    const v27, -0x42b33333    # -0.05f

    const v28, 0x3f3ae148    # 0.73f

    move-object v0, v7

    move v10, v3

    move/from16 v3, v25

    move v10, v4

    move/from16 v4, v26

    move/from16 v5, v27

    move v8, v6

    move/from16 v6, v28

    .line 52
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3d4ccccd    # 0.05f

    const v1, 0x3f3ae148    # 0.73f

    const v2, 0x3ca3d70a    # 0.02f

    .line 53
    invoke-virtual {v7, v2, v14, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v6, 0x3e0f5c29    # 0.14f

    .line 54
    invoke-virtual {v7, v6, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x409c28f6    # -0.89f

    .line 55
    invoke-virtual {v7, v5, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x4075c28f    # -1.08f

    const v1, 0x3f570a3d    # 0.84f

    .line 56
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 57
    invoke-virtual {v7, v10, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x40fd70a4    # -0.51f

    const v4, 0x3fa28f5c    # 1.27f

    .line 58
    invoke-virtual {v7, v4, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v3, 0x3f87ae14    # 1.06f

    .line 59
    invoke-virtual {v7, v3, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3f68f5c3    # 0.91f

    .line 60
    invoke-virtual {v7, v0, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3ec7ae14    # 0.39f

    const v2, 0x3e99999a    # 0.3f

    const v25, 0x3f4ccccd    # 0.8f

    const v26, 0x3f0a3d71    # 0.54f

    const v27, 0x3f9d70a4    # 1.23f

    const v28, 0x3f35c28f    # 0.71f

    move-object v0, v7

    move v8, v3

    move/from16 v3, v25

    move v10, v4

    move/from16 v4, v26

    move/from16 v5, v27

    move/from16 v6, v28

    .line 61
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 62
    invoke-virtual {v7, v8, v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3e23d70a    # 0.16f

    .line 63
    invoke-virtual {v7, v0, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3e428f5c    # 0.19f

    const v1, 0x3fae147b    # 1.36f

    .line 64
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3fb1eb85    # 1.39f

    .line 65
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3e428f5c    # 0.19f

    const v1, -0x40533333    # -1.35f

    .line 66
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3e23d70a    # 0.16f

    .line 67
    invoke-virtual {v7, v0, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 68
    invoke-virtual {v7, v8, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3ed1eb85    # 0.41f

    const v2, -0x41d1eb85    # -0.17f

    const v3, 0x3f51eb85    # 0.82f

    const v4, -0x412e147b    # -0.41f

    const/high16 v5, 0x3fa00000    # 1.25f

    const v6, -0x40c51eb8    # -0.73f

    move-object v0, v7

    .line 69
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3f666666    # 0.9f

    const v1, -0x40d1eb85    # -0.68f

    .line 70
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3f851eb8    # 1.04f

    const v1, 0x3ed70a3d    # 0.42f

    .line 71
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3f028f5c    # 0.51f

    .line 72
    invoke-virtual {v7, v10, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x40651eb8    # -1.21f

    const v1, 0x3f333333    # 0.7f

    .line 73
    invoke-virtual {v7, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x4075c28f    # -1.08f

    const v1, -0x40a8f5c3    # -0.84f

    .line 74
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x40cccccd    # -0.7f

    const v6, -0x409c28f6    # -0.89f

    .line 75
    invoke-virtual {v7, v6, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x3e0f5c29    # 0.14f

    .line 76
    invoke-virtual {v7, v5, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3d23d70a    # 0.04f

    const v2, -0x416147ae    # -0.31f

    const v3, 0x3d4ccccd    # 0.05f

    const v4, -0x40fae148    # -0.52f

    const v25, 0x3d4ccccd    # 0.05f

    const v26, -0x40c51eb8    # -0.73f

    move-object v0, v7

    move v8, v5

    move/from16 v5, v25

    move v10, v6

    move/from16 v6, v26

    .line 77
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const v2, -0x41a8f5c3    # -0.21f

    const v3, -0x435c28f6    # -0.02f

    const v4, -0x4123d70a    # -0.43f

    const v5, -0x42b33333    # -0.05f

    const v6, -0x40c51eb8    # -0.73f

    .line 78
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x41f0a3d7    # -0.14f

    .line 79
    invoke-virtual {v7, v0, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x40cccccd    # -0.7f

    const v6, 0x3f63d70a    # 0.89f

    .line 80
    invoke-virtual {v7, v6, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3f8ccccd    # 1.1f

    const v1, -0x40a8f5c3    # -0.84f

    .line 81
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 82
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x41400000    # 12.0f

    const/high16 v1, 0x41800000    # 16.0f

    .line 83
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x3ff28f5c    # -2.21f

    const/4 v2, 0x0

    const/high16 v3, -0x3f800000    # -4.0f

    const v4, -0x401ae148    # -1.79f

    const/high16 v5, -0x3f800000    # -4.0f

    const/high16 v25, -0x3f800000    # -4.0f

    move-object v0, v7

    move v10, v6

    move/from16 v6, v25

    .line 84
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3fe51eb8    # 1.79f

    const/high16 v1, -0x3f800000    # -4.0f

    const/high16 v2, 0x40800000    # 4.0f

    .line 85
    invoke-virtual {v7, v0, v1, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 86
    invoke-virtual {v7, v2, v0, v2, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x401ae148    # -1.79f

    .line 87
    invoke-virtual {v7, v0, v2, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 88
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 238
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v0

    move v3, v14

    move-object v14, v0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x3800

    const/16 v29, 0x0

    .line 234
    invoke-static/range {v13 .. v29}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    const/high16 v35, 0x3f800000    # 1.0f

    const/high16 v37, 0x3f800000    # 1.0f

    .line 255
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v32

    .line 262
    new-instance v0, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v4, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-direct {v0, v4, v5, v6}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v34, v0

    check-cast v34, Landroidx/compose/ui/graphics/Brush;

    const/16 v36, 0x0

    const/high16 v38, 0x3f800000    # 1.0f

    .line 267
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v39

    .line 268
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v40

    const/high16 v41, 0x3f800000    # 1.0f

    const-string v33, ""

    .line 274
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const v4, 0x419b70a4    # 19.43f

    const v5, 0x414fae14    # 12.98f

    .line 91
    invoke-virtual {v0, v4, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v14, 0x3d23d70a    # 0.04f

    const v15, -0x415c28f6    # -0.32f

    const v16, 0x3d8f5c29    # 0.07f

    const v17, -0x40dc28f6    # -0.64f

    const v18, 0x3d8f5c29    # 0.07f

    const v19, -0x40851eb8    # -0.98f

    move-object v13, v0

    .line 92
    invoke-virtual/range {v13 .. v19}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v14, 0x0

    const v15, -0x4151eb85    # -0.34f

    const v16, -0x430a3d71    # -0.03f

    const v17, -0x40d70a3d    # -0.66f

    const v18, -0x4270a3d7    # -0.07f

    .line 93
    invoke-virtual/range {v13 .. v19}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x40070a3d    # 2.11f

    const v5, -0x402ccccd    # -1.65f

    .line 94
    invoke-virtual {v0, v4, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v14, 0x3e428f5c    # 0.19f

    const v15, -0x41e66666    # -0.15f

    const v16, 0x3e75c28f    # 0.24f

    const v17, -0x4128f5c3    # -0.42f

    const v18, 0x3df5c28f    # 0.12f

    const v19, -0x40dc28f6    # -0.64f

    .line 95
    invoke-virtual/range {v13 .. v19}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, -0x3fa28f5c    # -3.46f

    const/high16 v5, -0x40000000    # -2.0f

    .line 96
    invoke-virtual {v0, v5, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v14, -0x4247ae14    # -0.09f

    const v15, -0x41dc28f6    # -0.16f

    const v16, -0x417ae148    # -0.26f

    const/high16 v17, -0x41800000    # -0.25f

    const v18, -0x411eb852    # -0.44f

    const/high16 v19, -0x41800000    # -0.25f

    .line 97
    invoke-virtual/range {v13 .. v19}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v14, -0x428a3d71    # -0.06f

    const/4 v15, 0x0

    const v16, -0x420a3d71    # -0.12f

    const v17, 0x3c23d70a    # 0.01f

    const v18, -0x41d1eb85    # -0.17f

    const v19, 0x3cf5c28f    # 0.03f

    .line 98
    invoke-virtual/range {v13 .. v19}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, -0x3fe0a3d7    # -2.49f

    const/high16 v6, 0x3f800000    # 1.0f

    .line 99
    invoke-virtual {v0, v4, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v14, -0x40fae148    # -0.52f

    const v15, -0x41333333    # -0.4f

    const v16, -0x4075c28f    # -1.08f

    const v17, -0x40c51eb8    # -0.73f

    const v18, -0x4027ae14    # -1.69f

    const v19, -0x40851eb8    # -0.98f

    .line 100
    invoke-virtual/range {v13 .. v19}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, -0x413d70a4    # -0.38f

    const v6, -0x3fd66666    # -2.65f

    .line 101
    invoke-virtual {v0, v4, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v14, 0x41675c29    # 14.46f

    const v15, 0x400b851f    # 2.18f

    const/high16 v16, 0x41640000    # 14.25f

    const/high16 v17, 0x40000000    # 2.0f

    const/high16 v18, 0x41600000    # 14.0f

    const/high16 v19, 0x40000000    # 2.0f

    .line 102
    invoke-virtual/range {v13 .. v19}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 103
    invoke-virtual {v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v14, -0x41800000    # -0.25f

    const/4 v15, 0x0

    const v16, -0x41147ae1    # -0.46f

    const v17, 0x3e3851ec    # 0.18f

    const v18, -0x41051eb8    # -0.49f

    const v19, 0x3ed70a3d    # 0.42f

    .line 104
    invoke-virtual/range {v13 .. v19}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v6, 0x4029999a    # 2.65f

    .line 105
    invoke-virtual {v0, v4, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v14, -0x40e3d70a    # -0.61f

    const/high16 v15, 0x3e800000    # 0.25f

    const v16, -0x406a3d71    # -1.17f

    const v17, 0x3f170a3d    # 0.59f

    const v18, -0x4027ae14    # -1.69f

    const v19, 0x3f7ae148    # 0.98f

    .line 106
    invoke-virtual/range {v13 .. v19}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, -0x3fe0a3d7    # -2.49f

    const/high16 v6, -0x40800000    # -1.0f

    .line 107
    invoke-virtual {v0, v4, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v14, -0x428a3d71    # -0.06f

    const v15, -0x435c28f6    # -0.02f

    const v16, -0x420a3d71    # -0.12f

    const v17, -0x430a3d71    # -0.03f

    const v18, -0x41c7ae14    # -0.18f

    const v19, -0x430a3d71    # -0.03f

    .line 108
    invoke-virtual/range {v13 .. v19}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v14, -0x41d1eb85    # -0.17f

    const/4 v15, 0x0

    const v16, -0x4151eb85    # -0.34f

    const v17, 0x3db851ec    # 0.09f

    const v18, -0x4123d70a    # -0.43f

    const/high16 v19, 0x3e800000    # 0.25f

    .line 109
    invoke-virtual/range {v13 .. v19}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x405d70a4    # 3.46f

    .line 110
    invoke-virtual {v0, v5, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v14, -0x41fae148    # -0.13f

    const v15, 0x3e6147ae    # 0.22f

    const v16, -0x4270a3d7    # -0.07f

    const v17, 0x3efae148    # 0.49f

    const v18, 0x3df5c28f    # 0.12f

    const v19, 0x3f23d70a    # 0.64f

    .line 111
    invoke-virtual/range {v13 .. v19}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x40070a3d    # 2.11f

    const v6, 0x3fd33333    # 1.65f

    .line 112
    invoke-virtual {v0, v4, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v14, -0x42dc28f6    # -0.04f

    const v15, 0x3ea3d70a    # 0.32f

    const v17, 0x3f266666    # 0.65f

    const v18, -0x4270a3d7    # -0.07f

    const v19, 0x3f7ae148    # 0.98f

    .line 113
    invoke-virtual/range {v13 .. v19}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x3d8f5c29    # 0.07f

    const v6, 0x3f7ae148    # 0.98f

    const v7, 0x3cf5c28f    # 0.03f

    const v13, 0x3f28f5c3    # 0.66f

    .line 114
    invoke-virtual {v0, v7, v13, v4, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, -0x3ff8f5c3    # -2.11f

    const v6, 0x3fd33333    # 1.65f

    .line 115
    invoke-virtual {v0, v4, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v14, -0x41bd70a4    # -0.19f

    const v15, 0x3e19999a    # 0.15f

    const v16, -0x418a3d71    # -0.24f

    const v17, 0x3ed70a3d    # 0.42f

    const v18, -0x420a3d71    # -0.12f

    const v19, 0x3f23d70a    # 0.64f

    move-object v13, v0

    .line 116
    invoke-virtual/range {v13 .. v19}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x405d70a4    # 3.46f

    const/high16 v6, 0x40000000    # 2.0f

    .line 117
    invoke-virtual {v0, v6, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v14, 0x3db851ec    # 0.09f

    const v15, 0x3e23d70a    # 0.16f

    const v16, 0x3e851eb8    # 0.26f

    const/high16 v17, 0x3e800000    # 0.25f

    const v18, 0x3ee147ae    # 0.44f

    const/high16 v19, 0x3e800000    # 0.25f

    .line 118
    invoke-virtual/range {v13 .. v19}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v14, 0x3d75c28f    # 0.06f

    const/4 v15, 0x0

    const v16, 0x3df5c28f    # 0.12f

    const v17, -0x43dc28f6    # -0.01f

    const v18, 0x3e2e147b    # 0.17f

    const v19, -0x430a3d71    # -0.03f

    .line 119
    invoke-virtual/range {v13 .. v19}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x401f5c29    # 2.49f

    const/high16 v7, -0x40800000    # -1.0f

    .line 120
    invoke-virtual {v0, v4, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v14, 0x3f051eb8    # 0.52f

    const v15, 0x3ecccccd    # 0.4f

    const v16, 0x3f8a3d71    # 1.08f

    const v17, 0x3f3ae148    # 0.73f

    const v18, 0x3fd851ec    # 1.69f

    const v19, 0x3f7ae148    # 0.98f

    .line 121
    invoke-virtual/range {v13 .. v19}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x3ec28f5c    # 0.38f

    const v7, 0x4029999a    # 2.65f

    .line 122
    invoke-virtual {v0, v4, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v14, 0x3cf5c28f    # 0.03f

    const v15, 0x3e75c28f    # 0.24f

    const v16, 0x3e75c28f    # 0.24f

    const v17, 0x3ed70a3d    # 0.42f

    const v18, 0x3efae148    # 0.49f

    const v19, 0x3ed70a3d    # 0.42f

    .line 123
    invoke-virtual/range {v13 .. v19}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 124
    invoke-virtual {v0, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v14, 0x3e800000    # 0.25f

    const/4 v15, 0x0

    const v16, 0x3eeb851f    # 0.46f

    const v17, -0x41c7ae14    # -0.18f

    const v19, -0x4128f5c3    # -0.42f

    .line 125
    invoke-virtual/range {v13 .. v19}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v7, -0x3fd66666    # -2.65f

    .line 126
    invoke-virtual {v0, v4, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v14, 0x3f1c28f6    # 0.61f

    const/high16 v15, -0x41800000    # -0.25f

    const v16, 0x3f95c28f    # 1.17f

    const v17, -0x40e8f5c3    # -0.59f

    const v18, 0x3fd851ec    # 1.69f

    const v19, -0x40851eb8    # -0.98f

    .line 127
    invoke-virtual/range {v13 .. v19}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x401f5c29    # 2.49f

    const/high16 v7, 0x3f800000    # 1.0f

    .line 128
    invoke-virtual {v0, v4, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v14, 0x3d75c28f    # 0.06f

    const v15, 0x3ca3d70a    # 0.02f

    const v16, 0x3df5c28f    # 0.12f

    const v17, 0x3cf5c28f    # 0.03f

    const v18, 0x3e3851ec    # 0.18f

    const v19, 0x3cf5c28f    # 0.03f

    .line 129
    invoke-virtual/range {v13 .. v19}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v14, 0x3e2e147b    # 0.17f

    const/4 v15, 0x0

    const v16, 0x3eae147b    # 0.34f

    const v17, -0x4247ae14    # -0.09f

    const v18, 0x3edc28f6    # 0.43f

    const/high16 v19, -0x41800000    # -0.25f

    .line 130
    invoke-virtual/range {v13 .. v19}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, -0x3fa28f5c    # -3.46f

    .line 131
    invoke-virtual {v0, v6, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v14, 0x3df5c28f    # 0.12f

    const v15, -0x419eb852    # -0.22f

    const v16, 0x3d8f5c29    # 0.07f

    const v17, -0x41051eb8    # -0.49f

    const v18, -0x420a3d71    # -0.12f

    const v19, -0x40dc28f6    # -0.64f

    .line 132
    invoke-virtual/range {v13 .. v19}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, -0x3ff8f5c3    # -2.11f

    const v7, -0x402ccccd    # -1.65f

    .line 133
    invoke-virtual {v0, v4, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 134
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x418b999a    # 17.45f

    const v7, 0x413451ec    # 11.27f

    .line 135
    invoke-virtual {v0, v4, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v14, 0x3d23d70a    # 0.04f

    const v15, 0x3e9eb852    # 0.31f

    const v16, 0x3d4ccccd    # 0.05f

    const v17, 0x3f051eb8    # 0.52f

    const v18, 0x3d4ccccd    # 0.05f

    const v19, 0x3f3ae148    # 0.73f

    .line 136
    invoke-virtual/range {v13 .. v19}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v14, 0x0

    const v15, 0x3e570a3d    # 0.21f

    const v16, -0x435c28f6    # -0.02f

    const v17, 0x3edc28f6    # 0.43f

    const v18, -0x42b33333    # -0.05f

    .line 137
    invoke-virtual/range {v13 .. v19}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, -0x41f0a3d7    # -0.14f

    .line 138
    invoke-virtual {v0, v4, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x3f333333    # 0.7f

    .line 139
    invoke-virtual {v0, v10, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x3f8a3d71    # 1.08f

    const v7, 0x3f570a3d    # 0.84f

    .line 140
    invoke-virtual {v0, v4, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x3f9ae148    # 1.21f

    const v7, -0x40cccccd    # -0.7f

    .line 141
    invoke-virtual {v0, v7, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, -0x40fd70a4    # -0.51f

    const v7, -0x405d70a4    # -1.27f

    .line 142
    invoke-virtual {v0, v7, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, -0x407ae148    # -1.04f

    const v7, -0x4128f5c3    # -0.42f

    .line 143
    invoke-virtual {v0, v4, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, -0x4099999a    # -0.9f

    const v7, 0x3f2e147b    # 0.68f

    .line 144
    invoke-virtual {v0, v4, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v14, -0x4123d70a    # -0.43f

    const v15, 0x3ea3d70a    # 0.32f

    const v16, -0x40a8f5c3    # -0.84f

    const v17, 0x3f0f5c29    # 0.56f

    const/high16 v18, -0x40600000    # -1.25f

    .line 145
    invoke-virtual/range {v13 .. v19}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, -0x407851ec    # -1.06f

    .line 146
    invoke-virtual {v0, v4, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v7, -0x41dc28f6    # -0.16f

    .line 147
    invoke-virtual {v0, v7, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v13, -0x41b33333    # -0.2f

    const v14, 0x3faccccd    # 1.35f

    .line 148
    invoke-virtual {v0, v13, v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v13, -0x404ccccd    # -1.4f

    .line 149
    invoke-virtual {v0, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v13, -0x41bd70a4    # -0.19f

    const v14, -0x40533333    # -1.35f

    .line 150
    invoke-virtual {v0, v13, v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 151
    invoke-virtual {v0, v7, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 152
    invoke-virtual {v0, v4, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v14, -0x4123d70a    # -0.43f

    const v15, -0x41c7ae14    # -0.18f

    const v16, -0x40ab851f    # -0.83f

    const v17, -0x412e147b    # -0.41f

    const v18, -0x40628f5c    # -1.23f

    const v19, -0x40ca3d71    # -0.71f

    move-object v13, v0

    .line 153
    invoke-virtual/range {v13 .. v19}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, -0x40970a3d    # -0.91f

    const v7, -0x40cccccd    # -0.7f

    .line 154
    invoke-virtual {v0, v4, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, -0x407851ec    # -1.06f

    .line 155
    invoke-virtual {v0, v4, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x3f028f5c    # 0.51f

    const v13, -0x405d70a4    # -1.27f

    .line 156
    invoke-virtual {v0, v13, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, -0x40651eb8    # -1.21f

    .line 157
    invoke-virtual {v0, v7, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x3f8a3d71    # 1.08f

    const v13, -0x40a8f5c3    # -0.84f

    .line 158
    invoke-virtual {v0, v4, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 159
    invoke-virtual {v0, v10, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, -0x41f0a3d7    # -0.14f

    .line 160
    invoke-virtual {v0, v4, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v14, -0x430a3d71    # -0.03f

    const v15, -0x416147ae    # -0.31f

    const v16, -0x42b33333    # -0.05f

    const v17, -0x40f5c28f    # -0.54f

    const v18, -0x42b33333    # -0.05f

    const v19, -0x40c28f5c    # -0.74f

    move-object v13, v0

    .line 161
    invoke-virtual/range {v13 .. v19}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x3d4ccccd    # 0.05f

    const v7, -0x40c51eb8    # -0.73f

    const v10, 0x3ca3d70a    # 0.02f

    .line 162
    invoke-virtual {v0, v10, v11, v4, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 163
    invoke-virtual {v0, v8, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, -0x409c28f6    # -0.89f

    const v7, -0x40cccccd    # -0.7f

    .line 164
    invoke-virtual {v0, v4, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, -0x4075c28f    # -1.08f

    const v7, -0x40a8f5c3    # -0.84f

    .line 165
    invoke-virtual {v0, v4, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, -0x40651eb8    # -1.21f

    const v7, 0x3f333333    # 0.7f

    .line 166
    invoke-virtual {v0, v7, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x3fa28f5c    # 1.27f

    const v7, 0x3f028f5c    # 0.51f

    .line 167
    invoke-virtual {v0, v4, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x3f851eb8    # 1.04f

    const v7, 0x3ed70a3d    # 0.42f

    .line 168
    invoke-virtual {v0, v4, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x3f666666    # 0.9f

    const v7, -0x40d1eb85    # -0.68f

    .line 169
    invoke-virtual {v0, v4, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v14, 0x3edc28f6    # 0.43f

    const v15, -0x415c28f6    # -0.32f

    const v16, 0x3f570a3d    # 0.84f

    const v17, -0x40f0a3d7    # -0.56f

    const/high16 v18, 0x3fa00000    # 1.25f

    const v19, -0x40c51eb8    # -0.73f

    .line 170
    invoke-virtual/range {v13 .. v19}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x3f87ae14    # 1.06f

    .line 171
    invoke-virtual {v0, v4, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x3e23d70a    # 0.16f

    .line 172
    invoke-virtual {v0, v4, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x3e4ccccd    # 0.2f

    const v7, -0x40533333    # -1.35f

    .line 173
    invoke-virtual {v0, v4, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x3fb1eb85    # 1.39f

    .line 174
    invoke-virtual {v0, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x3e428f5c    # 0.19f

    const v7, 0x3faccccd    # 1.35f

    .line 175
    invoke-virtual {v0, v4, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x3e23d70a    # 0.16f

    .line 176
    invoke-virtual {v0, v4, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x3f87ae14    # 1.06f

    .line 177
    invoke-virtual {v0, v4, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v15, 0x3e3851ec    # 0.18f

    const v16, 0x3f547ae1    # 0.83f

    const v17, 0x3ed1eb85    # 0.41f

    const v18, 0x3f9d70a4    # 1.23f

    const v19, 0x3f35c28f    # 0.71f

    .line 178
    invoke-virtual/range {v13 .. v19}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v3, 0x3f68f5c3    # 0.91f

    const v4, 0x3f333333    # 0.7f

    .line 179
    invoke-virtual {v0, v3, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v3, 0x3f87ae14    # 1.06f

    .line 180
    invoke-virtual {v0, v3, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v3, -0x40fd70a4    # -0.51f

    const v7, 0x3fa28f5c    # 1.27f

    .line 181
    invoke-virtual {v0, v7, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v3, 0x3f9ae148    # 1.21f

    .line 182
    invoke-virtual {v0, v4, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v3, -0x40770a3d    # -1.07f

    const v7, 0x3f59999a    # 0.85f

    .line 183
    invoke-virtual {v0, v3, v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v3, -0x409c28f6    # -0.89f

    .line 184
    invoke-virtual {v0, v3, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 185
    invoke-virtual {v0, v8, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 186
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v3, 0x41400000    # 12.0f

    const/high16 v4, 0x41000000    # 8.0f

    .line 187
    invoke-virtual {v0, v3, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v14, -0x3ff28f5c    # -2.21f

    const/4 v15, 0x0

    const/high16 v16, -0x3f800000    # -4.0f

    const v17, 0x3fe51eb8    # 1.79f

    const/high16 v18, -0x3f800000    # -4.0f

    const/high16 v19, 0x40800000    # 4.0f

    .line 188
    invoke-virtual/range {v13 .. v19}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v3, 0x3fe51eb8    # 1.79f

    .line 189
    invoke-virtual {v0, v3, v2, v2, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v3, -0x401ae148    # -1.79f

    .line 190
    invoke-virtual {v0, v2, v3, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v2, -0x401ae148    # -1.79f

    .line 191
    invoke-virtual {v0, v2, v1, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 192
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, 0x41400000    # 12.0f

    const/high16 v2, 0x41600000    # 14.0f

    .line 193
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v14, -0x40733333    # -1.1f

    const/high16 v16, -0x40000000    # -2.0f

    const v17, -0x4099999a    # -0.9f

    const/high16 v18, -0x40000000    # -2.0f

    const/high16 v19, -0x40000000    # -2.0f

    .line 194
    invoke-virtual/range {v13 .. v19}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3f666666    # 0.9f

    .line 195
    invoke-virtual {v0, v1, v5, v6, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 196
    invoke-virtual {v0, v6, v1, v6, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x4099999a    # -0.9f

    .line 197
    invoke-virtual {v0, v1, v6, v5, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 198
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 276
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v31

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x3800

    const/16 v46, 0x0

    .line 272
    invoke-static/range {v30 .. v46}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 206
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    sput-object v0, Landroidx/compose/material/icons/twotone/SettingsKt;->_settings:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 201
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
