.class Lio/flutter/view/AccessibilityBridge$2;
.super Ljava/lang/Object;
.source "AccessibilityBridge.java"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/view/AccessibilityBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/flutter/view/AccessibilityBridge;


# direct methods
.method constructor <init>(Lio/flutter/view/AccessibilityBridge;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/view/AccessibilityBridge$2;->this$0:Lio/flutter/view/AccessibilityBridge;

    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccessibilityStateChanged(Z)V
    .locals 2

    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$2;->this$0:Lio/flutter/view/AccessibilityBridge;

    .line 361
    invoke-static {v0}, Lio/flutter/view/AccessibilityBridge;->access$400(Lio/flutter/view/AccessibilityBridge;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$2;->this$0:Lio/flutter/view/AccessibilityBridge;

    .line 365
    invoke-static {v0}, Lio/flutter/view/AccessibilityBridge;->access$600(Lio/flutter/view/AccessibilityBridge;)Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/view/AccessibilityBridge$2;->this$0:Lio/flutter/view/AccessibilityBridge;

    invoke-static {v1}, Lio/flutter/view/AccessibilityBridge;->access$500(Lio/flutter/view/AccessibilityBridge;)Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel$AccessibilityMessageHandler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->setAccessibilityMessageHandler(Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel$AccessibilityMessageHandler;)V

    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$2;->this$0:Lio/flutter/view/AccessibilityBridge;

    .line 366
    invoke-static {v0}, Lio/flutter/view/AccessibilityBridge;->access$600(Lio/flutter/view/AccessibilityBridge;)Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->onAndroidAccessibilityEnabled()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$2;->this$0:Lio/flutter/view/AccessibilityBridge;

    const/4 v1, 0x0

    .line 368
    invoke-static {v0, v1}, Lio/flutter/view/AccessibilityBridge;->access$700(Lio/flutter/view/AccessibilityBridge;Z)V

    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$2;->this$0:Lio/flutter/view/AccessibilityBridge;

    .line 369
    invoke-static {v0}, Lio/flutter/view/AccessibilityBridge;->access$600(Lio/flutter/view/AccessibilityBridge;)Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->setAccessibilityMessageHandler(Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel$AccessibilityMessageHandler;)V

    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$2;->this$0:Lio/flutter/view/AccessibilityBridge;

    .line 370
    invoke-static {v0}, Lio/flutter/view/AccessibilityBridge;->access$600(Lio/flutter/view/AccessibilityBridge;)Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;->onAndroidAccessibilityDisabled()V

    :goto_0
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$2;->this$0:Lio/flutter/view/AccessibilityBridge;

    .line 373
    invoke-static {v0}, Lio/flutter/view/AccessibilityBridge;->access$800(Lio/flutter/view/AccessibilityBridge;)Lio/flutter/view/AccessibilityBridge$OnAccessibilityChangeListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$2;->this$0:Lio/flutter/view/AccessibilityBridge;

    .line 374
    invoke-static {v0}, Lio/flutter/view/AccessibilityBridge;->access$800(Lio/flutter/view/AccessibilityBridge;)Lio/flutter/view/AccessibilityBridge$OnAccessibilityChangeListener;

    move-result-object v0

    iget-object p0, p0, Lio/flutter/view/AccessibilityBridge$2;->this$0:Lio/flutter/view/AccessibilityBridge;

    .line 375
    invoke-static {p0}, Lio/flutter/view/AccessibilityBridge;->access$900(Lio/flutter/view/AccessibilityBridge;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p0

    .line 374
    invoke-interface {v0, p1, p0}, Lio/flutter/view/AccessibilityBridge$OnAccessibilityChangeListener;->onAccessibilityChanged(ZZ)V

    :cond_2
    return-void
.end method
