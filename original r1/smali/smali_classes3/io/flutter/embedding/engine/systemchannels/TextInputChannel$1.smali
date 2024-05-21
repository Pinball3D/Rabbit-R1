.class Lio/flutter/embedding/engine/systemchannels/TextInputChannel$1;
.super Ljava/lang/Object;
.source "TextInputChannel.java"

# interfaces
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/systemchannels/TextInputChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;


# direct methods
.method constructor <init>(Lio/flutter/embedding/engine/systemchannels/TextInputChannel;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 13

    const-string v0, "data"

    iget-object v1, p0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    .line 53
    invoke-static {v1}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->access$000(Lio/flutter/embedding/engine/systemchannels/TextInputChannel;)Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputMethodHandler;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 59
    :cond_0
    iget-object v1, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    .line 60
    iget-object p1, p1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Received \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' message."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TextInputChannel"

    invoke-static {v3, v2}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "TextInput.requestAutofill"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v5, 0x9

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "TextInput.clearClient"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v5, 0x8

    goto/16 :goto_0

    :sswitch_2
    const-string v2, "TextInput.finishAutofillContext"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v5, 0x7

    goto :goto_0

    :sswitch_3
    const-string v2, "TextInput.setEditableSizeAndTransform"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v5, 0x6

    goto :goto_0

    :sswitch_4
    const-string v2, "TextInput.sendAppPrivateCommand"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v5, 0x5

    goto :goto_0

    :sswitch_5
    const-string v2, "TextInput.show"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v5, 0x4

    goto :goto_0

    :sswitch_6
    const-string v2, "TextInput.hide"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v5, 0x3

    goto :goto_0

    :sswitch_7
    const-string v2, "TextInput.setClient"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v5, 0x2

    goto :goto_0

    :sswitch_8
    const-string v2, "TextInput.setEditingState"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_0

    :cond_9
    move v5, v3

    goto :goto_0

    :sswitch_9
    const-string v2, "TextInput.setPlatformViewClient"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_0

    :cond_a
    move v5, v4

    :goto_0
    const-string v1, "error"

    const/4 v2, 0x0

    packed-switch v5, :pswitch_data_0

    .line 152
    invoke-interface {p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    goto/16 :goto_3

    :pswitch_0
    iget-object p0, p0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    .line 86
    invoke-static {p0}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->access$000(Lio/flutter/embedding/engine/systemchannels/TextInputChannel;)Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputMethodHandler;

    move-result-object p0

    invoke-interface {p0}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputMethodHandler;->requestAutofill()V

    .line 87
    invoke-interface {p2, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_1
    iget-object p0, p0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    .line 128
    invoke-static {p0}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->access$000(Lio/flutter/embedding/engine/systemchannels/TextInputChannel;)Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputMethodHandler;

    move-result-object p0

    invoke-interface {p0}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputMethodHandler;->clearClient()V

    .line 129
    invoke-interface {p2, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_2
    iget-object p0, p0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    .line 148
    invoke-static {p0}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->access$000(Lio/flutter/embedding/engine/systemchannels/TextInputChannel;)Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputMethodHandler;

    move-result-object p0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, p1}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputMethodHandler;->finishAutofillContext(Z)V

    .line 149
    invoke-interface {p2, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 112
    :pswitch_3
    :try_start_0
    check-cast p1, Lorg/json/JSONObject;

    const-string v0, "width"

    .line 113
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    const-string v0, "height"

    .line 114
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    const-string v0, "transform"

    .line 115
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/16 v0, 0x10

    new-array v10, v0, [D

    :goto_1
    if-ge v4, v0, :cond_b

    .line 118
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v11

    aput-wide v11, v10, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_b
    iget-object p0, p0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    .line 121
    invoke-static {p0}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->access$000(Lio/flutter/embedding/engine/systemchannels/TextInputChannel;)Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputMethodHandler;

    move-result-object v5

    invoke-interface/range {v5 .. v10}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputMethodHandler;->setEditableSizeAndTransform(DD[D)V

    .line 122
    invoke-interface {p2, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception p0

    .line 124
    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, v1, p0, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 133
    :pswitch_4
    :try_start_1
    check-cast p1, Lorg/json/JSONObject;

    const-string v3, "action"

    .line 134
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 135
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 137
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_c

    .line 138
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 139
    invoke-virtual {v4, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_c
    move-object v4, v2

    :goto_2
    iget-object p0, p0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    .line 141
    invoke-static {p0}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->access$000(Lio/flutter/embedding/engine/systemchannels/TextInputChannel;)Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputMethodHandler;

    move-result-object p0

    invoke-interface {p0, v3, v4}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputMethodHandler;->sendAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 142
    invoke-interface {p2, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception p0

    .line 144
    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, v1, p0, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_5
    iget-object p0, p0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    .line 64
    invoke-static {p0}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->access$000(Lio/flutter/embedding/engine/systemchannels/TextInputChannel;)Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputMethodHandler;

    move-result-object p0

    invoke-interface {p0}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputMethodHandler;->show()V

    .line 65
    invoke-interface {p2, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_3

    :pswitch_6
    iget-object p0, p0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    .line 68
    invoke-static {p0}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->access$000(Lio/flutter/embedding/engine/systemchannels/TextInputChannel;)Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputMethodHandler;

    move-result-object p0

    invoke-interface {p0}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputMethodHandler;->hide()V

    .line 69
    invoke-interface {p2, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_3

    .line 73
    :pswitch_7
    :try_start_2
    check-cast p1, Lorg/json/JSONArray;

    .line 74
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v0

    .line 75
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    iget-object p0, p0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    .line 76
    invoke-static {p0}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->access$000(Lio/flutter/embedding/engine/systemchannels/TextInputChannel;)Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputMethodHandler;

    move-result-object p0

    .line 77
    invoke-static {p1}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;->fromJson(Lorg/json/JSONObject;)Lio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;

    move-result-object p1

    .line 76
    invoke-interface {p0, v0, p1}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputMethodHandler;->setClient(ILio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;)V

    .line 78
    invoke-interface {p2, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception p0

    .line 82
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, v1, p0, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 103
    :pswitch_8
    :try_start_3
    check-cast p1, Lorg/json/JSONObject;

    iget-object p0, p0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    .line 104
    invoke-static {p0}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->access$000(Lio/flutter/embedding/engine/systemchannels/TextInputChannel;)Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputMethodHandler;

    move-result-object p0

    invoke-static {p1}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;->fromJson(Lorg/json/JSONObject;)Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;

    move-result-object p1

    invoke-interface {p0, p1}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputMethodHandler;->setEditingState(Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;)V

    .line 105
    invoke-interface {p2, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception p0

    .line 107
    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, v1, p0, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 91
    :pswitch_9
    :try_start_4
    check-cast p1, Lorg/json/JSONObject;

    const-string v0, "platformViewId"

    .line 92
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v3, "usesVirtualDisplay"

    .line 94
    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iget-object p0, p0, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/TextInputChannel;

    .line 95
    invoke-static {p0}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel;->access$000(Lio/flutter/embedding/engine/systemchannels/TextInputChannel;)Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputMethodHandler;

    move-result-object p0

    invoke-interface {p0, v0, p1}, Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputMethodHandler;->setPlatformViewClient(IZ)V

    .line 96
    invoke-interface {p2, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_3

    :catch_4
    move-exception p0

    .line 98
    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, v1, p0, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6a0a6d0c -> :sswitch_9
        -0x3c861a16 -> :sswitch_8
        -0x23d2364 -> :sswitch_7
        0x101f2613 -> :sswitch_6
        0x102423ce -> :sswitch_5
        0x26b1e570 -> :sswitch_4
        0x47cf0f0b -> :sswitch_3
        0x66f8a3d9 -> :sswitch_2
        0x71834287 -> :sswitch_1
        0x7df775f0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
