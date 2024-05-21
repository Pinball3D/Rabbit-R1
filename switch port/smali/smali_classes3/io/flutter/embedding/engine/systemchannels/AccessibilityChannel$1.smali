.class Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel$1;
.super Ljava/lang/Object;
.source "AccessibilityChannel.java"

# interfaces
.implements Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;


# direct methods
.method constructor <init>(Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessage(Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lio/flutter/plugin/common/BasicMessageChannel$Reply<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    .line 34
    invoke-static {v0}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->access$000(Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;)Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel$AccessibilityMessageHandler;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 35
    invoke-interface {p2, v1}, Lio/flutter/plugin/common/BasicMessageChannel$Reply;->reply(Ljava/lang/Object;)V

    return-void

    .line 40
    :cond_0
    check-cast p1, Ljava/util/HashMap;

    const-string v0, "type"

    .line 41
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "data"

    .line 43
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 45
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Received "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " message."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AccessibilityChannel"

    invoke-static {v4, v3}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, -0x1

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "longPress"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x4

    goto :goto_0

    :sswitch_1
    const-string v3, "focus"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_2
    const-string v3, "tap"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_3
    const-string v3, "announce"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v4, 0x1

    goto :goto_0

    :sswitch_4
    const-string v3, "tooltip"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    :goto_0
    const-string v0, "message"

    const-string v3, "nodeId"

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    .line 63
    :pswitch_0
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_6

    iget-object p0, p0, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    .line 65
    invoke-static {p0}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->access$000(Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;)Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel$AccessibilityMessageHandler;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel$AccessibilityMessageHandler;->onLongPress(I)V

    goto :goto_1

    .line 71
    :pswitch_1
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_6

    iget-object p0, p0, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    .line 73
    invoke-static {p0}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->access$000(Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;)Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel$AccessibilityMessageHandler;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel$AccessibilityMessageHandler;->onFocus(I)V

    goto :goto_1

    .line 55
    :pswitch_2
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_6

    iget-object p0, p0, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    .line 57
    invoke-static {p0}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->access$000(Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;)Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel$AccessibilityMessageHandler;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel$AccessibilityMessageHandler;->onTap(I)V

    goto :goto_1

    .line 48
    :pswitch_3
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_6

    iget-object p0, p0, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    .line 50
    invoke-static {p0}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->access$000(Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;)Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel$AccessibilityMessageHandler;

    move-result-object p0

    invoke-interface {p0, p1}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel$AccessibilityMessageHandler;->announce(Ljava/lang/String;)V

    goto :goto_1

    .line 79
    :pswitch_4
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_6

    iget-object p0, p0, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    .line 81
    invoke-static {p0}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->access$000(Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;)Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel$AccessibilityMessageHandler;

    move-result-object p0

    invoke-interface {p0, p1}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel$AccessibilityMessageHandler;->onTooltip(Ljava/lang/String;)V

    .line 86
    :cond_6
    :goto_1
    invoke-interface {p2, v1}, Lio/flutter/plugin/common/BasicMessageChannel$Reply;->reply(Ljava/lang/Object;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x43f42ffd -> :sswitch_4
        -0x26b86b97 -> :sswitch_3
        0x1bfa3 -> :sswitch_2
        0x5d154d8 -> :sswitch_1
        0x6ce9b27 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
