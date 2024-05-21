.class public final Landroidx/compose/material/icons/twotone/AccountCircleKt;
.super Ljava/lang/Object;
.source "AccountCircle.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAccountCircle.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AccountCircle.kt\nandroidx/compose/material/icons/twotone/AccountCircleKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,87:1\n122#2:88\n116#2,3:89\n119#2,3:93\n132#2,18:96\n152#2:133\n132#2,18:134\n152#2:171\n132#2,18:172\n152#2:209\n174#3:92\n694#4,2:114\n706#4,2:116\n708#4,11:122\n694#4,2:152\n706#4,2:154\n708#4,11:160\n694#4,2:190\n706#4,2:192\n708#4,11:198\n64#5,4:118\n64#5,4:156\n64#5,4:194\n*S KotlinDebug\n*F\n+ 1 AccountCircle.kt\nandroidx/compose/material/icons/twotone/AccountCircleKt\n*L\n29#1:88\n29#1:89,3\n29#1:93,3\n30#1:96,18\n30#1:133\n46#1:134,18\n46#1:171\n68#1:172,18\n68#1:209\n29#1:92\n30#1:114,2\n30#1:116,2\n30#1:122,11\n46#1:152,2\n46#1:154,2\n46#1:160,11\n68#1:190,2\n68#1:192,2\n68#1:198,11\n30#1:118,4\n46#1:156,4\n68#1:194,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_accountCircle",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "AccountCircle",
        "Landroidx/compose/material/icons/Icons$TwoTone;",
        "getAccountCircle",
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
.field private static _accountCircle:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getAccountCircle(Landroidx/compose/material/icons/Icons$TwoTone;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 64

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Landroidx/compose/material/icons/twotone/AccountCircleKt;->_accountCircle:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    const-string v2, "TwoTone.AccountCircle"

    .line 89
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-object/from16 v47, v1

    move-object/from16 v30, v1

    move-object v13, v1

    const/high16 v0, 0x41c00000    # 24.0f

    .line 92
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

    .line 89
    invoke-direct/range {v1 .. v12}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const v18, 0x3e99999a    # 0.3f

    const v20, 0x3e99999a    # 0.3f

    .line 99
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v15

    .line 106
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

    .line 111
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v22

    .line 112
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v23

    const/high16 v24, 0x3f800000    # 1.0f

    const-string v16, ""

    .line 118
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const/high16 v1, 0x40800000    # 4.0f

    const/high16 v2, 0x41400000    # 12.0f

    .line 31
    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x3f728f5c    # -4.42f

    const/4 v6, 0x0

    const/high16 v7, -0x3f000000    # -8.0f

    const v8, 0x40651eb8    # 3.58f

    const/high16 v9, -0x3f000000    # -8.0f

    const/high16 v10, 0x41000000    # 8.0f

    move-object v4, v0

    .line 32
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v5, 0x0

    const v6, 0x3ff9999a    # 1.95f

    const v7, 0x3f333333    # 0.7f

    const v8, 0x406eb852    # 3.73f

    const v9, 0x3fee147b    # 1.86f

    const v10, 0x40a3d70a    # 5.12f

    .line 33
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x40f1999a    # 7.55f

    const v6, 0x417ccccd    # 15.8f

    const v7, 0x411ae148    # 9.68f

    const/high16 v8, 0x41700000    # 15.0f

    const/high16 v9, 0x41400000    # 12.0f

    const/high16 v10, 0x41700000    # 15.0f

    .line 34
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x408e6666    # 4.45f

    const v4, 0x40c47ae1    # 6.14f

    const v11, 0x3f4ccccd    # 0.8f

    const v12, 0x4007ae14    # 2.12f

    .line 35
    invoke-virtual {v0, v1, v11, v4, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x419a6666    # 19.3f

    const v6, 0x417bae14    # 15.73f

    const/high16 v7, 0x41a00000    # 20.0f

    const v8, 0x415f3333    # 13.95f

    const/high16 v9, 0x41a00000    # 20.0f

    const/high16 v10, 0x41400000    # 12.0f

    move-object v4, v0

    .line 36
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x41a00000    # 20.0f

    const v6, 0x40f28f5c    # 7.58f

    const v7, 0x41835c29    # 16.42f

    const/high16 v8, 0x40800000    # 4.0f

    const/high16 v9, 0x41400000    # 12.0f

    const/high16 v10, 0x40800000    # 4.0f

    .line 37
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 38
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, 0x41500000    # 13.0f

    .line 39
    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x4008f5c3    # -1.93f

    const/4 v6, 0x0

    const/high16 v7, -0x3fa00000    # -3.5f

    const v8, -0x40370a3d    # -1.57f

    const/high16 v9, -0x3fa00000    # -3.5f

    const/high16 v10, -0x3fa00000    # -3.5f

    .line 40
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x41080000    # 8.5f

    const v6, 0x40f23d71    # 7.57f

    const v7, 0x41211eb8    # 10.07f

    const/high16 v8, 0x40c00000    # 6.0f

    const/high16 v9, 0x41400000    # 12.0f

    const/high16 v10, 0x40c00000    # 6.0f

    .line 41
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3fc8f5c3    # 1.57f

    const/high16 v14, 0x40600000    # 3.5f

    .line 42
    invoke-virtual {v0, v14, v1, v14, v14}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x41780000    # 15.5f

    const v6, 0x4136e148    # 11.43f

    const v7, 0x415ee148    # 13.93f

    const/high16 v8, 0x41500000    # 13.0f

    const/high16 v10, 0x41500000    # 13.0f

    .line 43
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 44
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 120
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v0

    move v1, v14

    move-object v14, v0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x3800

    const/16 v29, 0x0

    .line 116
    invoke-static/range {v13 .. v29}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    const/high16 v35, 0x3f800000    # 1.0f

    const/high16 v37, 0x3f800000    # 1.0f

    .line 137
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v32

    .line 144
    new-instance v0, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v4, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v4

    invoke-direct {v0, v4, v5, v3}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v34, v0

    check-cast v34, Landroidx/compose/ui/graphics/Brush;

    const/16 v36, 0x0

    const/high16 v38, 0x3f800000    # 1.0f

    .line 149
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v39

    .line 150
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v40

    const/high16 v41, 0x3f800000    # 1.0f

    const-string v33, ""

    .line 156
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const/high16 v4, 0x40000000    # 2.0f

    .line 47
    invoke-virtual {v0, v2, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x40cf5c29    # 6.48f

    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v7, 0x40000000    # 2.0f

    const v8, 0x40cf5c29    # 6.48f

    const/high16 v9, 0x40000000    # 2.0f

    const/high16 v10, 0x41400000    # 12.0f

    move-object v4, v0

    .line 48
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v5, 0x0

    const v6, 0x40b0a3d7    # 5.52f

    const v7, 0x408f5c29    # 4.48f

    const/high16 v8, 0x41200000    # 10.0f

    const/high16 v9, 0x41200000    # 10.0f

    const/high16 v10, 0x41200000    # 10.0f

    .line 49
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, -0x3f70a3d7    # -4.48f

    const/high16 v5, -0x3ee00000    # -10.0f

    const/high16 v6, 0x41200000    # 10.0f

    .line 50
    invoke-virtual {v0, v6, v4, v6, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x41b00000    # 22.0f

    const v6, 0x40cf5c29    # 6.48f

    const v7, 0x418c28f6    # 17.52f

    const/high16 v8, 0x40000000    # 2.0f

    const/high16 v9, 0x41400000    # 12.0f

    const/high16 v10, 0x40000000    # 2.0f

    move-object v4, v0

    .line 51
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 52
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v4, 0x41a00000    # 20.0f

    .line 53
    invoke-virtual {v0, v2, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, -0x402147ae    # -1.74f

    const/4 v6, 0x0

    const v7, -0x3faa3d71    # -3.34f

    const v8, -0x40f0a3d7    # -0.56f

    const v9, -0x3f6b3333    # -4.65f

    const/high16 v10, -0x40400000    # -1.5f

    move-object v4, v0

    .line 54
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x410a8f5c    # 8.66f

    const v6, 0x418c7ae1    # 17.56f

    const v7, 0x412428f6    # 10.26f

    const/high16 v8, 0x41880000    # 17.0f

    const/high16 v9, 0x41400000    # 12.0f

    const/high16 v10, 0x41880000    # 17.0f

    .line 55
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x3f0f5c29    # 0.56f

    const v5, 0x4094cccd    # 4.65f

    const v6, 0x4055c28f    # 3.34f

    const/high16 v13, 0x3fc00000    # 1.5f

    .line 56
    invoke-virtual {v0, v6, v4, v5, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x417570a4    # 15.34f

    const v6, 0x419b851f    # 19.44f

    const v7, 0x415bd70a    # 13.74f

    const/high16 v8, 0x41a00000    # 20.0f

    const/high16 v10, 0x41a00000    # 20.0f

    move-object v4, v0

    .line 57
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 58
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x41911eb8    # 18.14f

    const v5, 0x4188f5c3    # 17.12f

    .line 59
    invoke-virtual {v0, v4, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x4183999a    # 16.45f

    const v6, 0x417ccccd    # 15.8f

    const v7, 0x41651eb8    # 14.32f

    const/high16 v8, 0x41700000    # 15.0f

    const/high16 v10, 0x41700000    # 15.0f

    move-object v4, v0

    .line 60
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, -0x3f71999a    # -4.45f

    const v5, -0x3f3b851f    # -6.14f

    .line 61
    invoke-virtual {v0, v4, v11, v5, v12}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x40966666    # 4.7f

    const v6, 0x417bae14    # 15.73f

    const/high16 v7, 0x40800000    # 4.0f

    const v8, 0x415f3333    # 13.95f

    const/high16 v9, 0x40800000    # 4.0f

    const/high16 v10, 0x41400000    # 12.0f

    move-object v4, v0

    .line 62
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v5, 0x0

    const v6, -0x3f728f5c    # -4.42f

    const v7, 0x40651eb8    # 3.58f

    const/high16 v8, -0x3f000000    # -8.0f

    const/high16 v9, 0x41000000    # 8.0f

    const/high16 v10, -0x3f000000    # -8.0f

    .line 63
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x40651eb8    # 3.58f

    const/high16 v5, 0x41000000    # 8.0f

    .line 64
    invoke-virtual {v0, v5, v4, v5, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v5, 0x41a00000    # 20.0f

    const v6, 0x415f3333    # 13.95f

    const v7, 0x419a6666    # 19.3f

    const v8, 0x417bae14    # 15.73f

    const v9, 0x41911eb8    # 18.14f

    const v10, 0x4188f5c3    # 17.12f

    move-object v4, v0

    .line 65
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 66
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 158
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v31

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x3800

    const/16 v46, 0x0

    .line 154
    invoke-static/range {v30 .. v46}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    const/high16 v52, 0x3f800000    # 1.0f

    const/high16 v54, 0x3f800000    # 1.0f

    .line 175
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v49

    .line 182
    new-instance v0, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v4, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v4

    invoke-direct {v0, v4, v5, v3}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v51, v0

    check-cast v51, Landroidx/compose/ui/graphics/Brush;

    const/16 v53, 0x0

    const/high16 v55, 0x3f800000    # 1.0f

    .line 187
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v56

    .line 188
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v57

    const/high16 v58, 0x3f800000    # 1.0f

    const-string v50, ""

    .line 194
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const v3, 0x40bdc28f    # 5.93f

    .line 69
    invoke-virtual {v0, v2, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, -0x4008f5c3    # -1.93f

    const/4 v5, 0x0

    const/high16 v6, -0x3fa00000    # -3.5f

    const v7, 0x3fc8f5c3    # 1.57f

    const/high16 v8, -0x3fa00000    # -3.5f

    const/high16 v9, 0x40600000    # 3.5f

    move-object v3, v0

    .line 70
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v4, 0x0

    const v5, 0x3ff70a3d    # 1.93f

    const v6, 0x3fc8f5c3    # 1.57f

    const/high16 v7, 0x40600000    # 3.5f

    const/high16 v8, 0x40600000    # 3.5f

    .line 71
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v3, -0x40370a3d    # -1.57f

    const/high16 v4, -0x3fa00000    # -3.5f

    .line 72
    invoke-virtual {v0, v1, v3, v1, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v4, 0x41780000    # 15.5f

    const/high16 v5, 0x40f00000    # 7.5f

    const v6, 0x415ee148    # 13.93f

    const v7, 0x40bdc28f    # 5.93f

    const/high16 v8, 0x41400000    # 12.0f

    const v9, 0x40bdc28f    # 5.93f

    move-object v3, v0

    .line 73
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 74
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x412ee148    # 10.93f

    .line 75
    invoke-virtual {v0, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, -0x40ab851f    # -0.83f

    const/4 v5, 0x0

    const/high16 v6, -0x40400000    # -1.5f

    const v7, -0x40d47ae1    # -0.67f

    const/high16 v8, -0x40400000    # -1.5f

    const/high16 v9, -0x40400000    # -1.5f

    .line 76
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v3, 0x3f2b851f    # 0.67f

    const/high16 v4, -0x40400000    # -1.5f

    .line 77
    invoke-virtual {v0, v3, v4, v13, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 78
    invoke-virtual {v0, v13, v3, v13, v13}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v3, 0x414d47ae    # 12.83f

    .line 79
    invoke-virtual {v0, v3, v1, v2, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 80
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 196
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v48

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x3800

    const/16 v63, 0x0

    .line 192
    invoke-static/range {v47 .. v63}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    sput-object v0, Landroidx/compose/material/icons/twotone/AccountCircleKt;->_accountCircle:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 83
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
