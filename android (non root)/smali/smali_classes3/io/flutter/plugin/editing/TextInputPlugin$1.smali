.class Lio/flutter/plugin/editing/TextInputPlugin$1;
.super Ljava/lang/Object;
.source "TextInputPlugin.java"

# interfaces
.implements Lio/flutter/plugin/editing/ImeSyncDeferringInsetsCallback$ImeVisibleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugin/editing/TextInputPlugin;-><init>(Landroid/view/View;Lio/flutter/embedding/engine/systemchannels/TextInputChannel;Lio/flutter/plugin/platform/PlatformViewsController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/flutter/plugin/editing/TextInputPlugin;


# direct methods
.method constructor <init>(Lio/flutter/plugin/editing/TextInputPlugin;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/plugin/editing/TextInputPlugin$1;->this$0:Lio/flutter/plugin/editing/TextInputPlugin;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImeVisibleChanged(Z)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p0, p0, Lio/flutter/plugin/editing/TextInputPlugin$1;->this$0:Lio/flutter/plugin/editing/TextInputPlugin;

    .line 91
    invoke-virtual {p0}, Lio/flutter/plugin/editing/TextInputPlugin;->onConnectionClosed()V

    :cond_0
    return-void
.end method
