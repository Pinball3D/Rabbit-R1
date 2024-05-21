.class public final synthetic Lio/flutter/embedding/android/KeyChannelResponder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/flutter/embedding/engine/systemchannels/KeyEventChannel$EventResponseHandler;


# instance fields
.field public final synthetic f$0:Lio/flutter/embedding/android/KeyboardManager$Responder$OnKeyEventHandledCallback;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/embedding/android/KeyboardManager$Responder$OnKeyEventHandledCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/embedding/android/KeyChannelResponder$$ExternalSyntheticLambda0;->f$0:Lio/flutter/embedding/android/KeyboardManager$Responder$OnKeyEventHandledCallback;

    return-void
.end method


# virtual methods
.method public final onFrameworkResponse(Z)V
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/android/KeyChannelResponder$$ExternalSyntheticLambda0;->f$0:Lio/flutter/embedding/android/KeyboardManager$Responder$OnKeyEventHandledCallback;

    invoke-static {p0, p1}, Lio/flutter/embedding/android/KeyChannelResponder;->lambda$handleEvent$0(Lio/flutter/embedding/android/KeyboardManager$Responder$OnKeyEventHandledCallback;Z)V

    return-void
.end method
