.class public final synthetic Lio/flutter/embedding/engine/systemchannels/KeyEventChannel$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/flutter/plugin/common/BasicMessageChannel$Reply;


# instance fields
.field public final synthetic f$0:Lio/flutter/embedding/engine/systemchannels/KeyEventChannel$EventResponseHandler;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/embedding/engine/systemchannels/KeyEventChannel$EventResponseHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/embedding/engine/systemchannels/KeyEventChannel$$ExternalSyntheticLambda0;->f$0:Lio/flutter/embedding/engine/systemchannels/KeyEventChannel$EventResponseHandler;

    return-void
.end method


# virtual methods
.method public final reply(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/engine/systemchannels/KeyEventChannel$$ExternalSyntheticLambda0;->f$0:Lio/flutter/embedding/engine/systemchannels/KeyEventChannel$EventResponseHandler;

    invoke-static {p0, p1}, Lio/flutter/embedding/engine/systemchannels/KeyEventChannel;->lambda$createReplyHandler$0(Lio/flutter/embedding/engine/systemchannels/KeyEventChannel$EventResponseHandler;Ljava/lang/Object;)V

    return-void
.end method
