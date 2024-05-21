.class public Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewBufferSize;
.super Ljava/lang/Object;
.source "PlatformViewsChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlatformViewBufferSize"
.end annotation


# instance fields
.field public final height:I

.field public final width:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewBufferSize;->width:I

    iput p2, p0, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewBufferSize;->height:I

    return-void
.end method
