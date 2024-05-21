.class public final Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;
.super Ljava/lang/Object;
.source "ParentAlignmentCalculator.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0016J\u0016\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0016J\u0010\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u0004H\u0002J\u0018\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u0004H\u0002J\u0010\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u0004H\u0002J\u0008\u0010\u001e\u001a\u00020\u0004H\u0002J\u0008\u0010\u001f\u001a\u00020\u0004H\u0002J\u0006\u0010 \u001a\u00020!J\u0006\u0010\"\u001a\u00020!J\u0006\u0010#\u001a\u00020!J\u0010\u0010$\u001a\u00020\n2\u0006\u0010%\u001a\u00020&H\u0002J\u0008\u0010\'\u001a\u00020\nH\u0002J\u0008\u0010(\u001a\u00020\nH\u0002J\u000e\u0010)\u001a\u00020\n2\u0006\u0010*\u001a\u00020\u0004J\u0010\u0010+\u001a\u00020\n2\u0006\u0010%\u001a\u00020&H\u0002J\u0010\u0010,\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J\u0010\u0010-\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J\u0010\u0010.\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J\u0010\u0010/\u001a\u00020\n2\u0006\u0010%\u001a\u00020&H\u0002J\u0010\u00100\u001a\u00020\n2\u0006\u0010%\u001a\u00020&H\u0002J \u00101\u001a\u00020\n2\u0006\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J \u00102\u001a\u00020\n2\u0006\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J\u001e\u00103\u001a\u00020!2\u0006\u00104\u001a\u0002052\u0006\u00106\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\nJ.\u00107\u001a\u00020!2\u0006\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u00108\u001a\u00020\u00042\u0006\u00109\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\t\u001a\u00020\n8F\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\u000bR\u0011\u0010\u000c\u001a\u00020\n8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\u000bR\u000e\u0010\r\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0008\u00a8\u0006:"
    }
    d2 = {
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;",
        "",
        "()V",
        "endEdge",
        "",
        "<set-?>",
        "endScrollLimit",
        "getEndScrollLimit",
        "()I",
        "isEndUnknown",
        "",
        "()Z",
        "isStartUnknown",
        "paddingEnd",
        "paddingStart",
        "reverseLayout",
        "size",
        "startEdge",
        "startScrollLimit",
        "getStartScrollLimit",
        "calculateKeyline",
        "alignment",
        "Lcom/rubensousa/dpadrecyclerview/ParentAlignment;",
        "calculateScrollOffset",
        "viewAnchor",
        "calculateScrollOffsetToEndEdge",
        "anchor",
        "calculateScrollOffsetToKeyline",
        "keyline",
        "calculateScrollOffsetToStartEdge",
        "getLayoutAbsoluteEnd",
        "getLayoutAbsoluteStart",
        "invalidateEndLimit",
        "",
        "invalidateScrollLimits",
        "invalidateStartLimit",
        "isEndEdge",
        "edge",
        "Lcom/rubensousa/dpadrecyclerview/ParentAlignment$Edge;",
        "isLayoutComplete",
        "isLayoutStartKnown",
        "isScrollLimitInvalid",
        "scroll",
        "isStartEdge",
        "preferKeylineOverEdge",
        "shouldAlignEndToKeyline",
        "shouldAlignStartToKeyline",
        "shouldAlignToEndEdge",
        "shouldAlignToStartEdge",
        "shouldAlignViewToEnd",
        "shouldAlignViewToStart",
        "updateLayoutInfo",
        "layoutManager",
        "Landroidx/recyclerview/widget/RecyclerView$LayoutManager;",
        "isVertical",
        "updateScrollLimits",
        "startViewAnchor",
        "endViewAnchor",
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
.field private endEdge:I

.field private endScrollLimit:I

.field private paddingEnd:I

.field private paddingStart:I

.field private reverseLayout:Z

.field private size:I

.field private startEdge:I

.field private startScrollLimit:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->startScrollLimit:I

    const v1, 0x7fffffff

    iput v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->endScrollLimit:I

    iput v1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->endEdge:I

    iput v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->startEdge:I

    return-void
.end method

.method private final calculateScrollOffsetToEndEdge(I)I
    .locals 0

    .line 130
    invoke-direct {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->getLayoutAbsoluteEnd()I

    move-result p0

    sub-int/2addr p1, p0

    return p1
.end method

.method private final calculateScrollOffsetToKeyline(II)I
    .locals 0

    sub-int/2addr p1, p2

    return p1
.end method

.method private final calculateScrollOffsetToStartEdge(I)I
    .locals 0

    .line 134
    invoke-direct {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->getLayoutAbsoluteStart()I

    move-result p0

    sub-int/2addr p1, p0

    return p1
.end method

.method private final getLayoutAbsoluteEnd()I
    .locals 1

    iget v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->size:I

    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->paddingEnd:I

    sub-int/2addr v0, p0

    return v0
.end method

.method private final getLayoutAbsoluteStart()I
    .locals 0

    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->paddingStart:I

    return p0
.end method

.method private final isEndEdge(Lcom/rubensousa/dpadrecyclerview/ParentAlignment$Edge;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->reverseLayout:Z

    if-nez v0, :cond_0

    .line 255
    sget-object v0, Lcom/rubensousa/dpadrecyclerview/ParentAlignment$Edge;->MAX:Lcom/rubensousa/dpadrecyclerview/ParentAlignment$Edge;

    if-eq p1, v0, :cond_1

    :cond_0
    iget-boolean p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->reverseLayout:Z

    if-eqz p0, :cond_2

    sget-object p0, Lcom/rubensousa/dpadrecyclerview/ParentAlignment$Edge;->MIN:Lcom/rubensousa/dpadrecyclerview/ParentAlignment$Edge;

    if-ne p1, p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final isLayoutComplete()Z
    .locals 4

    .line 226
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->isEndUnknown()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->isStartUnknown()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->reverseLayout:Z

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->startEdge:I

    .line 230
    invoke-direct {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->getLayoutAbsoluteStart()I

    move-result v3

    if-gt v0, v3, :cond_2

    iget v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->endEdge:I

    .line 231
    invoke-direct {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->getLayoutAbsoluteEnd()I

    move-result v3

    if-ge v0, v3, :cond_3

    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->isEndUnknown()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->endEdge:I

    .line 233
    invoke-direct {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->getLayoutAbsoluteEnd()I

    move-result v3

    if-lt v0, v3, :cond_2

    iget v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->startEdge:I

    .line 234
    invoke-direct {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->getLayoutAbsoluteStart()I

    move-result v3

    if-le v0, v3, :cond_3

    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->isStartUnknown()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :cond_3
    :goto_0
    return v1
.end method

.method private final isLayoutStartKnown()Z
    .locals 3

    iget-boolean v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->reverseLayout:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 244
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->isStartUnknown()Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    .line 246
    :cond_0
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->isEndUnknown()Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1
.end method

.method private final isStartEdge(Lcom/rubensousa/dpadrecyclerview/ParentAlignment$Edge;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->reverseLayout:Z

    if-nez v0, :cond_0

    .line 251
    sget-object v0, Lcom/rubensousa/dpadrecyclerview/ParentAlignment$Edge;->MIN:Lcom/rubensousa/dpadrecyclerview/ParentAlignment$Edge;

    if-eq p1, v0, :cond_1

    :cond_0
    iget-boolean p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->reverseLayout:Z

    if-eqz p0, :cond_2

    sget-object p0, Lcom/rubensousa/dpadrecyclerview/ParentAlignment$Edge;->MAX:Lcom/rubensousa/dpadrecyclerview/ParentAlignment$Edge;

    if-ne p1, p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final preferKeylineOverEdge(Lcom/rubensousa/dpadrecyclerview/ParentAlignment;)Z
    .locals 0

    .line 239
    invoke-virtual {p1}, Lcom/rubensousa/dpadrecyclerview/ParentAlignment;->getPreferKeylineOverEdge()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Lcom/rubensousa/dpadrecyclerview/ParentAlignment;->getEdge()Lcom/rubensousa/dpadrecyclerview/ParentAlignment$Edge;

    move-result-object p0

    sget-object p1, Lcom/rubensousa/dpadrecyclerview/ParentAlignment$Edge;->NONE:Lcom/rubensousa/dpadrecyclerview/ParentAlignment$Edge;

    if-ne p0, p1, :cond_0

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

.method private final shouldAlignEndToKeyline(Lcom/rubensousa/dpadrecyclerview/ParentAlignment;)Z
    .locals 1

    .line 126
    invoke-virtual {p1}, Lcom/rubensousa/dpadrecyclerview/ParentAlignment;->getEdge()Lcom/rubensousa/dpadrecyclerview/ParentAlignment$Edge;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->shouldAlignToEndEdge(Lcom/rubensousa/dpadrecyclerview/ParentAlignment$Edge;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->preferKeylineOverEdge(Lcom/rubensousa/dpadrecyclerview/ParentAlignment;)Z

    move-result p0

    if-eqz p0, :cond_0

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

.method private final shouldAlignStartToKeyline(Lcom/rubensousa/dpadrecyclerview/ParentAlignment;)Z
    .locals 1

    .line 122
    invoke-virtual {p1}, Lcom/rubensousa/dpadrecyclerview/ParentAlignment;->getEdge()Lcom/rubensousa/dpadrecyclerview/ParentAlignment$Edge;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->shouldAlignToStartEdge(Lcom/rubensousa/dpadrecyclerview/ParentAlignment$Edge;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->preferKeylineOverEdge(Lcom/rubensousa/dpadrecyclerview/ParentAlignment;)Z

    move-result p0

    if-eqz p0, :cond_0

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

.method private final shouldAlignToEndEdge(Lcom/rubensousa/dpadrecyclerview/ParentAlignment$Edge;)Z
    .locals 1

    .line 263
    sget-object v0, Lcom/rubensousa/dpadrecyclerview/ParentAlignment$Edge;->MIN_MAX:Lcom/rubensousa/dpadrecyclerview/ParentAlignment$Edge;

    if-eq p1, v0, :cond_1

    invoke-direct {p0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->isEndEdge(Lcom/rubensousa/dpadrecyclerview/ParentAlignment$Edge;)Z

    move-result p0

    if-eqz p0, :cond_0

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

.method private final shouldAlignToStartEdge(Lcom/rubensousa/dpadrecyclerview/ParentAlignment$Edge;)Z
    .locals 1

    .line 259
    sget-object v0, Lcom/rubensousa/dpadrecyclerview/ParentAlignment$Edge;->MIN_MAX:Lcom/rubensousa/dpadrecyclerview/ParentAlignment$Edge;

    if-eq p1, v0, :cond_1

    invoke-direct {p0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->isStartEdge(Lcom/rubensousa/dpadrecyclerview/ParentAlignment$Edge;)Z

    move-result p0

    if-eqz p0, :cond_0

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

.method private final shouldAlignViewToEnd(IILcom/rubensousa/dpadrecyclerview/ParentAlignment;)Z
    .locals 3

    .line 204
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->isEndUnknown()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p3}, Lcom/rubensousa/dpadrecyclerview/ParentAlignment;->getEdge()Lcom/rubensousa/dpadrecyclerview/ParentAlignment$Edge;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->shouldAlignToEndEdge(Lcom/rubensousa/dpadrecyclerview/ParentAlignment$Edge;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 207
    :cond_0
    invoke-direct {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->isLayoutComplete()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 208
    invoke-direct {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->getLayoutAbsoluteEnd()I

    move-result p3

    add-int/2addr p1, p3

    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->endEdge:I

    add-int/2addr p0, p2

    if-lt p1, p0, :cond_1

    move v1, v2

    :cond_1
    return v1

    .line 210
    :cond_2
    invoke-direct {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->isLayoutStartKnown()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0, p3}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->preferKeylineOverEdge(Lcom/rubensousa/dpadrecyclerview/ParentAlignment;)Z

    move-result p0

    if-nez p0, :cond_3

    move v1, v2

    :cond_3
    :goto_0
    return v1
.end method

.method private final shouldAlignViewToStart(IILcom/rubensousa/dpadrecyclerview/ParentAlignment;)Z
    .locals 3

    .line 190
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->isStartUnknown()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p3}, Lcom/rubensousa/dpadrecyclerview/ParentAlignment;->getEdge()Lcom/rubensousa/dpadrecyclerview/ParentAlignment$Edge;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->shouldAlignToStartEdge(Lcom/rubensousa/dpadrecyclerview/ParentAlignment$Edge;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 193
    :cond_0
    invoke-direct {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->isLayoutComplete()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 194
    invoke-direct {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->getLayoutAbsoluteStart()I

    move-result p3

    add-int/2addr p1, p3

    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->startEdge:I

    add-int/2addr p0, p2

    if-gt p1, p0, :cond_1

    move v1, v2

    :cond_1
    return v1

    .line 196
    :cond_2
    invoke-direct {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->isLayoutStartKnown()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0, p3}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->preferKeylineOverEdge(Lcom/rubensousa/dpadrecyclerview/ParentAlignment;)Z

    move-result p0

    if-nez p0, :cond_3

    move v1, v2

    :cond_3
    :goto_0
    return v1
.end method


# virtual methods
.method public final calculateKeyline(Lcom/rubensousa/dpadrecyclerview/ParentAlignment;)I
    .locals 2

    const-string v0, "alignment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->reverseLayout:Z

    if-nez v0, :cond_1

    .line 170
    invoke-virtual {p1}, Lcom/rubensousa/dpadrecyclerview/ParentAlignment;->isFractionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->size:I

    int-to-float p0, p0

    .line 171
    invoke-virtual {p1}, Lcom/rubensousa/dpadrecyclerview/ParentAlignment;->getFraction()F

    move-result v0

    mul-float/2addr p0, v0

    float-to-int p0, p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 173
    :goto_0
    invoke-virtual {p1}, Lcom/rubensousa/dpadrecyclerview/ParentAlignment;->getOffset()I

    move-result p1

    add-int/2addr p0, p1

    goto :goto_2

    .line 175
    :cond_1
    invoke-virtual {p1}, Lcom/rubensousa/dpadrecyclerview/ParentAlignment;->isFractionEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->size:I

    int-to-float p0, p0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 176
    invoke-virtual {p1}, Lcom/rubensousa/dpadrecyclerview/ParentAlignment;->getFraction()F

    move-result v1

    sub-float/2addr v0, v1

    mul-float/2addr p0, v0

    float-to-int p0, p0

    .line 177
    invoke-virtual {p1}, Lcom/rubensousa/dpadrecyclerview/ParentAlignment;->getOffset()I

    move-result p1

    goto :goto_1

    :cond_2
    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->size:I

    .line 179
    invoke-virtual {p1}, Lcom/rubensousa/dpadrecyclerview/ParentAlignment;->getOffset()I

    move-result p1

    :goto_1
    sub-int/2addr p0, p1

    :goto_2
    return p0
.end method

.method public final calculateScrollOffset(ILcom/rubensousa/dpadrecyclerview/ParentAlignment;)I
    .locals 3

    const-string v0, "alignment"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0, p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->calculateKeyline(Lcom/rubensousa/dpadrecyclerview/ParentAlignment;)I

    move-result v0

    .line 147
    invoke-direct {p0, p1, v0, p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->shouldAlignViewToStart(IILcom/rubensousa/dpadrecyclerview/ParentAlignment;)Z

    move-result v1

    .line 148
    invoke-direct {p0, p1, v0, p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->shouldAlignViewToEnd(IILcom/rubensousa/dpadrecyclerview/ParentAlignment;)Z

    move-result p2

    iget-boolean v2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->reverseLayout:Z

    if-nez v2, :cond_1

    if-eqz v1, :cond_0

    iget p2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->startScrollLimit:I

    .line 151
    invoke-direct {p0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->calculateScrollOffsetToStartEdge(I)I

    move-result p0

    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_0
    if-eqz p2, :cond_3

    iget p2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->endScrollLimit:I

    .line 154
    invoke-direct {p0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->calculateScrollOffsetToEndEdge(I)I

    move-result p0

    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_1
    if-eqz p2, :cond_2

    iget p2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->endScrollLimit:I

    .line 158
    invoke-direct {p0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->calculateScrollOffsetToEndEdge(I)I

    move-result p0

    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_2
    if-eqz v1, :cond_3

    iget p2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->startScrollLimit:I

    .line 161
    invoke-direct {p0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->calculateScrollOffsetToStartEdge(I)I

    move-result p0

    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    .line 164
    :cond_3
    invoke-direct {p0, p1, v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->calculateScrollOffsetToKeyline(II)I

    move-result p0

    return p0
.end method

.method public final getEndScrollLimit()I
    .locals 0

    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->endScrollLimit:I

    return p0
.end method

.method public final getStartScrollLimit()I
    .locals 0

    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->startScrollLimit:I

    return p0
.end method

.method public final invalidateEndLimit()V
    .locals 1

    const v0, 0x7fffffff

    iput v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->endEdge:I

    iput v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->endScrollLimit:I

    return-void
.end method

.method public final invalidateScrollLimits()V
    .locals 0

    .line 71
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->invalidateStartLimit()V

    .line 72
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->invalidateEndLimit()V

    return-void
.end method

.method public final invalidateStartLimit()V
    .locals 1

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->startEdge:I

    iput v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->startScrollLimit:I

    return-void
.end method

.method public final isEndUnknown()Z
    .locals 1

    iget v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->endEdge:I

    .line 31
    invoke-virtual {p0, v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->isScrollLimitInvalid(I)Z

    move-result p0

    return p0
.end method

.method public final isScrollLimitInvalid(I)Z
    .locals 0

    const/high16 p0, -0x80000000

    if-eq p1, p0, :cond_1

    const p0, 0x7fffffff

    if-ne p1, p0, :cond_0

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

.method public final isStartUnknown()Z
    .locals 1

    iget v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->startEdge:I

    .line 28
    invoke-virtual {p0, v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->isScrollLimitInvalid(I)Z

    move-result p0

    return p0
.end method

.method public final updateLayoutInfo(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;ZZ)V
    .locals 1

    const-string v0, "layoutManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 52
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v0

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->size:I

    iput-boolean p3, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->reverseLayout:Z

    if-eqz p2, :cond_1

    .line 58
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result p2

    iput p2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->paddingStart:I

    .line 59
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result p1

    iput p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->paddingEnd:I

    goto :goto_1

    .line 61
    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingStart()I

    move-result p2

    iput p2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->paddingStart:I

    .line 62
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingEnd()I

    move-result p1

    iput p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->paddingEnd:I

    :goto_1
    return-void
.end method

.method public final updateScrollLimits(IIIILcom/rubensousa/dpadrecyclerview/ParentAlignment;)V
    .locals 3

    const-string v0, "alignment"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->startEdge:I

    iput p2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->endEdge:I

    .line 94
    invoke-virtual {p0, p5}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->calculateKeyline(Lcom/rubensousa/dpadrecyclerview/ParentAlignment;)I

    move-result v0

    .line 96
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->isStartUnknown()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/high16 p1, -0x80000000

    goto :goto_0

    .line 97
    :cond_0
    invoke-direct {p0, p3, v0, p5}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->shouldAlignViewToStart(IILcom/rubensousa/dpadrecyclerview/ParentAlignment;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    invoke-direct {p0, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->calculateScrollOffsetToStartEdge(I)I

    move-result p1

    goto :goto_0

    .line 101
    :cond_1
    invoke-direct {p0, p5}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->shouldAlignStartToKeyline(Lcom/rubensousa/dpadrecyclerview/ParentAlignment;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 102
    invoke-direct {p0, p3, v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->calculateScrollOffsetToKeyline(II)I

    move-result p1

    goto :goto_0

    :cond_2
    move p1, v2

    :goto_0
    iput p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->startScrollLimit:I

    .line 108
    invoke-virtual {p0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->isEndUnknown()Z

    move-result p1

    if-eqz p1, :cond_3

    const v2, 0x7fffffff

    goto :goto_1

    .line 109
    :cond_3
    invoke-direct {p0, p4, v0, p5}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->shouldAlignViewToEnd(IILcom/rubensousa/dpadrecyclerview/ParentAlignment;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 110
    invoke-direct {p0, p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->calculateScrollOffsetToEndEdge(I)I

    move-result v2

    goto :goto_1

    .line 113
    :cond_4
    invoke-direct {p0, p5}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->shouldAlignEndToKeyline(Lcom/rubensousa/dpadrecyclerview/ParentAlignment;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 114
    invoke-direct {p0, p4, v0}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->calculateScrollOffsetToKeyline(II)I

    move-result v2

    :cond_5
    :goto_1
    iput v2, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/alignment/ParentAlignmentCalculator;->endScrollLimit:I

    return-void
.end method
