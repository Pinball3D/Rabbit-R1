.class public final Landroidx/compose/material/icons/twotone/PlaceKt;
.super Ljava/lang/Object;
.source "Place.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPlace.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Place.kt\nandroidx/compose/material/icons/twotone/PlaceKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,65:1\n122#2:66\n116#2,3:67\n119#2,3:71\n132#2,18:74\n152#2:111\n132#2,18:112\n152#2:149\n174#3:70\n694#4,2:92\n706#4,2:94\n708#4,11:100\n694#4,2:130\n706#4,2:132\n708#4,11:138\n64#5,4:96\n64#5,4:134\n*S KotlinDebug\n*F\n+ 1 Place.kt\nandroidx/compose/material/icons/twotone/PlaceKt\n*L\n29#1:66\n29#1:67,3\n29#1:71,3\n30#1:74,18\n30#1:111\n40#1:112,18\n40#1:149\n29#1:70\n30#1:92,2\n30#1:94,2\n30#1:100,11\n40#1:130,2\n40#1:132,2\n40#1:138,11\n30#1:96,4\n40#1:134,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_place",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "Place",
        "Landroidx/compose/material/icons/Icons$TwoTone;",
        "getPlace",
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
.field private static _place:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getPlace(Landroidx/compose/material/icons/Icons$TwoTone;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 47

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Landroidx/compose/material/icons/twotone/PlaceKt;->_place:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    const-string v2, "TwoTone.Place"

    .line 67
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-object/from16 v30, v1

    move-object v13, v1

    const/high16 v0, 0x41c00000    # 24.0f

    .line 70
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

    .line 67
    invoke-direct/range {v1 .. v12}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const v18, 0x3e99999a    # 0.3f

    const/high16 v20, 0x3f800000    # 1.0f

    .line 77
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v15

    .line 84
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

    .line 89
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v22

    .line 90
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v23

    const/high16 v24, 0x3f800000    # 1.0f

    const-string v16, ""

    .line 96
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const/high16 v1, 0x41940000    # 18.5f

    const v2, 0x41233333    # 10.2f

    .line 31
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v5, 0x0

    const v6, 0x40247ae1    # 2.57f

    const v7, -0x3ff9999a    # -2.1f

    const v8, 0x40b947ae    # 5.79f

    const v9, -0x3f3ae148    # -6.16f

    const v10, 0x411828f6    # 9.51f

    move-object v4, v0

    .line 32
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x41a0147b    # 20.01f

    const/high16 v11, 0x41400000    # 12.0f

    .line 33
    invoke-virtual {v0, v11, v4}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, -0x4151eb85    # -0.34f

    const v5, -0x416147ae    # -0.31f

    .line 34
    invoke-virtual {v0, v4, v5}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v5, 0x40f33333    # 7.6f

    const v6, 0x417fd70a    # 15.99f

    const/high16 v7, 0x40b00000    # 5.5f

    const v8, 0x414c51ec    # 12.77f

    const/high16 v9, 0x40b00000    # 5.5f

    const v10, 0x41233333    # 10.2f

    move-object v4, v0

    .line 35
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v5, 0x0

    const v6, -0x3f8a3d71    # -3.84f

    const v7, 0x40347ae1    # 2.82f

    const v8, -0x3f29999a    # -6.7f

    const/high16 v9, 0x40d00000    # 6.5f

    const v10, -0x3f29999a    # -6.7f

    .line 36
    invoke-virtual/range {v4 .. v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x40cb3333    # 6.35f

    .line 37
    invoke-virtual {v0, v1, v4, v1, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 38
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 98
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v14

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x3800

    const/16 v29, 0x0

    .line 94
    invoke-static/range {v13 .. v29}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    const/high16 v35, 0x3f800000    # 1.0f

    const/high16 v37, 0x3f800000    # 1.0f

    .line 115
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v32

    .line 122
    new-instance v0, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v4

    invoke-direct {v0, v4, v5, v3}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v34, v0

    check-cast v34, Landroidx/compose/ui/graphics/Brush;

    const/16 v36, 0x0

    const/high16 v38, 0x3f800000    # 1.0f

    .line 127
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v39

    .line 128
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v40

    const/high16 v41, 0x3f800000    # 1.0f

    const-string v33, ""

    .line 134
    new-instance v0, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const/high16 v1, 0x40000000    # 2.0f

    .line 41
    invoke-virtual {v0, v11, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x40866666    # 4.2f

    const/4 v5, 0x0

    const/high16 v6, 0x41000000    # 8.0f

    const v7, 0x404e147b    # 3.22f

    const/high16 v8, 0x41000000    # 8.0f

    const v9, 0x41033333    # 8.2f

    move-object v3, v0

    .line 42
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v4, 0x0

    const v5, 0x40547ae1    # 3.32f

    const v6, -0x3fd51eb8    # -2.67f

    const/high16 v7, 0x40e80000    # 7.25f

    const/high16 v8, -0x3f000000    # -8.0f

    const v9, 0x413ccccd    # 11.8f

    .line 43
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, -0x3f5570a4    # -5.33f

    const v5, -0x3f6e6666    # -4.55f

    const/high16 v6, -0x3f000000    # -8.0f

    const v7, -0x3ef851ec    # -8.48f

    const v9, -0x3ec33333    # -11.8f

    .line 44
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v4, 0x40800000    # 4.0f

    const v5, 0x40a70a3d    # 5.22f

    const v6, 0x40f9999a    # 7.8f

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v8, 0x41400000    # 12.0f

    const/high16 v9, 0x40000000    # 2.0f

    .line 45
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 46
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v3, 0x41900000    # 18.0f

    .line 47
    invoke-virtual {v0, v3, v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v4, 0x41900000    # 18.0f

    const v5, 0x40d23d71    # 6.57f

    const v6, 0x4175999a    # 15.35f

    const/high16 v7, 0x40800000    # 4.0f

    const/high16 v9, 0x40800000    # 4.0f

    move-object v3, v0

    .line 48
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v2, 0x40247ae1    # 2.57f

    const v3, 0x40c66666    # 6.2f

    const/high16 v4, -0x3f400000    # -6.0f

    .line 49
    invoke-virtual {v0, v4, v2, v4, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/4 v4, 0x0

    const v5, 0x4015c28f    # 2.34f

    const v6, 0x3ff9999a    # 1.95f

    const v7, 0x40ae147b    # 5.44f

    const/high16 v8, 0x40c00000    # 6.0f

    const v9, 0x41123d71    # 9.14f

    move-object v3, v0

    .line 50
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, 0x41806666    # 16.05f

    const v5, 0x417a3d71    # 15.64f

    const/high16 v6, 0x41900000    # 18.0f

    const v7, 0x4148a3d7    # 12.54f

    const/high16 v8, 0x41900000    # 18.0f

    const v9, 0x41233333    # 10.2f

    .line 51
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 52
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 53
    invoke-virtual {v0, v11, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v4, -0x40733333    # -1.1f

    const/4 v5, 0x0

    const/high16 v6, -0x40000000    # -2.0f

    const v7, -0x4099999a    # -0.9f

    const/high16 v8, -0x40000000    # -2.0f

    const/high16 v9, -0x40000000    # -2.0f

    .line 54
    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v2, 0x3f666666    # 0.9f

    const/high16 v3, -0x40000000    # -2.0f

    .line 55
    invoke-virtual {v0, v2, v3, v1, v3}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 56
    invoke-virtual {v0, v1, v2, v1, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveToRelative(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x4151999a    # 13.1f

    .line 57
    invoke-virtual {v0, v1, v11, v11, v11}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 58
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 136
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v31

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x3800

    const/16 v46, 0x0

    .line 132
    invoke-static/range {v30 .. v46}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    sput-object v0, Landroidx/compose/material/icons/twotone/PlaceKt;->_place:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 61
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
