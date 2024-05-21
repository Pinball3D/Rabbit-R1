.class final Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolder$SaveableStateProvider$1;
.super Lkotlin/jvm/internal/Lambda;
.source "LazySaveableStateHolder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolder;->SaveableStateProvider(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
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
    value = "SMAP\nLazySaveableStateHolder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LazySaveableStateHolder.kt\nandroidx/compose/foundation/lazy/layout/LazySaveableStateHolder$SaveableStateProvider$1\n+ 2 Effects.kt\nandroidx/compose/runtime/DisposableEffectScope\n*L\n1#1,106:1\n63#2,5:107\n*S KotlinDebug\n*F\n+ 1 LazySaveableStateHolder.kt\nandroidx/compose/foundation/lazy/layout/LazySaveableStateHolder$SaveableStateProvider$1\n*L\n87#1:107,5\n*E\n"
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
.field final synthetic $key:Ljava/lang/Object;

.field final synthetic this$0:Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolder;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolder;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolder$SaveableStateProvider$1;->this$0:Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolder;

    iput-object p2, p0, Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolder$SaveableStateProvider$1;->$key:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;
    .locals 1

    const-string v0, "$this$DisposableEffect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolder$SaveableStateProvider$1;->this$0:Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolder;

    .line 86
    invoke-static {p1}, Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolder;->access$getPreviouslyComposedKeys$p(Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolder;)Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolder$SaveableStateProvider$1;->$key:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolder$SaveableStateProvider$1;->this$0:Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolder;

    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolder$SaveableStateProvider$1;->$key:Ljava/lang/Object;

    .line 107
    new-instance v0, Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolder$SaveableStateProvider$1$invoke$$inlined$onDispose$1;

    invoke-direct {v0, p1, p0}, Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolder$SaveableStateProvider$1$invoke$$inlined$onDispose$1;-><init>(Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolder;Ljava/lang/Object;)V

    check-cast v0, Landroidx/compose/runtime/DisposableEffectResult;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 85
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/lazy/layout/LazySaveableStateHolder$SaveableStateProvider$1;->invoke(Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;

    move-result-object p0

    return-object p0
.end method
