.class public final Lio/flutter/plugins/videoplayer/Messages$LoopingMessage;
.super Ljava/lang/Object;
.source "Messages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/videoplayer/Messages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LoopingMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugins/videoplayer/Messages$LoopingMessage$Builder;
    }
.end annotation


# instance fields
.field private isLooping:Ljava/lang/Boolean;

.field private textureId:Ljava/lang/Long;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fromList(Ljava/util/ArrayList;)Lio/flutter/plugins/videoplayer/Messages$LoopingMessage;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/flutter/plugins/videoplayer/Messages$LoopingMessage;"
        }
    .end annotation

    .line 174
    new-instance v0, Lio/flutter/plugins/videoplayer/Messages$LoopingMessage;

    invoke-direct {v0}, Lio/flutter/plugins/videoplayer/Messages$LoopingMessage;-><init>()V

    const/4 v1, 0x0

    .line 175
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    .line 179
    :cond_0
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    goto :goto_0

    :cond_1
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 176
    :goto_1
    invoke-virtual {v0, v1}, Lio/flutter/plugins/videoplayer/Messages$LoopingMessage;->setTextureId(Ljava/lang/Long;)V

    const/4 v1, 0x1

    .line 180
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 181
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {v0, p0}, Lio/flutter/plugins/videoplayer/Messages$LoopingMessage;->setIsLooping(Ljava/lang/Boolean;)V

    return-object v0
.end method


# virtual methods
.method public getIsLooping()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lio/flutter/plugins/videoplayer/Messages$LoopingMessage;->isLooping:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getTextureId()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lio/flutter/plugins/videoplayer/Messages$LoopingMessage;->textureId:Ljava/lang/Long;

    return-object p0
.end method

.method public setIsLooping(Ljava/lang/Boolean;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lio/flutter/plugins/videoplayer/Messages$LoopingMessage;->isLooping:Ljava/lang/Boolean;

    return-void

    .line 133
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Nonnull field \"isLooping\" is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setTextureId(Ljava/lang/Long;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lio/flutter/plugins/videoplayer/Messages$LoopingMessage;->textureId:Ljava/lang/Long;

    return-void

    .line 120
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Nonnull field \"textureId\" is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method toList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lio/flutter/plugins/videoplayer/Messages$LoopingMessage;->textureId:Ljava/lang/Long;

    .line 168
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lio/flutter/plugins/videoplayer/Messages$LoopingMessage;->isLooping:Ljava/lang/Boolean;

    .line 169
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
