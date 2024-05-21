.class public final Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher;
.super Ljava/lang/Object;
.source "BandwidthMeter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventDispatcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher$HandlerAndListener;
    }
.end annotation


# instance fields
.field private final listeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher$HandlerAndListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method static synthetic lambda$bandwidthSample$0(Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher$HandlerAndListener;IJJ)V
    .locals 6

    .line 81
    invoke-static {p0}, Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher$HandlerAndListener;->access$000(Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher$HandlerAndListener;)Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener;

    move-result-object v0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener;->onBandwidthSample(IJJ)V

    return-void
.end method


# virtual methods
.method public addListener(Landroid/os/Handler;Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener;)V
    .locals 1

    .line 60
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    invoke-virtual {p0, p2}, Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher;->removeListener(Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener;)V

    iget-object p0, p0, Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 63
    new-instance v0, Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher$HandlerAndListener;

    invoke-direct {v0, p1, p2}, Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher$HandlerAndListener;-><init>(Landroid/os/Handler;Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bandwidthSample(IJJ)V
    .locals 9

    iget-object p0, p0, Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 77
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher$HandlerAndListener;

    .line 78
    invoke-static {v2}, Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher$HandlerAndListener;->access$100(Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher$HandlerAndListener;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    invoke-static {v2}, Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher$HandlerAndListener;->access$200(Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher$HandlerAndListener;)Landroid/os/Handler;

    move-result-object v0

    new-instance v8, Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher$$ExternalSyntheticLambda0;

    move-object v1, v8

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher$HandlerAndListener;IJJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeListener(Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener;)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 68
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher$HandlerAndListener;

    .line 69
    invoke-static {v1}, Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher$HandlerAndListener;->access$000(Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher$HandlerAndListener;)Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 70
    invoke-virtual {v1}, Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher$HandlerAndListener;->release()V

    iget-object v2, p0, Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 71
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method
