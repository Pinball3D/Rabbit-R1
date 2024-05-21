.class public Lio/flutter/embedding/engine/systemchannels/LifecycleChannel;
.super Ljava/lang/Object;
.source "LifecycleChannel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/engine/systemchannels/LifecycleChannel$AppLifecycleState;
    }
.end annotation


# static fields
.field private static final CHANNEL_NAME:Ljava/lang/String; = "flutter/lifecycle"

.field private static final TAG:Ljava/lang/String; = "LifecycleChannel"


# instance fields
.field private final channel:Lio/flutter/plugin/common/BasicMessageChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/flutter/plugin/common/BasicMessageChannel<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lastAndroidState:Lio/flutter/embedding/engine/systemchannels/LifecycleChannel$AppLifecycleState;

.field private lastFlutterState:Lio/flutter/embedding/engine/systemchannels/LifecycleChannel$AppLifecycleState;

.field private lastFocus:Z


# direct methods
.method public constructor <init>(Lio/flutter/embedding/engine/dart/DartExecutor;)V
    .locals 3

    .line 46
    new-instance v0, Lio/flutter/plugin/common/BasicMessageChannel;

    const-string v1, "flutter/lifecycle"

    sget-object v2, Lio/flutter/plugin/common/StringCodec;->INSTANCE:Lio/flutter/plugin/common/StringCodec;

    invoke-direct {v0, p1, v1, v2}, Lio/flutter/plugin/common/BasicMessageChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MessageCodec;)V

    invoke-direct {p0, v0}, Lio/flutter/embedding/engine/systemchannels/LifecycleChannel;-><init>(Lio/flutter/plugin/common/BasicMessageChannel;)V

    return-void
.end method

