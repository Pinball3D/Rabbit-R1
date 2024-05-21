.class public final Lio/flutter/plugins/videoplayer/Messages$CreateMessage;
.super Ljava/lang/Object;
.source "Messages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/videoplayer/Messages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CreateMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugins/videoplayer/Messages$CreateMessage$Builder;
    }
.end annotation


# instance fields
.field private asset:Ljava/lang/String;

.field private formatHint:Ljava/lang/String;

.field private httpHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private packageName:Ljava/lang/String;

.field private uri:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fromList(Ljava/util/ArrayList;)Lio/flutter/plugins/videoplayer/Messages$CreateMessage;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/flutter/plugins/videoplayer/Messages$CreateMessage;"
        }
    .end annotation

    .line 535
    new-instance v0, Lio/flutter/plugins/videoplayer/Messages$CreateMessage;

    invoke-direct {v0}, Lio/flutter/plugins/videoplayer/Messages$CreateMessage;-><init>()V

    const/4 v1, 0x0

    .line 536
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 537
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/flutter/plugins/videoplayer/Messages$CreateMessage;->setAsset(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 538
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 539
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/flutter/plugins/videoplayer/Messages$CreateMessage;->setUri(Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 540
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 541
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/flutter/plugins/videoplayer/Messages$CreateMessage;->setPackageName(Ljava/lang/String;)V

    const/4 v1, 0x3

    .line 542
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 543
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/flutter/plugins/videoplayer/Messages$CreateMessage;->setFormatHint(Ljava/lang/String;)V

    const/4 v1, 0x4

    .line 544
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 545
    check-cast p0, Ljava/util/Map;

    invoke-virtual {v0, p0}, Lio/flutter/plugins/videoplayer/Messages$CreateMessage;->setHttpHeaders(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public getAsset()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/flutter/plugins/videoplayer/Messages$CreateMessage;->asset:Ljava/lang/String;

    return-object p0
.end method

.method public getFormatHint()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/flutter/plugins/videoplayer/Messages$CreateMessage;->formatHint:Ljava/lang/String;

    return-object p0
.end method

.method public getHttpHeaders()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/flutter/plugins/videoplayer/Messages$CreateMessage;->httpHeaders:Ljava/util/Map;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/flutter/plugins/videoplayer/Messages$CreateMessage;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public getUri()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/flutter/plugins/videoplayer/Messages$CreateMessage;->uri:Ljava/lang/String;

    return-object p0
.end method

.method public setAsset(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/plugins/videoplayer/Messages$CreateMessage;->asset:Ljava/lang/String;

    return-void
.end method

.method public setFormatHint(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/plugins/videoplayer/Messages$CreateMessage;->formatHint:Ljava/lang/String;

    return-void
.end method

.method public setHttpHeaders(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lio/flutter/plugins/videoplayer/Messages$CreateMessage;->httpHeaders:Ljava/util/Map;

    return-void

    .line 467
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Nonnull field \"httpHeaders\" is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/plugins/videoplayer/Messages$CreateMessage;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/plugins/videoplayer/Messages$CreateMessage;->uri:Ljava/lang/String;

    return-void
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

    .line 525
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lio/flutter/plugins/videoplayer/Messages$CreateMessage;->asset:Ljava/lang/String;

    .line 526
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lio/flutter/plugins/videoplayer/Messages$CreateMessage;->uri:Ljava/lang/String;

    .line 527
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lio/flutter/plugins/videoplayer/Messages$CreateMessage;->packageName:Ljava/lang/String;

    .line 528
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lio/flutter/plugins/videoplayer/Messages$CreateMessage;->formatHint:Ljava/lang/String;

    .line 529
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lio/flutter/plugins/videoplayer/Messages$CreateMessage;->httpHeaders:Ljava/util/Map;

    .line 530
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
