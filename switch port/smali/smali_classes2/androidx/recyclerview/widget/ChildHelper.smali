.class Landroidx/recyclerview/widget/ChildHelper;
.super Ljava/lang/Object;
.source "ChildHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/ChildHelper$Callback;,
        Landroidx/recyclerview/widget/ChildHelper$Bucket;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final REMOVE_STATUS_IN_REMOVE:I = 0x1

.field private static final REMOVE_STATUS_IN_REMOVE_IF_HIDDEN:I = 0x2

.field private static final REMOVE_STATUS_NONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ChildrenHelper"


# instance fields
.field final mBucket:Landroidx/recyclerview/widget/ChildHelper$Bucket;

.field final mCallback:Landroidx/recyclerview/widget/ChildHelper$Callback;

.field final mHiddenViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoveStatus:I

.field private mViewInRemoveView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/ChildHelper$Callback;)V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/recyclerview/widget/ChildHelper;->mRemoveStatus:I

    iput-object p1, p0, Landroidx/recyclerview/widget/ChildHelper;->mCallback:Landroidx/recyclerview/widget/ChildHelper$Callback;

    .line 74
    new-instance p1, Landroidx/recyclerview/widget/ChildHelper$Bucket;

    invoke-direct {p1}, Landroidx/recyclerview/widget/ChildHelper$Bucket;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/ChildHelper;->mBucket:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    .line 75
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/ChildHelper;->mHiddenViews:Ljava/util/List;

    return-void
.end method

.method private getOffset(I)I
    .locals 4

    const/4 v0, -0x1

    if-gez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/ChildHelper;->mCallback:Landroidx/recyclerview/widget/ChildHelper$Callback;

    .line 141
    invoke-interface {v1}, Landroidx/recyclerview/widget/ChildHelper$Callback;->getChildCount()I

    move-result v1

    move v2, p1

    :goto_0
    if-ge v2, v1, :cond_3

    iget-object v3, p0, Landroidx/recyclerview/widget/ChildHelper;->mBucket:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    .line 144
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->countOnesBefore(I)I

    move-result v3

    sub-int v3, v2, v3

    sub-int v3, p1, v3

    if-nez v3, :cond_2

    :goto_1
    iget-object p1, p0, Landroidx/recyclerview/widget/ChildHelper;->mBucket:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    .line 147
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->get(I)Z

    move-result p1

    if-eqz p1, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return v2

    :cond_2
    add-int/2addr v2, v3

    goto :goto_0

    :cond_3
    return v0
.end method

