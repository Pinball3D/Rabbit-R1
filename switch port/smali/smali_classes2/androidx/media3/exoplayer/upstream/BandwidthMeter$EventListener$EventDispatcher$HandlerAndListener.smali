.class final Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher$HandlerAndListener;
.super Ljava/lang/Object;
.source "BandwidthMeter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HandlerAndListener"
.end annotation


# instance fields
.field private final handler:Landroid/os/Handler;

.field private final listener:Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener;

.field private released:Z


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher$HandlerAndListener;->handler:Landroid/os/Handler;

    iput-object p2, p0, Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher$HandlerAndListener;->listener:Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener;

    return-void
.end method

.method static synthetic access$000(Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher$HandlerAndListener;)Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener;
    .locals 0

    .line 87
    iget-object p0, p0, Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher$HandlerAndListener;->listener:Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener;

    return-object p0
.end method

.method static synthetic access$100(Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher$HandlerAndListener;)Z
    .locals 0

    .line 87
    iget-boolean p0, p0, Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher$HandlerAndListener;->released:Z

    return p0
.end method

.method static synthetic access$200(Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher$HandlerAndListener;)Landroid/os/Handler;
    .locals 0

    .line 87
    iget-object p0, p0, Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher$HandlerAndListener;->handler:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public release()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/upstream/BandwidthMeter$EventListener$EventDispatcher$HandlerAndListener;->released:Z

    return-void
.end method
