.class Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel$1;
.super Ljava/lang/Object;
.source "DeferredComponentChannel.java"

# interfaces
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel;


# direct methods
.method constructor <init>(Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 4

    iget-object v0, p0, Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel;

    .line 43
    invoke-static {v0}, Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel;->access$000(Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel;)Lio/flutter/embedding/engine/deferredcomponents/DeferredComponentManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 47
    :cond_0
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Lio/flutter/plugin/common/MethodCall;->arguments()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' message."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DeferredComponentChannel"

    invoke-static {v2, v1}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "loadingUnitId"

    .line 50
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "componentName"

    .line 51
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 52
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "installDeferredComponent"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_1
    const-string v2, "getDeferredComponentInstallState"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "uninstallDeferredComponent"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 70
    invoke-interface {p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel;

    .line 54
    invoke-static {v0}, Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel;->access$000(Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel;)Lio/flutter/embedding/engine/deferredcomponents/DeferredComponentManager;

    move-result-object v0

    invoke-interface {v0, v1, p1}, Lio/flutter/embedding/engine/deferredcomponents/DeferredComponentManager;->installDeferredComponent(ILjava/lang/String;)V

    iget-object v0, p0, Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel;

    .line 55
    invoke-static {v0}, Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel;->access$100(Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel;

    .line 56
    invoke-static {v0}, Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel;->access$100(Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object p0, p0, Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel;

    .line 58
    invoke-static {p0}, Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel;->access$100(Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_1
    iget-object p0, p0, Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel;

    .line 62
    invoke-static {p0}, Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel;->access$000(Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel;)Lio/flutter/embedding/engine/deferredcomponents/DeferredComponentManager;

    move-result-object p0

    invoke-interface {p0, v1, p1}, Lio/flutter/embedding/engine/deferredcomponents/DeferredComponentManager;->getDeferredComponentInstallState(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 61
    invoke-interface {p2, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_2
    iget-object p0, p0, Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel;

    .line 66
    invoke-static {p0}, Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel;->access$000(Lio/flutter/embedding/engine/systemchannels/DeferredComponentChannel;)Lio/flutter/embedding/engine/deferredcomponents/DeferredComponentManager;

    move-result-object p0

    invoke-interface {p0, v1, p1}, Lio/flutter/embedding/engine/deferredcomponents/DeferredComponentManager;->uninstallDeferredComponent(ILjava/lang/String;)Z

    const/4 p0, 0x0

    .line 67
    invoke-interface {p2, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3bdea8e4 -> :sswitch_2
        0x17d2f6fe -> :sswitch_1
        0x1f0d4383 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
