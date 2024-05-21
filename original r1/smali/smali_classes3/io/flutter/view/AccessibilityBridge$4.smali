.class Lio/flutter/view/AccessibilityBridge$4;
.super Ljava/lang/Object;
.source "AccessibilityBridge.java"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/view/AccessibilityBridge;-><init>(Landroid/view/View;Lio/flutter/embedding/engine/systemchannels/AccessibilityChannel;Landroid/view/accessibility/AccessibilityManager;Landroid/content/ContentResolver;Lio/flutter/view/AccessibilityViewEmbedder;Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/flutter/view/AccessibilityBridge;

.field final synthetic val$accessibilityManager:Landroid/view/accessibility/AccessibilityManager;


# direct methods
.method constructor <init>(Lio/flutter/view/AccessibilityBridge;Landroid/view/accessibility/AccessibilityManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lio/flutter/view/AccessibilityBridge$4;->this$0:Lio/flutter/view/AccessibilityBridge;

    iput-object p2, p0, Lio/flutter/view/AccessibilityBridge$4;->val$accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchExplorationStateChanged(Z)V
    .locals 2

    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$4;->this$0:Lio/flutter/view/AccessibilityBridge;

    .line 459
    invoke-static {v0}, Lio/flutter/view/AccessibilityBridge;->access$400(Lio/flutter/view/AccessibilityBridge;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$4;->this$0:Lio/flutter/view/AccessibilityBridge;

    const/4 v1, 0x0

    .line 463
    invoke-static {v0, v1}, Lio/flutter/view/AccessibilityBridge;->access$700(Lio/flutter/view/AccessibilityBridge;Z)V

    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$4;->this$0:Lio/flutter/view/AccessibilityBridge;

    .line 464
    invoke-static {v0}, Lio/flutter/view/AccessibilityBridge;->access$1300(Lio/flutter/view/AccessibilityBridge;)V

    :cond_1
    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$4;->this$0:Lio/flutter/view/AccessibilityBridge;

    .line 467
    invoke-static {v0}, Lio/flutter/view/AccessibilityBridge;->access$800(Lio/flutter/view/AccessibilityBridge;)Lio/flutter/view/AccessibilityBridge$OnAccessibilityChangeListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/flutter/view/AccessibilityBridge$4;->this$0:Lio/flutter/view/AccessibilityBridge;

    .line 468
    invoke-static {v0}, Lio/flutter/view/AccessibilityBridge;->access$800(Lio/flutter/view/AccessibilityBridge;)Lio/flutter/view/AccessibilityBridge$OnAccessibilityChangeListener;

    move-result-object v0

    iget-object p0, p0, Lio/flutter/view/AccessibilityBridge$4;->val$accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 469
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p0

    .line 468
    invoke-interface {v0, p0, p1}, Lio/flutter/view/AccessibilityBridge$OnAccessibilityChangeListener;->onAccessibilityChanged(ZZ)V

    :cond_2
    return-void
.end method
