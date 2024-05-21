.class public final Landroidx/compose/material3/TouchExplorationStateProvider_androidKt$ObserveState$3$invoke$$inlined$onDispose$1;
.super Ljava/lang/Object;
.source "Effects.kt"

# interfaces
.implements Landroidx/compose/runtime/DisposableEffectResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/TouchExplorationStateProvider_androidKt$ObserveState$3;->invoke(Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEffects.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Effects.kt\nandroidx/compose/runtime/DisposableEffectScope$onDispose$1\n+ 2 TouchExplorationStateProvider.android.kt\nandroidx/compose/material3/TouchExplorationStateProvider_androidKt$ObserveState$3\n*L\n1#1,484:1\n74#2,3:485\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004\u00b8\u0006\u0000"
    }
    d2 = {
        "androidx/compose/runtime/DisposableEffectScope$onDispose$1",
        "Landroidx/compose/runtime/DisposableEffectResult;",
        "dispose",
        "",
        "runtime_release"
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
.field final synthetic $observer$inlined:Landroidx/lifecycle/LifecycleEventObserver;

.field final synthetic $onDispose$inlined:Lkotlin/jvm/functions/Function0;

.field final synthetic $this_ObserveState$inlined:Landroidx/lifecycle/Lifecycle;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/LifecycleEventObserver;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/TouchExplorationStateProvider_androidKt$ObserveState$3$invoke$$inlined$onDispose$1;->$onDispose$inlined:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Landroidx/compose/material3/TouchExplorationStateProvider_androidKt$ObserveState$3$invoke$$inlined$onDispose$1;->$this_ObserveState$inlined:Landroidx/lifecycle/Lifecycle;

    iput-object p3, p0, Landroidx/compose/material3/TouchExplorationStateProvider_androidKt$ObserveState$3$invoke$$inlined$onDispose$1;->$observer$inlined:Landroidx/lifecycle/LifecycleEventObserver;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/material3/TouchExplorationStateProvider_androidKt$ObserveState$3$invoke$$inlined$onDispose$1;->$onDispose$inlined:Lkotlin/jvm/functions/Function0;

    .line 485
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    iget-object v0, p0, Landroidx/compose/material3/TouchExplorationStateProvider_androidKt$ObserveState$3$invoke$$inlined$onDispose$1;->$this_ObserveState$inlined:Landroidx/lifecycle/Lifecycle;

    iget-object p0, p0, Landroidx/compose/material3/TouchExplorationStateProvider_androidKt$ObserveState$3$invoke$$inlined$onDispose$1;->$observer$inlined:Landroidx/lifecycle/LifecycleEventObserver;

    .line 486
    check-cast p0, Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method
