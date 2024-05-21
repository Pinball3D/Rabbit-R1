.class final Landroidx/compose/material3/TouchExplorationStateProvider_androidKt$touchExplorationState$2;
.super Lkotlin/jvm/internal/Lambda;
.source "TouchExplorationStateProvider.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/TouchExplorationStateProvider_androidKt;->touchExplorationState(Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field final synthetic $listener:Landroidx/compose/material3/Listener;


# direct methods
.method constructor <init>(Landroidx/compose/material3/Listener;Landroid/view/accessibility/AccessibilityManager;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/TouchExplorationStateProvider_androidKt$touchExplorationState$2;->$listener:Landroidx/compose/material3/Listener;

    iput-object p2, p0, Landroidx/compose/material3/TouchExplorationStateProvider_androidKt$touchExplorationState$2;->$accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 49
    invoke-virtual {p0}, Landroidx/compose/material3/TouchExplorationStateProvider_androidKt$touchExplorationState$2;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/material3/TouchExplorationStateProvider_androidKt$touchExplorationState$2;->$listener:Landroidx/compose/material3/Listener;

    iget-object p0, p0, Landroidx/compose/material3/TouchExplorationStateProvider_androidKt$touchExplorationState$2;->$accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 56
    invoke-virtual {v0, p0}, Landroidx/compose/material3/Listener;->unregister(Landroid/view/accessibility/AccessibilityManager;)V

    return-void
.end method
