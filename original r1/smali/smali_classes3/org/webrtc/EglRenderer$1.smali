.class Lorg/webrtc/EglRenderer$1;
.super Ljava/lang/Object;
.source "EglRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/EglRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/EglRenderer;


# direct methods
.method constructor <init>(Lorg/webrtc/EglRenderer;)V
    .locals 0

    iput-object p1, p0, Lorg/webrtc/EglRenderer$1;->this$0:Lorg/webrtc/EglRenderer;

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lorg/webrtc/EglRenderer$1;->this$0:Lorg/webrtc/EglRenderer;

    .line 174
    invoke-static {v0}, Lorg/webrtc/EglRenderer;->access$100(Lorg/webrtc/EglRenderer;)V

    iget-object v0, p0, Lorg/webrtc/EglRenderer$1;->this$0:Lorg/webrtc/EglRenderer;

    .line 175
    invoke-static {v0}, Lorg/webrtc/EglRenderer;->access$200(Lorg/webrtc/EglRenderer;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/webrtc/EglRenderer$1;->this$0:Lorg/webrtc/EglRenderer;

    .line 176
    invoke-static {v1}, Lorg/webrtc/EglRenderer;->access$300(Lorg/webrtc/EglRenderer;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/webrtc/EglRenderer$1;->this$0:Lorg/webrtc/EglRenderer;

    .line 177
    invoke-static {v1}, Lorg/webrtc/EglRenderer;->access$300(Lorg/webrtc/EglRenderer;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lorg/webrtc/EglRenderer$1;->this$0:Lorg/webrtc/EglRenderer;

    invoke-static {v2}, Lorg/webrtc/EglRenderer;->access$400(Lorg/webrtc/EglRenderer;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lorg/webrtc/EglRenderer$1;->this$0:Lorg/webrtc/EglRenderer;

    .line 178
    invoke-static {v1}, Lorg/webrtc/EglRenderer;->access$300(Lorg/webrtc/EglRenderer;)Landroid/os/Handler;

    move-result-object v1

    iget-object p0, p0, Lorg/webrtc/EglRenderer$1;->this$0:Lorg/webrtc/EglRenderer;

    .line 179
    invoke-static {p0}, Lorg/webrtc/EglRenderer;->access$400(Lorg/webrtc/EglRenderer;)Ljava/lang/Runnable;

    move-result-object p0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x4

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 178
    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 181
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
