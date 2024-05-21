.class public final Lio/flutter/plugins/videoplayer/Messages$TextureMessage;
.super Ljava/lang/Object;
.source "Messages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/videoplayer/Messages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TextureMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugins/videoplayer/Messages$TextureMessage$Builder;
    }
.end annotation


# instance fields
.field private textureId:Ljava/lang/Long;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fromList(Ljava/util/ArrayList;)Lio/flutter/plugins/videoplayer/Messages$TextureMessage;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/flutter/plugins/videoplayer/Messages$TextureMessage;"
        }
    .end annotation

    .line 100
    new-instance v0, Lio/flutter/plugins/videoplayer/Messages$TextureMessage;

    invoke-direct {v0}, Lio/flutter/plugins/videoplayer/Messages$TextureMessage;-><init>()V

    const/4 v1, 0x0

    .line 101
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    .line 105
    :cond_0
    instance-of v1, p0, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long v1, p0

    goto :goto_0

    :cond_1
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    .line 102
    :goto_1
    invoke-virtual {v0, p0}, Lio/flutter/plugins/videoplayer/Messages$TextureMessage;->setTextureId(Ljava/lang/Long;)V

    return-object v0
.end method


# virtual methods
.method public getTextureId()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lio/flutter/plugins/videoplayer/Messages$TextureMessage;->textureId:Ljava/lang/Long;

    return-object p0
.end method

.method public setTextureId(Ljava/lang/Long;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lio/flutter/plugins/videoplayer/Messages$TextureMessage;->textureId:Ljava/lang/Long;

    return-void

    .line 68
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

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object p0, p0, Lio/flutter/plugins/videoplayer/Messages$TextureMessage;->textureId:Ljava/lang/Long;

    .line 95
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
