.class public final Lio/flutter/plugins/videoplayer/Messages$LoopingMessage$Builder;
.super Ljava/lang/Object;
.source "Messages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/videoplayer/Messages$LoopingMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private isLooping:Ljava/lang/Boolean;

.field private textureId:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lio/flutter/plugins/videoplayer/Messages$LoopingMessage;
    .locals 2

    .line 158
    new-instance v0, Lio/flutter/plugins/videoplayer/Messages$LoopingMessage;

    invoke-direct {v0}, Lio/flutter/plugins/videoplayer/Messages$LoopingMessage;-><init>()V

    iget-object v1, p0, Lio/flutter/plugins/videoplayer/Messages$LoopingMessage$Builder;->textureId:Ljava/lang/Long;

    .line 159
    invoke-virtual {v0, v1}, Lio/flutter/plugins/videoplayer/Messages$LoopingMessage;->setTextureId(Ljava/lang/Long;)V

    iget-object p0, p0, Lio/flutter/plugins/videoplayer/Messages$LoopingMessage$Builder;->isLooping:Ljava/lang/Boolean;

    .line 160
    invoke-virtual {v0, p0}, Lio/flutter/plugins/videoplayer/Messages$LoopingMessage;->setIsLooping(Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public setIsLooping(Ljava/lang/Boolean;)Lio/flutter/plugins/videoplayer/Messages$LoopingMessage$Builder;
    .locals 0

    iput-object p1, p0, Lio/flutter/plugins/videoplayer/Messages$LoopingMessage$Builder;->isLooping:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setTextureId(Ljava/lang/Long;)Lio/flutter/plugins/videoplayer/Messages$LoopingMessage$Builder;
    .locals 0

    iput-object p1, p0, Lio/flutter/plugins/videoplayer/Messages$LoopingMessage$Builder;->textureId:Ljava/lang/Long;

    return-object p0
.end method
