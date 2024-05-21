.class public Lio/flutter/embedding/android/KeyboardManager;
.super Ljava/lang/Object;
.source "KeyboardManager.java"

# interfaces
.implements Lio/flutter/plugin/editing/InputConnectionAdaptor$KeyboardDelegate;
.implements Lio/flutter/embedding/engine/systemchannels/KeyboardChannel$KeyboardMethodHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/android/KeyboardManager$ViewDelegate;,
        Lio/flutter/embedding/android/KeyboardManager$Responder;,
        Lio/flutter/embedding/android/KeyboardManager$PerEventCallbackBuilder;,
        Lio/flutter/embedding/android/KeyboardManager$CharacterCombiner;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "KeyboardManager"


# instance fields
.field private final redispatchedEvents:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/view/KeyEvent;",
            ">;"
        }
    .end annotation
.end field

.field protected final responders:[Lio/flutter/embedding/android/KeyboardManager$Responder;

.field private final viewDelegate:Lio/flutter/embedding/android/KeyboardManager$ViewDelegate;


# direct methods
.method public constructor <init>(Lio/flutter/embedding/android/KeyboardManager$ViewDelegate;)V
    .locals 4

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/android/KeyboardManager;->redispatchedEvents:Ljava/util/HashSet;

    iput-object p1, p0, Lio/flutter/embedding/android/KeyboardManager;->viewDelegate:Lio/flutter/embedding/android/KeyboardManager$ViewDelegate;

    const/4 v0, 0x2

    new-array v0, v0, [Lio/flutter/embedding/android/KeyboardManager$Responder;

    .line 120
    new-instance v1, Lio/flutter/embedding/android/KeyEmbedderResponder;

    .line 122
    invoke-interface {p1}, Lio/flutter/embedding/android/KeyboardManager$ViewDelegate;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/flutter/embedding/android/KeyEmbedderResponder;-><init>(Lio/flutter/plugin/common/BinaryMessenger;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lio/flutter/embedding/android/KeyChannelResponder;

    new-instance v2, Lio/flutter/embedding/engine/systemchannels/KeyEventChannel;

    .line 123
    invoke-interface {p1}, Lio/flutter/embedding/android/KeyboardManager$ViewDelegate;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object v3

    invoke-direct {v2, v3}, Lio/flutter/embedding/engine/systemchannels/KeyEventChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;)V

    invoke-direct {v1, v2}, Lio/flutter/embedding/android/KeyChannelResponder;-><init>(Lio/flutter/embedding/engine/systemchannels/KeyEventChannel;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iput-object v0, p0, Lio/flutter/embedding/android/KeyboardManager;->responders:[Lio/flutter/embedding/android/KeyboardManager$Responder;

    .line 125
    new-instance v0, Lio/flutter/embedding/engine/systemchannels/KeyboardChannel;

    invoke-interface {p1}, Lio/flutter/embedding/android/KeyboardManager$ViewDelegate;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object p1

    invoke-direct {v0, p1}, Lio/flutter/embedding/engine/systemchannels/KeyboardChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;)V

    .line 126
    invoke-virtual {v0, p0}, Lio/flutter/embedding/engine/systemchannels/KeyboardChannel;->setKeyboardMethodHandler(Lio/flutter/embedding/engine/systemchannels/KeyboardChannel$KeyboardMethodHandler;)V

    return-void
.end method

.method static synthetic access$000(Lio/flutter/embedding/android/KeyboardManager;Landroid/view/KeyEvent;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lio/flutter/embedding/android/KeyboardManager;->onUnhandled(Landroid/view/KeyEvent;)V

    return-void
.end method

.method private onUnhandled(Landroid/view/KeyEvent;)V
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/android/KeyboardManager;->viewDelegate:Lio/flutter/embedding/android/KeyboardManager$ViewDelegate;

    if-eqz v0, :cond_1

    .line 250
    invoke-interface {v0, p1}, Lio/flutter/embedding/android/KeyboardManager$ViewDelegate;->onTextInputKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/flutter/embedding/android/KeyboardManager;->redispatchedEvents:Ljava/util/HashSet;

    .line 254
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lio/flutter/embedding/android/KeyboardManager;->viewDelegate:Lio/flutter/embedding/android/KeyboardManager$ViewDelegate;

    .line 255
    invoke-interface {v0, p1}, Lio/flutter/embedding/android/KeyboardManager$ViewDelegate;->redispatch(Landroid/view/KeyEvent;)V

    iget-object p0, p0, Lio/flutter/embedding/android/KeyboardManager;->redispatchedEvents:Ljava/util/HashSet;

    .line 256
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "KeyboardManager"

    const-string p1, "A redispatched key event was consumed before reaching KeyboardManager"

    .line 257
    invoke-static {p0, p1}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    iget-object p0, p0, Lio/flutter/embedding/android/KeyboardManager;->redispatchedEvents:Ljava/util/HashSet;

    .line 239
    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result p0

    if-lez p0, :cond_0

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "A KeyboardManager was destroyed with "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 244
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " unhandled redispatch event(s)."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "KeyboardManager"

    .line 241
    invoke-static {v0, p0}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getKeyboardState()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/flutter/embedding/android/KeyboardManager;->responders:[Lio/flutter/embedding/android/KeyboardManager$Responder;

    const/4 v0, 0x0

    .line 268
    aget-object p0, p0, v0

    check-cast p0, Lio/flutter/embedding/android/KeyEmbedderResponder;

    .line 269
    invoke-virtual {p0}, Lio/flutter/embedding/android/KeyEmbedderResponder;->getPressedState()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public handleEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    iget-object v0, p0, Lio/flutter/embedding/android/KeyboardManager;->redispatchedEvents:Ljava/util/HashSet;

    .line 221
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lio/flutter/embedding/android/KeyboardManager;->responders:[Lio/flutter/embedding/android/KeyboardManager$Responder;

    .line 226
    array-length v0, v0

    if-lez v0, :cond_1

    .line 227
    new-instance v0, Lio/flutter/embedding/android/KeyboardManager$PerEventCallbackBuilder;

    invoke-direct {v0, p0, p1}, Lio/flutter/embedding/android/KeyboardManager$PerEventCallbackBuilder;-><init>(Lio/flutter/embedding/android/KeyboardManager;Landroid/view/KeyEvent;)V

    iget-object p0, p0, Lio/flutter/embedding/android/KeyboardManager;->responders:[Lio/flutter/embedding/android/KeyboardManager$Responder;

    .line 228
    array-length v2, p0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, p0, v1

    .line 229
    invoke-virtual {v0}, Lio/flutter/embedding/android/KeyboardManager$PerEventCallbackBuilder;->buildCallback()Lio/flutter/embedding/android/KeyboardManager$Responder$OnKeyEventHandledCallback;

    move-result-object v4

    invoke-interface {v3, p1, v4}, Lio/flutter/embedding/android/KeyboardManager$Responder;->handleEvent(Landroid/view/KeyEvent;Lio/flutter/embedding/android/KeyboardManager$Responder$OnKeyEventHandledCallback;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 232
    :cond_1
    invoke-direct {p0, p1}, Lio/flutter/embedding/android/KeyboardManager;->onUnhandled(Landroid/view/KeyEvent;)V

    :cond_2
    const/4 p0, 0x1

    return p0
.end method
