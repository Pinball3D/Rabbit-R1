.class public final Lio/flutter/plugins/videoplayer/Messages$PositionMessage$Builder;
.super Ljava/lang/Object;
.source "Messages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/videoplayer/Messages$PositionMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private position:Ljava/lang/Long;

.field private textureId:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lio/flutter/plugins/videoplayer/Messages$PositionMessage;
    .locals 2

    .line 386
    new-instance v0, Lio/flutter/plugins/videoplayer/Messages$PositionMessage;

    invoke-direct {v0}, Lio/flutter/plugins/videoplayer/Messages$PositionMessage;-><init>()V

    iget-object v1, p0, Lio/flutter/plugins/videoplayer/Messages$PositionMessage$Builder;->textureId:Ljava/lang/Long;

    .line 387
    invoke-virtual {v0, v1}, Lio/flutter/plugins/videoplayer/Messages$PositionMessage;->setTextureId(Ljava/lang/Long;)V

    iget-object p0, p0, Lio/flutter/plugins/videoplayer/Messages$PositionMessage$Builder;->position:Ljava/lang/Long;

    .line 388
    invoke-virtual {v0, p0}, Lio/flutter/plugins/videoplayer/Messages$PositionMessage;->setPosition(Ljava/lang/Long;)V

    return-object v0
.end method

.method public setPosition(Ljava/lang/Long;)Lio/flutter/plugins/videoplayer/Messages$PositionMessage$Builder;
    .locals 0

    iput-object p1, p0, Lio/flutter/plugins/videoplayer/Messages$PositionMessage$Builder;->position:Ljava/lang/Long;

    return-object p0
.end method

.method public setTextureId(Ljava/lang/Long;)Lio/flutter/plugins/videoplayer/Messages$PositionMessage$Builder;
    .locals 0

    iput-object p1, p0, Lio/flutter/plugins/videoplayer/Messages$PositionMessage$Builder;->textureId:Ljava/lang/Long;

    return-object p0
.end method
