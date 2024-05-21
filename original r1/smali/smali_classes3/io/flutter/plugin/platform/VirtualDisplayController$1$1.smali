.class Lio/flutter/plugin/platform/VirtualDisplayController$1$1;
.super Ljava/lang/Object;
.source "VirtualDisplayController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugin/platform/VirtualDisplayController$1;->onViewAttachedToWindow(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/flutter/plugin/platform/VirtualDisplayController$1;


# direct methods
.method constructor <init>(Lio/flutter/plugin/platform/VirtualDisplayController$1;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/plugin/platform/VirtualDisplayController$1$1;->this$1:Lio/flutter/plugin/platform/VirtualDisplayController$1;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lio/flutter/plugin/platform/VirtualDisplayController$1$1;->this$1:Lio/flutter/plugin/platform/VirtualDisplayController$1;

    .line 178
    iget-object v0, v0, Lio/flutter/plugin/platform/VirtualDisplayController$1;->val$embeddedView:Landroid/view/View;

    iget-object p0, p0, Lio/flutter/plugin/platform/VirtualDisplayController$1$1;->this$1:Lio/flutter/plugin/platform/VirtualDisplayController$1;

    iget-object p0, p0, Lio/flutter/plugin/platform/VirtualDisplayController$1;->val$onNewSizeFrameAvailable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x80

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
