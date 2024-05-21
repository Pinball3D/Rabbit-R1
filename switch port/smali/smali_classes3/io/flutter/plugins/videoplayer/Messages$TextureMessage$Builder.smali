.class public final Lio/flutter/plugins/videoplayer/Messages$TextureMessage$Builder;
.super Ljava/lang/Object;
.source "Messages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/videoplayer/Messages$TextureMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private textureId:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lio/flutter/plugins/videoplayer/Messages$TextureMessage;
    .locals 1

    .line 86
    new-instance v0, Lio/flutter/plugins/videoplayer/Messages$TextureMessage;

    invoke-direct {v0}, Lio/flutter/plugins/videoplayer/Messages$TextureMessage;-><init>()V

    iget-object p0, p0, Lio/flutter/plugins/videoplayer/Messages$TextureMessage$Builder;->textureId:Ljava/lang/Long;

    .line 87
    invoke-virtual {v0, p0}, Lio/flutter/plugins/videoplayer/Messages$TextureMessage;->setTextureId(Ljava/lang/Long;)V

    return-object v0
.end method

.method public setTextureId(Ljava/lang/Long;)Lio/flutter/plugins/videoplayer/Messages$TextureMessage$Builder;
    .locals 0

    iput-object p1, p0, Lio/flutter/plugins/videoplayer/Messages$TextureMessage$Builder;->textureId:Ljava/lang/Long;

    return-object p0
.end method
