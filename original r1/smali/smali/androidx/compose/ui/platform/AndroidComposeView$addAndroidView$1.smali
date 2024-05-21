.class public final Landroidx/compose/ui/platform/AndroidComposeView$addAndroidView$1;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "AndroidComposeView.android.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/platform/AndroidComposeView;->addAndroidView(Landroidx/compose/ui/viewinterop/AndroidViewHolder;Landroidx/compose/ui/node/LayoutNode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "androidx/compose/ui/platform/AndroidComposeView$addAndroidView$1",
        "Landroidx/core/view/AccessibilityDelegateCompat;",
        "onInitializeAccessibilityNodeInfo",
        "",
        "host",
        "Landroid/view/View;",
        "info",
        "Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;",
        "ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $layoutNode:Landroidx/compose/ui/node/LayoutNode;

.field final synthetic $thisView:Landroidx/compose/ui/platform/AndroidComposeView;

.field final synthetic this$0:Landroidx/compose/ui/platform/AndroidComposeView;


# direct methods
.method constructor <init>(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/platform/AndroidComposeView;Landroidx/compose/ui/platform/AndroidComposeView;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeView$addAndroidView$1;->$layoutNode:Landroidx/compose/ui/node/LayoutNode;

    iput-object p2, p0, Landroidx/compose/ui/platform/AndroidComposeView$addAndroidView$1;->this$0:Landroidx/compose/ui/platform/AndroidComposeView;

    iput-object p3, p0, Landroidx/compose/ui/platform/AndroidComposeView$addAndroidView$1;->$thisView:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 754
    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 6

    const-string v0, "host"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 759
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    iget-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeView$addAndroidView$1;->$layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 761
    sget-object v0, Landroidx/compose/ui/platform/AndroidComposeView$addAndroidView$1$onInitializeAccessibilityNodeInfo$parentId$1;->INSTANCE:Landroidx/compose/ui/platform/AndroidComposeView$addAndroidView$1$onInitializeAccessibilityNodeInfo$parentId$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {p1, v0}, Landroidx/compose/ui/semantics/SemanticsNodeKt;->findClosestParentNode(Landroidx/compose/ui/node/LayoutNode;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 762
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getSemanticsId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView$addAndroidView$1;->this$0:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 764
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->getSemanticsOwner()Landroidx/compose/ui/semantics/SemanticsOwner;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsOwner;->getUnmergedRootSemanticsNode()Landroidx/compose/ui/semantics/SemanticsNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNode;->getId()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_2

    :cond_1
    const/4 p1, -0x1

    .line 766
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_2
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView$addAndroidView$1;->$thisView:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 768
    check-cast v0, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2, v0, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setParent(Landroid/view/View;I)V

    iget-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeView$addAndroidView$1;->$layoutNode:Landroidx/compose/ui/node/LayoutNode;

    .line 769
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->getSemanticsId()I

    move-result p1

    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView$addAndroidView$1;->this$0:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 771
    invoke-static {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->access$getAccessibilityDelegate$p(Landroidx/compose/ui/platform/AndroidComposeView;)Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getIdToBeforeMap$ui_release()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const-string v1, "info.unwrap()"

    if-eqz v0, :cond_4

    iget-object v2, p0, Landroidx/compose/ui/platform/AndroidComposeView$addAndroidView$1;->this$0:Landroidx/compose/ui/platform/AndroidComposeView;

    iget-object v3, p0, Landroidx/compose/ui/platform/AndroidComposeView$addAndroidView$1;->$thisView:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 772
    move-object v4, v0

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 773
    invoke-virtual {v2}, Landroidx/compose/ui/platform/AndroidComposeView;->getAndroidViewsHandler$ui_release()Landroidx/compose/ui/platform/AndroidViewsHandler;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v5, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->semanticsIdToView(Landroidx/compose/ui/platform/AndroidViewsHandler;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 778
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setTraversalBefore(Landroid/view/View;)V

    goto :goto_1

    .line 782
    :cond_3
    check-cast v3, Landroid/view/View;

    invoke-virtual {p2, v3, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setTraversalBefore(Landroid/view/View;I)V

    .line 785
    :goto_1
    invoke-virtual {p2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->unwrap()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 786
    invoke-static {v2}, Landroidx/compose/ui/platform/AndroidComposeView;->access$getAccessibilityDelegate$p(Landroidx/compose/ui/platform/AndroidComposeView;)Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getEXTRA_DATA_TEST_TRAVERSALBEFORE_VAL$ui_release()Ljava/lang/String;

    move-result-object v3

    .line 784
    invoke-static {v2, p1, v0, v3}, Landroidx/compose/ui/platform/AndroidComposeView;->access$addExtraDataToAccessibilityNodeInfoHelper(Landroidx/compose/ui/platform/AndroidComposeView;ILandroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView$addAndroidView$1;->this$0:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 790
    invoke-static {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->access$getAccessibilityDelegate$p(Landroidx/compose/ui/platform/AndroidComposeView;)Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getIdToAfterMap$ui_release()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_6

    iget-object v2, p0, Landroidx/compose/ui/platform/AndroidComposeView$addAndroidView$1;->this$0:Landroidx/compose/ui/platform/AndroidComposeView;

    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView$addAndroidView$1;->$thisView:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 791
    move-object v3, v0

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 792
    invoke-virtual {v2}, Landroidx/compose/ui/platform/AndroidComposeView;->getAndroidViewsHandler$ui_release()Landroidx/compose/ui/platform/AndroidViewsHandler;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v4, v0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat_androidKt;->semanticsIdToView(Landroidx/compose/ui/platform/AndroidViewsHandler;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 794
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setTraversalAfter(Landroid/view/View;)V

    goto :goto_2

    .line 796
    :cond_5
    check-cast p0, Landroid/view/View;

    invoke-virtual {p2, p0, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setTraversalAfter(Landroid/view/View;I)V

    .line 799
    :goto_2
    invoke-virtual {p2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->unwrap()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 800
    invoke-static {v2}, Landroidx/compose/ui/platform/AndroidComposeView;->access$getAccessibilityDelegate$p(Landroidx/compose/ui/platform/AndroidComposeView;)Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->getEXTRA_DATA_TEST_TRAVERSALAFTER_VAL$ui_release()Ljava/lang/String;

    move-result-object p2

    .line 798
    invoke-static {v2, p1, p0, p2}, Landroidx/compose/ui/platform/AndroidComposeView;->access$addExtraDataToAccessibilityNodeInfoHelper(Landroidx/compose/ui/platform/AndroidComposeView;ILandroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)V

    :cond_6
    return-void
.end method
