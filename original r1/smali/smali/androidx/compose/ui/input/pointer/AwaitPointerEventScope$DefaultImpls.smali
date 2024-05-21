.class public final Landroidx/compose/ui/input/pointer/AwaitPointerEventScope$DefaultImpls;
.super Ljava/lang/Object;
.source "SuspendingPointerInputFilter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
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
.method public static synthetic awaitPointerEvent$default(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 97
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->awaitPointerEvent$default(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getExtendedTouchPadding-NH-jbRc(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;)J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 75
    invoke-static {p0}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->access$getExtendedTouchPadding-NH-jbRc$jd(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static roundToPx--R2X_6o(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;J)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 62
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->access$roundToPx--R2X_6o$jd(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;J)I

    move-result p0

    return p0
.end method

.method public static roundToPx-0680j_4(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;F)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 62
    invoke-static {p0, p1}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->access$roundToPx-0680j_4$jd(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;F)I

    move-result p0

    return p0
.end method

.method public static toDp-GaN1DYA(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;J)F
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 62
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->access$toDp-GaN1DYA$jd(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;J)F

    move-result p0

    return p0
.end method

.method public static toDp-u2uoSUM(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;F)F
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 62
    invoke-static {p0, p1}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->access$toDp-u2uoSUM$jd(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;F)F

    move-result p0

    return p0
.end method

.method public static toDp-u2uoSUM(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;I)F
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 62
    invoke-static {p0, p1}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->access$toDp-u2uoSUM$jd(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;I)F

    move-result p0

    return p0
.end method

.method public static toDpSize-k-rfVVM(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;J)J
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 62
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->access$toDpSize-k-rfVVM$jd(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static toPx--R2X_6o(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;J)F
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 62
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->access$toPx--R2X_6o$jd(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;J)F

    move-result p0

    return p0
.end method

.method public static toPx-0680j_4(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;F)F
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 62
    invoke-static {p0, p1}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->access$toPx-0680j_4$jd(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;F)F

    move-result p0

    return p0
.end method

.method public static toRect(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/unit/DpRect;)Landroidx/compose/ui/geometry/Rect;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-static {p0, p1}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->access$toRect$jd(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/unit/DpRect;)Landroidx/compose/ui/geometry/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static toSize-XkaWNTQ(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;J)J
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 62
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->access$toSize-XkaWNTQ$jd(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static toSp-0xMU5do(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;F)J
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 62
    invoke-static {p0, p1}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->access$toSp-0xMU5do$jd(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;F)J

    move-result-wide p0

    return-wide p0
.end method

.method public static toSp-kPz2Gy4(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;F)J
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 62
    invoke-static {p0, p1}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->access$toSp-kPz2Gy4$jd(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;F)J

    move-result-wide p0

    return-wide p0
.end method

.method public static toSp-kPz2Gy4(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;I)J
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 62
    invoke-static {p0, p1}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->access$toSp-kPz2Gy4$jd(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public static withTimeout(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
            "J",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 114
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->access$withTimeout$jd(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static withTimeoutOrNull(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
            "J",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 105
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->access$withTimeoutOrNull$jd(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
