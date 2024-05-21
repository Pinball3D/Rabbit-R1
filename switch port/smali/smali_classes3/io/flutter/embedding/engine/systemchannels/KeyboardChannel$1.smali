.class Lio/flutter/embedding/engine/systemchannels/KeyboardChannel$1;
.super Ljava/lang/Object;
.source "KeyboardChannel.java"

# interfaces
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/systemchannels/KeyboardChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field pressedState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lio/flutter/embedding/engine/systemchannels/KeyboardChannel;


# direct methods
.method constructor <init>(Lio/flutter/embedding/engine/systemchannels/KeyboardChannel;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/embedding/engine/systemchannels/KeyboardChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/KeyboardChannel;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lio/flutter/embedding/engine/systemchannels/KeyboardChannel$1;->pressedState:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    iget-object v0, p0, Lio/flutter/embedding/engine/systemchannels/KeyboardChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/KeyboardChannel;

    .line 32
    invoke-static {v0}, Lio/flutter/embedding/engine/systemchannels/KeyboardChannel;->access$000(Lio/flutter/embedding/engine/systemchannels/KeyboardChannel;)Lio/flutter/embedding/engine/systemchannels/KeyboardChannel$KeyboardMethodHandler;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lio/flutter/embedding/engine/systemchannels/KeyboardChannel$1;->pressedState:Ljava/util/Map;

    .line 35
    invoke-interface {p2, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_1

    .line 37
    :cond_0
    iget-object p1, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "getKeyboardState"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 47
    invoke-interface {p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    goto :goto_1

    :cond_1
    :try_start_0
    iget-object p1, p0, Lio/flutter/embedding/engine/systemchannels/KeyboardChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/KeyboardChannel;

    .line 40
    invoke-static {p1}, Lio/flutter/embedding/engine/systemchannels/KeyboardChannel;->access$000(Lio/flutter/embedding/engine/systemchannels/KeyboardChannel;)Lio/flutter/embedding/engine/systemchannels/KeyboardChannel$KeyboardMethodHandler;

    move-result-object p1

    invoke-interface {p1}, Lio/flutter/embedding/engine/systemchannels/KeyboardChannel$KeyboardMethodHandler;->getKeyboardState()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lio/flutter/embedding/engine/systemchannels/KeyboardChannel$1;->pressedState:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 42
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "error"

    invoke-interface {p2, v1, p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    iget-object p0, p0, Lio/flutter/embedding/engine/systemchannels/KeyboardChannel$1;->pressedState:Ljava/util/Map;

    .line 44
    invoke-interface {p2, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method