.method public constructor <init>(Lio/flutter/plugin/common/BasicMessageChannel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/flutter/plugin/common/BasicMessageChannel<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/flutter/embedding/engine/systemchannels/LifecycleChannel;->lastAndroidState:Lio/flutter/embedding/engine/systemchannels/LifecycleChannel$AppLifecycleState;

    iput-object v0, p0, Lio/flutter/embedding/engine/systemchannels/LifecycleChannel;->lastFlutterState:Lio/flutter/embedding/engine/systemchannels/LifecycleChannel$AppLifecycleState;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/flutter/embedding/engine/systemchannels/LifecycleChannel;->lastFocus:Z

    iput-object p1, p0, Lio/flutter/embedding/engine/systemchannels/LifecycleChannel;->channel:Lio/flutter/plugin/common/BasicMessageChannel;

    return-void
.end method

.method private sendState(Lio/flutter/embedding/engine/systemchannels/LifecycleChannel$AppLifecycleState;Z)V
    .locals 2

    iget-object v0, p0, Lio/flutter/embedding/engine/systemchannels/LifecycleChannel;->lastAndroidState:Lio/flutter/embedding/engine/systemchannels/LifecycleChannel$AppLifecycleState;

    if-ne v0, p1, :cond_0

    iget-boolean v1, p0, Lio/flutter/embedding/engine/systemchannels/LifecycleChannel;->lastFocus:Z

    if-ne p2, v1, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    if-nez v0, :cond_1

    iput-boolean p2, p0, Lio/flutter/embedding/engine/systemchannels/LifecycleChannel;->lastFocus:Z

    return-void

    .line 83
    :cond_1
    sget-object v0, Lio/flutter/embedding/engine/systemchannels/LifecycleChannel$1;->$SwitchMap$io$flutter$embedding$engine$systemchannels$LifecycleChannel$AppLifecycleState:[I

    invoke-virtual {p1}, Lio/flutter/embedding/engine/systemchannels/LifecycleChannel$AppLifecycleState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move-object v0, p1

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    .line 89
    sget-object v0, Lio/flutter/embedding/engine/systemchannels/LifecycleChannel$AppLifecycleState;->RESUMED:Lio/flutter/embedding/engine/systemchannels/LifecycleChannel$AppLifecycleState;

    goto :goto_0

    :cond_4
    sget-object v0, Lio/flutter/embedding/engine/systemchannels/LifecycleChannel$AppLifecycleState;->INACTIVE:Lio/flutter/embedding/engine/systemchannels/LifecycleChannel$AppLifecycleState;

    :goto_0
    iput-object p1, p0, Lio/flutter/embedding/engine/systemchannels/LifecycleChannel;->lastAndroidState:Lio/flutter/embedding/engine/systemchannels/LifecycleChannel$AppLifecycleState;

    iput-boolean p2, p0, Lio/flutter/embedding/engine/systemchannels/LifecycleChannel;->lastFocus:Z

    iget-object p1, p0, Lio/flutter/embedding/engine/systemchannels/LifecycleChannel;->lastFlutterState:Lio/flutter/embedding/engine/systemchannels/LifecycleChannel$AppLifecycleState;

    if-ne v0, p1, :cond_5

    return-void

    .line 106
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "AppLifecycleState."

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lio/flutter/embedding/engine/systemchannels/LifecycleChannel$AppLifecycleState;->name()Ljava/lang/String;

    move-result-object p2

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 107
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Sending "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " message."

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "LifecycleChannel"

    invoke-static {v1, p2}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lio/flutter/embedding/engine/systemchannels/LifecycleChannel;->channel:Lio/flutter/plugin/common/BasicMessageChannel;

    .line 108
    invoke-virtual {p2, p1}, Lio/flutter/plugin/common/BasicMessageChannel;->send(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/systemchannels/LifecycleChannel;->lastFlutterState:Lio/flutter/embedding/engine/systemchannels/LifecycleChannel$AppLifecycleState;

    return-void
.end method


# virtual methods
.method public aWindowIsFocused()V
    .locals 2

    iget-object v0, p0, Lio/flutter/embedding/engine/systemchannels/LifecycleChannel;->lastAndroidState:Lio/flutter/embedding/engine/systemchannels/LifecycleChannel$AppLifecycleState;

    const/4 v1, 0x1

    .line 115
    invoke-direct {p0, v0, v1}, Lio/flutter/embedding/engine/systemchannels/LifecycleChannel;->sendState(Lio/flutter/embedding/engine/systemchannels/LifecycleChannel$AppLifecycleState;Z)V

    return-void
.end method

.method public appIsDetached()V
    .locals 2

    .line 136
    sget-object v0, Lio/flutter/embedding/engine/systemchannels/LifecycleChannel$AppLifecycleState;->DETACHED:Lio/flutter/embedding/engine/systemchannels/LifecycleChannel$AppLifecycleState;

    iget-boolean v1, p0, Lio/flutter/embedding/engine/systemchannels/LifecycleChannel;->lastFocus:Z

    invoke-direct {p0, v0, v1}, Lio/flutter/embedding/engine/systemchannels/LifecycleChannel;->sendState(Lio/flutter/embedding/engine/systemchannels/LifecycleChannel$AppLifecycleState;Z)V

    return-void
.end method

.method public appIsInactive()V
    .locals 2

    .line 128
    sget-object v0, Lio/flutter/embedding/engine/systemchannels/LifecycleChannel$AppLifecycleState;->INACTIVE:Lio/flutter/embedding/engine/systemchannels/LifecycleChannel$AppLifecycleState;

    iget-boolean v1, p0, Lio/flutter/embedding/engine/systemchannels/LifecycleChannel;->lastFocus:Z

    invoke-direct {p0, v0, v1}, Lio/flutter/embedding/engine/systemchannels/LifecycleChannel;->sendState(Lio/flutter/embedding/engine/systemchannels/LifecycleChannel$AppLifecycleState;Z)V

    return-void
.end method

.method public appIsPaused()V
    .locals 2

    .line 132
    sget-object v0, Lio/flutter/embedding/engine/systemchannels/LifecycleChannel$AppLifecycleState;->PAUSED:Lio/flutter/embedding/engine/systemchannels/LifecycleChannel$AppLifecycleState;

    iget-boolean v1, p0, Lio/flutter/embedding/engine/systemchannels/LifecycleChannel;->lastFocus:Z

    invoke-direct {p0, v0, v1}, Lio/flutter/embedding/engine/systemchannels/LifecycleChannel;->sendState(Lio/flutter/embedding/engine/systemchannels/LifecycleChannel$AppLifecycleState;Z)V

    return-void
.end method

.method public appIsResumed()V
    .locals 2

    .line 124
    sget-object v0, Lio/flutter/embedding/engine/systemchannels/LifecycleChannel$AppLifecycleState;->RESUMED:Lio/flutter/embedding/engine/systemchannels/LifecycleChannel$AppLifecycleState;

    iget-boolean v1, p0, Lio/flutter/embedding/engine/systemchannels/LifecycleChannel;->lastFocus:Z

    invoke-direct {p0, v0, v1}, Lio/flutter/embedding/engine/systemchannels/LifecycleChannel;->sendState(Lio/flutter/embedding/engine/systemchannels/LifecycleChannel$AppLifecycleState;Z)V

    return-void
.end method

.method public noWindowsAreFocused()V
    .locals 2

    iget-object v0, p0, Lio/flutter/embedding/engine/systemchannels/LifecycleChannel;->lastAndroidState:Lio/flutter/embedding/engine/systemchannels/LifecycleChannel$AppLifecycleState;

    const/4 v1, 0x0

    .line 120
    invoke-direct {p0, v0, v1}, Lio/flutter/embedding/engine/systemchannels/LifecycleChannel;->sendState(Lio/flutter/embedding/engine/systemchannels/LifecycleChannel$AppLifecycleState;Z)V

    return-void
.end method
