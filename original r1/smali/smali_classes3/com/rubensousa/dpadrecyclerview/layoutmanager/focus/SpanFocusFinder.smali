.class public final Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/SpanFocusFinder;
.super Ljava/lang/Object;
.source "SpanFocusFinder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0010\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u000b\u001a\u00020\u000cJ(\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u0006H\u0002J.\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u0015J0\u0010\u0017\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u0006H\u0002J\u0006\u0010\u001d\u001a\u00020\u0006J0\u0010\u001e\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u0006H\u0002J\u0018\u0010\u001f\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0015H\u0002J \u0010 \u001a\u00020\u00152\u0006\u0010!\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u0015H\u0002J \u0010\"\u001a\u00020\u00152\u0006\u0010!\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u0015H\u0002JH\u0010#\u001a\u00020\u00062\u0006\u0010!\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0015H\u0002J\u0016\u0010$\u001a\u00020\u000c2\u0006\u0010!\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u000fR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0008\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\n\u00a8\u0006%"
    }
    d2 = {
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/SpanFocusFinder;",
        "",
        "configuration",
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;",
        "(Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;)V",
        "cachedSpanIndex",
        "",
        "cachedSpanSize",
        "spanCount",
        "getSpanCount",
        "()I",
        "clearSpanCache",
        "",
        "findNextEvenSpanPosition",
        "spanSizeLookup",
        "Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;",
        "focusedPosition",
        "edgePosition",
        "positionDirection",
        "findNextSpanPosition",
        "forward",
        "",
        "reverseLayout",
        "fitsNextInCurrentSpanGroup",
        "lookup",
        "spanIndex",
        "currentPos",
        "spanDir",
        "posDir",
        "getCachedSpanIndex",
        "getNextSpanEnd",
        "getSpanDirection",
        "isPositionAtCachedSpan",
        "position",
        "isPositionOutOfBounds",
        "moveToStartOfNextSpanGroup",
        "save",
        "dpadrecyclerview_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private cachedSpanIndex:I

.field private cachedSpanSize:I

.field private final configuration:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;


# direct methods
.method public constructor <init>(Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;)V
    .locals 1

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/SpanFocusFinder;->configuration:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    const/4 p1, -0x1

    iput p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/SpanFocusFinder;->cachedSpanIndex:I

    const/4 p1, 0x1

    iput p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/SpanFocusFinder;->cachedSpanSize:I

    return-void
.end method

.method private final findNextEvenSpanPosition(Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;III)I
    .locals 2

    .line 130
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/SpanFocusFinder;->getSpanCount()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;->getSpanGroupIndex(II)I

    move-result v0

    .line 131
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/SpanFocusFinder;->getSpanCount()I

    move-result v1

    invoke-virtual {p1, p3, v1}, Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;->getSpanGroupIndex(II)I

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 p0, -0x1

    return p0

    .line 136
    :cond_0
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/SpanFocusFinder;->getSpanCount()I

    move-result p0

    mul-int/2addr p0, p4

    add-int/2addr p2, p0

    if-lt p2, p3, :cond_1

    if-gez p4, :cond_1

    return p2

    :cond_1
    if-gt p2, p3, :cond_2

    if-lez p4, :cond_2

    return p2

    :cond_2
    return p3
.end method

.method private final fitsNextInCurrentSpanGroup(Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;IIII)Z
    .locals 0

    .line 213
    invoke-direct/range {p0 .. p5}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/SpanFocusFinder;->getNextSpanEnd(Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;IIII)I

    move-result p1

    if-ltz p1, :cond_0

    .line 214
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/SpanFocusFinder;->getSpanCount()I

    move-result p0

    const/4 p2, 0x1

    sub-int/2addr p0, p2

    if-gt p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return p2
.end method

.method private final getNextSpanEnd(Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;IIII)I
    .locals 0

    .line 224
    invoke-virtual {p1, p3}, Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;->getSpanSize(I)I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    mul-int/2addr p0, p4

    add-int/2addr p2, p0

    add-int/2addr p3, p5

    .line 225
    invoke-virtual {p1, p3}, Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;->getSpanSize(I)I

    move-result p0

    mul-int/2addr p0, p4

    add-int/2addr p2, p0

    return p2
.end method

.method private final getSpanDirection(ZZ)I
    .locals 1

    const/4 p0, 0x1

    const/4 v0, -0x1

    if-eq p1, p2, :cond_0

    move p1, p0

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-nez p2, :cond_1

    if-lez p1, :cond_2

    goto :goto_1

    :cond_1
    if-lez p1, :cond_3

    :cond_2
    move p0, v0

    :cond_3
    :goto_1
    return p0
.end method

.method private final isPositionAtCachedSpan(ILcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;Z)Z
    .locals 1

    .line 151
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/SpanFocusFinder;->getSpanCount()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;->getCachedSpanIndex(II)I

    move-result p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-nez p3, :cond_0

    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/SpanFocusFinder;->cachedSpanIndex:I

    if-lt p1, p0, :cond_1

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/SpanFocusFinder;->cachedSpanIndex:I

    if-gt p1, p0, :cond_1

    goto :goto_0

    :cond_1
    move p2, v0

    :goto_0
    return p2
.end method

.method private final isPositionOutOfBounds(IIZ)Z
    .locals 0

    if-le p1, p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    if-gez p1, :cond_2

    if-nez p3, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final moveToStartOfNextSpanGroup(IILcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;IIIZZ)I
    .locals 13

    move-object v6, p0

    move-object/from16 v7, p3

    move/from16 v8, p6

    move/from16 v9, p7

    if-nez p8, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 171
    :cond_0
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/SpanFocusFinder;->getSpanCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    move v10, v0

    move v3, p1

    move v11, p2

    :goto_1
    add-int v12, v3, p5

    .line 174
    invoke-direct {p0, v12, v8, v9}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/SpanFocusFinder;->isPositionOutOfBounds(IIZ)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, p0

    move-object/from16 v1, p3

    move v2, v11

    move/from16 v4, p4

    move/from16 v5, p5

    .line 175
    invoke-direct/range {v0 .. v5}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/SpanFocusFinder;->fitsNextInCurrentSpanGroup(Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;IIII)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p0

    move-object/from16 v1, p3

    move v2, v11

    move v3, v12

    move/from16 v4, p4

    move/from16 v5, p5

    .line 178
    invoke-direct/range {v0 .. v5}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/SpanFocusFinder;->getNextSpanEnd(Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;IIII)I

    move-result v11

    goto :goto_1

    .line 184
    :cond_1
    invoke-direct {p0, v12, v8, v9}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/SpanFocusFinder;->isPositionOutOfBounds(IIZ)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    return v1

    .line 189
    :cond_2
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/SpanFocusFinder;->getSpanCount()I

    move-result v0

    invoke-virtual {v7, v12, v0}, Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;->getCachedSpanIndex(II)I

    move-result v0

    :goto_2
    if-eq v0, v10, :cond_3

    if-lez v0, :cond_3

    .line 192
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/SpanFocusFinder;->getSpanCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    add-int v2, v12, p5

    .line 193
    invoke-direct {p0, v2, v8, v9}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/SpanFocusFinder;->isPositionOutOfBounds(IIZ)Z

    move-result v3

    if-nez v3, :cond_3

    .line 195
    invoke-virtual {v7, v12}, Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;->getSpanSize(I)I

    move-result v3

    mul-int v3, v3, p4

    add-int/2addr v0, v3

    move v12, v2

    goto :goto_2

    .line 199
    :cond_3
    invoke-direct {p0, v12, v8, v9}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/SpanFocusFinder;->isPositionOutOfBounds(IIZ)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    return v12
.end method


# virtual methods
.method public final clearSpanCache()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/SpanFocusFinder;->cachedSpanIndex:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/SpanFocusFinder;->cachedSpanSize:I

    return-void
.end method

.method public final findNextSpanPosition(ILcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;ZIZ)I
    .locals 16

    move-object/from16 v9, p0

    move/from16 v1, p1

    move-object/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    move/from16 v13, p5

    const-string v0, "spanSizeLookup"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-virtual/range {p0 .. p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/SpanFocusFinder;->getSpanCount()I

    move-result v0

    const/4 v14, -0x1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v14

    :cond_0
    if-eqz v11, :cond_1

    move v15, v2

    goto :goto_0

    :cond_1
    move v15, v14

    .line 71
    :goto_0
    sget-object v0, Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;->Companion:Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup$Companion;

    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup$Companion;->getDEFAULT$dpadrecyclerview_release()Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;

    move-result-object v0

    if-ne v10, v0, :cond_2

    .line 72
    invoke-direct {v9, v10, v1, v12, v15}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/SpanFocusFinder;->findNextEvenSpanPosition(Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;III)I

    move-result v0

    return v0

    .line 76
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/SpanFocusFinder;->getSpanCount()I

    move-result v0

    invoke-virtual {v10, v1, v0}, Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;->getCachedSpanIndex(II)I

    move-result v2

    .line 82
    invoke-direct {v9, v11, v13}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/SpanFocusFinder;->getSpanDirection(ZZ)I

    move-result v4

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v3, p2

    move v5, v15

    move/from16 v6, p4

    move/from16 v7, p3

    move/from16 v8, p5

    .line 78
    invoke-direct/range {v0 .. v8}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/SpanFocusFinder;->moveToStartOfNextSpanGroup(IILcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;IIIZZ)I

    move-result v0

    if-ne v0, v14, :cond_3

    return v14

    :cond_3
    iget v1, v9, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/SpanFocusFinder;->cachedSpanIndex:I

    if-eq v1, v14, :cond_8

    .line 98
    invoke-virtual {v10, v0}, Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;->getSpanSize(I)I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/SpanFocusFinder;->getSpanCount()I

    move-result v2

    if-ne v1, v2, :cond_4

    goto :goto_3

    :cond_4
    if-nez v11, :cond_6

    if-eqz v13, :cond_5

    goto :goto_1

    :cond_5
    mul-int/lit8 v15, v15, -0x1

    :cond_6
    :goto_1
    move v1, v0

    .line 110
    :goto_2
    invoke-direct {v9, v1, v12, v11}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/SpanFocusFinder;->isPositionOutOfBounds(IIZ)Z

    move-result v2

    if-nez v2, :cond_8

    .line 111
    invoke-direct {v9, v1, v10, v13}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/SpanFocusFinder;->isPositionAtCachedSpan(ILcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;Z)Z

    move-result v2

    if-eqz v2, :cond_7

    return v1

    :cond_7
    add-int/2addr v1, v15

    goto :goto_2

    :cond_8
    :goto_3
    return v0
.end method

.method public final getCachedSpanIndex()I
    .locals 0

    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/SpanFocusFinder;->cachedSpanIndex:I

    return p0
.end method

.method public final getSpanCount()I
    .locals 0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/SpanFocusFinder;->configuration:Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;

    .line 29
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/LayoutConfiguration;->getSpanCount()I

    move-result p0

    return p0
.end method

.method public final save(ILcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;)V
    .locals 2

    const-string v0, "spanSizeLookup"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/SpanFocusFinder;->getSpanCount()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;->Companion:Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup$Companion;

    invoke-virtual {v0}, Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup$Companion;->getDEFAULT$dpadrecyclerview_release()Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;

    move-result-object v0

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/SpanFocusFinder;->getSpanCount()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;->getCachedSpanIndex(II)I

    move-result v0

    .line 49
    invoke-virtual {p2, p1}, Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;->getSpanSize(I)I

    move-result p1

    .line 52
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/SpanFocusFinder;->getSpanCount()I

    move-result p2

    if-ne p1, p2, :cond_1

    return-void

    :cond_1
    iput v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/SpanFocusFinder;->cachedSpanIndex:I

    iput p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/SpanFocusFinder;->cachedSpanSize:I

    :cond_2
    :goto_0
    return-void
.end method
