.class public final synthetic Lio/flutter/plugin/platform/PlatformViewsController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic f$0:Lio/flutter/plugin/platform/PlatformViewsController;

.field public final synthetic f$1:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewCreationRequest;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/plugin/platform/PlatformViewsController;Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewCreationRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/plugin/platform/PlatformViewsController$$ExternalSyntheticLambda3;->f$0:Lio/flutter/plugin/platform/PlatformViewsController;

    iput-object p2, p0, Lio/flutter/plugin/platform/PlatformViewsController$$ExternalSyntheticLambda3;->f$1:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewCreationRequest;

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 1

    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController$$ExternalSyntheticLambda3;->f$0:Lio/flutter/plugin/platform/PlatformViewsController;

    iget-object p0, p0, Lio/flutter/plugin/platform/PlatformViewsController$$ExternalSyntheticLambda3;->f$1:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewCreationRequest;

    invoke-virtual {v0, p0, p1, p2}, Lio/flutter/plugin/platform/PlatformViewsController;->lambda$configureForVirtualDisplay$0$io-flutter-plugin-platform-PlatformViewsController(Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewCreationRequest;Landroid/view/View;Z)V

    return-void
.end method
