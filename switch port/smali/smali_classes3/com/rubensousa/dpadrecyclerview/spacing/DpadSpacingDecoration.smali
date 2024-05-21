.class public abstract Lcom/rubensousa/dpadrecyclerview/spacing/DpadSpacingDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "DpadSpacingDecoration.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008&\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J&\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eJ0\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u000b\u001a\u00020\u00112\u0006\u0010\r\u001a\u00020\u000eH&J\u0010\u0010\u0012\u001a\u00020\u00062\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004J\u0018\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0010H\u0002R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/rubensousa/dpadrecyclerview/spacing/DpadSpacingDecoration;",
        "Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;",
        "()V",
        "spacingLookup",
        "Lcom/rubensousa/dpadrecyclerview/spacing/DpadSpacingLookup;",
        "getItemOffsets",
        "",
        "outRect",
        "Landroid/graphics/Rect;",
        "view",
        "Landroid/view/View;",
        "parent",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "state",
        "Landroidx/recyclerview/widget/RecyclerView$State;",
        "layoutPosition",
        "",
        "Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;",
        "setSpacingLookup",
        "shouldApplySpacingForViewHolder",
        "",
        "viewHolder",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "itemCount",
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
.field private spacingLookup:Lcom/rubensousa/dpadrecyclerview/spacing/DpadSpacingLookup;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method

.method private final shouldApplySpacingForViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)Z
    .locals 0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/spacing/DpadSpacingDecoration;->spacingLookup:Lcom/rubensousa/dpadrecyclerview/spacing/DpadSpacingLookup;

    if-eqz p0, :cond_0

    .line 83
    invoke-interface {p0, p1, p2}, Lcom/rubensousa/dpadrecyclerview/spacing/DpadSpacingLookup;->shouldApplySpacing(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method


# virtual methods
.method public abstract getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;ILcom/rubensousa/dpadrecyclerview/DpadRecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
.end method

.method public final getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 7

    const-string v0, "outRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView.LayoutParams"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 58
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v4

    .line 59
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 60
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/rubensousa/dpadrecyclerview/spacing/DpadSpacingDecoration;->shouldApplySpacingForViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    move-object v5, p3

    check-cast v5, Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/rubensousa/dpadrecyclerview/spacing/DpadSpacingDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;ILcom/rubensousa/dpadrecyclerview/DpadRecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    :goto_0
    return-void
.end method

.method public final setSpacingLookup(Lcom/rubensousa/dpadrecyclerview/spacing/DpadSpacingLookup;)V
    .locals 0

    iput-object p1, p0, Lcom/rubensousa/dpadrecyclerview/spacing/DpadSpacingDecoration;->spacingLookup:Lcom/rubensousa/dpadrecyclerview/spacing/DpadSpacingLookup;

    return-void
.end method
