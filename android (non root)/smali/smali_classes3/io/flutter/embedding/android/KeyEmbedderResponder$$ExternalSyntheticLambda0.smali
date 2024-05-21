.class public final synthetic Lio/flutter/embedding/android/KeyEmbedderResponder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/flutter/plugin/common/BinaryMessenger$BinaryReply;


# instance fields
.field public final synthetic f$0:Lio/flutter/embedding/android/KeyboardManager$Responder$OnKeyEventHandledCallback;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/embedding/android/KeyboardManager$Responder$OnKeyEventHandledCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/embedding/android/KeyEmbedderResponder$$ExternalSyntheticLambda0;->f$0:Lio/flutter/embedding/android/KeyboardManager$Responder$OnKeyEventHandledCallback;

    return-void
.end method


# virtual methods
.method public final reply(Ljava/nio/ByteBuffer;)V
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/android/KeyEmbedderResponder$$ExternalSyntheticLambda0;->f$0:Lio/flutter/embedding/android/KeyboardManager$Responder$OnKeyEventHandledCallback;

    invoke-static {p0, p1}, Lio/flutter/embedding/android/KeyEmbedderResponder;->lambda$sendKeyEvent$2(Lio/flutter/embedding/android/KeyboardManager$Responder$OnKeyEventHandledCallback;Ljava/nio/ByteBuffer;)V

    return-void
.end method
