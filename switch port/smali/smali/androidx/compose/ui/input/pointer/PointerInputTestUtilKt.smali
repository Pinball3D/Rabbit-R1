.class public final Landroidx/compose/ui/input/pointer/PointerInputTestUtilKt;
.super Ljava/lang/Object;
.source "PointerInputTestUtil.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPointerInputTestUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PointerInputTestUtil.kt\nandroidx/compose/ui/input/pointer/PointerInputTestUtilKt\n+ 2 ListUtils.kt\nandroidx/compose/ui/util/ListUtilsKt\n*L\n1#1,148:1\n33#2,6:149\n*S KotlinDebug\n*F\n+ 1 PointerInputTestUtil.kt\nandroidx/compose/ui/input/pointer/PointerInputTestUtilKt\n*L\n144#1:149,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0011\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0008\u001a.\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006H\u0000\u001aG\u0010\u0008\u001a\u00020\t*\u001e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\t0\nj\u0002`\u000e2\u0006\u0010\u000f\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\rH\u0000\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0011\u0010\u0012\u001aO\u0010\u0013\u001a\u00020\t*\u001e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\t0\nj\u0002`\u000e2\u0006\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\rH\u0000\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0015\u0010\u0016\u001a[\u0010\u0017\u001a\u00020\t*\u001e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\t0\nj\u0002`\u000e2\u0006\u0010\u000f\u001a\u00020\u000b2\u0012\u0010\u0018\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u000c0\u0019\"\u00020\u000c2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\rH\u0000\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u001a\u0010\u001b\u001aU\u0010\u0017\u001a\u00020\t*\u001e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\t0\nj\u0002`\u000e2\u0006\u0010\u000f\u001a\u00020\u000b2\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u001c2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\rH\u0000\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u001a\u0010\u001d\u001a(\u0010\u001e\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u001f\u001a\u00020\u00062\u0008\u0008\u0002\u0010 \u001a\u00020\u0006H\u0000\u001a(\u0010!\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006H\u0000\u001a\u0014\u0010\"\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0003H\u0000*<\u0008\u0000\u0010#\"\u001a\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\t0\n2\u001a\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\t0\n\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006$"
    }
    d2 = {
        "down",
        "Landroidx/compose/ui/input/pointer/PointerInputChange;",
        "id",
        "",
        "durationMillis",
        "x",
        "",
        "y",
        "invokeOverAllPasses",
        "",
        "Lkotlin/Function3;",
        "Landroidx/compose/ui/input/pointer/PointerEvent;",
        "Landroidx/compose/ui/input/pointer/PointerEventPass;",
        "Landroidx/compose/ui/unit/IntSize;",
        "Landroidx/compose/ui/input/pointer/PointerInputHandler;",
        "pointerEvent",
        "size",
        "invokeOverAllPasses-H0pRuoY",
        "(Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/input/pointer/PointerEvent;J)V",
        "invokeOverPass",
        "pointerEventPass",
        "invokeOverPass-hUlJWOE",
        "(Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V",
        "invokeOverPasses",
        "pointerEventPasses",
        "",
        "invokeOverPasses-hUlJWOE",
        "(Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/input/pointer/PointerEvent;[Landroidx/compose/ui/input/pointer/PointerEventPass;J)V",
        "",
        "(Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/input/pointer/PointerEvent;Ljava/util/List;J)V",
        "moveBy",
        "dx",
        "dy",
        "moveTo",
        "up",
        "PointerInputHandler",
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
.method public static final down(JJFF)Landroidx/compose/ui/input/pointer/PointerInputChange;
    .locals 21

    move-wide/from16 v3, p2

    move-wide/from16 v9, p2

    .line 33
    new-instance v20, Landroidx/compose/ui/input/pointer/PointerInputChange;

    move-object/from16 v0, v20

    .line 34
    invoke-static/range {p0 .. p1}, Landroidx/compose/ui/input/pointer/PointerId;->constructor-impl(J)J

    move-result-wide v1

    .line 36
    invoke-static/range {p4 .. p5}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v5

    const/4 v7, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    .line 40
    invoke-static/range {p4 .. p5}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v11

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x600

    const/16 v19, 0x0

    .line 33
    invoke-direct/range {v0 .. v19}, Landroidx/compose/ui/input/pointer/PointerInputChange;-><init>(JJJZFJJZZIJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v20
.end method

.method public static synthetic down$default(JJFFILjava/lang/Object;)Landroidx/compose/ui/input/pointer/PointerInputChange;
    .locals 6

    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_0

    const-wide/16 p2, 0x0

    :cond_0
    move-wide v2, p2

    and-int/lit8 p2, p6, 0x4

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    move v4, p3

    goto :goto_0

    :cond_1
    move v4, p4

    :goto_0
    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_2

    move v5, p3

    goto :goto_1

    :cond_2
    move v5, p5

    :goto_1
    move-wide v0, p0

    .line 27
    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/input/pointer/PointerInputTestUtilKt;->down(JJFF)Landroidx/compose/ui/input/pointer/PointerInputChange;

    move-result-object p0

    return-object p0
.end method

.method public static final invokeOverAllPasses-H0pRuoY(Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/input/pointer/PointerEvent;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerEvent;",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerEventPass;",
            "-",
            "Landroidx/compose/ui/unit/IntSize;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/input/pointer/PointerEvent;",
            "J)V"
        }
    .end annotation

    const-string v0, "$this$invokeOverAllPasses"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pointerEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x3

    new-array v0, v0, [Landroidx/compose/ui/input/pointer/PointerEventPass;

    const/4 v1, 0x0

    .line 102
    sget-object v2, Landroidx/compose/ui/input/pointer/PointerEventPass;->Initial:Landroidx/compose/ui/input/pointer/PointerEventPass;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 103
    sget-object v2, Landroidx/compose/ui/input/pointer/PointerEventPass;->Main:Landroidx/compose/ui/input/pointer/PointerEventPass;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 104
    sget-object v2, Landroidx/compose/ui/input/pointer/PointerEventPass;->Final:Landroidx/compose/ui/input/pointer/PointerEventPass;

    aput-object v2, v0, v1

    .line 101
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 99
    invoke-static {p0, p1, v0, p2, p3}, Landroidx/compose/ui/input/pointer/PointerInputTestUtilKt;->invokeOverPasses-hUlJWOE(Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/input/pointer/PointerEvent;Ljava/util/List;J)V

    return-void
.end method

.method public static synthetic invokeOverAllPasses-H0pRuoY$default(Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/input/pointer/PointerEvent;JILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const p2, 0x7fffffff

    .line 98
    invoke-static {p2, p2}, Landroidx/compose/ui/unit/IntSizeKt;->IntSize(II)J

    move-result-wide p2

    .line 96
    :cond_0
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/input/pointer/PointerInputTestUtilKt;->invokeOverAllPasses-H0pRuoY(Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/input/pointer/PointerEvent;J)V

    return-void
.end method

.method public static final invokeOverPass-hUlJWOE(Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerEvent;",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerEventPass;",
            "-",
            "Landroidx/compose/ui/unit/IntSize;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/input/pointer/PointerEvent;",
            "Landroidx/compose/ui/input/pointer/PointerEventPass;",
            "J)V"
        }
    .end annotation

    const-string v0, "$this$invokeOverPass"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pointerEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pointerEventPass"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/ui/input/pointer/PointerInputTestUtilKt;->invokeOverPasses-hUlJWOE(Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/input/pointer/PointerEvent;Ljava/util/List;J)V

    return-void
.end method

.method public static synthetic invokeOverPass-hUlJWOE$default(Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;JILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const p3, 0x7fffffff

    .line 118
    invoke-static {p3, p3}, Landroidx/compose/ui/unit/IntSizeKt;->IntSize(II)J

    move-result-wide p3

    .line 115
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/ui/input/pointer/PointerInputTestUtilKt;->invokeOverPass-hUlJWOE(Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V

    return-void
.end method

.method public static final invokeOverPasses-hUlJWOE(Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/input/pointer/PointerEvent;Ljava/util/List;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerEvent;",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerEventPass;",
            "-",
            "Landroidx/compose/ui/unit/IntSize;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/input/pointer/PointerEvent;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/input/pointer/PointerEventPass;",
            ">;J)V"
        }
    .end annotation

    const-string v0, "$this$invokeOverPasses"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pointerEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pointerEventPasses"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Failed requirement."

    if-eqz v0, :cond_2

    .line 143
    move-object v0, p2

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 150
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 151
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 152
    check-cast v2, Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 145
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/IntSize;->box-impl(J)Landroidx/compose/ui/unit/IntSize;

    move-result-object v3

    invoke-interface {p0, p1, v2, v3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 143
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 142
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final invokeOverPasses-hUlJWOE(Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/input/pointer/PointerEvent;[Landroidx/compose/ui/input/pointer/PointerEventPass;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerEvent;",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerEventPass;",
            "-",
            "Landroidx/compose/ui/unit/IntSize;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/input/pointer/PointerEvent;",
            "[",
            "Landroidx/compose/ui/input/pointer/PointerEventPass;",
            "J)V"
        }
    .end annotation

    const-string v0, "$this$invokeOverPasses"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pointerEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pointerEventPasses"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    invoke-static {p2}, Lkotlin/collections/ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/ui/input/pointer/PointerInputTestUtilKt;->invokeOverPasses-hUlJWOE(Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/input/pointer/PointerEvent;Ljava/util/List;J)V

    return-void
.end method

.method public static synthetic invokeOverPasses-hUlJWOE$default(Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/input/pointer/PointerEvent;Ljava/util/List;JILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const p3, 0x7fffffff

    .line 140
    invoke-static {p3, p3}, Landroidx/compose/ui/unit/IntSizeKt;->IntSize(II)J

    move-result-wide p3

    .line 137
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/ui/input/pointer/PointerInputTestUtilKt;->invokeOverPasses-hUlJWOE(Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/input/pointer/PointerEvent;Ljava/util/List;J)V

    return-void
.end method

.method public static synthetic invokeOverPasses-hUlJWOE$default(Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/input/pointer/PointerEvent;[Landroidx/compose/ui/input/pointer/PointerEventPass;JILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const p3, 0x7fffffff

    .line 129
    invoke-static {p3, p3}, Landroidx/compose/ui/unit/IntSizeKt;->IntSize(II)J

    move-result-wide p3

    .line 126
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/ui/input/pointer/PointerInputTestUtilKt;->invokeOverPasses-hUlJWOE(Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/input/pointer/PointerEvent;[Landroidx/compose/ui/input/pointer/PointerEventPass;J)V

    return-void
.end method

.method public static final moveBy(Landroidx/compose/ui/input/pointer/PointerInputChange;JFF)Landroidx/compose/ui/input/pointer/PointerInputChange;
    .locals 22

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    move-result-wide v3

    .line 63
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getUptimeMillis()J

    move-result-wide v11

    .line 64
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPressed()Z

    move-result v15

    .line 65
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    move-result-wide v13

    .line 66
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getUptimeMillis()J

    move-result-wide v5

    add-long v5, v5, p1

    .line 69
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    move-result-wide v7

    invoke-static {v7, v8}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v0

    add-float v0, v0, p3

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v1

    add-float v1, v1, p4

    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v7

    .line 61
    new-instance v0, Landroidx/compose/ui/input/pointer/PointerInputChange;

    move-object v2, v0

    const/4 v9, 0x1

    const/high16 v10, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x600

    const/16 v21, 0x0

    invoke-direct/range {v2 .. v21}, Landroidx/compose/ui/input/pointer/PointerInputChange;-><init>(JJJZFJJZZIJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static synthetic moveBy$default(Landroidx/compose/ui/input/pointer/PointerInputChange;JFFILjava/lang/Object;)Landroidx/compose/ui/input/pointer/PointerInputChange;
    .locals 1

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move p3, v0

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    move p4, v0

    .line 60
    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/ui/input/pointer/PointerInputTestUtilKt;->moveBy(Landroidx/compose/ui/input/pointer/PointerInputChange;JFF)Landroidx/compose/ui/input/pointer/PointerInputChange;

    move-result-object p0

    return-object p0
.end method

.method public static final moveTo(Landroidx/compose/ui/input/pointer/PointerInputChange;JFF)Landroidx/compose/ui/input/pointer/PointerInputChange;
    .locals 21

    move-wide/from16 v3, p1

    const-string v0, "<this>"

    move-object/from16 v5, p0

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    move-result-wide v1

    .line 49
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getUptimeMillis()J

    move-result-wide v9

    .line 50
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPressed()Z

    move-result v13

    .line 51
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    move-result-wide v11

    .line 55
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v5

    .line 47
    new-instance v20, Landroidx/compose/ui/input/pointer/PointerInputChange;

    move-object/from16 v0, v20

    const/4 v7, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x600

    const/16 v19, 0x0

    invoke-direct/range {v0 .. v19}, Landroidx/compose/ui/input/pointer/PointerInputChange;-><init>(JJJZFJJZZIJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v20
.end method

.method public static synthetic moveTo$default(Landroidx/compose/ui/input/pointer/PointerInputChange;JFFILjava/lang/Object;)Landroidx/compose/ui/input/pointer/PointerInputChange;
    .locals 1

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move p3, v0

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    move p4, v0

    .line 46
    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/ui/input/pointer/PointerInputTestUtilKt;->moveTo(Landroidx/compose/ui/input/pointer/PointerInputChange;JFF)Landroidx/compose/ui/input/pointer/PointerInputChange;

    move-result-object p0

    return-object p0
.end method

.method public static final up(Landroidx/compose/ui/input/pointer/PointerInputChange;J)Landroidx/compose/ui/input/pointer/PointerInputChange;
    .locals 21

    move-wide/from16 v3, p1

    const-string v0, "<this>"

    move-object/from16 v5, p0

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    move-result-wide v1

    .line 77
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getUptimeMillis()J

    move-result-wide v9

    .line 78
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPressed()Z

    move-result v13

    .line 79
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    move-result-wide v11

    .line 83
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    move-result-wide v5

    .line 75
    new-instance v20, Landroidx/compose/ui/input/pointer/PointerInputChange;

    move-object/from16 v0, v20

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x600

    const/16 v19, 0x0

    invoke-direct/range {v0 .. v19}, Landroidx/compose/ui/input/pointer/PointerInputChange;-><init>(JJJZFJJZZIJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v20
.end method
