.class Lio/flutter/embedding/engine/dart/DartMessenger$BufferedMessageInfo;
.super Ljava/lang/Object;
.source "DartMessenger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/dart/DartMessenger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BufferedMessageInfo"
.end annotation


# instance fields
.field public final message:Ljava/nio/ByteBuffer;

.field messageData:J

.field replyId:I


# direct methods
.method constructor <init>(Ljava/nio/ByteBuffer;IJ)V
    .locals 0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/embedding/engine/dart/DartMessenger$BufferedMessageInfo;->message:Ljava/nio/ByteBuffer;

    iput p2, p0, Lio/flutter/embedding/engine/dart/DartMessenger$BufferedMessageInfo;->replyId:I

    iput-wide p3, p0, Lio/flutter/embedding/engine/dart/DartMessenger$BufferedMessageInfo;->messageData:J

    return-void
.end method
