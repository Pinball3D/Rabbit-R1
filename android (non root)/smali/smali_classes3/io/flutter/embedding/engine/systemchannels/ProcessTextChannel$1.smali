.class Lio/flutter/embedding/engine/systemchannels/ProcessTextChannel$1;
.super Ljava/lang/Object;
.source "ProcessTextChannel.java"

# interfaces
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/systemchannels/ProcessTextChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/flutter/embedding/engine/systemchannels/ProcessTextChannel;


# direct methods
.method constructor <init>(Lio/flutter/embedding/engine/systemchannels/ProcessTextChannel;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/embedding/engine/systemchannels/ProcessTextChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/ProcessTextChannel;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 5

    iget-object v0, p0, Lio/flutter/embedding/engine/systemchannels/ProcessTextChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/ProcessTextChannel;

    .line 55
    invoke-static {v0}, Lio/flutter/embedding/engine/systemchannels/ProcessTextChannel;->access$000(Lio/flutter/embedding/engine/systemchannels/ProcessTextChannel;)Lio/flutter/embedding/engine/systemchannels/ProcessTextChannel$ProcessTextMethodHandler;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 58
    :cond_0
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    .line 59
    iget-object p1, p1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    .line 60
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "ProcessText.processTextAction"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "error"

    if-nez v1, :cond_2

    const-string p1, "ProcessText.queryTextActions"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 81
    invoke-interface {p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object p0, p0, Lio/flutter/embedding/engine/systemchannels/ProcessTextChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/ProcessTextChannel;

    .line 63
    invoke-static {p0}, Lio/flutter/embedding/engine/systemchannels/ProcessTextChannel;->access$000(Lio/flutter/embedding/engine/systemchannels/ProcessTextChannel;)Lio/flutter/embedding/engine/systemchannels/ProcessTextChannel$ProcessTextMethodHandler;

    move-result-object p0

    invoke-interface {p0}, Lio/flutter/embedding/engine/systemchannels/ProcessTextChannel$ProcessTextMethodHandler;->queryTextActions()Ljava/util/Map;

    move-result-object p0

    .line 64
    invoke-interface {p2, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 66
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, v3, p0, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 71
    :cond_2
    :try_start_1
    check-cast p1, Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 72
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    .line 73
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v4, 0x2

    .line 74
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p0, p0, Lio/flutter/embedding/engine/systemchannels/ProcessTextChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/ProcessTextChannel;

    .line 75
    invoke-static {p0}, Lio/flutter/embedding/engine/systemchannels/ProcessTextChannel;->access$000(Lio/flutter/embedding/engine/systemchannels/ProcessTextChannel;)Lio/flutter/embedding/engine/systemchannels/ProcessTextChannel$ProcessTextMethodHandler;

    move-result-object p0

    invoke-interface {p0, v0, v1, p1, p2}, Lio/flutter/embedding/engine/systemchannels/ProcessTextChannel$ProcessTextMethodHandler;->processTextAction(Ljava/lang/String;Ljava/lang/String;ZLio/flutter/plugin/common/MethodChannel$Result;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 77
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, v3, p0, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
