.class public Ltech/rabbit/r1launcher/widget/FocusKeepRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "FocusKeepRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltech/rabbit/r1launcher/widget/FocusKeepRecyclerView$FocusLostListener;,
        Ltech/rabbit/r1launcher/widget/FocusKeepRecyclerView$FocusGainListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FocusKeepRecyclerView"


# instance fields
.field private mCanFocusOutHorizontal:Z

.field private mCanFocusOutVertical:Z

.field private mCurrentFocusPosition:I

.field private mFocusGainListener:Ltech/rabbit/r1launcher/widget/FocusKeepRecyclerView$FocusGainListener;

.field private mFocusLostListener:Ltech/rabbit/r1launcher/widget/FocusKeepRecyclerView$FocusLostListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, v0}, Ltech/rabbit/r1launcher/widget/FocusKeepRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, p2, v0}, Ltech/rabbit/r1launcher/widget/FocusKeepRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Ltech/rabbit/r1launcher/widget/FocusKeepRecyclerView;->mCanFocusOutVertical:Z

    iput-boolean p1, p0, Ltech/rabbit/r1launcher/widget/FocusKeepRecyclerView;->mCanFocusOutHorizontal:Z

    const/4 p2, 0x0

    iput p2, p0, Ltech/rabbit/r1launcher/widget/FocusKeepRecyclerView;->mCurrentFocusPosition:I

    const/high16 p2, 0x40000

    .line 38
    invoke-virtual {p0, p2}, Ltech/rabbit/r1launcher/widget/FocusKeepRecyclerView;->setDescendantFocusability(I)V

    .line 39
    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/widget/FocusKeepRecyclerView;->setChildrenDrawingOrderEnabled(Z)V

    const/4 p2, 0x0

    .line 40
    invoke-virtual {p0, p2}, Ltech/rabbit/r1launcher/widget/FocusKeepRecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 41
    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/widget/FocusKeepRecyclerView;->setFocusable(Z)V

    return-void
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .line 132
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/FocusKeepRecyclerView;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Ltech/rabbit/r1launcher/widget/FocusKeepRecyclerView;->mCurrentFocusPosition:I

    if-ltz v0, :cond_2

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/FocusKeepRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    iget v1, p0, Ltech/rabbit/r1launcher/widget/FocusKeepRecyclerView;->mCurrentFocusPosition:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 134
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->isFocusable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 136
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 138
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_1

    .line 133
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->addFocusables(Ljava/util/ArrayList;II)V

    :goto_1
    return-void
.end method

.method public focusSearch(I)Landroid/view/View;
    .locals 0

    .line 63
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->focusSearch(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 3

    sget-object v0, Ltech/rabbit/r1launcher/widget/FocusKeepRecyclerView;->TAG:Ljava/lang/String;

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "focusSearch "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",direction= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    if-eqz v0, :cond_5

    .line 77
    invoke-virtual {p0, v0}, Ltech/rabbit/r1launcher/widget/FocusKeepRecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_5

    iget-boolean v1, p0, Ltech/rabbit/r1launcher/widget/FocusKeepRecyclerView;->mCanFocusOutVertical:Z

    if-nez v1, :cond_2

    const/16 v1, 0x82

    if-eq p2, v1, :cond_1

    const/16 v1, 0x21

    if-ne p2, v1, :cond_2

    :cond_1
    return-object p1

    :cond_2
    iget-boolean v1, p0, Ltech/rabbit/r1launcher/widget/FocusKeepRecyclerView;->mCanFocusOutHorizontal:Z

    if-nez v1, :cond_4

    const/16 v1, 0x11

    if-eq p2, v1, :cond_3

    const/16 v1, 0x42

    if-ne p2, v1, :cond_4

    :cond_3
    return-object p1

    :cond_4
    iget-object p0, p0, Ltech/rabbit/r1launcher/widget/FocusKeepRecyclerView;->mFocusLostListener:Ltech/rabbit/r1launcher/widget/FocusKeepRecyclerView$FocusLostListener;

    if-eqz p0, :cond_5

    .line 89
    invoke-interface {p0, p1, p2}, Ltech/rabbit/r1launcher/widget/FocusKeepRecyclerView$FocusLostListener;->onFocusLost(Landroid/view/View;I)V

    :cond_5
    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 4

    .line 152
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/FocusKeepRecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    sget-object v1, Ltech/rabbit/r1launcher/widget/FocusKeepRecyclerView;->TAG:Ljava/lang/String;

    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "focusedChild ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    .line 155
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildDrawingOrder(II)I

    move-result p0

    return p0

    .line 157
    :cond_0
    invoke-virtual {p0, v0}, Ltech/rabbit/r1launcher/widget/FocusKeepRecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result p0

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " index = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",i="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",count="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 p1, p1, -0x1

    if-ne p2, p1, :cond_1

    return p0

    :cond_1
    if-ge p2, p0, :cond_2

    return p2

    :cond_2
    add-int/lit8 p2, p2, 0x1

    return p2
.end method

.method public isCanFocusOutHorizontal()Z
    .locals 0

    iget-boolean p0, p0, Ltech/rabbit/r1launcher/widget/FocusKeepRecyclerView;->mCanFocusOutHorizontal:Z

    return p0
.end method

.method public isCanFocusOutVertical()Z
    .locals 0

    iget-boolean p0, p0, Ltech/rabbit/r1launcher/widget/FocusKeepRecyclerView;->mCanFocusOutVertical:Z

    return p0
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 3

    sget-object v0, Ltech/rabbit/r1launcher/widget/FocusKeepRecyclerView;->TAG:Ljava/lang/String;

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "nextchild= "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",focused = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/widget/FocusKeepRecyclerView;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Ltech/rabbit/r1launcher/widget/FocusKeepRecyclerView;->mFocusGainListener:Ltech/rabbit/r1launcher/widget/FocusKeepRecyclerView$FocusGainListener;

    if-eqz v1, :cond_0

    .line 120
    invoke-interface {v1, p1, p2}, Ltech/rabbit/r1launcher/widget/FocusKeepRecyclerView$FocusGainListener;->onFocusGain(Landroid/view/View;Landroid/view/View;)V

    .line 123
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 124
    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/widget/FocusKeepRecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    iput p1, p0, Ltech/rabbit/r1launcher/widget/FocusKeepRecyclerView;->mCurrentFocusPosition:I

    .line 125
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "focusPos = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Ltech/rabbit/r1launcher/widget/FocusKeepRecyclerView;->mCurrentFocusPosition:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setCanFocusOutHorizontal(Z)V
    .locals 0

    iput-boolean p1, p0, Ltech/rabbit/r1launcher/widget/FocusKeepRecyclerView;->mCanFocusOutHorizontal:Z

    return-void
.end method

.method public setCanFocusOutVertical(Z)V
    .locals 0

    iput-boolean p1, p0, Ltech/rabbit/r1launcher/widget/FocusKeepRecyclerView;->mCanFocusOutVertical:Z

    return-void
.end method

.method public setFocusLostListener(Ltech/rabbit/r1launcher/widget/FocusKeepRecyclerView$FocusLostListener;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/widget/FocusKeepRecyclerView;->mFocusLostListener:Ltech/rabbit/r1launcher/widget/FocusKeepRecyclerView$FocusLostListener;

    return-void
.end method

.method public setGainFocusListener(Ltech/rabbit/r1launcher/widget/FocusKeepRecyclerView$FocusGainListener;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/widget/FocusKeepRecyclerView;->mFocusGainListener:Ltech/rabbit/r1launcher/widget/FocusKeepRecyclerView$FocusGainListener;

    return-void
.end method
