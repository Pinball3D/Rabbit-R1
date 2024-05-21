.class final Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$HandlerAndRunnable;
.super Ljava/lang/Object;
.source "ConcatenatingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HandlerAndRunnable"
.end annotation


# instance fields
.field private final handler:Landroid/os/Handler;

.field private final runnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    .line 1036
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$HandlerAndRunnable;->handler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$HandlerAndRunnable;->runnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public dispatch()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$HandlerAndRunnable;->handler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/ConcatenatingMediaSource$HandlerAndRunnable;->runnable:Ljava/lang/Runnable;

    .line 1042
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
