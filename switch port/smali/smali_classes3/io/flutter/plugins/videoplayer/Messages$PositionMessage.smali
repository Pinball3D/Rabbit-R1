.class public final Lio/flutter/plugins/videoplayer/Messages$PositionMessage;
.super Ljava/lang/Object;
.source "Messages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/videoplayer/Messages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PositionMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugins/videoplayer/Messages$PositionMessage$Builder;
    }
.end annotation


# instance fields
.field private position:Ljava/lang/Long;

.field private textureId:Ljava/lang/Long;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fromList(Ljava/util/ArrayList;)Lio/flutter/plugins/videoplayer/Messages$PositionMessage;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/flutter/plugins/videoplayer/Messages$PositionMessage;"
        }
    .end annotation

    .line 402
    new-instance v0, Lio/flutter/plugins/videoplayer/Messages$PositionMessage;

    invoke-direct {v0}, Lio/flutter/plugins/videoplayer/Messages$PositionMessage;-><init>()V

    const/4 v1, 0x0

    .line 403
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_1

    .line 407
    :cond_0
    instance-of v3, v1, Ljava/lang/Integer;

    if-eqz v3, :cond_1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v3, v1

    goto :goto_0

    :cond_1
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    :goto_0
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 404
    :goto_1
    invoke-virtual {v0, v1}, Lio/flutter/plugins/videoplayer/Messages$PositionMessage;->setTextureId(Ljava/lang/Long;)V

    const/4 v1, 0x1

    .line 408
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_3

    .line 412
    :cond_2
    instance-of v1, p0, Ljava/lang/Integer;

    if-eqz v1, :cond_3

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long v1, p0

    goto :goto_2

    :cond_3
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_2
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 409
    :goto_3
    invoke-virtual {v0, v2}, Lio/flutter/plugins/videoplayer/Messages$PositionMessage;->setPosition(Ljava/lang/Long;)V

    return-object v0
.end method


# virtual methods
.method public getPosition()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lio/flutter/plugins/videoplayer/Messages$PositionMessage;->position:Ljava/lang/Long;

    return-object p0
.end method

.method public getTextureId()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lio/flutter/plugins/videoplayer/Messages$PositionMessage;->textureId:Ljava/lang/Long;

    return-object p0
.end method

.method public setPosition(Ljava/lang/Long;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lio/flutter/plugins/videoplayer/Messages$PositionMessage;->position:Ljava/lang/Long;

    return-void

    .line 361
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Nonnull field \"position\" is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setTextureId(Ljava/lang/Long;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lio/flutter/plugins/videoplayer/Messages$PositionMessage;->textureId:Ljava/lang/Long;

    return-void

    .line 348
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

    .line 395
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lio/flutter/plugins/videoplayer/Messages$PositionMessage;->textureId:Ljava/lang/Long;

    .line 396
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lio/flutter/plugins/videoplayer/Messages$PositionMessage;->position:Ljava/lang/Long;

    .line 397
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
