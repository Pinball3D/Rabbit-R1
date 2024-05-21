.class public final synthetic Lio/flutter/embedding/engine/dart/DartMessenger$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/flutter/embedding/engine/dart/DartMessenger;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:Lio/flutter/embedding/engine/dart/DartMessenger$HandlerInfo;

.field public final synthetic f$4:Ljava/nio/ByteBuffer;

.field public final synthetic f$5:J


# direct methods
.method public synthetic constructor <init>(Lio/flutter/embedding/engine/dart/DartMessenger;Ljava/lang/String;ILio/flutter/embedding/engine/dart/DartMessenger$HandlerInfo;Ljava/nio/ByteBuffer;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/embedding/engine/dart/DartMessenger$$ExternalSyntheticLambda0;->f$0:Lio/flutter/embedding/engine/dart/DartMessenger;

    iput-object p2, p0, Lio/flutter/embedding/engine/dart/DartMessenger$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput p3, p0, Lio/flutter/embedding/engine/dart/DartMessenger$$ExternalSyntheticLambda0;->f$2:I

    iput-object p4, p0, Lio/flutter/embedding/engine/dart/DartMessenger$$ExternalSyntheticLambda0;->f$3:Lio/flutter/embedding/engine/dart/DartMessenger$HandlerInfo;

    iput-object p5, p0, Lio/flutter/embedding/engine/dart/DartMessenger$$ExternalSyntheticLambda0;->f$4:Ljava/nio/ByteBuffer;

    iput-wide p6, p0, Lio/flutter/embedding/engine/dart/DartMessenger$$ExternalSyntheticLambda0;->f$5:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lio/flutter/embedding/engine/dart/DartMessenger$$ExternalSyntheticLambda0;->f$0:Lio/flutter/embedding/engine/dart/DartMessenger;

    iget-object v1, p0, Lio/flutter/embedding/engine/dart/DartMessenger$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget v2, p0, Lio/flutter/embedding/engine/dart/DartMessenger$$ExternalSyntheticLambda0;->f$2:I

    iget-object v3, p0, Lio/flutter/embedding/engine/dart/DartMessenger$$ExternalSyntheticLambda0;->f$3:Lio/flutter/embedding/engine/dart/DartMessenger$HandlerInfo;

    iget-object v4, p0, Lio/flutter/embedding/engine/dart/DartMessenger$$ExternalSyntheticLambda0;->f$4:Ljava/nio/ByteBuffer;

    iget-wide v5, p0, Lio/flutter/embedding/engine/dart/DartMessenger$$ExternalSyntheticLambda0;->f$5:J

    invoke-virtual/range {v0 .. v6}, Lio/flutter/embedding/engine/dart/DartMessenger;->lambda$dispatchMessageToQueue$0$io-flutter-embedding-engine-dart-DartMessenger(Ljava/lang/String;ILio/flutter/embedding/engine/dart/DartMessenger$HandlerInfo;Ljava/nio/ByteBuffer;J)V

    return-void
.end method