.method private hideViewInternal(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/ChildHelper;->mHiddenViews:Ljava/util/List;

    .line 84
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Landroidx/recyclerview/widget/ChildHelper;->mCallback:Landroidx/recyclerview/widget/ChildHelper$Callback;

    .line 85
    invoke-interface {p0, p1}, Landroidx/recyclerview/widget/ChildHelper$Callback;->onEnteredHiddenState(Landroid/view/View;)V

    return-void
.end method

.method private unhideViewInternal(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/ChildHelper;->mHiddenViews:Ljava/util/List;

    .line 94
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/recyclerview/widget/ChildHelper;->mCallback:Landroidx/recyclerview/widget/ChildHelper$Callback;

    .line 95
    invoke-interface {p0, p1}, Landroidx/recyclerview/widget/ChildHelper$Callback;->onLeftHiddenState(Landroid/view/View;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method addView(Landroid/view/View;IZ)V
    .locals 1

    if-gez p2, :cond_0

    iget-object p2, p0, Landroidx/recyclerview/widget/ChildHelper;->mCallback:Landroidx/recyclerview/widget/ChildHelper$Callback;

    .line 123
    invoke-interface {p2}, Landroidx/recyclerview/widget/ChildHelper$Callback;->getChildCount()I

    move-result p2

    goto :goto_0

    .line 125
    :cond_0
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/ChildHelper;->getOffset(I)I

    move-result p2

    :goto_0
    iget-object v0, p0, Landroidx/recyclerview/widget/ChildHelper;->mBucket:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    .line 127
    invoke-virtual {v0, p2, p3}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->insert(IZ)V

    if-eqz p3, :cond_1

    .line 129
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/ChildHelper;->hideViewInternal(Landroid/view/View;)V

    :cond_1
    iget-object p0, p0, Landroidx/recyclerview/widget/ChildHelper;->mCallback:Landroidx/recyclerview/widget/ChildHelper$Callback;

    .line 131
    invoke-interface {p0, p1, p2}, Landroidx/recyclerview/widget/ChildHelper$Callback;->addView(Landroid/view/View;I)V

    return-void
.end method

.method addView(Landroid/view/View;Z)V
    .locals 1

    const/4 v0, -0x1

    .line 109
    invoke-virtual {p0, p1, v0, p2}, Landroidx/recyclerview/widget/ChildHelper;->addView(Landroid/view/View;IZ)V

    return-void
.end method

.method attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V
    .locals 1

    if-gez p2, :cond_0

    iget-object p2, p0, Landroidx/recyclerview/widget/ChildHelper;->mCallback:Landroidx/recyclerview/widget/ChildHelper$Callback;

    .line 279
    invoke-interface {p2}, Landroidx/recyclerview/widget/ChildHelper$Callback;->getChildCount()I

    move-result p2

    goto :goto_0

    .line 281
    :cond_0
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/ChildHelper;->getOffset(I)I

    move-result p2

    :goto_0
    iget-object v0, p0, Landroidx/recyclerview/widget/ChildHelper;->mBucket:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    .line 283
    invoke-virtual {v0, p2, p4}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->insert(IZ)V

    if-eqz p4, :cond_1

    .line 285
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/ChildHelper;->hideViewInternal(Landroid/view/View;)V

    :cond_1
    iget-object p0, p0, Landroidx/recyclerview/widget/ChildHelper;->mCallback:Landroidx/recyclerview/widget/ChildHelper$Callback;

    .line 287
    invoke-interface {p0, p1, p2, p3}, Landroidx/recyclerview/widget/ChildHelper$Callback;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method detachViewFromParent(I)V
    .locals 1

    .line 330
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/ChildHelper;->getOffset(I)I

    move-result p1

    iget-object v0, p0, Landroidx/recyclerview/widget/ChildHelper;->mBucket:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    .line 331
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->remove(I)Z

    iget-object p0, p0, Landroidx/recyclerview/widget/ChildHelper;->mCallback:Landroidx/recyclerview/widget/ChildHelper$Callback;

    .line 332
    invoke-interface {p0, p1}, Landroidx/recyclerview/widget/ChildHelper$Callback;->detachViewFromParent(I)V

    return-void
.end method

.method findHiddenNonRemovedView(I)Landroid/view/View;
    .locals 5

    iget-object v0, p0, Landroidx/recyclerview/widget/ChildHelper;->mHiddenViews:Ljava/util/List;

    .line 254
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroidx/recyclerview/widget/ChildHelper;->mHiddenViews:Ljava/util/List;

    .line 256
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Landroidx/recyclerview/widget/ChildHelper;->mCallback:Landroidx/recyclerview/widget/ChildHelper$Callback;

    .line 257
    invoke-interface {v3, v2}, Landroidx/recyclerview/widget/ChildHelper$Callback;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 258
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 259
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v4

    if-nez v4, :cond_0

    .line 260
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v3

    if-nez v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method getChildAt(I)Landroid/view/View;
    .locals 0

    .line 228
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/ChildHelper;->getOffset(I)I

    move-result p1

    iget-object p0, p0, Landroidx/recyclerview/widget/ChildHelper;->mCallback:Landroidx/recyclerview/widget/ChildHelper$Callback;

    .line 229
    invoke-interface {p0, p1}, Landroidx/recyclerview/widget/ChildHelper$Callback;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method getChildCount()I
    .locals 1

    iget-object v0, p0, Landroidx/recyclerview/widget/ChildHelper;->mCallback:Landroidx/recyclerview/widget/ChildHelper$Callback;

    .line 301
    invoke-interface {v0}, Landroidx/recyclerview/widget/ChildHelper$Callback;->getChildCount()I

    move-result v0

    iget-object p0, p0, Landroidx/recyclerview/widget/ChildHelper;->mHiddenViews:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method getUnfilteredChildAt(I)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/ChildHelper;->mCallback:Landroidx/recyclerview/widget/ChildHelper$Callback;

    .line 321
    invoke-interface {p0, p1}, Landroidx/recyclerview/widget/ChildHelper$Callback;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method getUnfilteredChildCount()I
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/ChildHelper;->mCallback:Landroidx/recyclerview/widget/ChildHelper$Callback;

    .line 311
    invoke-interface {p0}, Landroidx/recyclerview/widget/ChildHelper$Callback;->getChildCount()I

    move-result p0

    return p0
.end method

.method hide(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/ChildHelper;->mCallback:Landroidx/recyclerview/widget/ChildHelper$Callback;

    .line 376
    invoke-interface {v0, p1}, Landroidx/recyclerview/widget/ChildHelper$Callback;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Landroidx/recyclerview/widget/ChildHelper;->mBucket:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    .line 383
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->set(I)V

    .line 384
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/ChildHelper;->hideViewInternal(Landroid/view/View;)V

    return-void

    .line 378
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "view is not a child, cannot hide "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method indexOfChild(Landroid/view/View;)I
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/ChildHelper;->mCallback:Landroidx/recyclerview/widget/ChildHelper$Callback;

    .line 345
    invoke-interface {v0, p1}, Landroidx/recyclerview/widget/ChildHelper$Callback;->indexOfChild(Landroid/view/View;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/ChildHelper;->mBucket:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    .line 349
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    iget-object p0, p0, Landroidx/recyclerview/widget/ChildHelper;->mBucket:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    .line 357
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->countOnesBefore(I)I

    move-result p0

    sub-int/2addr p1, p0

    return p1
.end method

.method isHidden(Landroid/view/View;)Z
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/ChildHelper;->mHiddenViews:Ljava/util/List;

    .line 367
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method removeAllViewsUnfiltered()V
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/ChildHelper;->mBucket:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    .line 236
    invoke-virtual {v0}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->reset()V

    iget-object v0, p0, Landroidx/recyclerview/widget/ChildHelper;->mHiddenViews:Ljava/util/List;

    .line 237
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroidx/recyclerview/widget/ChildHelper;->mCallback:Landroidx/recyclerview/widget/ChildHelper$Callback;

    iget-object v2, p0, Landroidx/recyclerview/widget/ChildHelper;->mHiddenViews:Ljava/util/List;

    .line 238
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-interface {v1, v2}, Landroidx/recyclerview/widget/ChildHelper$Callback;->onLeftHiddenState(Landroid/view/View;)V

    iget-object v1, p0, Landroidx/recyclerview/widget/ChildHelper;->mHiddenViews:Ljava/util/List;

    .line 239
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/recyclerview/widget/ChildHelper;->mCallback:Landroidx/recyclerview/widget/ChildHelper$Callback;

    .line 241
    invoke-interface {p0}, Landroidx/recyclerview/widget/ChildHelper$Callback;->removeAllViews()V

    return-void
.end method

.method removeView(Landroid/view/View;)V
    .locals 4

    iget v0, p0, Landroidx/recyclerview/widget/ChildHelper;->mRemoveStatus:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    iput v1, p0, Landroidx/recyclerview/widget/ChildHelper;->mRemoveStatus:I

    iput-object p1, p0, Landroidx/recyclerview/widget/ChildHelper;->mViewInRemoveView:Landroid/view/View;

    iget-object v1, p0, Landroidx/recyclerview/widget/ChildHelper;->mCallback:Landroidx/recyclerview/widget/ChildHelper$Callback;

    .line 172
    invoke-interface {v1, p1}, Landroidx/recyclerview/widget/ChildHelper$Callback;->indexOfChild(Landroid/view/View;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v1, :cond_0

    iput v2, p0, Landroidx/recyclerview/widget/ChildHelper;->mRemoveStatus:I

    iput-object v0, p0, Landroidx/recyclerview/widget/ChildHelper;->mViewInRemoveView:Landroid/view/View;

    return-void

    :cond_0
    :try_start_1
    iget-object v3, p0, Landroidx/recyclerview/widget/ChildHelper;->mBucket:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    .line 176
    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->remove(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 177
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/ChildHelper;->unhideViewInternal(Landroid/view/View;)Z

    :cond_1
    iget-object p1, p0, Landroidx/recyclerview/widget/ChildHelper;->mCallback:Landroidx/recyclerview/widget/ChildHelper$Callback;

    .line 179
    invoke-interface {p1, v1}, Landroidx/recyclerview/widget/ChildHelper$Callback;->removeViewAt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput v2, p0, Landroidx/recyclerview/widget/ChildHelper;->mRemoveStatus:I

    iput-object v0, p0, Landroidx/recyclerview/widget/ChildHelper;->mViewInRemoveView:Landroid/view/View;

    return-void

    :catchall_0
    move-exception p1

    iput v2, p0, Landroidx/recyclerview/widget/ChildHelper;->mRemoveStatus:I

    iput-object v0, p0, Landroidx/recyclerview/widget/ChildHelper;->mViewInRemoveView:Landroid/view/View;

    .line 186
    throw p1

    .line 167
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot call removeView(At) within removeViewIfHidden"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 165
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot call removeView(At) within removeView(At)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method removeViewAt(I)V
    .locals 4

    iget v0, p0, Landroidx/recyclerview/widget/ChildHelper;->mRemoveStatus:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 202
    :try_start_0
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/ChildHelper;->getOffset(I)I

    move-result p1

    iget-object v3, p0, Landroidx/recyclerview/widget/ChildHelper;->mCallback:Landroidx/recyclerview/widget/ChildHelper$Callback;

    .line 203
    invoke-interface {v3, p1}, Landroidx/recyclerview/widget/ChildHelper$Callback;->getChildAt(I)Landroid/view/View;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    iput v2, p0, Landroidx/recyclerview/widget/ChildHelper;->mRemoveStatus:I

    iput-object v0, p0, Landroidx/recyclerview/widget/ChildHelper;->mViewInRemoveView:Landroid/view/View;

    return-void

    :cond_0
    :try_start_1
    iput v1, p0, Landroidx/recyclerview/widget/ChildHelper;->mRemoveStatus:I

    iput-object v3, p0, Landroidx/recyclerview/widget/ChildHelper;->mViewInRemoveView:Landroid/view/View;

    iget-object v1, p0, Landroidx/recyclerview/widget/ChildHelper;->mBucket:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    .line 209
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->remove(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 210
    invoke-direct {p0, v3}, Landroidx/recyclerview/widget/ChildHelper;->unhideViewInternal(Landroid/view/View;)Z

    :cond_1
    iget-object v1, p0, Landroidx/recyclerview/widget/ChildHelper;->mCallback:Landroidx/recyclerview/widget/ChildHelper$Callback;

    .line 212
    invoke-interface {v1, p1}, Landroidx/recyclerview/widget/ChildHelper$Callback;->removeViewAt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput v2, p0, Landroidx/recyclerview/widget/ChildHelper;->mRemoveStatus:I

    iput-object v0, p0, Landroidx/recyclerview/widget/ChildHelper;->mViewInRemoveView:Landroid/view/View;

    return-void

    :catchall_0
    move-exception p1

    iput v2, p0, Landroidx/recyclerview/widget/ChildHelper;->mRemoveStatus:I

    iput-object v0, p0, Landroidx/recyclerview/widget/ChildHelper;->mViewInRemoveView:Landroid/view/View;

    .line 219
    throw p1

    .line 199
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot call removeView(At) within removeViewIfHidden"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 197
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot call removeView(At) within removeView(At)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method removeViewIfHidden(Landroid/view/View;)Z
    .locals 4

    iget v0, p0, Landroidx/recyclerview/widget/ChildHelper;->mRemoveStatus:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object p0, p0, Landroidx/recyclerview/widget/ChildHelper;->mViewInRemoveView:Landroid/view/View;

    if-ne p0, p1, :cond_0

    return v1

    .line 423
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot call removeViewIfHidden within removeView(At) for a different view"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    :try_start_0
    iput v3, p0, Landroidx/recyclerview/widget/ChildHelper;->mRemoveStatus:I

    iget-object v0, p0, Landroidx/recyclerview/widget/ChildHelper;->mCallback:Landroidx/recyclerview/widget/ChildHelper$Callback;

    .line 434
    invoke-interface {v0, p1}, Landroidx/recyclerview/widget/ChildHelper$Callback;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    .line 436
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/ChildHelper;->unhideViewInternal(Landroid/view/View;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput v1, p0, Landroidx/recyclerview/widget/ChildHelper;->mRemoveStatus:I

    return v2

    :cond_2
    :try_start_1
    iget-object v3, p0, Landroidx/recyclerview/widget/ChildHelper;->mBucket:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    .line 441
    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->get(I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroidx/recyclerview/widget/ChildHelper;->mBucket:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    .line 442
    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->remove(I)Z

    .line 443
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/ChildHelper;->unhideViewInternal(Landroid/view/View;)Z

    iget-object p1, p0, Landroidx/recyclerview/widget/ChildHelper;->mCallback:Landroidx/recyclerview/widget/ChildHelper$Callback;

    .line 447
    invoke-interface {p1, v0}, Landroidx/recyclerview/widget/ChildHelper$Callback;->removeViewAt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput v1, p0, Landroidx/recyclerview/widget/ChildHelper;->mRemoveStatus:I

    return v2

    :cond_3
    iput v1, p0, Landroidx/recyclerview/widget/ChildHelper;->mRemoveStatus:I

    return v1

    :catchall_0
    move-exception p1

    iput v1, p0, Landroidx/recyclerview/widget/ChildHelper;->mRemoveStatus:I

    .line 453
    throw p1

    .line 429
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot call removeViewIfHidden within removeViewIfHidden"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroidx/recyclerview/widget/ChildHelper;->mBucket:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hidden list:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Landroidx/recyclerview/widget/ChildHelper;->mHiddenViews:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method unhide(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/ChildHelper;->mCallback:Landroidx/recyclerview/widget/ChildHelper$Callback;

    .line 398
    invoke-interface {v0, p1}, Landroidx/recyclerview/widget/ChildHelper$Callback;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v1, p0, Landroidx/recyclerview/widget/ChildHelper;->mBucket:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    .line 402
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/recyclerview/widget/ChildHelper;->mBucket:Landroidx/recyclerview/widget/ChildHelper$Bucket;

    .line 405
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/ChildHelper$Bucket;->clear(I)V

    .line 406
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/ChildHelper;->unhideViewInternal(Landroid/view/View;)Z

    return-void

    .line 403
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "trying to unhide a view that was not hidden"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 400
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "view is not a child, cannot hide "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
