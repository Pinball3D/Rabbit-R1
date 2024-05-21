.class public final Lio/flutter/plugins/videoplayer/Messages$MixWithOthersMessage;
.super Ljava/lang/Object;
.source "Messages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/videoplayer/Messages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MixWithOthersMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugins/videoplayer/Messages$MixWithOthersMessage$Builder;
    }
.end annotation


# instance fields
.field private mixWithOthers:Ljava/lang/Boolean;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 566
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fromList(Ljava/util/ArrayList;)Lio/flutter/plugins/videoplayer/Messages$MixWithOthersMessage;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/flutter/plugins/videoplayer/Messages$MixWithOthersMessage;"
        }
    .end annotation

    .line 592
    new-instance v0, Lio/flutter/plugins/videoplayer/Messages$MixWithOthersMessage;

    invoke-direct {v0}, Lio/flutter/plugins/videoplayer/Messages$MixWithOthersMessage;-><init>()V

    const/4 v1, 0x0

    .line 593
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 594
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {v0, p0}, Lio/flutter/plugins/videoplayer/Messages$MixWithOthersMessage;->setMixWithOthers(Ljava/lang/Boolean;)V

    return-object v0
.end method


# virtual methods
.method public getMixWithOthers()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lio/flutter/plugins/videoplayer/Messages$MixWithOthersMessage;->mixWithOthers:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setMixWithOthers(Ljava/lang/Boolean;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lio/flutter/plugins/videoplayer/Messages$MixWithOthersMessage;->mixWithOthers:Ljava/lang/Boolean;

    return-void

    .line 560
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Nonnull field \"mixWithOthers\" is null."

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

    .line 586
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object p0, p0, Lio/flutter/plugins/videoplayer/Messages$MixWithOthersMessage;->mixWithOthers:Ljava/lang/Boolean;

    .line 587
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
