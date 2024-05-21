.class public final Lcom/rubensousa/dpadrecyclerview/spacing/DpadGridSpacingDecoration;
.super Lcom/rubensousa/dpadrecyclerview/spacing/DpadSpacingDecoration;
.source "DpadGridSpacingDecoration.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rubensousa/dpadrecyclerview/spacing/DpadGridSpacingDecoration$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001bB%\u0008\u0002\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0006J@\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000fH\u0002J@\u0010\u0012\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000fH\u0002J0\u0010\u0013\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0016R\u000e\u0010\u0005\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/rubensousa/dpadrecyclerview/spacing/DpadGridSpacingDecoration;",
        "Lcom/rubensousa/dpadrecyclerview/spacing/DpadSpacingDecoration;",
        "itemSpacing",
        "",
        "perpendicularItemSpacing",
        "edgeSpacing",
        "(III)V",
        "applyHorizontally",
        "",
        "outRect",
        "Landroid/graphics/Rect;",
        "spanIndex",
        "spanSize",
        "spanCount",
        "isAtStartEdge",
        "",
        "isAtEndEdge",
        "reverseLayout",
        "applyVertically",
        "getItemOffsets",
        "view",
        "Landroid/view/View;",
        "layoutPosition",
        "parent",
        "Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;",
        "state",
        "Landroidx/recyclerview/widget/RecyclerView$State;",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/rubensousa/dpadrecyclerview/spacing/DpadGridSpacingDecoration$Companion;


# instance fields
.field private final edgeSpacing:I

.field private final itemSpacing:I

.field private final perpendicularItemSpacing:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/rubensousa/dpadrecyclerview/spacing/DpadGridSpacingDecoration$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/rubensousa/dpadrecyclerview/spacing/DpadGridSpacingDecoration$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/rubensousa/dpadrecyclerview/spacing/DpadGridSpacingDecoration;->Companion:Lcom/rubensousa/dpadrecyclerview/spacing/DpadGridSpacingDecoration$Companion;

    return-void
.end method

.method private constructor <init>(III)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/rubensousa/dpadrecyclerview/spacing/DpadSpacingDecoration;-><init>()V

    iput p1, p0, Lcom/rubensousa/dpadrecyclerview/spacing/DpadGridSpacingDecoration;->itemSpacing:I

    iput p2, p0, Lcom/rubensousa/dpadrecyclerview/spacing/DpadGridSpacingDecoration;->perpendicularItemSpacing:I

    iput p3, p0, Lcom/rubensousa/dpadrecyclerview/spacing/DpadGridSpacingDecoration;->edgeSpacing:I

    return-void
.end method

.method public synthetic constructor <init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/rubensousa/dpadrecyclerview/spacing/DpadGridSpacingDecoration;-><init>(III)V

    return-void
.end method

.method private final applyHorizontally(Landroid/graphics/Rect;IIIZZZ)V
    .locals 2

    sub-int v0, p4, p2

    add-int/2addr p2, p3

    iget p3, p0, Lcom/rubensousa/dpadrecyclerview/spacing/DpadGridSpacingDecoration;->itemSpacing:I

    int-to-float v1, p3

    int-to-float v0, v0

    int-to-float p4, p4

    div-float/2addr v0, p4

    mul-float/2addr v1, v0

    int-to-float p3, p3

    int-to-float p2, p2

    div-float/2addr p2, p4

    mul-float/2addr p3, p2

    float-to-int p2, v1

    .line 149
    iput p2, p1, Landroid/graphics/Rect;->top:I

    float-to-int p2, p3

    .line 150
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    if-eqz p5, :cond_1

    if-nez p7, :cond_0

    iget p2, p0, Lcom/rubensousa/dpadrecyclerview/spacing/DpadGridSpacingDecoration;->edgeSpacing:I

    .line 154
    iput p2, p1, Landroid/graphics/Rect;->left:I

    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/spacing/DpadGridSpacingDecoration;->perpendicularItemSpacing:I

    .line 155
    iput p0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/rubensousa/dpadrecyclerview/spacing/DpadGridSpacingDecoration;->edgeSpacing:I

    .line 157
    iput p2, p1, Landroid/graphics/Rect;->right:I

    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/spacing/DpadGridSpacingDecoration;->perpendicularItemSpacing:I

    .line 158
    iput p0, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_1
    if-eqz p6, :cond_3

    if-nez p7, :cond_2

    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/spacing/DpadGridSpacingDecoration;->edgeSpacing:I

    .line 162
    iput p0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_2
    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/spacing/DpadGridSpacingDecoration;->edgeSpacing:I

    .line 164
    iput p0, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_3
    if-nez p7, :cond_4

    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/spacing/DpadGridSpacingDecoration;->perpendicularItemSpacing:I

    .line 167
    iput p0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_4
    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/spacing/DpadGridSpacingDecoration;->perpendicularItemSpacing:I

    .line 169
    iput p0, p1, Landroid/graphics/Rect;->left:I

    :goto_0
    return-void
