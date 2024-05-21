.class public final Lcom/rubensousa/dpadrecyclerview/spacing/DpadLinearSpacingDecoration;
.super Lcom/rubensousa/dpadrecyclerview/spacing/DpadSpacingDecoration;
.source "DpadLinearSpacingDecoration.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rubensousa/dpadrecyclerview/spacing/DpadLinearSpacingDecoration$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B%\u0008\u0002\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0006J(\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000cH\u0002J(\u0010\u000f\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000cH\u0002J0\u0010\u0010\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0016R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/rubensousa/dpadrecyclerview/spacing/DpadLinearSpacingDecoration;",
        "Lcom/rubensousa/dpadrecyclerview/spacing/DpadSpacingDecoration;",
        "itemSpacing",
        "",
        "edgeSpacing",
        "perpendicularEdgeSpacing",
        "(III)V",
        "applyHorizontally",
        "",
        "outRect",
        "Landroid/graphics/Rect;",
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
.field public static final Companion:Lcom/rubensousa/dpadrecyclerview/spacing/DpadLinearSpacingDecoration$Companion;


# instance fields
.field private final edgeSpacing:I

.field private final itemSpacing:I

.field private final perpendicularEdgeSpacing:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/rubensousa/dpadrecyclerview/spacing/DpadLinearSpacingDecoration$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/rubensousa/dpadrecyclerview/spacing/DpadLinearSpacingDecoration$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/rubensousa/dpadrecyclerview/spacing/DpadLinearSpacingDecoration;->Companion:Lcom/rubensousa/dpadrecyclerview/spacing/DpadLinearSpacingDecoration$Companion;

    return-void
.end method

.method private constructor <init>(III)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/rubensousa/dpadrecyclerview/spacing/DpadSpacingDecoration;-><init>()V

    iput p1, p0, Lcom/rubensousa/dpadrecyclerview/spacing/DpadLinearSpacingDecoration;->itemSpacing:I

    iput p2, p0, Lcom/rubensousa/dpadrecyclerview/spacing/DpadLinearSpacingDecoration;->edgeSpacing:I

    iput p3, p0, Lcom/rubensousa/dpadrecyclerview/spacing/DpadLinearSpacingDecoration;->perpendicularEdgeSpacing:I

    return-void
.end method

.method public synthetic constructor <init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/rubensousa/dpadrecyclerview/spacing/DpadLinearSpacingDecoration;-><init>(III)V

    return-void
.end method

.method private final applyHorizontally(Landroid/graphics/Rect;ZZZ)V
    .locals 1

    iget v0, p0, Lcom/rubensousa/dpadrecyclerview/spacing/DpadLinearSpacingDecoration;->perpendicularEdgeSpacing:I

    .line 120
    iput v0, p1, Landroid/graphics/Rect;->top:I

    iget v0, p0, Lcom/rubensousa/dpadrecyclerview/spacing/DpadLinearSpacingDecoration;->perpendicularEdgeSpacing:I

    .line 121
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    if-eqz p2, :cond_1

    if-nez p4, :cond_0

    iget p2, p0, Lcom/rubensousa/dpadrecyclerview/spacing/DpadLinearSpacingDecoration;->edgeSpacing:I

    .line 125
    iput p2, p1, Landroid/graphics/Rect;->left:I

    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/spacing/DpadLinearSpacingDecoration;->itemSpacing:I

    .line 126
    iput p0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/rubensousa/dpadrecyclerview/spacing/DpadLinearSpacingDecoration;->edgeSpacing:I

    .line 128
    iput p2, p1, Landroid/graphics/Rect;->right:I

    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/spacing/DpadLinearSpacingDecoration;->itemSpacing:I

    .line 129
    iput p0, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_3

    if-nez p4, :cond_2

    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/spacing/DpadLinearSpacingDecoration;->edgeSpacing:I

    .line 133
    iput p0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_2
    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/spacing/DpadLinearSpacingDecoration;->edgeSpacing:I

    .line 135
    iput p0, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_3
    if-nez p4, :cond_4

    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/spacing/DpadLinearSpacingDecoration;->itemSpacing:I

    .line 138
    iput p0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_4
    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/spacing/DpadLinearSpacingDecoration;->itemSpacing:I

    .line 140
    iput p0, p1, Landroid/graphics/Rect;->left:I

    :goto_0
    return-void
.end method

