.class public final Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl$rememberAdapter$1$invoke$$inlined$onDispose$1;
.super Ljava/lang/Object;
.source "Effects.kt"

# interfaces
.implements Landroidx/compose/runtime/DisposableEffectResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl$rememberAdapter$1;->invoke(Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEffects.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Effects.kt\nandroidx/compose/runtime/DisposableEffectScope$onDispose$1\n+ 2 PlatformTextInputAdapter.kt\nandroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl$rememberAdapter$1\n*L\n1#1,496:1\n181#2,5:497\n196#2,3:502\n*E\n"
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
.field final synthetic $adapterHandle$inlined:Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl$AdapterHandle;

.field final synthetic $scope$inlined:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic this$0:Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl$AdapterHandle;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl$rememberAdapter$1$invoke$$inlined$onDispose$1;->$adapterHandle$inlined:Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl$AdapterHandle;

    iput-object p2, p0, Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl$rememberAdapter$1$invoke$$inlined$onDispose$1;->$scope$inlined:Lkotlinx/coroutines/CoroutineScope;

    iput-object p3, p0, Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl$rememberAdapter$1$invoke$$inlined$onDispose$1;->this$0:Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 7

    iget-object v0, p0, Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl$rememberAdapter$1$invoke$$inlined$onDispose$1;->$adapterHandle$inlined:Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl$AdapterHandle;

    .line 501
    invoke-virtual {v0}, Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl$AdapterHandle;->dispose()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl$rememberAdapter$1$invoke$$inlined$onDispose$1;->$scope$inlined:Lkotlinx/coroutines/CoroutineScope;

    .line 502
    sget-object v0, Lkotlinx/coroutines/NonCancellable;->INSTANCE:Lkotlinx/coroutines/NonCancellable;

    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    const/4 v3, 0x0

    new-instance v0, Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl$rememberAdapter$1$1$1;

    iget-object p0, p0, Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl$rememberAdapter$1$invoke$$inlined$onDispose$1;->this$0:Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl$rememberAdapter$1$1$1;-><init>(Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_0
    return-void
.end method
