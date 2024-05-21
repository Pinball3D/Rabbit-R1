.class final Landroidx/activity/compose/PredictiveBackHandlerKt$PredictiveBackHandler$2;
.super Lkotlin/jvm/internal/Lambda;
.source "PredictiveBackHandler.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/activity/compose/PredictiveBackHandlerKt;->PredictiveBackHandler(ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
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
    value = "SMAP\nPredictiveBackHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PredictiveBackHandler.kt\nandroidx/activity/compose/PredictiveBackHandlerKt$PredictiveBackHandler$2\n+ 2 Effects.kt\nandroidx/compose/runtime/DisposableEffectScope\n*L\n1#1,172:1\n62#2,5:173\n*S KotlinDebug\n*F\n+ 1 PredictiveBackHandler.kt\nandroidx/activity/compose/PredictiveBackHandlerKt$PredictiveBackHandler$2\n*L\n140#1:173,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/compose/runtime/DisposableEffectResult;",
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
.field final synthetic $backCallBack:Landroidx/activity/compose/PredictiveBackHandlerKt$PredictiveBackHandler$backCallBack$1$1;

.field final synthetic $backDispatcher:Landroidx/activity/OnBackPressedDispatcher;

.field final synthetic $lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;


# direct methods
.method constructor <init>(Landroidx/activity/OnBackPressedDispatcher;Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/compose/PredictiveBackHandlerKt$PredictiveBackHandler$backCallBack$1$1;)V
    .locals 0

    iput-object p1, p0, Landroidx/activity/compose/PredictiveBackHandlerKt$PredictiveBackHandler$2;->$backDispatcher:Landroidx/activity/OnBackPressedDispatcher;

    iput-object p2, p0, Landroidx/activity/compose/PredictiveBackHandlerKt$PredictiveBackHandler$2;->$lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    iput-object p3, p0, Landroidx/activity/compose/PredictiveBackHandlerKt$PredictiveBackHandler$2;->$backCallBack:Landroidx/activity/compose/PredictiveBackHandlerKt$PredictiveBackHandler$backCallBack$1$1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;
    .locals 2

    iget-object p1, p0, Landroidx/activity/compose/PredictiveBackHandlerKt$PredictiveBackHandler$2;->$backDispatcher:Landroidx/activity/OnBackPressedDispatcher;

    iget-object v0, p0, Landroidx/activity/compose/PredictiveBackHandlerKt$PredictiveBackHandler$2;->$lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    iget-object v1, p0, Landroidx/activity/compose/PredictiveBackHandlerKt$PredictiveBackHandler$2;->$backCallBack:Landroidx/activity/compose/PredictiveBackHandlerKt$PredictiveBackHandler$backCallBack$1$1;

    .line 138
    check-cast v1, Landroidx/activity/OnBackPressedCallback;

    invoke-virtual {p1, v0, v1}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V

    iget-object p0, p0, Landroidx/activity/compose/PredictiveBackHandlerKt$PredictiveBackHandler$2;->$backCallBack:Landroidx/activity/compose/PredictiveBackHandlerKt$PredictiveBackHandler$backCallBack$1$1;

    .line 173
    new-instance p1, Landroidx/activity/compose/PredictiveBackHandlerKt$PredictiveBackHandler$2$invoke$$inlined$onDispose$1;

    invoke-direct {p1, p0}, Landroidx/activity/compose/PredictiveBackHandlerKt$PredictiveBackHandler$2$invoke$$inlined$onDispose$1;-><init>(Landroidx/activity/compose/PredictiveBackHandlerKt$PredictiveBackHandler$backCallBack$1$1;)V

    check-cast p1, Landroidx/compose/runtime/DisposableEffectResult;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 137
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    invoke-virtual {p0, p1}, Landroidx/activity/compose/PredictiveBackHandlerKt$PredictiveBackHandler$2;->invoke(Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;

    move-result-object p0

    return-object p0
.end method
