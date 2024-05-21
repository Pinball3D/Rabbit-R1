.class Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;
.super Ljava/lang/Object;
.source "MessageThreadUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/MessageThreadUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MessageQueue"
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private mRoot:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->mLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method next()Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;
    .locals 3

    iget-object v0, p0, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->mLock:Ljava/lang/Object;

    .line 239
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->mRoot:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    if-nez v1, :cond_0

    .line 241
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    .line 244
    :cond_0
    iget-object v2, v1, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->next:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    iput-object v2, p0, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->mRoot:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    .line 245
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 246
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method removeMessages(I)V
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->mLock:Ljava/lang/Object;

    .line 271
    monitor-enter v0

    :goto_0
    :try_start_0
    iget-object v1, p0, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->mRoot:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    if-eqz v1, :cond_0

    .line 272
    iget v1, v1, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->what:I

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->mRoot:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    .line 274
    iget-object v2, v1, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->next:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    iput-object v2, p0, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->mRoot:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    .line 275
    invoke-virtual {v1}, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->recycle()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->mRoot:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    if-eqz p0, :cond_2

    .line 279
    iget-object v1, p0, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->next:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    :goto_1
    if-eqz v1, :cond_2

    .line 281
    iget-object v2, v1, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->next:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    .line 282
    iget v3, v1, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->what:I

    if-ne v3, p1, :cond_1

    .line 283
    iput-object v2, p0, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->next:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    .line 284
    invoke-virtual {v1}, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->recycle()V

    goto :goto_2

    :cond_1
    move-object p0, v1

    :goto_2
    move-object v1, v2

    goto :goto_1

    .line 291
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method sendMessage(Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;)V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->mLock:Ljava/lang/Object;

    .line 257
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->mRoot:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    if-nez v1, :cond_0

    iput-object p1, p0, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->mRoot:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    .line 260
    monitor-exit v0

    return-void

    .line 263
    :cond_0
    :goto_0
    iget-object p0, v1, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->next:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    if-eqz p0, :cond_1

    .line 264
    iget-object v1, v1, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->next:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    goto :goto_0

    .line 266
    :cond_1
    iput-object p1, v1, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->next:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    .line 267
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method sendMessageAtFrontOfQueue(Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;)V
    .locals 2

    iget-object v0, p0, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->mLock:Ljava/lang/Object;

    .line 250
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->mRoot:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    .line 251
    iput-object v1, p1, Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;->next:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    iput-object p1, p0, Landroidx/recyclerview/widget/MessageThreadUtil$MessageQueue;->mRoot:Landroidx/recyclerview/widget/MessageThreadUtil$SyncQueueItem;

    .line 253
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
