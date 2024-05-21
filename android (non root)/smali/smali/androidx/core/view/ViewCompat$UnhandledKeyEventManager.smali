.class Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;
.super Ljava/lang/Object;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UnhandledKeyEventManager"
.end annotation


# static fields
.field private static final sViewsWithListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mCapturedKeys:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLastDispatchedPreViewKeyEvent:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/KeyEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mViewsContainingListeners:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 4989
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->sViewsWithListeners:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 4985
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mViewsContainingListeners:Ljava/util/WeakHashMap;

    iput-object v0, p0, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mCapturedKeys:Landroid/util/SparseArray;

    iput-object v0, p0, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mLastDispatchedPreViewKeyEvent:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static at(Landroid/view/View;)Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;
    .locals 2

    .line 5014
    sget v0, Landroidx/core/R$id;->tag_unhandled_key_event_manager:I

    .line 5015
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;

    if-nez v0, :cond_0

    .line 5017
    new-instance v0, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;

    invoke-direct {v0}, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;-><init>()V

    .line 5018
    sget v1, Landroidx/core/R$id;->tag_unhandled_key_event_manager:I

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method private dispatchInOrder(Landroid/view/View;Landroid/view/KeyEvent;)Landroid/view/View;
    .locals 4

    iget-object v0, p0, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mViewsContainingListeners:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 5043
    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 5046
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 5047
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 5049
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_2

    .line 5050
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 5051
    invoke-direct {p0, v3, p2}, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->dispatchInOrder(Landroid/view/View;Landroid/view/KeyEvent;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 5057
    :cond_2
    invoke-direct {p0, p1, p2}, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->onUnhandledKeyEvent(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_3

    return-object p1

    :cond_3
    :goto_1
    return-object v1
.end method

.method private getCapturedKeys()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mCapturedKeys:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 5008
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mCapturedKeys:Landroid/util/SparseArray;

    :cond_0
    iget-object p0, p0, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mCapturedKeys:Landroid/util/SparseArray;

    return-object p0
.end method

.method private onUnhandledKeyEvent(Landroid/view/View;Landroid/view/KeyEvent;)Z
    .locals 3

    .line 5102
    sget p0, Landroidx/core/R$id;->tag_unhandled_key_listeners:I

    .line 5104
    invoke-virtual {p1, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    if-eqz p0, :cond_1

    .line 5106
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 5107
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;

    invoke-interface {v2, p1, p2}, Landroidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;->onUnhandledKeyEvent(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private recalcViewsWithUnhandled()V
    .locals 6

    iget-object v0, p0, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mViewsContainingListeners:Ljava/util/WeakHashMap;

    if-eqz v0, :cond_0

    .line 5143
    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    :cond_0
    sget-object v0, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->sViewsWithListeners:Ljava/util/ArrayList;

    .line 5145
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 5148
    :cond_1
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mViewsContainingListeners:Ljava/util/WeakHashMap;

    if-nez v1, :cond_2

    .line 5150
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, p0, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mViewsContainingListeners:Ljava/util/WeakHashMap;

    .line 5152
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_5

    sget-object v2, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->sViewsWithListeners:Ljava/util/ArrayList;

    .line 5153
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 5154
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-nez v3, :cond_3

    .line 5156
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    iget-object v2, p0, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mViewsContainingListeners:Ljava/util/WeakHashMap;

    .line 5158
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5159
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 5160
    :goto_1
    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mViewsContainingListeners:Ljava/util/WeakHashMap;

    .line 5161
    move-object v4, v2

    check-cast v4, Landroid/view/View;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5162
    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    goto :goto_1

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 5166
    :cond_5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static registerListeningView(Landroid/view/View;)V
    .locals 3

    sget-object v0, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->sViewsWithListeners:Ljava/util/ArrayList;

    .line 5120
    monitor-enter v0

    .line 5121
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 5122
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p0, :cond_0

    .line 5123
    monitor-exit v0

    return-void

    :cond_1
    sget-object v1, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->sViewsWithListeners:Ljava/util/ArrayList;

    .line 5126
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5127
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static unregisterListeningView(Landroid/view/View;)V
    .locals 4

    sget-object v0, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->sViewsWithListeners:Ljava/util/ArrayList;

    .line 5131
    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    sget-object v2, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->sViewsWithListeners:Ljava/util/ArrayList;

    .line 5132
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 5133
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p0, :cond_0

    .line 5134
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5135
    monitor-exit v0

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5138
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method dispatch(Landroid/view/View;Landroid/view/KeyEvent;)Z
    .locals 1

    .line 5024
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 5025
    invoke-direct {p0}, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->recalcViewsWithUnhandled()V

    .line 5028
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->dispatchInOrder(Landroid/view/View;Landroid/view/KeyEvent;)Landroid/view/View;

    move-result-object p1

    .line 5032
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 5033
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    if-eqz p1, :cond_1

    .line 5034
    invoke-static {p2}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5035
    invoke-direct {p0}, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->getCapturedKeys()Landroid/util/SparseArray;

    move-result-object p0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    if-eqz p1, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method preDispatch(Landroid/view/KeyEvent;)Z
    .locals 5

    iget-object v0, p0, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mLastDispatchedPreViewKeyEvent:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5070
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    return v1

    .line 5073
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->mLastDispatchedPreViewKeyEvent:Ljava/lang/ref/WeakReference;

    .line 5078
    invoke-direct {p0}, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->getCapturedKeys()Landroid/util/SparseArray;

    move-result-object v0

    .line 5079
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 5080
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_1

    .line 5082
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 5083
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-nez v4, :cond_2

    .line 5087
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/ref/WeakReference;

    :cond_2
    if-eqz v4, :cond_4

    .line 5090
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_3

    .line 5091
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5092
    invoke-direct {p0, v0, p1}, Landroidx/core/view/ViewCompat$UnhandledKeyEventManager;->onUnhandledKeyEvent(Landroid/view/View;Landroid/view/KeyEvent;)Z

    :cond_3
    return v3

    :cond_4
    return v1
.end method
