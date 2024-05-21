.class public final Landroidx/compose/material/icons/outlined/SettingsKt;
.super Ljava/lang/Object;
.source "Settings.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSettings.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Settings.kt\nandroidx/compose/material/icons/outlined/SettingsKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,145:1\n122#2:146\n116#2,3:147\n119#2,3:151\n132#2,18:154\n152#2:191\n174#3:150\n694#4,2:172\n706#4,2:174\n708#4,11:180\n64#5,4:176\n*S KotlinDebug\n*F\n+ 1 Settings.kt\nandroidx/compose/material/icons/outlined/SettingsKt\n*L\n29#1:146\n29#1:147,3\n29#1:151,3\n30#1:154,18\n30#1:191\n29#1:150\n30#1:172,2\n30#1:174,2\n30#1:180,11\n30#1:176,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_settings",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "Settings",
        "Landroidx/compose/material/icons/Icons$Outlined;",
        "getSettings",
        "(Landroidx/compose/material/icons/Icons$Outlined;)Landroidx/compose/ui/graphics/vector/ImageVector;",
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

.method public static final getSettings(Landroidx/compose/material/icons/Icons$Outlined;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 30

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Landroidx/compose/material/icons/outlined/SettingsKt;->_settings:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    const-string v2, "Outlined.Settings"

    .line 147
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-object v13, v1

    const/high16 v0, 0x41c00000    # 24.0f

    .line 150
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

    .line 147
    invoke-direct/range {v1 .. v12}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/high16 v18, 0x3f800000    # 1.0f

    const/high16 v20, 0x3f800000    # 1.0f

    .line 157
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v15

    .line 164
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

    .line 169
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v22

    .line 170
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v23

    const/high16 v24, 0x3f800000    # 1.0f

    const-string v16, ""

    .line 176
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const v0, 0x419b70a4    # 19.43f

    const v1, 0x414fae14    # 12.98f

    .line 31
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3d23d70a    # 0.04f

    const v2, -0x415c28f6    # -0.32f

    const v3, 0x3d8f5c29    # 0.07f

    const v4, -0x40dc28f6    # -0.64f

    const v5, 0x3d8f5c29    # 0.07f

    const v6, -0x40851eb8    # -0.98f

    move-object v0, v7

    .line 32
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const v2, -0x4151eb85    # -0.34f

    const v3, -0x430a3d71    # -0.03f

    const v4, -0x40d70a3d    # -0.66f

    const v5, -0x4270a3d7    # -0.07f

    .line 33
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v8, 0x40070a3d    # 2.11f

    const v9, -0x402ccccd    # -1.65f

    .line 34
    invoke-virtual {v7, v8, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3e428f5c    # 0.19f

    const v2, -0x41e66666    # -0.15f

    const v3, 0x3e75c28f    # 0.24f

    const v4, -0x4128f5c3    # -0.42f

    const v5, 0x3df5c28f    # 0.12f

    const v6, -0x40dc28f6    # -0.64f

    .line 35
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v10, -0x40000000    # -2.0f

    const v11, -0x3fa28f5c    # -3.46f

    .line 36
    invoke-virtual {v7, v10, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x4247ae14    # -0.09f

    const v2, -0x41dc28f6    # -0.16f

    const v3, -0x417ae148    # -0.26f

    const/high16 v4, -0x41800000    # -0.25f

    const v5, -0x411eb852    # -0.44f

    const/high16 v6, -0x41800000    # -0.25f

    .line 37
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x428a3d71    # -0.06f

    const/4 v2, 0x0

    const v3, -0x420a3d71    # -0.12f

    const v4, 0x3c23d70a    # 0.01f

    const v5, -0x41d1eb85    # -0.17f

    const v6, 0x3cf5c28f    # 0.03f

    .line 38
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v12, -0x3fe0a3d7    # -2.49f

    const/high16 v14, 0x3f800000    # 1.0f

    .line 39
    invoke-virtual {v7, v12, v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x40fae148    # -0.52f

    const v2, -0x41333333    # -0.4f

    const v3, -0x4075c28f    # -1.08f

    const v4, -0x40c51eb8    # -0.73f

    const v5, -0x4027ae14    # -1.69f

    const v6, -0x40851eb8    # -0.98f

    .line 40
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v6, -0x413d70a4    # -0.38f

    const v5, -0x3fd66666    # -2.65f

    .line 41
    invoke-virtual {v7, v6, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x41675c29    # 14.46f

    const v2, 0x400b851f    # 2.18f

    const/high16 v3, 0x41640000    # 14.25f

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v25, 0x41600000    # 14.0f

    const/high16 v26, 0x40000000    # 2.0f

    move v9, v5

    move/from16 v5, v25

    move v11, v6

    move/from16 v6, v26

    .line 42
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v6, -0x3f800000    # -4.0f

    .line 43
    invoke-virtual {v7, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, -0x41800000    # -0.25f

    const/4 v2, 0x0

    const v3, -0x41147ae1    # -0.46f

    const v4, 0x3e3851ec    # 0.18f

    const v5, -0x41051eb8    # -0.49f

    const v26, 0x3ed70a3d    # 0.42f

    move/from16 v6, v26

    .line 44
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v6, 0x4029999a    # 2.65f

    .line 45
    invoke-virtual {v7, v11, v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x40e3d70a    # -0.61f

    const/high16 v2, 0x3e800000    # 0.25f

    const v3, -0x406a3d71    # -1.17f

    const v4, 0x3f170a3d    # 0.59f

    const v5, -0x4027ae14    # -1.69f

    const v11, 0x3f7ae148    # 0.98f

    move v14, v6

    move v6, v11

    .line 46
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, -0x40800000    # -1.0f

    .line 47
    invoke-virtual {v7, v12, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x428a3d71    # -0.06f

    const v2, -0x435c28f6    # -0.02f

    const v3, -0x420a3d71    # -0.12f

    const v4, -0x430a3d71    # -0.03f

    const v5, -0x41c7ae14    # -0.18f

    const v6, -0x430a3d71    # -0.03f

    move-object v0, v7

    .line 48
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x41d1eb85    # -0.17f

    const/4 v2, 0x0

    const v3, -0x4151eb85    # -0.34f

    const v4, 0x3db851ec    # 0.09f

    const v5, -0x4123d70a    # -0.43f

    const/high16 v6, 0x3e800000    # 0.25f

    .line 49
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x405d70a4    # 3.46f

    .line 50
    invoke-virtual {v7, v10, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x41fae148    # -0.13f

    const v2, 0x3e6147ae    # 0.22f

    const v3, -0x4270a3d7    # -0.07f

    const v4, 0x3efae148    # 0.49f

    const v5, 0x3df5c28f    # 0.12f

    const v6, 0x3f23d70a    # 0.64f

    move-object v0, v7

    .line 51
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3fd33333    # 1.65f

    .line 52
    invoke-virtual {v7, v8, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x42dc28f6    # -0.04f

    const v2, 0x3ea3d70a    # 0.32f

    const v4, 0x3f266666    # 0.65f

    const v5, -0x4270a3d7    # -0.07f

    const v6, 0x3f7ae148    # 0.98f

    move-object v0, v7

    .line 53
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const v2, 0x3ea8f5c3    # 0.33f

    const v3, 0x3cf5c28f    # 0.03f

    const v4, 0x3f28f5c3    # 0.66f

    const v5, 0x3d8f5c29    # 0.07f

    .line 54
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x3ff8f5c3    # -2.11f

    const v1, 0x3fd33333    # 1.65f

    .line 55
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x41bd70a4    # -0.19f

    const v2, 0x3e19999a    # 0.15f

    const v3, -0x418a3d71    # -0.24f

    const v4, 0x3ed70a3d    # 0.42f

    const v5, -0x420a3d71    # -0.12f

    const v6, 0x3f23d70a    # 0.64f

    move-object v0, v7

    .line 56
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x405d70a4    # 3.46f

    const/high16 v8, 0x40000000    # 2.0f

    .line 57
    invoke-virtual {v7, v8, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3db851ec    # 0.09f

    const v2, 0x3e23d70a    # 0.16f

    const v3, 0x3e851eb8    # 0.26f

    const/high16 v4, 0x3e800000    # 0.25f

    const v5, 0x3ee147ae    # 0.44f

    const/high16 v6, 0x3e800000    # 0.25f

    move-object v0, v7

    .line 58
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3d75c28f    # 0.06f

    const/4 v2, 0x0

    const v3, 0x3df5c28f    # 0.12f

    const v4, -0x43dc28f6    # -0.01f

    const v5, 0x3e2e147b    # 0.17f

    const v6, -0x430a3d71    # -0.03f

    .line 59
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x401f5c29    # 2.49f

    const/high16 v1, -0x40800000    # -1.0f

    .line 60
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3f051eb8    # 0.52f

    const v2, 0x3ecccccd    # 0.4f

    const v3, 0x3f8a3d71    # 1.08f

    const v4, 0x3f3ae148    # 0.73f

    const v5, 0x3fd851ec    # 1.69f

    const v6, 0x3f7ae148    # 0.98f

    move-object v0, v7

    .line 61
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3ec28f5c    # 0.38f

    .line 62
    invoke-virtual {v7, v0, v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3cf5c28f    # 0.03f

    const v2, 0x3e75c28f    # 0.24f

    const v3, 0x3e75c28f    # 0.24f

    const v4, 0x3ed70a3d    # 0.42f

    const v5, 0x3efae148    # 0.49f

    const v6, 0x3ed70a3d    # 0.42f

    move-object v0, v7

    .line 63
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v11, 0x40800000    # 4.0f

    .line 64
    invoke-virtual {v7, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, 0x3e800000    # 0.25f

    const/4 v2, 0x0

    const v3, 0x3eeb851f    # 0.46f

    const v4, -0x41c7ae14    # -0.18f

    const v6, -0x4128f5c3    # -0.42f

    .line 65
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3ec28f5c    # 0.38f

    .line 66
    invoke-virtual {v7, v0, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3f1c28f6    # 0.61f

    const/high16 v2, -0x41800000    # -0.25f

    const v3, 0x3f95c28f    # 1.17f

    const v4, -0x40e8f5c3    # -0.59f

    const v5, 0x3fd851ec    # 1.69f

    const v6, -0x40851eb8    # -0.98f

    move-object v0, v7

    .line 67
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x401f5c29    # 2.49f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 68
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3d75c28f    # 0.06f

    const v2, 0x3ca3d70a    # 0.02f

    const v3, 0x3df5c28f    # 0.12f

    const v4, 0x3cf5c28f    # 0.03f

    const v5, 0x3e3851ec    # 0.18f

    const v6, 0x3cf5c28f    # 0.03f

    move-object v0, v7

    .line 69
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3e2e147b    # 0.17f

    const/4 v2, 0x0

    const v3, 0x3eae147b    # 0.34f

    const v4, -0x4247ae14    # -0.09f

    const v5, 0x3edc28f6    # 0.43f

    const/high16 v6, -0x41800000    # -0.25f

    .line 70
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x3fa28f5c    # -3.46f

    .line 71
    invoke-virtual {v7, v8, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3df5c28f    # 0.12f

    const v2, -0x419eb852    # -0.22f

    const v3, 0x3d8f5c29    # 0.07f

    const v4, -0x41051eb8    # -0.49f

    const v5, -0x420a3d71    # -0.12f

    const v6, -0x40dc28f6    # -0.64f

    move-object v0, v7

    .line 72
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x3ff8f5c3    # -2.11f

    const v1, -0x402ccccd    # -1.65f

    .line 73
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 74
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x418b999a    # 17.45f

    const v1, 0x413451ec    # 11.27f

    .line 75
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3d23d70a    # 0.04f

    const v2, 0x3e9eb852    # 0.31f

    const v3, 0x3d4ccccd    # 0.05f

    const v4, 0x3f051eb8    # 0.52f

    const v5, 0x3d4ccccd    # 0.05f

    const v6, 0x3f3ae148    # 0.73f

    move-object v0, v7

    .line 76
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v1, 0x0

    const v2, 0x3e570a3d    # 0.21f

    const v3, -0x435c28f6    # -0.02f

    const v4, 0x3edc28f6    # 0.43f

    const v5, -0x42b33333    # -0.05f

    .line 77
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x41f0a3d7    # -0.14f

    const v9, 0x3f90a3d7    # 1.13f

    .line 78
    invoke-virtual {v7, v0, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3f63d70a    # 0.89f

    const v12, 0x3f333333    # 0.7f

    .line 79
    invoke-virtual {v7, v0, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3f8a3d71    # 1.08f

    const v1, 0x3f570a3d    # 0.84f

    .line 80
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3f9ae148    # 1.21f

    const v14, -0x40cccccd    # -0.7f

    .line 81
    invoke-virtual {v7, v14, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x405d70a4    # -1.27f

    const v1, -0x40fd70a4    # -0.51f

    .line 82
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x407ae148    # -1.04f

    const v1, -0x4128f5c3    # -0.42f

    .line 83
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x4099999a    # -0.9f

    const v1, 0x3f2e147b    # 0.68f

    .line 84
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x4123d70a    # -0.43f

    const v2, 0x3ea3d70a    # 0.32f

    const v3, -0x40a8f5c3    # -0.84f

    const v4, 0x3f0f5c29    # 0.56f

    const/high16 v5, -0x40600000    # -1.25f

    move-object v0, v7

    .line 85
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v6, -0x407851ec    # -1.06f

    const v5, 0x3edc28f6    # 0.43f

    .line 86
    invoke-virtual {v7, v6, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x41dc28f6    # -0.16f

    .line 87
    invoke-virtual {v7, v0, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x41b33333    # -0.2f

    const v1, 0x3faccccd    # 1.35f

    .line 88
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x404ccccd    # -1.4f

    .line 89
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x41bd70a4    # -0.19f

    const v1, -0x40533333    # -1.35f

    .line 90
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x41dc28f6    # -0.16f

    const v4, -0x406f5c29    # -1.13f

    .line 91
    invoke-virtual {v7, v0, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v3, -0x4123d70a    # -0.43f

    .line 92
    invoke-virtual {v7, v6, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x4123d70a    # -0.43f

    const v2, -0x41c7ae14    # -0.18f

    const v25, -0x40ab851f    # -0.83f

    const v26, -0x412e147b    # -0.41f

    const v27, -0x40628f5c    # -1.23f

    const v28, -0x40ca3d71    # -0.71f

    move-object v0, v7

    move v8, v3

    move/from16 v3, v25

    move v10, v4

    move/from16 v4, v26

    move v11, v5

    move/from16 v5, v27

    move v9, v6

    move/from16 v6, v28

    .line 93
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x40970a3d    # -0.91f

    .line 94
    invoke-virtual {v7, v0, v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 95
    invoke-virtual {v7, v9, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x405d70a4    # -1.27f

    const v1, 0x3f028f5c    # 0.51f

    .line 96
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x40651eb8    # -1.21f

    .line 97
    invoke-virtual {v7, v14, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3f8a3d71    # 1.08f

    const v1, -0x40a8f5c3    # -0.84f

    .line 98
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3f63d70a    # 0.89f

    .line 99
    invoke-virtual {v7, v0, v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x41f0a3d7    # -0.14f

    .line 100
    invoke-virtual {v7, v0, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x430a3d71    # -0.03f

    const v2, -0x416147ae    # -0.31f

    const v3, -0x42b33333    # -0.05f

    const v4, -0x40f5c28f    # -0.54f

    const v5, -0x42b33333    # -0.05f

    const v6, -0x40c28f5c    # -0.74f

    move-object v0, v7

    .line 101
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3d4ccccd    # 0.05f

    const v1, -0x40c51eb8    # -0.73f

    const v2, 0x3ca3d70a    # 0.02f

    .line 102
    invoke-virtual {v7, v2, v8, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3e0f5c29    # 0.14f

    .line 103
    invoke-virtual {v7, v0, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x409c28f6    # -0.89f

    .line 104
    invoke-virtual {v7, v0, v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x4075c28f    # -1.08f

    const v1, -0x40a8f5c3    # -0.84f

    .line 105
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x40651eb8    # -1.21f

    .line 106
    invoke-virtual {v7, v12, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3fa28f5c    # 1.27f

    const v1, 0x3f028f5c    # 0.51f

    .line 107
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3f851eb8    # 1.04f

    const v1, 0x3ed70a3d    # 0.42f

    .line 108
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x40d1eb85    # -0.68f

    const v9, 0x3f666666    # 0.9f

    .line 109
    invoke-virtual {v7, v9, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3edc28f6    # 0.43f

    const v2, -0x415c28f6    # -0.32f

    const v3, 0x3f570a3d    # 0.84f

    const v4, -0x40f0a3d7    # -0.56f

    const/high16 v5, 0x3fa00000    # 1.25f

    const v6, -0x40c51eb8    # -0.73f

    move-object v0, v7

    .line 110
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v14, 0x3f87ae14    # 1.06f

    .line 111
    invoke-virtual {v7, v14, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3e23d70a    # 0.16f

    .line 112
    invoke-virtual {v7, v0, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3e4ccccd    # 0.2f

    const v1, -0x40533333    # -1.35f

    .line 113
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3fb1eb85    # 1.39f

    .line 114
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3e428f5c    # 0.19f

    const v1, 0x3faccccd    # 1.35f

    .line 115
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3e23d70a    # 0.16f

    const v1, 0x3f90a3d7    # 1.13f

    .line 116
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 117
    invoke-virtual {v7, v14, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3edc28f6    # 0.43f

    const v2, 0x3e3851ec    # 0.18f

    const v3, 0x3f547ae1    # 0.83f

    const v4, 0x3ed1eb85    # 0.41f

    const v5, 0x3f9d70a4    # 1.23f

    const v6, 0x3f35c28f    # 0.71f

    move-object v0, v7

    .line 118
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3f68f5c3    # 0.91f

    .line 119
    invoke-virtual {v7, v0, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 120
    invoke-virtual {v7, v14, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3fa28f5c    # 1.27f

    const v1, -0x40fd70a4    # -0.51f

    .line 121
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3f9ae148    # 1.21f

    .line 122
    invoke-virtual {v7, v12, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x40770a3d    # -1.07f

    const v1, 0x3f59999a    # 0.85f

    .line 123
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x409c28f6    # -0.89f

    .line 124
    invoke-virtual {v7, v0, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3e0f5c29    # 0.14f

    const v1, 0x3f90a3d7    # 1.13f

    .line 125
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 126
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x41400000    # 12.0f

    const/high16 v1, 0x41000000    # 8.0f

    .line 127
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x3ff28f5c    # -2.21f

    const/4 v2, 0x0

    const/high16 v3, -0x3f800000    # -4.0f

    const v4, 0x3fe51eb8    # 1.79f

    const/high16 v5, -0x3f800000    # -4.0f

    const/high16 v6, 0x40800000    # 4.0f

    move-object v0, v7

    .line 128
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3fe51eb8    # 1.79f

    const/high16 v1, 0x40800000    # 4.0f

    .line 129
    invoke-virtual {v7, v0, v1, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x401ae148    # -1.79f

    const/high16 v2, -0x3f800000    # -4.0f

    .line 130
    invoke-virtual {v7, v1, v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 131
    invoke-virtual {v7, v0, v2, v2, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 132
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x41400000    # 12.0f

    const/high16 v1, 0x41600000    # 14.0f

    .line 133
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, -0x40733333    # -1.1f

    const/4 v2, 0x0

    const/high16 v3, -0x40000000    # -2.0f

    const v4, -0x4099999a    # -0.9f

    const/high16 v5, -0x40000000    # -2.0f

    const/high16 v6, -0x40000000    # -2.0f

    move-object v0, v7

    .line 134
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, -0x40000000    # -2.0f

    const/high16 v1, 0x40000000    # 2.0f

    .line 135
    invoke-virtual {v7, v9, v0, v1, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 136
    invoke-virtual {v7, v1, v9, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v2, -0x4099999a    # -0.9f

    .line 137
    invoke-virtual {v7, v2, v1, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 138
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 178
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v14

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x3800

    const/16 v29, 0x0

    .line 174
    invoke-static/range {v13 .. v29}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 146
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    sput-object v0, Landroidx/compose/material/icons/outlined/SettingsKt;->_settings:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 141
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
