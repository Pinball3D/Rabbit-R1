.class public Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;
.super Ljava/lang/Object;
.source "WeakHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ChainedRef;,
        Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ExecHandler;,
        Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$WeakRunnable;
    }
.end annotation


# instance fields
.field private final mCallback:Landroid/os/Handler$Callback;

.field private final mExec:Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ExecHandler;

.field private mLock:Ljava/util/concurrent/locks/Lock;

.field final mRunnables:Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ChainedRef;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 59
    new-instance v0, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ChainedRef;

    iget-object v1, p0, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;->mLock:Ljava/util/concurrent/locks/Lock;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ChainedRef;-><init>(Ljava/util/concurrent/locks/Lock;Ljava/lang/Runnable;)V

    iput-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;->mRunnables:Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ChainedRef;

    iput-object v2, p0, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;->mCallback:Landroid/os/Handler$Callback;

    .line 72
    new-instance v0, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ExecHandler;

    invoke-direct {v0}, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ExecHandler;-><init>()V

    iput-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;->mExec:Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ExecHandler;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler$Callback;)V
    .locals 3

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 59
    new-instance v0, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ChainedRef;

    iget-object v1, p0, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;->mLock:Ljava/util/concurrent/locks/Lock;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ChainedRef;-><init>(Ljava/util/concurrent/locks/Lock;Ljava/lang/Runnable;)V

    iput-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;->mRunnables:Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ChainedRef;

    iput-object p1, p0, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;->mCallback:Landroid/os/Handler$Callback;

    .line 87
    new-instance v0, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ExecHandler;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ExecHandler;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;->mExec:Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ExecHandler;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 3

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 59
    new-instance v0, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ChainedRef;

    iget-object v1, p0, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;->mLock:Ljava/util/concurrent/locks/Lock;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ChainedRef;-><init>(Ljava/util/concurrent/locks/Lock;Ljava/lang/Runnable;)V

    iput-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;->mRunnables:Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ChainedRef;

    iput-object v2, p0, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;->mCallback:Landroid/os/Handler$Callback;

    .line 97
    new-instance v0, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ExecHandler;

    invoke-direct {v0, p1}, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ExecHandler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;->mExec:Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ExecHandler;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V
    .locals 3

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 59
    new-instance v0, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ChainedRef;

    iget-object v1, p0, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;->mLock:Ljava/util/concurrent/locks/Lock;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ChainedRef;-><init>(Ljava/util/concurrent/locks/Lock;Ljava/lang/Runnable;)V

    iput-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;->mRunnables:Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ChainedRef;

    iput-object p2, p0, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;->mCallback:Landroid/os/Handler$Callback;

    .line 109
    new-instance v0, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ExecHandler;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, p1, v1}, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ExecHandler;-><init>(Landroid/os/Looper;Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;->mExec:Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ExecHandler;

    return-void
.end method

.method private wrapRunnable(Ljava/lang/Runnable;)Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$WeakRunnable;
    .locals 2

    if-eqz p1, :cond_0

    .line 388
    new-instance v0, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ChainedRef;

    iget-object v1, p0, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-direct {v0, v1, p1}, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ChainedRef;-><init>(Ljava/util/concurrent/locks/Lock;Ljava/lang/Runnable;)V

    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;->mRunnables:Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ChainedRef;

    .line 389
    invoke-virtual {p0, v0}, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ChainedRef;->insertAfter(Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ChainedRef;)V

    .line 390
    iget-object p0, v0, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ChainedRef;->wrapper:Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$WeakRunnable;

    return-object p0

    .line 386
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Runnable can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getLooper()Landroid/os/Looper;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;->mExec:Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ExecHandler;

    .line 380
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ExecHandler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    return-object p0
.end method

.method public final hasMessages(I)Z
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;->mExec:Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ExecHandler;

    .line 368
    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ExecHandler;->hasMessages(I)Z

    move-result p0

    return p0
.end method

.method public final hasMessages(ILjava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;->mExec:Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ExecHandler;

    .line 376
    invoke-virtual {p0, p1, p2}, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ExecHandler;->hasMessages(ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final post(Ljava/lang/Runnable;)Z
    .locals 1

    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;->mExec:Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ExecHandler;

    .line 124
    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;->wrapRunnable(Ljava/lang/Runnable;)Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$WeakRunnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ExecHandler;->post(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method public final postAtFrontOfQueue(Ljava/lang/Runnable;)Z
    .locals 1

    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;->mExec:Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ExecHandler;

    .line 208
    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;->wrapRunnable(Ljava/lang/Runnable;)Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$WeakRunnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ExecHandler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method public final postAtTime(Ljava/lang/Runnable;J)Z
    .locals 1

    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;->mExec:Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ExecHandler;

    .line 145
    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;->wrapRunnable(Ljava/lang/Runnable;)Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$WeakRunnable;

    move-result-object p0

    invoke-virtual {v0, p0, p2, p3}, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ExecHandler;->postAtTime(Ljava/lang/Runnable;J)Z

    move-result p0

    return p0
.end method

.method public final postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z
    .locals 1

    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;->mExec:Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ExecHandler;

    .line 168
    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;->wrapRunnable(Ljava/lang/Runnable;)Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$WeakRunnable;

    move-result-object p0

    invoke-virtual {v0, p0, p2, p3, p4}, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ExecHandler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    move-result p0

    return p0
.end method

.method public final postDelayed(Ljava/lang/Runnable;J)Z
    .locals 1

    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;->mExec:Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ExecHandler;

    .line 189
    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;->wrapRunnable(Ljava/lang/Runnable;)Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$WeakRunnable;

    move-result-object p0

    invoke-virtual {v0, p0, p2, p3}, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ExecHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p0

    return p0
.end method

.method public final removeCallbacks(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;->mRunnables:Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ChainedRef;

    .line 215
    invoke-virtual {v0, p1}, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ChainedRef;->remove(Ljava/lang/Runnable;)Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$WeakRunnable;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;->mExec:Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ExecHandler;

    .line 217
    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ExecHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final removeCallbacks(Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;->mRunnables:Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ChainedRef;

    .line 227
    invoke-virtual {v0, p1}, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ChainedRef;->remove(Ljava/lang/Runnable;)Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$WeakRunnable;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;->mExec:Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ExecHandler;

    .line 229
    invoke-virtual {p0, p1, p2}, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ExecHandler;->removeCallbacks(Ljava/lang/Runnable;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final removeCallbacksAndMessages(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;->mExec:Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ExecHandler;

    .line 360
    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ExecHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public final removeMessages(I)V
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;->mExec:Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ExecHandler;

    .line 342
    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ExecHandler;->removeMessages(I)V

    return-void
.end method

.method public final removeMessages(ILjava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;->mExec:Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ExecHandler;

    .line 351
    invoke-virtual {p0, p1, p2}, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ExecHandler;->removeMessages(ILjava/lang/Object;)V

    return-void
.end method

.method public final sendEmptyMessage(I)Z
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;->mExec:Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ExecHandler;

    .line 254
    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ExecHandler;->sendEmptyMessage(I)Z

    move-result p0

    return p0
.end method

.method public final sendEmptyMessageAtTime(IJ)Z
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;->mExec:Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ExecHandler;

    .line 280
    invoke-virtual {p0, p1, p2, p3}, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ExecHandler;->sendEmptyMessageAtTime(IJ)Z

    move-result p0

    return p0
.end method

.method public final sendEmptyMessageDelayed(IJ)Z
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;->mExec:Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ExecHandler;

    .line 267
    invoke-virtual {p0, p1, p2, p3}, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ExecHandler;->sendEmptyMessageDelayed(IJ)Z

    move-result p0

    return p0
.end method

.method public final sendMessage(Landroid/os/Message;)Z
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;->mExec:Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ExecHandler;

    .line 243
    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ExecHandler;->sendMessage(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public final sendMessageAtFrontOfQueue(Landroid/os/Message;)Z
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;->mExec:Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ExecHandler;

    .line 334
    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ExecHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public sendMessageAtTime(Landroid/os/Message;J)Z
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;->mExec:Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ExecHandler;

    .line 318
    invoke-virtual {p0, p1, p2, p3}, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ExecHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    move-result p0

    return p0
.end method

.method public final sendMessageDelayed(Landroid/os/Message;J)Z
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler;->mExec:Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ExecHandler;

    .line 296
    invoke-virtual {p0, p1, p2, p3}, Ltech/rabbit/r1launcher/components/wifiutils/WeakHandler$ExecHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result p0

    return p0
.end method
