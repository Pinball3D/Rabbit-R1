.class public final Lio/flutter/plugins/videoplayer/Messages$MixWithOthersMessage$Builder;
.super Ljava/lang/Object;
.source "Messages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/videoplayer/Messages$MixWithOthersMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mixWithOthers:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 568
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lio/flutter/plugins/videoplayer/Messages$MixWithOthersMessage;
    .locals 1

    .line 578
    new-instance v0, Lio/flutter/plugins/videoplayer/Messages$MixWithOthersMessage;

    invoke-direct {v0}, Lio/flutter/plugins/videoplayer/Messages$MixWithOthersMessage;-><init>()V

    iget-object p0, p0, Lio/flutter/plugins/videoplayer/Messages$MixWithOthersMessage$Builder;->mixWithOthers:Ljava/lang/Boolean;

    .line 579
    invoke-virtual {v0, p0}, Lio/flutter/plugins/videoplayer/Messages$MixWithOthersMessage;->setMixWithOthers(Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public setMixWithOthers(Ljava/lang/Boolean;)Lio/flutter/plugins/videoplayer/Messages$MixWithOthersMessage$Builder;
    .locals 0

    iput-object p1, p0, Lio/flutter/plugins/videoplayer/Messages$MixWithOthersMessage$Builder;->mixWithOthers:Ljava/lang/Boolean;

    return-object p0
.end method
