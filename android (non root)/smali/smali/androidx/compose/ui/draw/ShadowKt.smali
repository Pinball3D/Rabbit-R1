.class public final Landroidx/compose/ui/draw/ShadowKt;
.super Ljava/lang/Object;
.source "Shadow.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShadow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Shadow.kt\nandroidx/compose/ui/draw/ShadowKt\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 InspectableValue.kt\nandroidx/compose/ui/platform/InspectableValueKt\n*L\n1#1,123:1\n154#2:124\n154#2:125\n154#2:128\n135#3:126\n146#3:127\n*S KotlinDebug\n*F\n+ 1 Shadow.kt\nandroidx/compose/ui/draw/ShadowKt\n*L\n64#1:124\n101#1:125\n98#1:128\n103#1:126\n102#1:127\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001a5\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u0007\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0008\u0010\t\u001aI\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u000bH\u0007\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\r\u0010\u000e\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006\u000f"
    }
    d2 = {
        "shadow",
        "Landroidx/compose/ui/Modifier;",
        "elevation",
        "Landroidx/compose/ui/unit/Dp;",
        "shape",
        "Landroidx/compose/ui/graphics/Shape;",
        "clip",
        "",
        "shadow-ziNgDLE",
        "(Landroidx/compose/ui/Modifier;FLandroidx/compose/ui/graphics/Shape;Z)Landroidx/compose/ui/Modifier;",
        "ambientColor",
        "Landroidx/compose/ui/graphics/Color;",
        "spotColor",
        "shadow-s4CzXII",
        "(Landroidx/compose/ui/Modifier;FLandroidx/compose/ui/graphics/Shape;ZJJ)Landroidx/compose/ui/Modifier;",
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
.method public static final shadow-s4CzXII(Landroidx/compose/ui/Modifier;FLandroidx/compose/ui/graphics/Shape;ZJJ)Landroidx/compose/ui/Modifier;
    .locals 14

    move-object v0, p0

    const-string v1, "$this$shadow"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "shape"

    move-object/from16 v10, p2

    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    int-to-float v1, v1

    .line 125
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    move v11, p1

    .line 101
    invoke-static {p1, v1}, Landroidx/compose/ui/unit/Dp;->compareTo-0680j_4(FF)I

    move-result v1

    if-gtz v1, :cond_0

    if-eqz p3, :cond_2

    .line 126
    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->isDebugInspectorInfoEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Landroidx/compose/ui/draw/ShadowKt$shadow-s4CzXII$$inlined$debugInspectorInfo$1;

    move-object v2, v1

    move v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    invoke-direct/range {v2 .. v9}, Landroidx/compose/ui/draw/ShadowKt$shadow-s4CzXII$$inlined$debugInspectorInfo$1;-><init>(FLandroidx/compose/ui/graphics/Shape;ZJJ)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    goto :goto_0

    :cond_1
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->getNoInspectorInfo()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    .line 127
    :goto_0
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    move-object v12, v2

    check-cast v12, Landroidx/compose/ui/Modifier;

    .line 112
    new-instance v13, Landroidx/compose/ui/draw/ShadowKt$shadow$2$1;

    move-object v2, v13

    move v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    invoke-direct/range {v2 .. v9}, Landroidx/compose/ui/draw/ShadowKt$shadow$2$1;-><init>(FLandroidx/compose/ui/graphics/Shape;ZJJ)V

    check-cast v13, Lkotlin/jvm/functions/Function1;

    invoke-static {v12, v13}, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt;->graphicsLayer(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    .line 127
    invoke-static {p0, v1, v2}, Landroidx/compose/ui/platform/InspectableValueKt;->inspectableWrapper(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public static synthetic shadow-s4CzXII$default(Landroidx/compose/ui/Modifier;FLandroidx/compose/ui/graphics/Shape;ZJJILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 8

    and-int/lit8 v0, p8, 0x2

    if-eqz v0, :cond_0

    .line 97
    invoke-static {}, Landroidx/compose/ui/graphics/RectangleShapeKt;->getRectangleShape()Landroidx/compose/ui/graphics/Shape;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    and-int/lit8 v1, p8, 0x4

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    int-to-float v2, v1

    .line 128
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    move v3, p1

    .line 98
    invoke-static {p1, v2}, Landroidx/compose/ui/unit/Dp;->compareTo-0680j_4(FF)I

    move-result v2

    if-lez v2, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    move v3, p1

    move v1, p3

    :cond_2
    :goto_1
    and-int/lit8 v2, p8, 0x8

    if-eqz v2, :cond_3

    .line 99
    invoke-static {}, Landroidx/compose/ui/graphics/GraphicsLayerScopeKt;->getDefaultShadowColor()J

    move-result-wide v4

    goto :goto_2

    :cond_3
    move-wide v4, p4

    :goto_2
    and-int/lit8 v2, p8, 0x10

    if-eqz v2, :cond_4

    .line 100
    invoke-static {}, Landroidx/compose/ui/graphics/GraphicsLayerScopeKt;->getDefaultShadowColor()J

    move-result-wide v6

    goto :goto_3

    :cond_4
    move-wide v6, p6

    :goto_3
    move-object p2, p0

    move p3, p1

    move-object p4, v0

    move p5, v1

    move-wide p6, v4

    move-wide/from16 p8, v6

    .line 95
    invoke-static/range {p2 .. p9}, Landroidx/compose/ui/draw/ShadowKt;->shadow-s4CzXII(Landroidx/compose/ui/Modifier;FLandroidx/compose/ui/graphics/Shape;ZJJ)Landroidx/compose/ui/Modifier;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic shadow-ziNgDLE(Landroidx/compose/ui/Modifier;FLandroidx/compose/ui/graphics/Shape;Z)Landroidx/compose/ui/Modifier;
    .locals 9
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Replace with shadow which accepts ambientColor and spotColor parameters"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "Modifier.shadow(elevation, shape, clip, DefaultShadowColor, DefaultShadowColor)"
            imports = {
                "androidx.compose.ui.draw"
            }
        .end subannotation
    .end annotation

    const-string v0, "$this$shadow"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "shape"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-static {}, Landroidx/compose/ui/graphics/GraphicsLayerScopeKt;->getDefaultShadowColor()J

    move-result-wide v5

    .line 70
    invoke-static {}, Landroidx/compose/ui/graphics/GraphicsLayerScopeKt;->getDefaultShadowColor()J

    move-result-wide v7

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    .line 65
    invoke-static/range {v1 .. v8}, Landroidx/compose/ui/draw/ShadowKt;->shadow-s4CzXII(Landroidx/compose/ui/Modifier;FLandroidx/compose/ui/graphics/Shape;ZJJ)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic shadow-ziNgDLE$default(Landroidx/compose/ui/Modifier;FLandroidx/compose/ui/graphics/Shape;ZILjava/lang/Object;)Landroidx/compose/ui/Modifier;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 63
    invoke-static {}, Landroidx/compose/ui/graphics/RectangleShapeKt;->getRectangleShape()Landroidx/compose/ui/graphics/Shape;

    move-result-object p2

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    int-to-float p4, p3

    .line 124
    invoke-static {p4}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p4

    .line 64
    invoke-static {p1, p4}, Landroidx/compose/ui/unit/Dp;->compareTo-0680j_4(FF)I

    move-result p4

    if-lez p4, :cond_1

    const/4 p3, 0x1

    .line 61
    :cond_1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/draw/ShadowKt;->shadow-ziNgDLE(Landroidx/compose/ui/Modifier;FLandroidx/compose/ui/graphics/Shape;Z)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method
