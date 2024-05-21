.class Lio/flutter/embedding/engine/systemchannels/RestorationChannel$1;
.super Ljava/lang/Object;
.source "RestorationChannel.java"

# interfaces
.implements Lio/flutter/plugin/common/MethodChannel$Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/embedding/engine/systemchannels/RestorationChannel;->setRestorationData([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/flutter/embedding/engine/systemchannels/RestorationChannel;

.field final synthetic val$data:[B


# direct methods
.method constructor <init>(Lio/flutter/embedding/engine/systemchannels/RestorationChannel;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lio/flutter/embedding/engine/systemchannels/RestorationChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/RestorationChannel;

    iput-object p2, p0, Lio/flutter/embedding/engine/systemchannels/RestorationChannel$1;->val$data:[B

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 106
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p3, "Error "

    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " while sending restoration data to framework: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RestorationChannel"

    invoke-static {p1, p0}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public notImplemented()V
    .locals 0

    return-void
.end method

.method public success(Ljava/lang/Object;)V
    .locals 0

    iget-object p1, p0, Lio/flutter/embedding/engine/systemchannels/RestorationChannel$1;->this$0:Lio/flutter/embedding/engine/systemchannels/RestorationChannel;

    iget-object p0, p0, Lio/flutter/embedding/engine/systemchannels/RestorationChannel$1;->val$data:[B

    .line 101
    invoke-static {p1, p0}, Lio/flutter/embedding/engine/systemchannels/RestorationChannel;->access$002(Lio/flutter/embedding/engine/systemchannels/RestorationChannel;[B)[B

    return-void
.end method
