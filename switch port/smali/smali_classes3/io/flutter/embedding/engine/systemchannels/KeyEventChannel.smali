.class public Lio/flutter/embedding/engine/systemchannels/KeyEventChannel;
.super Ljava/lang/Object;
.source "KeyEventChannel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/engine/systemchannels/KeyEventChannel$FlutterKeyEvent;,
        Lio/flutter/embedding/engine/systemchannels/KeyEventChannel$EventResponseHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "KeyEventChannel"


# instance fields
.field public final channel:Lio/flutter/plugin/common/BasicMessageChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/flutter/plugin/common/BasicMessageChannel<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/flutter/plugin/common/BinaryMessenger;)V
    .locals 3

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lio/flutter/plugin/common/BasicMessageChannel;

    const-string v1, "flutter/keyevent"

    sget-object v2, Lio/flutter/plugin/common/JSONMessageCodec;->INSTANCE:Lio/flutter/plugin/common/JSONMessageCodec;

    invoke-direct {v0, p1, v1, v2}, Lio/flutter/plugin/common/BasicMessageChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MessageCodec;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/systemchannels/KeyEventChannel;->channel:Lio/flutter/plugin/common/BasicMessageChannel;

    return-void
.end method

.method private static createReplyHandler(Lio/flutter/embedding/engine/systemchannels/KeyEventChannel$EventResponseHandler;)Lio/flutter/plugin/common/BasicMessageChannel$Reply;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/flutter/embedding/engine/systemchannels/KeyEventChannel$EventResponseHandler;",
            ")",
            "Lio/flutter/plugin/common/BasicMessageChannel$Reply<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 85
    new-instance v0, Lio/flutter/embedding/engine/systemchannels/KeyEventChannel$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lio/flutter/embedding/engine/systemchannels/KeyEventChannel$$ExternalSyntheticLambda0;-><init>(Lio/flutter/embedding/engine/systemchannels/KeyEventChannel$EventResponseHandler;)V

    return-object v0
.end method

.method private encodeKeyEvent(Lio/flutter/embedding/engine/systemchannels/KeyEventChannel$FlutterKeyEvent;Z)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/flutter/embedding/engine/systemchannels/KeyEventChannel$FlutterKeyEvent;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 60
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    if-eqz p2, :cond_0

    const-string p2, "keyup"

    goto :goto_0

    :cond_0
    const-string p2, "keydown"

    :goto_0
    const-string v0, "type"

    .line 61
    invoke-interface {p0, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "keymap"

    const-string v0, "android"

    .line 62
    invoke-interface {p0, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object p2, p1, Lio/flutter/embedding/engine/systemchannels/KeyEventChannel$FlutterKeyEvent;->event:Landroid/view/KeyEvent;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "flags"

    invoke-interface {p0, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object p2, p1, Lio/flutter/embedding/engine/systemchannels/KeyEventChannel$FlutterKeyEvent;->event:Landroid/view/KeyEvent;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "plainCodePoint"

    invoke-interface {p0, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object p2, p1, Lio/flutter/embedding/engine/systemchannels/KeyEventChannel$FlutterKeyEvent;->event:Landroid/view/KeyEvent;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "codePoint"

    invoke-interface {p0, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object p2, p1, Lio/flutter/embedding/engine/systemchannels/KeyEventChannel$FlutterKeyEvent;->event:Landroid/view/KeyEvent;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "keyCode"

    invoke-interface {p0, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object p2, p1, Lio/flutter/embedding/engine/systemchannels/KeyEventChannel$FlutterKeyEvent;->event:Landroid/view/KeyEvent;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "scanCode"

    invoke-interface {p0, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object p2, p1, Lio/flutter/embedding/engine/systemchannels/KeyEventChannel$FlutterKeyEvent;->event:Landroid/view/KeyEvent;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "metaState"

    invoke-interface {p0, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object p2, p1, Lio/flutter/embedding/engine/systemchannels/KeyEventChannel$FlutterKeyEvent;->complexCharacter:Ljava/lang/Character;

    if-eqz p2, :cond_1

    .line 70
    iget-object p2, p1, Lio/flutter/embedding/engine/systemchannels/KeyEventChannel$FlutterKeyEvent;->complexCharacter:Ljava/lang/Character;

    invoke-virtual {p2}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "character"

    invoke-interface {p0, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    :cond_1
    iget-object p2, p1, Lio/flutter/embedding/engine/systemchannels/KeyEventChannel$FlutterKeyEvent;->event:Landroid/view/KeyEvent;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getSource()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "source"

    invoke-interface {p0, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object p2, p1, Lio/flutter/embedding/engine/systemchannels/KeyEventChannel$FlutterKeyEvent;->event:Landroid/view/KeyEvent;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "deviceId"

    invoke-interface {p0, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object p1, p1, Lio/flutter/embedding/engine/systemchannels/KeyEventChannel$FlutterKeyEvent;->event:Landroid/view/KeyEvent;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "repeatCount"

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic lambda$createReplyHandler$0(Lio/flutter/embedding/engine/systemchannels/KeyEventChannel$EventResponseHandler;Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 89
    :try_start_0
    check-cast p1, Lorg/json/JSONObject;

    const-string v1, "handled"

    .line 90
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to unpack JSON message: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "KeyEventChannel"

    invoke-static {v1, p1}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_0
    :goto_0
    invoke-interface {p0, v0}, Lio/flutter/embedding/engine/systemchannels/KeyEventChannel$EventResponseHandler;->onFrameworkResponse(Z)V

    return-void
.end method


# virtual methods
.method public sendFlutterKeyEvent(Lio/flutter/embedding/engine/systemchannels/KeyEventChannel$FlutterKeyEvent;ZLio/flutter/embedding/engine/systemchannels/KeyEventChannel$EventResponseHandler;)V
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/engine/systemchannels/KeyEventChannel;->channel:Lio/flutter/plugin/common/BasicMessageChannel;

    .line 56
    invoke-direct {p0, p1, p2}, Lio/flutter/embedding/engine/systemchannels/KeyEventChannel;->encodeKeyEvent(Lio/flutter/embedding/engine/systemchannels/KeyEventChannel$FlutterKeyEvent;Z)Ljava/util/Map;

    move-result-object p0

    invoke-static {p3}, Lio/flutter/embedding/engine/systemchannels/KeyEventChannel;->createReplyHandler(Lio/flutter/embedding/engine/systemchannels/KeyEventChannel$EventResponseHandler;)Lio/flutter/plugin/common/BasicMessageChannel$Reply;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lio/flutter/plugin/common/BasicMessageChannel;->send(Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V

    return-void
.end method
