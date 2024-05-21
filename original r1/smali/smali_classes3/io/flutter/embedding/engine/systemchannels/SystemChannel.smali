.class public Lio/flutter/embedding/engine/systemchannels/SystemChannel;
.super Ljava/lang/Object;
.source "SystemChannel.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SystemChannel"


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
.method public constructor <init>(Lio/flutter/embedding/engine/dart/DartExecutor;)V
    .locals 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lio/flutter/plugin/common/BasicMessageChannel;

    const-string v1, "flutter/system"

    sget-object v2, Lio/flutter/plugin/common/JSONMessageCodec;->INSTANCE:Lio/flutter/plugin/common/JSONMessageCodec;

    invoke-direct {v0, p1, v1, v2}, Lio/flutter/plugin/common/BasicMessageChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MessageCodec;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/systemchannels/SystemChannel;->channel:Lio/flutter/plugin/common/BasicMessageChannel;

    return-void
.end method


# virtual methods
.method public sendMemoryPressureWarning()V
    .locals 3

    const-string v0, "SystemChannel"

    const-string v1, "Sending memory pressure warning to Flutter."

    .line 27
    invoke-static {v0, v1}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "type"

    const-string v2, "memoryPressure"

    .line 29
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lio/flutter/embedding/engine/systemchannels/SystemChannel;->channel:Lio/flutter/plugin/common/BasicMessageChannel;

    .line 30
    invoke-virtual {p0, v0}, Lio/flutter/plugin/common/BasicMessageChannel;->send(Ljava/lang/Object;)V

    return-void
.end method
