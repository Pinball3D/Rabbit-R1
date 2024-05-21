.class Lorg/webrtc/RefCountDelegate;
.super Ljava/lang/Object;
.source "RefCountDelegate.java"

# interfaces
.implements Lorg/webrtc/RefCounted;


# instance fields
.field private final refCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final releaseCallback:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lorg/webrtc/RefCountDelegate;->refCount:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, Lorg/webrtc/RefCountDelegate;->releaseCallback:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public release()V
    .locals 1

    iget-object v0, p0, Lorg/webrtc/RefCountDelegate;->refCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 40
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-ltz v0, :cond_1

    if-nez v0, :cond_0

    iget-object p0, p0, Lorg/webrtc/RefCountDelegate;->releaseCallback:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    .line 45
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void

    .line 42
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "release() called on an object with refcount < 1"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public retain()V
    .locals 1

    iget-object p0, p0, Lorg/webrtc/RefCountDelegate;->refCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 32
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p0

    const/4 v0, 0x2

    if-lt p0, v0, :cond_0

    return-void

    .line 34
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "retain() called on an object with refcount < 1"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method safeRetain()Z
    .locals 3

    iget-object v0, p0, Lorg/webrtc/RefCountDelegate;->refCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 54
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/webrtc/RefCountDelegate;->refCount:Ljava/util/concurrent/atomic/AtomicInteger;

    add-int/lit8 v2, v0, 0x1

    .line 56
    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->weakCompareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object v0, p0, Lorg/webrtc/RefCountDelegate;->refCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 59
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
