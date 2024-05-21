.class public final synthetic Lio/flutter/embedding/engine/dart/DartMessenger$SerialTaskQueue$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/flutter/embedding/engine/dart/DartMessenger$SerialTaskQueue;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/embedding/engine/dart/DartMessenger$SerialTaskQueue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/embedding/engine/dart/DartMessenger$SerialTaskQueue$$ExternalSyntheticLambda0;->f$0:Lio/flutter/embedding/engine/dart/DartMessenger$SerialTaskQueue;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/engine/dart/DartMessenger$SerialTaskQueue$$ExternalSyntheticLambda0;->f$0:Lio/flutter/embedding/engine/dart/DartMessenger$SerialTaskQueue;

    invoke-virtual {p0}, Lio/flutter/embedding/engine/dart/DartMessenger$SerialTaskQueue;->lambda$flush$1$io-flutter-embedding-engine-dart-DartMessenger$SerialTaskQueue()V

    return-void
.end method
