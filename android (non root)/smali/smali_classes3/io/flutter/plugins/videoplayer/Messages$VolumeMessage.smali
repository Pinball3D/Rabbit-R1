.class public final Lio/flutter/plugins/videoplayer/Messages$VolumeMessage;
.super Ljava/lang/Object;
.source "Messages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/videoplayer/Messages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VolumeMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugins/videoplayer/Messages$VolumeMessage$Builder;
    }
.end annotation


# instance fields
.field private textureId:Ljava/lang/Long;

.field private volume:Ljava/lang/Double;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fromList(Ljava/util/ArrayList;)Lio/flutter/plugins/videoplayer/Messages$VolumeMessage;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/flutter/plugins/videoplayer/Messages$VolumeMessage;"
        }
    .end annotation

    .line 250
    new-instance v0, Lio/flutter/plugins/videoplayer/Messages$VolumeMessage;

    invoke-direct {v0}, Lio/flutter/plugins/videoplayer/Messages$VolumeMessage;-><init>()V

    const/4 v1, 0x0

    .line 251
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    .line 255
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

    .line 252
    :goto_1
    invoke-virtual {v0, v1}, Lio/flutter/plugins/videoplayer/Messages$VolumeMessage;->setTextureId(Ljava/lang/Long;)V

    const/4 v1, 0x1

    .line 256
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 257
    check-cast p0, Ljava/lang/Double;

    invoke-virtual {v0, p0}, Lio/flutter/plugins/videoplayer/Messages$VolumeMessage;->setVolume(Ljava/lang/Double;)V

    return-object v0
.end method


# virtual methods
.method public getTextureId()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lio/flutter/plugins/videoplayer/Messages$VolumeMessage;->textureId:Ljava/lang/Long;

    return-object p0
.end method

.method public getVolume()Ljava/lang/Double;
    .locals 0

    iget-object p0, p0, Lio/flutter/plugins/videoplayer/Messages$VolumeMessage;->volume:Ljava/lang/Double;

    return-object p0
.end method

.method public setTextureId(Ljava/lang/Long;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lio/flutter/plugins/videoplayer/Messages$VolumeMessage;->textureId:Ljava/lang/Long;

    return-void

    .line 196
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Nonnull field \"textureId\" is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setVolume(Ljava/lang/Double;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lio/flutter/plugins/videoplayer/Messages$VolumeMessage;->volume:Ljava/lang/Double;

    return-void

    .line 209
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Nonnull field \"volume\" is null."

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

    .line 243
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lio/flutter/plugins/videoplayer/Messages$VolumeMessage;->textureId:Ljava/lang/Long;

    .line 244
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lio/flutter/plugins/videoplayer/Messages$VolumeMessage;->volume:Ljava/lang/Double;

    .line 245
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
