.class final Landroidx/compose/material3/TouchExplorationStateProvider_androidKt$ObserveState$3;
.super Lkotlin/jvm/internal/Lambda;
.source "TouchExplorationStateProvider.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/TouchExplorationStateProvider_androidKt;->ObserveState(Landroidx/lifecycle/Lifecycle;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/runtime/DisposableEffectScope;",
        "Landroidx/compose/runtime/DisposableEffectResult;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTouchExplorationStateProvider.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TouchExplorationStateProvider.android.kt\nandroidx/compose/material3/TouchExplorationStateProvider_androidKt$ObserveState$3\n+ 2 Effects.kt\nandroidx/compose/runtime/DisposableEffectScope\n*L\n1#1,107:1\n62#2,5:108\n*S KotlinDebug\n*F\n+ 1 TouchExplorationStateProvider.android.kt\nandroidx/compose/material3/TouchExplorationStateProvider_androidKt$ObserveState$3\n*L\n73#1:108,5\n*E\n"
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
.field final synthetic $handleEvent:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/lifecycle/Lifecycle$Event;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onDispose:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $this_ObserveState:Landroidx/lifecycle/Lifecycle;


# direct methods
.method constructor <init>(Landroidx/lifecycle/Lifecycle;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/Lifecycle;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/lifecycle/Lifecycle$Event;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/TouchExplorationStateProvider_androidKt$ObserveState$3;->$this_ObserveState:Landroidx/lifecycle/Lifecycle;

    iput-object p2, p0, Landroidx/compose/material3/TouchExplorationStateProvider_androidKt$ObserveState$3;->$handleEvent:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Landroidx/compose/material3/TouchExplorationStateProvider_androidKt$ObserveState$3;->$onDispose:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;
    .locals 2

    const-string v0, "$this$DisposableEffect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    new-instance p1, Landroidx/compose/material3/TouchExplorationStateProvider_androidKt$ObserveState$3$observer$1;

    iget-object v0, p0, Landroidx/compose/material3/TouchExplorationStateProvider_androidKt$ObserveState$3;->$handleEvent:Lkotlin/jvm/functions/Function1;

    invoke-direct {p1, v0}, Landroidx/compose/material3/TouchExplorationStateProvider_androidKt$ObserveState$3$observer$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast p1, Landroidx/lifecycle/LifecycleEventObserver;

    iget-object v0, p0, Landroidx/compose/material3/TouchExplorationStateProvider_androidKt$ObserveState$3;->$this_ObserveState:Landroidx/lifecycle/Lifecycle;

    .line 72
    move-object v1, p1

    check-cast v1, Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    iget-object v0, p0, Landroidx/compose/material3/TouchExplorationStateProvider_androidKt$ObserveState$3;->$onDispose:Lkotlin/jvm/functions/Function0;

    iget-object p0, p0, Landroidx/compose/material3/TouchExplorationStateProvider_androidKt$ObserveState$3;->$this_ObserveState:Landroidx/lifecycle/Lifecycle;

    .line 108
    new-instance v1, Landroidx/compose/material3/TouchExplorationStateProvider_androidKt$ObserveState$3$invoke$$inlined$onDispose$1;

    invoke-direct {v1, v0, p0, p1}, Landroidx/compose/material3/TouchExplorationStateProvider_androidKt$ObserveState$3$invoke$$inlined$onDispose$1;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/LifecycleEventObserver;)V

    check-cast v1, Landroidx/compose/runtime/DisposableEffectResult;

    return-object v1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 68
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/TouchExplorationStateProvider_androidKt$ObserveState$3;->invoke(Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;

    move-result-object p0

    return-object p0
.end method
