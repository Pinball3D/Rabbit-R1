.class public final Landroidx/compose/material/icons/IconsKt;
.super Ljava/lang/Object;
.source "Icons.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIcons.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Icons.kt\nandroidx/compose/material/icons/IconsKt\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 ImageVector.kt\nandroidx/compose/ui/graphics/vector/ImageVectorKt\n+ 4 Vector.kt\nandroidx/compose/ui/graphics/vector/VectorKt\n*L\n1#1,157:1\n174#2:158\n174#2:159\n694#3,2:160\n706#3,2:162\n708#3,11:168\n706#3,13:179\n64#4,4:164\n*S KotlinDebug\n*F\n+ 1 Icons.kt\nandroidx/compose/material/icons/IconsKt\n*L\n118#1:158\n119#1:159\n141#1:160,2\n141#1:162,2\n141#1:168,11\n141#1:179,13\n141#1:164,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u001a-\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0017\u0010\u0008\u001a\u0013\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\t\u00a2\u0006\u0002\u0008\u000bH\u0086\u0008\u00f8\u0001\u0000\u001aT\u0010\u000c\u001a\u00020\n*\u00020\n2\u0008\u0008\u0002\u0010\r\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\u0017\u0010\u0011\u001a\u0013\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00130\t\u00a2\u0006\u0002\u0008\u000bH\u0086\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015\"\u0016\u0010\u0000\u001a\u00020\u00018\u0000X\u0081T\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0002\u0010\u0003\u0082\u0002\u0012\n\u0005\u0008\u009920\u0001\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006\u0016"
    }
    d2 = {
        "MaterialIconDimension",
        "",
        "getMaterialIconDimension$annotations",
        "()V",
        "materialIcon",
        "Landroidx/compose/ui/graphics/vector/ImageVector;",
        "name",
        "",
        "block",
        "Lkotlin/Function1;",
        "Landroidx/compose/ui/graphics/vector/ImageVector$Builder;",
        "Lkotlin/ExtensionFunctionType;",
        "materialPath",
        "fillAlpha",
        "strokeAlpha",
        "pathFillType",
        "Landroidx/compose/ui/graphics/PathFillType;",
        "pathBuilder",
        "Landroidx/compose/ui/graphics/vector/PathBuilder;",
        "",
        "materialPath-YwgOQQI",
        "(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;FFILkotlin/jvm/functions/Function1;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;",
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
.field public static final MaterialIconDimension:F = 24.0f


# direct methods
.method public static synthetic getMaterialIconDimension$annotations()V
    .locals 0

    return-void
.end method

.method public static final materialIcon(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/graphics/vector/ImageVector$Builder;",
            "Landroidx/compose/ui/graphics/vector/ImageVector$Builder;",
            ">;)",
            "Landroidx/compose/ui/graphics/vector/ImageVector;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    new-instance v0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    const/high16 v1, 0x41c00000    # 24.0f

    .line 158
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 159
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    const/high16 v5, 0x41c00000    # 24.0f

    const/high16 v6, 0x41c00000    # 24.0f

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xe0

    const/4 v12, 0x0

    move-object v1, v0

    move-object v2, p0

    .line 116
    invoke-direct/range {v1 .. v12}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 122
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object p0

    return-object p0
.end method

.method public static final materialPath-YwgOQQI(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;FFILkotlin/jvm/functions/Function1;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/graphics/vector/ImageVector$Builder;",
            "FFI",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/graphics/vector/PathBuilder;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/compose/ui/graphics/vector/ImageVector$Builder;"
        }
    .end annotation

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    move/from16 v6, p1

    move/from16 v8, p2

    move/from16 v3, p3

    const-string v2, "$this$materialPath"

    move-object/from16 v4, p0

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "pathBuilder"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    new-instance v2, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v4, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v4

    const/4 v7, 0x0

    invoke-direct {v2, v4, v5, v7}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v5, v2

    check-cast v5, Landroidx/compose/ui/graphics/Brush;

    const/high16 v9, 0x3f800000    # 1.0f

    .line 147
    sget-object v2, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v10

    .line 148
    sget-object v2, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v11

    const/high16 v12, 0x3f800000    # 1.0f

    const-string v4, ""

    .line 164
    new-instance v2, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .line 165
    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v2

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x3800

    const/16 v17, 0x0

    .line 162
    invoke-static/range {v1 .. v17}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic materialPath-YwgOQQI$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;FFILkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;
    .locals 20

    move-object/from16 v0, p4

    and-int/lit8 v1, p5, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_0

    move v8, v2

    goto :goto_0

    :cond_0
    move/from16 v8, p1

    :goto_0
    and-int/lit8 v1, p5, 0x2

    if-eqz v1, :cond_1

    move v10, v2

    goto :goto_1

    :cond_1
    move/from16 v10, p2

    :goto_1
    and-int/lit8 v1, p5, 0x4

    if-eqz v1, :cond_2

    .line 135
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    move-result v1

    move v5, v1

    goto :goto_2

    :cond_2
    move/from16 v5, p3

    :goto_2
    const-string v1, "$this$materialPath"

    move-object/from16 v2, p0

    .line 132
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "pathBuilder"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    new-instance v1, Landroidx/compose/ui/graphics/SolidColor;

    sget-object v3, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v3

    const/4 v6, 0x0

    invoke-direct {v1, v3, v4, v6}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v7, v1

    check-cast v7, Landroidx/compose/ui/graphics/Brush;

    const/4 v9, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    .line 147
    sget-object v1, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    move-result v12

    .line 148
    sget-object v1, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    move-result v13

    const/high16 v14, 0x3f800000    # 1.0f

    const-string v6, ""

    .line 164
    new-instance v1, Landroidx/compose/ui/graphics/vector/PathBuilder;

    invoke-direct {v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .line 165
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    move-result-object v4

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x3800

    const/16 v19, 0x0

    move-object/from16 v3, p0

    .line 179
    invoke-static/range {v3 .. v19}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    move-result-object v0

    return-object v0
.end method
