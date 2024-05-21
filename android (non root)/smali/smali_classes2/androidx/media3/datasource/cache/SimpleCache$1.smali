.class Landroidx/media3/datasource/cache/SimpleCache$1;
.super Ljava/lang/Thread;
.source "SimpleCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media3/datasource/cache/SimpleCache;-><init>(Ljava/io/File;Landroidx/media3/datasource/cache/CacheEvictor;Landroidx/media3/datasource/cache/CachedContentIndex;Landroidx/media3/datasource/cache/CacheFileMetadataIndex;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/datasource/cache/SimpleCache;

.field final synthetic val$conditionVariable:Landroid/os/ConditionVariable;


# direct methods
.method constructor <init>(Landroidx/media3/datasource/cache/SimpleCache;Ljava/lang/String;Landroid/os/ConditionVariable;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/datasource/cache/SimpleCache$1;->this$0:Landroidx/media3/datasource/cache/SimpleCache;

    iput-object p3, p0, Landroidx/media3/datasource/cache/SimpleCache$1;->val$conditionVariable:Landroid/os/ConditionVariable;

    .line 229
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/datasource/cache/SimpleCache$1;->this$0:Landroidx/media3/datasource/cache/SimpleCache;

    .line 232
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/media3/datasource/cache/SimpleCache$1;->val$conditionVariable:Landroid/os/ConditionVariable;

    .line 233
    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    iget-object v1, p0, Landroidx/media3/datasource/cache/SimpleCache$1;->this$0:Landroidx/media3/datasource/cache/SimpleCache;

    .line 234
    invoke-static {v1}, Landroidx/media3/datasource/cache/SimpleCache;->access$000(Landroidx/media3/datasource/cache/SimpleCache;)V

    iget-object p0, p0, Landroidx/media3/datasource/cache/SimpleCache$1;->this$0:Landroidx/media3/datasource/cache/SimpleCache;

    .line 235
    invoke-static {p0}, Landroidx/media3/datasource/cache/SimpleCache;->access$100(Landroidx/media3/datasource/cache/SimpleCache;)Landroidx/media3/datasource/cache/CacheEvictor;

    move-result-object p0

    invoke-interface {p0}, Landroidx/media3/datasource/cache/CacheEvictor;->onCacheInitialized()V

    .line 236
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