.end method

.method private final applyVertically(Landroid/graphics/Rect;IIIZZZ)V
    .locals 2

    sub-int v0, p4, p2

    add-int/2addr p2, p3

    iget p3, p0, Lcom/rubensousa/dpadrecyclerview/spacing/DpadGridSpacingDecoration;->itemSpacing:I

    int-to-float v1, p3

    int-to-float v0, v0

    int-to-float p4, p4

    div-float/2addr v0, p4

    mul-float/2addr v1, v0

    int-to-float p3, p3

    int-to-float p2, p2

    div-float/2addr p2, p4

    mul-float/2addr p3, p2

    float-to-int p2, v1

    .line 111
    iput p2, p1, Landroid/graphics/Rect;->left:I

    float-to-int p2, p3

    .line 112
    iput p2, p1, Landroid/graphics/Rect;->right:I

    if-eqz p5, :cond_1

    if-nez p7, :cond_0

    iget p2, p0, Lcom/rubensousa/dpadrecyclerview/spacing/DpadGridSpacingDecoration;->edgeSpacing:I

    .line 116
    iput p2, p1, Landroid/graphics/Rect;->top:I

    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/spacing/DpadGridSpacingDecoration;->perpendicularItemSpacing:I

    .line 117
    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/rubensousa/dpadrecyclerview/spacing/DpadGridSpacingDecoration;->edgeSpacing:I

    .line 119
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/spacing/DpadGridSpacingDecoration;->perpendicularItemSpacing:I

    .line 120
    iput p0, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_1
    if-eqz p6, :cond_3

    if-nez p7, :cond_2

    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/spacing/DpadGridSpacingDecoration;->edgeSpacing:I

    .line 124
    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_2
    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/spacing/DpadGridSpacingDecoration;->edgeSpacing:I

    .line 126
    iput p0, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_3
    if-nez p7, :cond_4

    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/spacing/DpadGridSpacingDecoration;->perpendicularItemSpacing:I

    .line 129
    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_4
    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/spacing/DpadGridSpacingDecoration;->perpendicularItemSpacing:I

    .line 131
    iput p0, p1, Landroid/graphics/Rect;->top:I

    :goto_0
    return-void
.end method

.method public static final create(III)Lcom/rubensousa/dpadrecyclerview/spacing/DpadGridSpacingDecoration;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/rubensousa/dpadrecyclerview/spacing/DpadGridSpacingDecoration;->Companion:Lcom/rubensousa/dpadrecyclerview/spacing/DpadGridSpacingDecoration$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/rubensousa/dpadrecyclerview/spacing/DpadGridSpacingDecoration$Companion;->create(III)Lcom/rubensousa/dpadrecyclerview/spacing/DpadGridSpacingDecoration;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;ILcom/rubensousa/dpadrecyclerview/DpadRecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 10

    const-string v0, "outRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    const-string v0, "null cannot be cast to non-null type com.rubensousa.dpadrecyclerview.layoutmanager.DpadLayoutParams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/rubensousa/dpadrecyclerview/layoutmanager/DpadLayoutParams;

    .line 68
    invoke-virtual {p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/DpadLayoutParams;->getSpanIndex()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 73
    :cond_0
    invoke-virtual {p4}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->getSpanCount()I

    move-result v6

    .line 74
    invoke-virtual {p4}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->isLayoutReversed()Z

    move-result v9

    .line 75
    invoke-virtual {p5}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p5

    .line 76
    invoke-virtual {p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/DpadLayoutParams;->getSpanSize()I

    move-result v5

    if-nez v9, :cond_1

    move v4, v0

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v6, -0x1

    sub-int/2addr v1, v0

    move v4, v1

    .line 83
    :goto_0
    invoke-virtual {p2}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/DpadLayoutParams;->getSpanGroupIndex()I

    move-result p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p2, :cond_2

    move v7, v2

    goto :goto_1

    :cond_2
    move v7, v1

    :goto_1
    sub-int p2, v6, v0

    sub-int/2addr p2, v5

    add-int/2addr p3, p2

    sub-int/2addr p5, v2

    if-lt p3, p5, :cond_3

    move v8, v2

    goto :goto_2

    :cond_3
    move v8, v1

    .line 86
    :goto_2
    invoke-virtual {p4}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->getOrientation()I

    move-result p2

    if-ne p2, v2, :cond_4

    move-object v2, p0

    move-object v3, p1

    .line 87
    invoke-direct/range {v2 .. v9}, Lcom/rubensousa/dpadrecyclerview/spacing/DpadGridSpacingDecoration;->applyVertically(Landroid/graphics/Rect;IIIZZZ)V

    goto :goto_3

    :cond_4
    move-object v2, p0

    move-object v3, p1

    .line 91
    invoke-direct/range {v2 .. v9}, Lcom/rubensousa/dpadrecyclerview/spacing/DpadGridSpacingDecoration;->applyHorizontally(Landroid/graphics/Rect;IIIZZZ)V

    :goto_3
    return-void
.end method
