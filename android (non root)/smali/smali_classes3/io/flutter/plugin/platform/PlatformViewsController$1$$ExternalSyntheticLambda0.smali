.class public final synthetic Lio/flutter/plugin/platform/PlatformViewsController$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/flutter/plugin/platform/PlatformViewsController$1;

.field public final synthetic f$1:Lio/flutter/plugin/platform/VirtualDisplayController;

.field public final synthetic f$2:F

.field public final synthetic f$3:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewBufferResized;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/plugin/platform/PlatformViewsController$1;Lio/flutter/plugin/platform/VirtualDisplayController;FLio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewBufferResized;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/plugin/platform/PlatformViewsController$1$$ExternalSyntheticLambda0;->f$0:Lio/flutter/plugin/platform/PlatformViewsController$1;

    iput-object p2, p0, Lio/flutter/plugin/platform/PlatformViewsController$1$$ExternalSyntheticLambda0;->f$1:Lio/flutter/plugin/platform/VirtualDisplayController;

    iput p3, p0, Lio/flutter/plugin/platform/PlatformViewsController$1$$ExternalSyntheticLambda0;->f$2:F

    iput-object p4, p0, Lio/flutter/plugin/platform/PlatformViewsController$1$$ExternalSyntheticLambda0;->f$3:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewBufferResized;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController$1$$ExternalSyntheticLambda0;->f$0:Lio/flutter/plugin/platform/PlatformViewsController$1;

    iget-object v1, p0, Lio/flutter/plugin/platform/PlatformViewsController$1$$ExternalSyntheticLambda0;->f$1:Lio/flutter/plugin/platform/VirtualDisplayController;

    iget v2, p0, Lio/flutter/plugin/platform/PlatformViewsController$1$$ExternalSyntheticLambda0;->f$2:F

    iget-object p0, p0, Lio/flutter/plugin/platform/PlatformViewsController$1$$ExternalSyntheticLambda0;->f$3:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewBufferResized;

    invoke-virtual {v0, v1, v2, p0}, Lio/flutter/plugin/platform/PlatformViewsController$1;->lambda$resize$0$io-flutter-plugin-platform-PlatformViewsController$1(Lio/flutter/plugin/platform/VirtualDisplayController;FLio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewBufferResized;)V

    return-void
.end method