.method private final applyVertically(Landroid/graphics/Rect;ZZZ)V
    .locals 1

    iget v0, p0, Lcom/rubensousa/dpadrecyclerview/spacing/DpadLinearSpacingDecoration;->perpendicularEdgeSpacing:I

    .line 90
    iput v0, p1, Landroid/graphics/Rect;->left:I

    iget v0, p0, Lcom/rubensousa/dpadrecyclerview/spacing/DpadLinearSpacingDecoration;->perpendicularEdgeSpacing:I

    .line 91
    iput v0, p1, Landroid/graphics/Rect;->right:I

    if-eqz p2, :cond_1

    if-nez p4, :cond_0

    iget p2, p0, Lcom/rubensousa/dpadrecyclerview/spacing/DpadLinearSpacingDecoration;->edgeSpacing:I

    .line 95
    iput p2, p1, Landroid/graphics/Rect;->top:I

    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/spacing/DpadLinearSpacingDecoration;->itemSpacing:I

    .line 96
    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/rubensousa/dpadrecyclerview/spacing/DpadLinearSpacingDecoration;->edgeSpacing:I

    .line 98
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/spacing/DpadLinearSpacingDecoration;->itemSpacing:I

    .line 99
    iput p0, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_3

    if-nez p4, :cond_2

    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/spacing/DpadLinearSpacingDecoration;->edgeSpacing:I

    .line 103
    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_2
    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/spacing/DpadLinearSpacingDecoration;->edgeSpacing:I

    .line 105
    iput p0, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_3
    if-nez p4, :cond_4

    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/spacing/DpadLinearSpacingDecoration;->itemSpacing:I

    .line 108
    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_4
    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/spacing/DpadLinearSpacingDecoration;->itemSpacing:I

    .line 110
    iput p0, p1, Landroid/graphics/Rect;->top:I

    :goto_0
    return-void
.end method

.method public static final create(III)Lcom/rubensousa/dpadrecyclerview/spacing/DpadLinearSpacingDecoration;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/rubensousa/dpadrecyclerview/spacing/DpadLinearSpacingDecoration;->Companion:Lcom/rubensousa/dpadrecyclerview/spacing/DpadLinearSpacingDecoration$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/rubensousa/dpadrecyclerview/spacing/DpadLinearSpacingDecoration$Companion;->create(III)Lcom/rubensousa/dpadrecyclerview/spacing/DpadLinearSpacingDecoration;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;ILcom/rubensousa/dpadrecyclerview/DpadRecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 4

    const-string v0, "outRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "parent"

    invoke-static {p4, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "state"

    invoke-static {p5, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p5}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p2

    .line 69
    invoke-virtual {p4}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->isLayoutReversed()Z

    move-result p5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p3, :cond_0

    .line 72
    invoke-virtual {p4}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->getLoopDirection()Lcom/rubensousa/dpadrecyclerview/DpadLoopDirection;

    move-result-object v2

    sget-object v3, Lcom/rubensousa/dpadrecyclerview/DpadLoopDirection;->NONE:Lcom/rubensousa/dpadrecyclerview/DpadLoopDirection;

    if-ne v2, v3, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    sub-int/2addr p2, v1

    if-ne p3, p2, :cond_1

    .line 75
    invoke-virtual {p4}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->getLoopDirection()Lcom/rubensousa/dpadrecyclerview/DpadLoopDirection;

    move-result-object p2

    sget-object p3, Lcom/rubensousa/dpadrecyclerview/DpadLoopDirection;->NONE:Lcom/rubensousa/dpadrecyclerview/DpadLoopDirection;

    if-ne p2, p3, :cond_1

    move v0, v1

    .line 77
    :cond_1
    invoke-virtual {p4}, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;->getOrientation()I

    move-result p2

    if-ne p2, v1, :cond_2

    .line 78
    invoke-direct {p0, p1, v2, v0, p5}, Lcom/rubensousa/dpadrecyclerview/spacing/DpadLinearSpacingDecoration;->applyVertically(Landroid/graphics/Rect;ZZZ)V

    goto :goto_1

    .line 80
    :cond_2
    invoke-direct {p0, p1, v2, v0, p5}, Lcom/rubensousa/dpadrecyclerview/spacing/DpadLinearSpacingDecoration;->applyHorizontally(Landroid/graphics/Rect;ZZZ)V

    :goto_1
    return-void
.end method
