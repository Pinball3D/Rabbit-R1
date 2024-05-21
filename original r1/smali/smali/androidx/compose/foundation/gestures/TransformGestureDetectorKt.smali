.class public final Landroidx/compose/foundation/gestures/TransformGestureDetectorKt;
.super Ljava/lang/Object;
.source "TransformGestureDetector.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTransformGestureDetector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TransformGestureDetector.kt\nandroidx/compose/foundation/gestures/TransformGestureDetectorKt\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,255:1\n132#2,3:256\n33#2,4:259\n135#2,2:263\n38#2:265\n137#2:266\n33#2,6:267\n33#2,6:273\n33#2,6:279\n*S KotlinDebug\n*F\n+ 1 TransformGestureDetector.kt\nandroidx/compose/foundation/gestures/TransformGestureDetectorKt\n*L\n116#1:256,3\n116#1:259,4\n116#1:263,2\n116#1:265\n116#1:266\n131#1:267,6\n216#1:273,6\n242#1:279,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0000\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u001a\u0019\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u001a\u001c\u0010\u0005\u001a\u00020\u0002*\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u00f8\u0001\u0001\u00a2\u0006\u0002\u0010\t\u001a\u0014\u0010\n\u001a\u00020\u0001*\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u001a\u0012\u0010\u000b\u001a\u00020\u0002*\u00020\u0006\u00f8\u0001\u0001\u00a2\u0006\u0002\u0010\u000c\u001a\n\u0010\r\u001a\u00020\u0001*\u00020\u0006\u001a\n\u0010\u000e\u001a\u00020\u0001*\u00020\u0006\u001a\u0084\u0001\u0010\u000f\u001a\u00020\u0010*\u00020\u00112\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00082`\u0010\u0013\u001a\\\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u0008\u0015\u0012\u0008\u0008\u0016\u0012\u0004\u0008\u0008(\u0017\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u0008\u0015\u0012\u0008\u0008\u0016\u0012\u0004\u0008\u0008(\u0018\u0012\u0013\u0012\u00110\u0001\u00a2\u0006\u000c\u0008\u0015\u0012\u0008\u0008\u0016\u0012\u0004\u0008\u0008(\u0019\u0012\u0013\u0012\u00110\u0001\u00a2\u0006\u000c\u0008\u0015\u0012\u0008\u0008\u0016\u0012\u0004\u0008\u0008(\u001a\u0012\u0004\u0012\u00020\u00100\u0014H\u0086@\u00f8\u0001\u0001\u00f8\u0001\u0001\u00a2\u0006\u0002\u0010\u001b\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006\u001c"
    }
    d2 = {
        "angle",
        "",
        "Landroidx/compose/ui/geometry/Offset;",
        "angle-k-4lQ0M",
        "(J)F",
        "calculateCentroid",
        "Landroidx/compose/ui/input/pointer/PointerEvent;",
        "useCurrent",
        "",
        "(Landroidx/compose/ui/input/pointer/PointerEvent;Z)J",
        "calculateCentroidSize",
        "calculatePan",
        "(Landroidx/compose/ui/input/pointer/PointerEvent;)J",
        "calculateRotation",
        "calculateZoom",
        "detectTransformGestures",
        "",
        "Landroidx/compose/ui/input/pointer/PointerInputScope;",
        "panZoomLock",
        "onGesture",
        "Lkotlin/Function4;",
        "Lkotlin/ParameterName;",
        "name",
        "centroid",
        "pan",
        "zoom",
        "rotation",
        "(Landroidx/compose/ui/input/pointer/PointerInputScope;ZLkotlin/jvm/functions/Function4;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "foundation_release"
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
.method private static final angle-k-4lQ0M(J)F
    .locals 2

    .line 163
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v0

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v0

    float-to-double v0, v0

    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result p0

    float-to-double p0, p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    double-to-float p0, p0

    neg-float p0, p0

    const/high16 p1, 0x43340000    # 180.0f

    mul-float/2addr p0, p1

    const p1, 0x40490fdb    # (float)Math.PI

    div-float v1, p0, p1

    :goto_0
    return v1
.end method

.method public static final calculateCentroid(Landroidx/compose/ui/input/pointer/PointerEvent;Z)J
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v0

    .line 242
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object p0

    .line 280
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_2

    .line 281
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 282
    check-cast v5, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 243
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPressed()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPreviousPressed()Z

    move-result v6

    if-eqz v6, :cond_1

    if-eqz p1, :cond_0

    .line 244
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    move-result-wide v5

    goto :goto_1

    :cond_0
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPreviousPosition-F1C5BW0()J

    move-result-wide v5

    .line 245
    :goto_1
    invoke-static {v0, v1, v5, v6}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide v0

    add-int/lit8 v4, v4, 0x1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-nez v4, :cond_3

    .line 250
    sget-object p0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    move-result-wide p0

    goto :goto_2

    :cond_3
    int-to-float p0, v4

    .line 252
    invoke-static {v0, v1, p0}, Landroidx/compose/ui/geometry/Offset;->div-tuRUvjQ(JF)J

    move-result-wide p0

    :goto_2
    return-wide p0
.end method

.method public static synthetic calculateCentroid$default(Landroidx/compose/ui/input/pointer/PointerEvent;ZILjava/lang/Object;)J
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    .line 236
    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt;->calculateCentroid(Landroidx/compose/ui/input/pointer/PointerEvent;Z)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final calculateCentroidSize(Landroidx/compose/ui/input/pointer/PointerEvent;Z)F
    .locals 8

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    invoke-static {p0, p1}, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt;->calculateCentroid(Landroidx/compose/ui/input/pointer/PointerEvent;Z)J

    move-result-wide v0

    .line 210
    sget-object v2, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/geometry/Offset;->equals-impl0(JJ)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return v3

    .line 216
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object p0

    .line 274
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v4, v2, :cond_3

    .line 275
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 276
    check-cast v6, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 217
    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPressed()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPreviousPressed()Z

    move-result v7

    if-eqz v7, :cond_2

    if-eqz p1, :cond_1

    .line 218
    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    move-result-wide v6

    goto :goto_1

    :cond_1
    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPreviousPosition-F1C5BW0()J

    move-result-wide v6

    .line 219
    :goto_1
    invoke-static {v6, v7, v0, v1}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide v6

    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Offset;->getDistance-impl(J)F

    move-result v6

    add-float/2addr v3, v6

    add-int/lit8 v5, v5, 0x1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    int-to-float p0, v5

    div-float/2addr v3, p0

    return v3
.end method

.method public static synthetic calculateCentroidSize$default(Landroidx/compose/ui/input/pointer/PointerEvent;ZILjava/lang/Object;)F
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    .line 208
    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt;->calculateCentroidSize(Landroidx/compose/ui/input/pointer/PointerEvent;Z)F

    move-result p0

    return p0
.end method

.method public static final calculatePan(Landroidx/compose/ui/input/pointer/PointerEvent;)J
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 190
    invoke-static {p0, v0}, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt;->calculateCentroid(Landroidx/compose/ui/input/pointer/PointerEvent;Z)J

    move-result-wide v0

    .line 191
    sget-object v2, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/geometry/Offset;->equals-impl0(JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 192
    sget-object p0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const/4 v2, 0x0

    .line 194
    invoke-static {p0, v2}, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt;->calculateCentroid(Landroidx/compose/ui/input/pointer/PointerEvent;Z)J

    move-result-wide v2

    .line 195
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final calculateRotation(Landroidx/compose/ui/input/pointer/PointerEvent;)F
    .locals 15

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object v0

    .line 260
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v3, v1, :cond_1

    .line 261
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 263
    check-cast v6, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 116
    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPreviousPressed()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v6}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPressed()Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    move v5, v2

    :goto_1
    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ge v4, v0, :cond_2

    return v1

    .line 120
    :cond_2
    invoke-static {p0, v5}, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt;->calculateCentroid(Landroidx/compose/ui/input/pointer/PointerEvent;Z)J

    move-result-wide v3

    .line 121
    invoke-static {p0, v2}, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt;->calculateCentroid(Landroidx/compose/ui/input/pointer/PointerEvent;Z)J

    move-result-wide v5

    .line 131
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object p0

    .line 268
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    move v7, v1

    move v8, v7

    :goto_2
    if-ge v2, v0, :cond_6

    .line 269
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    .line 270
    check-cast v9, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 132
    invoke-virtual {v9}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPressed()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {v9}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPreviousPressed()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 133
    invoke-virtual {v9}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    move-result-wide v10

    .line 134
    invoke-virtual {v9}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPreviousPosition-F1C5BW0()J

    move-result-wide v12

    .line 135
    invoke-static {v12, v13, v5, v6}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide v12

    .line 136
    invoke-static {v10, v11, v3, v4}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide v9

    .line 138
    invoke-static {v12, v13}, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt;->angle-k-4lQ0M(J)F

    move-result v11

    .line 139
    invoke-static {v9, v10}, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt;->angle-k-4lQ0M(J)F

    move-result v14

    sub-float/2addr v14, v11

    .line 141
    invoke-static {v9, v10, v12, v13}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide v9

    invoke-static {v9, v10}, Landroidx/compose/ui/geometry/Offset;->getDistance-impl(J)F

    move-result v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    const/high16 v10, 0x43340000    # 180.0f

    cmpl-float v10, v14, v10

    const/high16 v11, 0x43b40000    # 360.0f

    if-lez v10, :cond_3

    sub-float/2addr v14, v11

    goto :goto_3

    :cond_3
    const/high16 v10, -0x3ccc0000    # -180.0f

    cmpg-float v10, v14, v10

    if-gez v10, :cond_4

    add-float/2addr v14, v11

    :cond_4
    :goto_3
    mul-float/2addr v14, v9

    add-float/2addr v8, v14

    add-float/2addr v7, v9

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    cmpg-float p0, v7, v1

    if-nez p0, :cond_7

    goto :goto_4

    :cond_7
    div-float v1, v8, v7

    :goto_4
    return v1
.end method

.method public static final calculateZoom(Landroidx/compose/ui/input/pointer/PointerEvent;)F
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 173
    invoke-static {p0, v0}, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt;->calculateCentroidSize(Landroidx/compose/ui/input/pointer/PointerEvent;Z)F

    move-result v0

    const/4 v1, 0x0

    .line 174
    invoke-static {p0, v1}, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt;->calculateCentroidSize(Landroidx/compose/ui/input/pointer/PointerEvent;Z)F

    move-result p0

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    cmpg-float v1, p0, v1

    if-nez v1, :cond_1

    :goto_0
    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :cond_1
    div-float/2addr v0, p0

    return v0
.end method

.method public static final detectTransformGestures(Landroidx/compose/ui/input/pointer/PointerInputScope;ZLkotlin/jvm/functions/Function4;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/PointerInputScope;",
            "Z",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 51
    new-instance v0, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt$detectTransformGestures$2;-><init>(ZLkotlin/jvm/functions/Function4;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {p0, v0, p3}, Landroidx/compose/foundation/gestures/ForEachGestureKt;->awaitEachGesture(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic detectTransformGestures$default(Landroidx/compose/ui/input/pointer/PointerInputScope;ZLkotlin/jvm/functions/Function4;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    .line 47
    :cond_0
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/foundation/gestures/TransformGestureDetectorKt;->detectTransformGestures(Landroidx/compose/ui/input/pointer/PointerInputScope;ZLkotlin/jvm/functions/Function4;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
