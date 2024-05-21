.class public final Landroidx/compose/ui/layout/MeasureScope$DefaultImpls;
.super Ljava/lang/Object;
.source "MeasureScope.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/layout/MeasureScope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static isLookingAhead(Landroidx/compose/ui/layout/MeasureScope;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 27
    invoke-static {p0}, Landroidx/compose/ui/layout/MeasureScope;->access$isLookingAhead$jd(Landroidx/compose/ui/layout/MeasureScope;)Z

    move-result p0

    return p0
.end method

.method public static layout(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/MeasureScope;",
            "II",
            "Ljava/util/Map<",
            "Landroidx/compose/ui/layout/AlignmentLine;",
            "Ljava/lang/Integer;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/layout/Placeable$PlacementScope;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/compose/ui/layout/MeasureResult;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "alignmentLines"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "placementBlock"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/ui/layout/MeasureScope;->access$layout$jd(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;
    .locals 0

    .line 42
    invoke-static/range {p0 .. p6}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0
.end method

.method public static roundToPx--R2X_6o(Landroidx/compose/ui/layout/MeasureScope;J)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 27
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/layout/MeasureScope;->access$roundToPx--R2X_6o$jd(Landroidx/compose/ui/layout/MeasureScope;J)I

    move-result p0

    return p0
.end method

.method public static roundToPx-0680j_4(Landroidx/compose/ui/layout/MeasureScope;F)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 27
    invoke-static {p0, p1}, Landroidx/compose/ui/layout/MeasureScope;->access$roundToPx-0680j_4$jd(Landroidx/compose/ui/layout/MeasureScope;F)I

    move-result p0

    return p0
.end method

.method public static toDp-GaN1DYA(Landroidx/compose/ui/layout/MeasureScope;J)F
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 27
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/layout/MeasureScope;->access$toDp-GaN1DYA$jd(Landroidx/compose/ui/layout/MeasureScope;J)F

    move-result p0

    return p0
.end method

.method public static toDp-u2uoSUM(Landroidx/compose/ui/layout/MeasureScope;F)F
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 27
    invoke-static {p0, p1}, Landroidx/compose/ui/layout/MeasureScope;->access$toDp-u2uoSUM$jd(Landroidx/compose/ui/layout/MeasureScope;F)F

    move-result p0

    return p0
.end method

.method public static toDp-u2uoSUM(Landroidx/compose/ui/layout/MeasureScope;I)F
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 27
    invoke-static {p0, p1}, Landroidx/compose/ui/layout/MeasureScope;->access$toDp-u2uoSUM$jd(Landroidx/compose/ui/layout/MeasureScope;I)F

    move-result p0

    return p0
.end method

.method public static toDpSize-k-rfVVM(Landroidx/compose/ui/layout/MeasureScope;J)J
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 27
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/layout/MeasureScope;->access$toDpSize-k-rfVVM$jd(Landroidx/compose/ui/layout/MeasureScope;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static toPx--R2X_6o(Landroidx/compose/ui/layout/MeasureScope;J)F
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 27
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/layout/MeasureScope;->access$toPx--R2X_6o$jd(Landroidx/compose/ui/layout/MeasureScope;J)F

    move-result p0

    return p0
.end method

.method public static toPx-0680j_4(Landroidx/compose/ui/layout/MeasureScope;F)F
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 27
    invoke-static {p0, p1}, Landroidx/compose/ui/layout/MeasureScope;->access$toPx-0680j_4$jd(Landroidx/compose/ui/layout/MeasureScope;F)F

    move-result p0

    return p0
.end method

.method public static toRect(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/unit/DpRect;)Landroidx/compose/ui/geometry/Rect;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-static {p0, p1}, Landroidx/compose/ui/layout/MeasureScope;->access$toRect$jd(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/unit/DpRect;)Landroidx/compose/ui/geometry/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static toSize-XkaWNTQ(Landroidx/compose/ui/layout/MeasureScope;J)J
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 27
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/layout/MeasureScope;->access$toSize-XkaWNTQ$jd(Landroidx/compose/ui/layout/MeasureScope;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static toSp-0xMU5do(Landroidx/compose/ui/layout/MeasureScope;F)J
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 27
    invoke-static {p0, p1}, Landroidx/compose/ui/layout/MeasureScope;->access$toSp-0xMU5do$jd(Landroidx/compose/ui/layout/MeasureScope;F)J

    move-result-wide p0

    return-wide p0
.end method

.method public static toSp-kPz2Gy4(Landroidx/compose/ui/layout/MeasureScope;F)J
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 27
    invoke-static {p0, p1}, Landroidx/compose/ui/layout/MeasureScope;->access$toSp-kPz2Gy4$jd(Landroidx/compose/ui/layout/MeasureScope;F)J

    move-result-wide p0

    return-wide p0
.end method

.method public static toSp-kPz2Gy4(Landroidx/compose/ui/layout/MeasureScope;I)J
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 27
    invoke-static {p0, p1}, Landroidx/compose/ui/layout/MeasureScope;->access$toSp-kPz2Gy4$jd(Landroidx/compose/ui/layout/MeasureScope;I)J

    move-result-wide p0

    return-wide p0
.end method
