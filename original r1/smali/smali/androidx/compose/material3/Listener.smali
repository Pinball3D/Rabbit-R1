.class final Landroidx/compose/material3/Listener;
.super Ljava/lang/Object;
.source "TouchExplorationStateProvider.android.kt"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;
.implements Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTouchExplorationStateProvider.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TouchExplorationStateProvider.android.kt\nandroidx/compose/material3/Listener\n+ 2 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,107:1\n76#2:108\n102#2,2:109\n76#2:111\n102#2,2:112\n*S KotlinDebug\n*F\n+ 1 TouchExplorationStateProvider.android.kt\nandroidx/compose/material3/Listener\n*L\n81#1:108\n81#1:109,2\n82#1:111\n82#1:112,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\r\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0006\u0010\u0011\u001a\u00020\u0005J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0005H\u0016J\u0010\u0010\u0015\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0005H\u0016J\u000e\u0010\u0016\u001a\u00020\u00132\u0006\u0010\u0017\u001a\u00020\u0018J\u000e\u0010\u0019\u001a\u00020\u00132\u0006\u0010\u0017\u001a\u00020\u0018R+\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u00058B@BX\u0082\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR+\u0010\r\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u00058B@BX\u0082\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010\u000c\u001a\u0004\u0008\u000e\u0010\u0008\"\u0004\u0008\u000f\u0010\n\u00a8\u0006\u001a"
    }
    d2 = {
        "Landroidx/compose/material3/Listener;",
        "Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;",
        "Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;",
        "()V",
        "<set-?>",
        "",
        "accessibilityEnabled",
        "getAccessibilityEnabled",
        "()Z",
        "setAccessibilityEnabled",
        "(Z)V",
        "accessibilityEnabled$delegate",
        "Landroidx/compose/runtime/MutableState;",
        "touchExplorationEnabled",
        "getTouchExplorationEnabled",
        "setTouchExplorationEnabled",
        "touchExplorationEnabled$delegate",
        "isEnabled",
        "onAccessibilityStateChanged",
        "",
        "it",
        "onTouchExplorationStateChanged",
        "register",
        "am",
        "Landroid/view/accessibility/AccessibilityManager;",
        "unregister",
        "material3_release"
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
.field private final accessibilityEnabled$delegate:Landroidx/compose/runtime/MutableState;

.field private final touchExplorationEnabled$delegate:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 81
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, v1, v2, v1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v3

    iput-object v3, p0, Landroidx/compose/material3/Listener;->accessibilityEnabled$delegate:Landroidx/compose/runtime/MutableState;

    .line 82
    invoke-static {v0, v1, v2, v1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/material3/Listener;->touchExplorationEnabled$delegate:Landroidx/compose/runtime/MutableState;

    return-void
.end method

.method private final getAccessibilityEnabled()Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/Listener;->accessibilityEnabled$delegate:Landroidx/compose/runtime/MutableState;

    .line 81
    check-cast p0, Landroidx/compose/runtime/State;

    .line 108
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private final getTouchExplorationEnabled()Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/Listener;->touchExplorationEnabled$delegate:Landroidx/compose/runtime/MutableState;

    .line 82
    check-cast p0, Landroidx/compose/runtime/State;

    .line 111
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private final setAccessibilityEnabled(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/Listener;->accessibilityEnabled$delegate:Landroidx/compose/runtime/MutableState;

    .line 81
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 109
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final setTouchExplorationEnabled(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/Listener;->touchExplorationEnabled$delegate:Landroidx/compose/runtime/MutableState;

    .line 82
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 112
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final isEnabled()Z
    .locals 1

    .line 84
    invoke-direct {p0}, Landroidx/compose/material3/Listener;->getAccessibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/compose/material3/Listener;->getTouchExplorationEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onAccessibilityStateChanged(Z)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Landroidx/compose/material3/Listener;->setAccessibilityEnabled(Z)V

    return-void
.end method

.method public onTouchExplorationStateChanged(Z)V
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Landroidx/compose/material3/Listener;->setTouchExplorationEnabled(Z)V

    return-void
.end method

.method public final register(Landroid/view/accessibility/AccessibilityManager;)V
    .locals 1

    const-string v0, "am"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Landroidx/compose/material3/Listener;->setAccessibilityEnabled(Z)V

    .line 96
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Landroidx/compose/material3/Listener;->setTouchExplorationEnabled(Z)V

    .line 98
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    .line 99
    check-cast p0, Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    return-void
.end method

.method public final unregister(Landroid/view/accessibility/AccessibilityManager;)V
    .locals 1

    const-string v0, "am"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    move-object v0, p0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityManager;->removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    .line 104
    check-cast p0, Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityManager;->removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    return-void
.end method
