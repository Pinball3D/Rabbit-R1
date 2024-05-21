.class public final Landroidx/compose/material/icons/sharp/SearchKt;
.super Ljava/lang/Object;
.source "Search.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSearch.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Search.kt\nandroidx/compose/material/icons/sharp/SearchKt\n+ 2 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 3 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 4 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 5 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,57:1\n122#2:58\n116#2,3:59\n119#2,3:63\n132#2,18:66\n152#2:103\n174#3:62\n694#4,2:84\n706#4,2:86\n708#4,11:92\n64#5,4:88\n*S KotlinDebug\n*F\n+ 1 Search.kt\nandroidx/compose/material/icons/sharp/SearchKt\n*L\n29#1:58\n29#1:59,3\n29#1:63,3\n30#1:66,18\n30#1:103\n29#1:62\n30#1:84,2\n30#1:86,2\n30#1:92,11\n30#1:88,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0010\u0010\u0000\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000\"\u0015\u0010\u0002\u001a\u00020\u0001*\u00020\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "_search",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "Search",
        "Landroidx/compose/material/icons/Icons$Sharp;",
        "getSearch",
        "(Landroidx/compose/material/icons/Icons$Sharp;)Landroidx/compose/ui/graphics/vector/ImageVector;",
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
.field private static _search:Landroidx/compose/ui/graphics/vector/ImageVector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final getSearch(Landroidx/compose/material/icons/Icons$Sharp;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 30

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Landroidx/compose/material/icons/sharp/SearchKt;->_search:Landroidx/compose/ui/graphics/vector/ImageVector;

    if-eqz v0, :cond_0

    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    const-string v2, "Sharp.Search"

    .line 59
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-object v13, v1

    const/high16 v0, 0x41c00000    # 24.0f

    .line 62
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

    .line 59
    invoke-direct/range {v1 .. v12}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/high16 v18, 0x3f800000    # 1.0f

    const/high16 v20, 0x3f800000    # 1.0f

    .line 69
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v15

    .line 76
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

    .line 81
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v22

    .line 82
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v23

    const/high16 v24, 0x3f800000    # 1.0f

    const-string v16, ""

    .line 88
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    const/high16 v0, 0x41780000    # 15.5f

    const/high16 v8, 0x41600000    # 14.0f

    .line 31
    invoke-virtual {v7, v0, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x40b5c28f    # -0.79f

    .line 32
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->horizontalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x4170a3d7    # -0.28f

    const v1, -0x4175c28f    # -0.27f

    .line 33
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x41768f5c    # 15.41f

    const v2, 0x414970a4    # 12.59f

    const/high16 v3, 0x41800000    # 16.0f

    const v4, 0x4131c28f    # 11.11f

    const/high16 v5, 0x41800000    # 16.0f

    const/high16 v6, 0x41180000    # 9.5f

    move-object v0, v7

    .line 34
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v1, 0x41800000    # 16.0f

    const v2, 0x40bd1eb8    # 5.91f

    const v3, 0x415170a4    # 13.09f

    const/high16 v4, 0x40400000    # 3.0f

    const/high16 v5, 0x41180000    # 9.5f

    const/high16 v6, 0x40400000    # 3.0f

    .line 35
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x40400000    # 3.0f

    const v1, 0x40bd1eb8    # 5.91f

    const/high16 v9, 0x41180000    # 9.5f

    .line 36
    invoke-virtual {v7, v0, v1, v0, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const/high16 v0, 0x41800000    # 16.0f

    .line 37
    invoke-virtual {v7, v1, v0, v9, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x3fce147b    # 1.61f

    const/4 v2, 0x0

    const v3, 0x4045c28f    # 3.09f

    const v4, -0x40e8f5c3    # -0.59f

    const v5, 0x40875c29    # 4.23f

    const v6, -0x40370a3d    # -1.57f

    move-object v0, v7

    .line 38
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3e8a3d71    # 0.27f

    const v1, 0x3e8f5c29    # 0.28f

    .line 39
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x3f4a3d71    # 0.79f

    .line 40
    invoke-virtual {v7, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->verticalLineToRelative(F)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x409fae14    # 4.99f

    const/high16 v10, 0x40a00000    # 5.0f

    .line 41
    invoke-virtual {v7, v10, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x41a3eb85    # 20.49f

    const/high16 v1, 0x41980000    # 19.0f

    .line 42
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, -0x3f6051ec    # -4.99f

    const/high16 v1, -0x3f600000    # -5.0f

    .line 43
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 44
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 45
    invoke-virtual {v7, v9, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v1, 0x40e051ec    # 7.01f

    const/high16 v2, 0x41600000    # 14.0f

    const/high16 v3, 0x40a00000    # 5.0f

    const v4, 0x413fd70a    # 11.99f

    const/high16 v5, 0x40a00000    # 5.0f

    const/high16 v6, 0x41180000    # 9.5f

    move-object v0, v7

    .line 46
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveTo(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x40e051ec    # 7.01f

    .line 47
    invoke-virtual {v7, v0, v10, v9, v10}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 48
    invoke-virtual {v7, v8, v0, v8, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    const v0, 0x413fd70a    # 11.99f

    .line 49
    invoke-virtual {v7, v0, v8, v9, v8}, Landroidx/compose/ui/graphics/vector/PathBuilder;->reflectiveCurveTo(FFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 50
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 90
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v14

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x3800

    const/16 v29, 0x0

    .line 86
    invoke-static/range {v13 .. v29}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    sput-object v0, Landroidx/compose/material/icons/sharp/SearchKt;->_search:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 53
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method
