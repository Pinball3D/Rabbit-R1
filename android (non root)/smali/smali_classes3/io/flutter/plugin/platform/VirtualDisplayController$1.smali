.class Lio/flutter/plugin/platform/VirtualDisplayController$1;
.super Ljava/lang/Object;
.source "VirtualDisplayController.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugin/platform/VirtualDisplayController;->resize(IILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/flutter/plugin/platform/VirtualDisplayController;

.field final synthetic val$embeddedView:Landroid/view/View;

.field final synthetic val$onNewSizeFrameAvailable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lio/flutter/plugin/platform/VirtualDisplayController;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lio/flutter/plugin/platform/VirtualDisplayController$1;->this$0:Lio/flutter/plugin/platform/VirtualDisplayController;

    iput-object p2, p0, Lio/flutter/plugin/platform/VirtualDisplayController$1;->val$embeddedView:Landroid/view/View;

    iput-object p3, p0, Lio/flutter/plugin/platform/VirtualDisplayController$1;->val$onNewSizeFrameAvailable:Ljava/lang/Runnable;

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lio/flutter/plugin/platform/VirtualDisplayController$1;->val$embeddedView:Landroid/view/View;

    .line 164
    new-instance v0, Lio/flutter/plugin/platform/VirtualDisplayController$1$1;

    invoke-direct {v0, p0}, Lio/flutter/plugin/platform/VirtualDisplayController$1$1;-><init>(Lio/flutter/plugin/platform/VirtualDisplayController$1;)V

    invoke-static {p1, v0}, Lio/flutter/plugin/platform/VirtualDisplayController$OneTimeOnDrawListener;->schedule(Landroid/view/View;Ljava/lang/Runnable;)V

    iget-object p1, p0, Lio/flutter/plugin/platform/VirtualDisplayController$1;->val$embeddedView:Landroid/view/View;

    .line 181
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
