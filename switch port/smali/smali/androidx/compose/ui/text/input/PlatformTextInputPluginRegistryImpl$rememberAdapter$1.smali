.class final Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl$rememberAdapter$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PlatformTextInputAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl;->rememberAdapter(Landroidx/compose/ui/text/input/PlatformTextInputPlugin;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/text/input/PlatformTextInputAdapter;
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
    value = "SMAP\nPlatformTextInputAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PlatformTextInputAdapter.kt\nandroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl$rememberAdapter$1\n+ 2 Effects.kt\nandroidx/compose/runtime/DisposableEffectScope\n*L\n1#1,341:1\n63#2,5:342\n*S KotlinDebug\n*F\n+ 1 PlatformTextInputAdapter.kt\nandroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl$rememberAdapter$1\n*L\n180#1:342,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003*\u00020\u0004H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/compose/runtime/DisposableEffectResult;",
        "T",
        "Landroidx/compose/ui/text/input/PlatformTextInputAdapter;",
        "Landroidx/compose/runtime/DisposableEffectScope;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $adapterHandle:Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl$AdapterHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl$AdapterHandle<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic $scope:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic this$0:Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl;


# direct methods
.method constructor <init>(Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl$AdapterHandle;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl$AdapterHandle<",
            "TT;>;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl$rememberAdapter$1;->$adapterHandle:Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl$AdapterHandle;

    iput-object p2, p0, Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl$rememberAdapter$1;->$scope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p3, p0, Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl$rememberAdapter$1;->this$0:Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;
    .locals 2

    const-string v0, "$this$DisposableEffect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl$rememberAdapter$1;->$adapterHandle:Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl$AdapterHandle;

    iget-object v0, p0, Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl$rememberAdapter$1;->$scope:Lkotlinx/coroutines/CoroutineScope;

    iget-object p0, p0, Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl$rememberAdapter$1;->this$0:Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl;

    .line 342
    new-instance v1, Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl$rememberAdapter$1$invoke$$inlined$onDispose$1;

    invoke-direct {v1, p1, v0, p0}, Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl$rememberAdapter$1$invoke$$inlined$onDispose$1;-><init>(Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl$AdapterHandle;Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl;)V

    check-cast v1, Landroidx/compose/runtime/DisposableEffectResult;

    return-object v1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 179
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistryImpl$rememberAdapter$1;->invoke(Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;

    move-result-object p0

    return-object p0
.end method
