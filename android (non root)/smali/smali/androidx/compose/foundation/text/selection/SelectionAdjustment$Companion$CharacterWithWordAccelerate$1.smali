.class public final Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion$CharacterWithWordAccelerate$1;
.super Ljava/lang/Object;
.source "SelectionAdjustment.kt"

# interfaces
.implements Landroidx/compose/foundation/text/selection/SelectionAdjustment;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0011*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J?\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0003H\u0016\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u000c\u0010\rJ(\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\u00082\u0006\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\nH\u0002J8\u0010\u0013\u001a\u00020\u00082\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u0014\u001a\u00020\u00082\u0006\u0010\u0015\u001a\u00020\u00082\u0006\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\nH\u0002J@\u0010\u0017\u001a\u00020\u00082\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\u00082\u0006\u0010\u0018\u001a\u00020\u00082\u0006\u0010\u0015\u001a\u00020\u00082\u0006\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\nH\u0002J\u0014\u0010\u0019\u001a\u00020\n*\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u0008H\u0002\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006\u001b"
    }
    d2 = {
        "androidx/compose/foundation/text/selection/SelectionAdjustment$Companion$CharacterWithWordAccelerate$1",
        "Landroidx/compose/foundation/text/selection/SelectionAdjustment;",
        "adjust",
        "Landroidx/compose/ui/text/TextRange;",
        "textLayoutResult",
        "Landroidx/compose/ui/text/TextLayoutResult;",
        "newRawSelectionRange",
        "previousHandleOffset",
        "",
        "isStartHandle",
        "",
        "previousSelectionRange",
        "adjust-ZXO7KMw",
        "(Landroidx/compose/ui/text/TextLayoutResult;JIZLandroidx/compose/ui/text/TextRange;)J",
        "isExpanding",
        "newRawOffset",
        "previousRawOffset",
        "isStart",
        "previousReversed",
        "snapToWordBoundary",
        "currentLine",
        "otherBoundaryOffset",
        "isReversed",
        "updateSelectionBoundary",
        "previousAdjustedOffset",
        "isAtWordBoundary",
        "offset",
        "foundation_release"
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
.method constructor <init>()V
    .locals 0

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final isAtWordBoundary(Landroidx/compose/ui/text/TextLayoutResult;I)Z
    .locals 1

    .line 381
    invoke-virtual {p1, p2}, Landroidx/compose/ui/text/TextLayoutResult;->getWordBoundary--jx7JFs(I)J

    move-result-wide p0

    .line 382
    invoke-static {p0, p1}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v0

    if-eq p2, v0, :cond_1

    invoke-static {p0, p1}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result p0

    if-ne p2, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private final isExpanding(IIZZ)Z
    .locals 1

    const/4 p0, -0x1

    const/4 v0, 0x1

    if-ne p2, p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    if-ne p1, p2, :cond_1

    return p0

    :cond_1
    xor-int/2addr p3, p4

    if-eqz p3, :cond_2

    if-ge p1, p2, :cond_3

    goto :goto_0

    :cond_2
    if-le p1, p2, :cond_3

    goto :goto_0

    :cond_3
    move v0, p0

    :goto_0
    return v0
.end method

.method private final snapToWordBoundary(Landroidx/compose/ui/text/TextLayoutResult;IIIZZ)I
    .locals 4

    .line 329
    invoke-virtual {p1, p2}, Landroidx/compose/ui/text/TextLayoutResult;->getWordBoundary--jx7JFs(I)J

    move-result-wide v0

    .line 334
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/compose/ui/text/TextLayoutResult;->getLineForOffset(I)I

    move-result p0

    if-ne p0, p3, :cond_0

    .line 336
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result p0

    goto :goto_0

    .line 338
    :cond_0
    invoke-virtual {p1, p3}, Landroidx/compose/ui/text/TextLayoutResult;->getLineStart(I)I

    move-result p0

    .line 341
    :goto_0
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v2

    invoke-virtual {p1, v2}, Landroidx/compose/ui/text/TextLayoutResult;->getLineForOffset(I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, p3, :cond_1

    .line 343
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result p1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 345
    invoke-static {p1, p3, v0, v3, v1}, Landroidx/compose/ui/text/TextLayoutResult;->getLineEnd$default(Landroidx/compose/ui/text/TextLayoutResult;IZILjava/lang/Object;)I

    move-result p1

    :goto_1
    if-ne p0, p4, :cond_2

    return p1

    :cond_2
    if-ne p1, p4, :cond_3

    return p0

    :cond_3
    add-int p3, p0, p1

    .line 358
    div-int/2addr p3, v3

    xor-int p4, p5, p6

    if-eqz p4, :cond_4

    if-gt p2, p3, :cond_5

    goto :goto_2

    :cond_4
    if-lt p2, p3, :cond_6

    :cond_5
    move p0, p1

    :cond_6
    :goto_2
    return p0
.end method

.method private final updateSelectionBoundary(Landroidx/compose/ui/text/TextLayoutResult;IIIIZZ)I
    .locals 7

    if-ne p2, p3, :cond_0

    return p4

    .line 278
    :cond_0
    invoke-virtual {p1, p2}, Landroidx/compose/ui/text/TextLayoutResult;->getLineForOffset(I)I

    move-result v3

    .line 279
    invoke-virtual {p1, p4}, Landroidx/compose/ui/text/TextLayoutResult;->getLineForOffset(I)I

    move-result v0

    if-eq v3, v0, :cond_1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p5

    move v5, p6

    move v6, p7

    .line 283
    invoke-direct/range {v0 .. v6}, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion$CharacterWithWordAccelerate$1;->snapToWordBoundary(Landroidx/compose/ui/text/TextLayoutResult;IIIZZ)I

    move-result p0

    return p0

    .line 296
    :cond_1
    invoke-direct {p0, p2, p3, p6, p7}, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion$CharacterWithWordAccelerate$1;->isExpanding(IIZZ)Z

    move-result p3

    if-nez p3, :cond_2

    return p2

    .line 304
    :cond_2
    invoke-direct {p0, p1, p4}, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion$CharacterWithWordAccelerate$1;->isAtWordBoundary(Landroidx/compose/ui/text/TextLayoutResult;I)Z

    move-result p3

    if-nez p3, :cond_3

    return p2

    :cond_3
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p5

    move v5, p6

    move v6, p7

    .line 311
    invoke-direct/range {v0 .. v6}, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion$CharacterWithWordAccelerate$1;->snapToWordBoundary(Landroidx/compose/ui/text/TextLayoutResult;IIIZZ)I

    move-result p0

    return p0
.end method


# virtual methods
.method public adjust-ZXO7KMw(Landroidx/compose/ui/text/TextLayoutResult;JIZLandroidx/compose/ui/text/TextRange;)J
    .locals 8

    const-string/jumbo v0, "textLayoutResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p6, :cond_0

    .line 199
    sget-object p0, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;->$$INSTANCE:Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;

    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;->getWord()Landroidx/compose/foundation/text/selection/SelectionAdjustment;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Landroidx/compose/foundation/text/selection/SelectionAdjustment;->adjust-ZXO7KMw(Landroidx/compose/ui/text/TextLayoutResult;JIZLandroidx/compose/ui/text/TextRange;)J

    move-result-wide p0

    return-wide p0

    .line 209
    :cond_0
    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->getCollapsed-impl(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    invoke-virtual {p1}, Landroidx/compose/ui/text/TextLayoutResult;->getLayoutInput()Landroidx/compose/ui/text/TextLayoutInput;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/text/TextLayoutInput;->getText()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/text/AnnotatedString;->getText()Ljava/lang/String;

    move-result-object p0

    .line 212
    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result p2

    .line 213
    invoke-virtual {p1}, Landroidx/compose/ui/text/TextLayoutResult;->getLayoutInput()Landroidx/compose/ui/text/TextLayoutInput;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/ui/text/TextLayoutInput;->getText()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/text/StringsKt;->getLastIndex(Ljava/lang/CharSequence;)I

    move-result p1

    .line 215
    invoke-virtual {p6}, Landroidx/compose/ui/text/TextRange;->unbox-impl()J

    move-result-wide p3

    invoke-static {p3, p4}, Landroidx/compose/ui/text/TextRange;->getReversed-impl(J)Z

    move-result p3

    .line 210
    invoke-static {p0, p2, p1, p5, p3}, Landroidx/compose/foundation/text/selection/SelectionAdjustmentKt;->ensureAtLeastOneChar(Ljava/lang/String;IIZZ)J

    move-result-wide p0

    return-wide p0

    :cond_1
    if-eqz p5, :cond_2

    .line 224
    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v2

    .line 226
    invoke-virtual {p6}, Landroidx/compose/ui/text/TextRange;->unbox-impl()J

    move-result-wide p5

    invoke-static {p5, p6}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v4

    .line 227
    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v5

    const/4 v6, 0x1

    .line 229
    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->getReversed-impl(J)Z

    move-result v7

    move-object v0, p0

    move-object v1, p1

    move v3, p4

    .line 222
    invoke-direct/range {v0 .. v7}, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion$CharacterWithWordAccelerate$1;->updateSelectionBoundary(Landroidx/compose/ui/text/TextLayoutResult;IIIIZZ)I

    move-result p0

    .line 231
    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result p1

    goto :goto_0

    .line 233
    :cond_2
    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result p5

    .line 236
    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v2

    .line 238
    invoke-virtual {p6}, Landroidx/compose/ui/text/TextRange;->unbox-impl()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    move-result v4

    .line 239
    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    move-result v5

    const/4 v6, 0x0

    .line 241
    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->getReversed-impl(J)Z

    move-result v7

    move-object v0, p0

    move-object v1, p1

    move v3, p4

    .line 234
    invoke-direct/range {v0 .. v7}, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion$CharacterWithWordAccelerate$1;->updateSelectionBoundary(Landroidx/compose/ui/text/TextLayoutResult;IIIIZZ)I

    move-result p1

    move p0, p5

    .line 244
    :goto_0
    invoke-static {p0, p1}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    move-result-wide p0

    return-wide p0
.end method
