.class public final Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDispatcher$AddFocusableChildrenRequest;
.super Ljava/lang/Object;
.source "FocusDispatcher.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AddFocusableChildrenRequest"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J(\u0010\u001a\u001a\u00020\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\nR\u001e\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0006@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u001e\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0005\u001a\u00020\n@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\"\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u000e@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u001e\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0006@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\tR\u001e\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0006@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\tR\u001e\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0006@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\tR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0006@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\t\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDispatcher$AddFocusableChildrenRequest;",
        "",
        "layoutInfo",
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;",
        "(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;)V",
        "<set-?>",
        "",
        "end",
        "getEnd",
        "()I",
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;",
        "focusDirection",
        "getFocusDirection",
        "()Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;",
        "Landroid/view/View;",
        "focused",
        "getFocused",
        "()Landroid/view/View;",
        "focusedAdapterPosition",
        "getFocusedAdapterPosition",
        "focusedSpanIndex",
        "getFocusedSpanIndex",
        "increment",
        "getIncrement",
        "start",
        "getStart",
        "update",
        "",
        "focusedChild",
        "focusedChildIndex",
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
.field private end:I

.field private focusDirection:Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;

.field private focused:Landroid/view/View;

.field private focusedAdapterPosition:I

.field private focusedSpanIndex:I

.field private increment:I

.field private final layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

.field private start:I


# direct methods
.method public constructor <init>(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;)V
    .locals 1

    const-string v0, "layoutInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDispatcher$AddFocusableChildrenRequest;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    const/4 p1, 0x1

    iput p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDispatcher$AddFocusableChildrenRequest;->increment:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDispatcher$AddFocusableChildrenRequest;->focusedAdapterPosition:I

    .line 469
    sget-object v0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;->NEXT_ITEM:Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;

    iput-object v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDispatcher$AddFocusableChildrenRequest;->focusDirection:Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;

    iput p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDispatcher$AddFocusableChildrenRequest;->focusedSpanIndex:I

    return-void
.end method


# virtual methods
.method public final getEnd()I
    .locals 0

    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDispatcher$AddFocusableChildrenRequest;->end:I

    return p0
.end method

.method public final getFocusDirection()Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;
    .locals 0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDispatcher$AddFocusableChildrenRequest;->focusDirection:Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;

    return-object p0
.end method

.method public final getFocused()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDispatcher$AddFocusableChildrenRequest;->focused:Landroid/view/View;

    return-object p0
.end method

.method public final getFocusedAdapterPosition()I
    .locals 0

    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDispatcher$AddFocusableChildrenRequest;->focusedAdapterPosition:I

    return p0
.end method

.method public final getFocusedSpanIndex()I
    .locals 0

    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDispatcher$AddFocusableChildrenRequest;->focusedSpanIndex:I

    return p0
.end method

.method public final getIncrement()I
    .locals 0

    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDispatcher$AddFocusableChildrenRequest;->increment:I

    return p0
.end method

.method public final getStart()I
    .locals 0

    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDispatcher$AddFocusableChildrenRequest;->start:I

    return p0
.end method

.method public final update(Landroid/view/View;IILcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;)V
    .locals 1

    const-string v0, "focusDirection"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDispatcher$AddFocusableChildrenRequest;->focused:Landroid/view/View;

    iput p3, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDispatcher$AddFocusableChildrenRequest;->focusedAdapterPosition:I

    iput-object p4, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDispatcher$AddFocusableChildrenRequest;->focusDirection:Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDispatcher$AddFocusableChildrenRequest;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 485
    invoke-virtual {p1, p3}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getStartSpanIndex(I)I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iput p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDispatcher$AddFocusableChildrenRequest;->focusedSpanIndex:I

    .line 490
    sget-object p1, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;->NEXT_ITEM:Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;

    const/4 p3, 0x1

    if-eq p4, p1, :cond_2

    .line 491
    sget-object p1, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;->NEXT_COLUMN:Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;

    if-ne p4, p1, :cond_1

    goto :goto_1

    :cond_1
    move p1, v0

    goto :goto_2

    :cond_2
    :goto_1
    move p1, p3

    :goto_2
    iput p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDispatcher$AddFocusableChildrenRequest;->increment:I

    iget-object p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDispatcher$AddFocusableChildrenRequest;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 497
    invoke-virtual {p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->shouldReverseLayout()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 498
    sget-object p1, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;->NEXT_ITEM:Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;

    if-eq p4, p1, :cond_3

    .line 499
    sget-object p1, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;->PREVIOUS_ITEM:Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDirection;

    if-ne p4, p1, :cond_4

    :cond_3
    iget p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDispatcher$AddFocusableChildrenRequest;->increment:I

    mul-int/2addr p1, v0

    iput p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDispatcher$AddFocusableChildrenRequest;->increment:I

    :cond_4
    iget p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDispatcher$AddFocusableChildrenRequest;->increment:I

    const/4 p4, 0x0

    if-lez p1, :cond_5

    iget-object p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDispatcher$AddFocusableChildrenRequest;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 504
    invoke-virtual {p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getChildCount()I

    move-result p1

    sub-int/2addr p1, p3

    goto :goto_3

    :cond_5
    move p1, p4

    :goto_3
    iput p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDispatcher$AddFocusableChildrenRequest;->end:I

    if-ne p2, v0, :cond_7

    iget p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDispatcher$AddFocusableChildrenRequest;->increment:I

    if-lez p1, :cond_6

    goto :goto_4

    :cond_6
    iget-object p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDispatcher$AddFocusableChildrenRequest;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 512
    invoke-virtual {p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->getChildCount()I

    move-result p1

    add-int/lit8 p4, p1, -0x1

    goto :goto_4

    :cond_7
    iget-object p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDispatcher$AddFocusableChildrenRequest;->layoutInfo:Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;

    .line 514
    invoke-virtual {p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutInfo;->shouldReverseLayout()Z

    move-result p1

    if-eqz p1, :cond_8

    iget p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDispatcher$AddFocusableChildrenRequest;->increment:I

    sub-int p4, p2, p1

    goto :goto_4

    :cond_8
    iget p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDispatcher$AddFocusableChildrenRequest;->increment:I

    add-int p4, p2, p1

    :goto_4
    iput p4, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/focus/FocusDispatcher$AddFocusableChildrenRequest;->start:I

    return-void
.end method
