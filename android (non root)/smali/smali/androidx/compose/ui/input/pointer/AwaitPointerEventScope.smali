.class public interface abstract Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;
.super Ljava/lang/Object;
.source "SuspendingPointerInputFilter.kt"

# interfaces
.implements Landroidx/compose/ui/unit/Density;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/input/pointer/AwaitPointerEventScope$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008g\u0018\u00002\u00020\u0001J\u001b\u0010\u0011\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0013H\u00a6@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0014JH\u0010\u0015\u001a\u0002H\u0016\"\u0004\u0008\u0000\u0010\u00162\u0006\u0010\u0017\u001a\u00020\u00182\'\u0010\u0019\u001a#\u0008\u0001\u0012\u0004\u0012\u00020\u0000\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00160\u001b\u0012\u0006\u0012\u0004\u0018\u00010\u001c0\u001a\u00a2\u0006\u0002\u0008\u001dH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001eJJ\u0010\u001f\u001a\u0004\u0018\u0001H\u0016\"\u0004\u0008\u0000\u0010\u00162\u0006\u0010\u0017\u001a\u00020\u00182\'\u0010\u0019\u001a#\u0008\u0001\u0012\u0004\u0012\u00020\u0000\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00160\u001b\u0012\u0006\u0012\u0004\u0018\u00010\u001c0\u001a\u00a2\u0006\u0002\u0008\u001dH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u001eR\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u001d\u0010\u0006\u001a\u00020\u00078VX\u0096\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u001b\u0010\n\u001a\u00020\u000bX\u00a6\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\tR\u0012\u0010\r\u001a\u00020\u000eX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010\u00f8\u0001\u0003\u0082\u0002\u0015\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\n\u0004\u0008!0\u0001\u00a8\u0006 \u00c0\u0006\u0003"
    }
    d2 = {
        "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
        "Landroidx/compose/ui/unit/Density;",
        "currentEvent",
        "Landroidx/compose/ui/input/pointer/PointerEvent;",
        "getCurrentEvent",
        "()Landroidx/compose/ui/input/pointer/PointerEvent;",
        "extendedTouchPadding",
        "Landroidx/compose/ui/geometry/Size;",
        "getExtendedTouchPadding-NH-jbRc",
        "()J",
        "size",
        "Landroidx/compose/ui/unit/IntSize;",
        "getSize-YbymL2g",
        "viewConfiguration",
        "Landroidx/compose/ui/platform/ViewConfiguration;",
        "getViewConfiguration",
        "()Landroidx/compose/ui/platform/ViewConfiguration;",
        "awaitPointerEvent",
        "pass",
        "Landroidx/compose/ui/input/pointer/PointerEventPass;",
        "(Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "withTimeout",
        "T",
        "timeMillis",
        "",
        "block",
        "Lkotlin/Function2;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "withTimeoutOrNull",
        "ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic access$getExtendedTouchPadding-NH-jbRc$jd(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;)J
    .locals 2

    .line 60
    invoke-super {p0}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->getExtendedTouchPadding-NH-jbRc()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic access$roundToPx--R2X_6o$jd(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;J)I
    .locals 0

    .line 60
    invoke-super {p0, p1, p2}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->roundToPx--R2X_6o(J)I

    move-result p0

    return p0
.end method

.method public static synthetic access$roundToPx-0680j_4$jd(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;F)I
    .locals 0

    .line 60
    invoke-super {p0, p1}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->roundToPx-0680j_4(F)I

    move-result p0

    return p0
.end method

.method public static synthetic access$toDp-GaN1DYA$jd(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;J)F
    .locals 0

    .line 60
    invoke-super {p0, p1, p2}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->toDp-GaN1DYA(J)F

    move-result p0

    return p0
.end method

.method public static synthetic access$toDp-u2uoSUM$jd(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;F)F
    .locals 0

    .line 60
    invoke-super {p0, p1}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->toDp-u2uoSUM(F)F

    move-result p0

    return p0
.end method

.method public static synthetic access$toDp-u2uoSUM$jd(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;I)F
    .locals 0

    .line 60
    invoke-super {p0, p1}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->toDp-u2uoSUM(I)F

    move-result p0

    return p0
.end method

.method public static synthetic access$toDpSize-k-rfVVM$jd(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;J)J
    .locals 0

    .line 60
    invoke-super {p0, p1, p2}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->toDpSize-k-rfVVM(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic access$toPx--R2X_6o$jd(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;J)F
    .locals 0

    .line 60
    invoke-super {p0, p1, p2}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->toPx--R2X_6o(J)F

    move-result p0

    return p0
.end method

.method public static synthetic access$toPx-0680j_4$jd(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;F)F
    .locals 0

    .line 60
    invoke-super {p0, p1}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->toPx-0680j_4(F)F

    move-result p0

    return p0
.end method

.method public static synthetic access$toRect$jd(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/unit/DpRect;)Landroidx/compose/ui/geometry/Rect;
    .locals 0

    .line 60
    invoke-super {p0, p1}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->toRect(Landroidx/compose/ui/unit/DpRect;)Landroidx/compose/ui/geometry/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$toSize-XkaWNTQ$jd(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;J)J
    .locals 0

    .line 60
    invoke-super {p0, p1, p2}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->toSize-XkaWNTQ(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic access$toSp-0xMU5do$jd(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;F)J
    .locals 0

    .line 60
    invoke-super {p0, p1}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->toSp-0xMU5do(F)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic access$toSp-kPz2Gy4$jd(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;F)J
    .locals 0

    .line 60
    invoke-super {p0, p1}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->toSp-kPz2Gy4(F)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic access$toSp-kPz2Gy4$jd(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;I)J
    .locals 0

    .line 60
    invoke-super {p0, p1}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->toSp-kPz2Gy4(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic access$withTimeout$jd(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 60
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->withTimeout(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$withTimeoutOrNull$jd(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 60
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->withTimeoutOrNull(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic awaitPointerEvent$default(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 98
    sget-object p1, Landroidx/compose/ui/input/pointer/PointerEventPass;->Main:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 97
    :cond_0
    invoke-interface {p0, p1, p2}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->awaitPointerEvent(Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: awaitPointerEvent"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic withTimeout$suspendImpl(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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

    .line 117
    invoke-interface {p3, p0, p4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic withTimeoutOrNull$suspendImpl(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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

    .line 108
    invoke-interface {p3, p0, p4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract awaitPointerEvent(Landroidx/compose/ui/input/pointer/PointerEventPass;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/PointerEventPass;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerEvent;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract getCurrentEvent()Landroidx/compose/ui/input/pointer/PointerEvent;
.end method

.method public getExtendedTouchPadding-NH-jbRc()J
    .locals 2

    .line 75
    sget-object p0, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Size$Companion;->getZero-NH-jbRc()J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract getSize-YbymL2g()J
.end method

.method public abstract getViewConfiguration()Landroidx/compose/ui/platform/ViewConfiguration;
.end method

.method public withTimeout(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
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

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->withTimeout$suspendImpl(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public withTimeoutOrNull(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
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

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->withTimeoutOrNull$suspendImpl(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
