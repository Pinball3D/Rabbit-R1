.class public abstract Lio/flutter/plugin/platform/PlatformViewFactory;
.super Ljava/lang/Object;
.source "PlatformViewFactory.java"


# instance fields
.field private final createArgsCodec:Lio/flutter/plugin/common/MessageCodec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/flutter/plugin/common/MessageCodec<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/flutter/plugin/common/MessageCodec;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/flutter/plugin/common/MessageCodec<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/plugin/platform/PlatformViewFactory;->createArgsCodec:Lio/flutter/plugin/common/MessageCodec;

    return-void
.end method


# virtual methods
.method public abstract create(Landroid/content/Context;ILjava/lang/Object;)Lio/flutter/plugin/platform/PlatformView;
.end method

.method public final getCreateArgsCodec()Lio/flutter/plugin/common/MessageCodec;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/flutter/plugin/common/MessageCodec<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/flutter/plugin/platform/PlatformViewFactory;->createArgsCodec:Lio/flutter/plugin/common/MessageCodec;

    return-object p0
.end method
