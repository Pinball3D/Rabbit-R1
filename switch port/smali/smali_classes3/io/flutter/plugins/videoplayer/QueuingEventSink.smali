.class final Lio/flutter/plugins/videoplayer/QueuingEventSink;
.super Ljava/lang/Object;
.source "QueuingEventSink.java"

# interfaces
.implements Lio/flutter/plugin/common/EventChannel$EventSink;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugins/videoplayer/QueuingEventSink$EndOfStreamEvent;,
        Lio/flutter/plugins/videoplayer/QueuingEventSink$ErrorEvent;
    }
.end annotation


# instance fields
.field private delegate:Lio/flutter/plugin/common/EventChannel$EventSink;

.field private done:Z

.field private final eventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/flutter/plugins/videoplayer/QueuingEventSink;->eventQueue:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/flutter/plugins/videoplayer/QueuingEventSink;->done:Z

    return-void
.end method

.method private enqueue(Ljava/lang/Object;)V
    .locals 1

    iget-boolean v0, p0, Lio/flutter/plugins/videoplayer/QueuingEventSink;->done:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lio/flutter/plugins/videoplayer/QueuingEventSink;->eventQueue:Ljava/util/ArrayList;

    .line 52
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private maybeFlush()V
    .locals 5

    iget-object v0, p0, Lio/flutter/plugins/videoplayer/QueuingEventSink;->delegate:Lio/flutter/plugin/common/EventChannel$EventSink;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lio/flutter/plugins/videoplayer/QueuingEventSink;->eventQueue:Ljava/util/ArrayList;

    .line 59
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 60
    instance-of v2, v1, Lio/flutter/plugins/videoplayer/QueuingEventSink$EndOfStreamEvent;

    if-eqz v2, :cond_1

    iget-object v1, p0, Lio/flutter/plugins/videoplayer/QueuingEventSink;->delegate:Lio/flutter/plugin/common/EventChannel$EventSink;

    .line 61
    invoke-interface {v1}, Lio/flutter/plugin/common/EventChannel$EventSink;->endOfStream()V

    goto :goto_0

    .line 62
    :cond_1
    instance-of v2, v1, Lio/flutter/plugins/videoplayer/QueuingEventSink$ErrorEvent;

    if-eqz v2, :cond_2

    .line 63
    check-cast v1, Lio/flutter/plugins/videoplayer/QueuingEventSink$ErrorEvent;

    iget-object v2, p0, Lio/flutter/plugins/videoplayer/QueuingEventSink;->delegate:Lio/flutter/plugin/common/EventChannel$EventSink;

    .line 64
    iget-object v3, v1, Lio/flutter/plugins/videoplayer/QueuingEventSink$ErrorEvent;->code:Ljava/lang/String;

    iget-object v4, v1, Lio/flutter/plugins/videoplayer/QueuingEventSink$ErrorEvent;->message:Ljava/lang/String;

    iget-object v1, v1, Lio/flutter/plugins/videoplayer/QueuingEventSink$ErrorEvent;->details:Ljava/lang/Object;

    invoke-interface {v2, v3, v4, v1}, Lio/flutter/plugin/common/EventChannel$EventSink;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lio/flutter/plugins/videoplayer/QueuingEventSink;->delegate:Lio/flutter/plugin/common/EventChannel$EventSink;

    .line 66
    invoke-interface {v2, v1}, Lio/flutter/plugin/common/EventChannel$EventSink;->success(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lio/flutter/plugins/videoplayer/QueuingEventSink;->eventQueue:Ljava/util/ArrayList;

    .line 69
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method


# virtual methods
.method public endOfStream()V
    .locals 1

    .line 31
    new-instance v0, Lio/flutter/plugins/videoplayer/QueuingEventSink$EndOfStreamEvent;

    invoke-direct {v0}, Lio/flutter/plugins/videoplayer/QueuingEventSink$EndOfStreamEvent;-><init>()V

    invoke-direct {p0, v0}, Lio/flutter/plugins/videoplayer/QueuingEventSink;->enqueue(Ljava/lang/Object;)V

    .line 32
    invoke-direct {p0}, Lio/flutter/plugins/videoplayer/QueuingEventSink;->maybeFlush()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/flutter/plugins/videoplayer/QueuingEventSink;->done:Z

    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 38
    new-instance v0, Lio/flutter/plugins/videoplayer/QueuingEventSink$ErrorEvent;

    invoke-direct {v0, p1, p2, p3}, Lio/flutter/plugins/videoplayer/QueuingEventSink$ErrorEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lio/flutter/plugins/videoplayer/QueuingEventSink;->enqueue(Ljava/lang/Object;)V

    .line 39
    invoke-direct {p0}, Lio/flutter/plugins/videoplayer/QueuingEventSink;->maybeFlush()V

    return-void
.end method

.method public setDelegate(Lio/flutter/plugin/common/EventChannel$EventSink;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/plugins/videoplayer/QueuingEventSink;->delegate:Lio/flutter/plugin/common/EventChannel$EventSink;

    .line 26
    invoke-direct {p0}, Lio/flutter/plugins/videoplayer/QueuingEventSink;->maybeFlush()V

    return-void
.end method

.method public success(Ljava/lang/Object;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lio/flutter/plugins/videoplayer/QueuingEventSink;->enqueue(Ljava/lang/Object;)V

    .line 45
    invoke-direct {p0}, Lio/flutter/plugins/videoplayer/QueuingEventSink;->maybeFlush()V

    return-void
.end method
