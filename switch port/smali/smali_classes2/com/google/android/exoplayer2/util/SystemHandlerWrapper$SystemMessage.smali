.class final Lcom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;
.super Ljava/lang/Object;
.source "SystemHandlerWrapper.java"

# interfaces
.implements Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/util/SystemHandlerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SystemMessage"
.end annotation


# instance fields
.field private handler:Lcom/google/android/exoplayer2/util/SystemHandlerWrapper;

.field private message:Landroid/os/Message;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/util/SystemHandlerWrapper$1;)V
    .locals 0

    .line 135
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;-><init>()V

    return-void
.end method

.method private recycle()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;->message:Landroid/os/Message;

    iput-object v0, p0, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;->handler:Lcom/google/android/exoplayer2/util/SystemHandlerWrapper;

    .line 167
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper;->access$100(Lcom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;)V

    return-void
.end method


# virtual methods
.method public getTarget()Lcom/google/android/exoplayer2/util/HandlerWrapper;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;->handler:Lcom/google/android/exoplayer2/util/SystemHandlerWrapper;

    .line 161
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/util/HandlerWrapper;

    return-object p0
.end method

.method public sendAtFrontOfQueue(Landroid/os/Handler;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;->message:Landroid/os/Message;

    .line 148
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    move-result p1

    .line 149
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;->recycle()V

    return p1
.end method

.method public sendToTarget()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;->message:Landroid/os/Message;

    .line 155
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 156
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;->recycle()V

    return-void
.end method

.method public setMessage(Landroid/os/Message;Lcom/google/android/exoplayer2/util/SystemHandlerWrapper;)Lcom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;->message:Landroid/os/Message;

    iput-object p2, p0, Lcom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;->handler:Lcom/google/android/exoplayer2/util/SystemHandlerWrapper;

    return-object p0
.end method
