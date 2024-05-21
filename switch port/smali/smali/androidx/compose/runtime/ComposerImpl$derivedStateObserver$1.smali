.class public final Landroidx/compose/runtime/ComposerImpl$derivedStateObserver$1;
.super Ljava/lang/Object;
.source "Composer.kt"

# interfaces
.implements Landroidx/compose/runtime/DerivedStateObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/runtime/ComposerImpl;-><init>(Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/CompositionContext;Landroidx/compose/runtime/SlotTable;Ljava/util/Set;Ljava/util/List;Ljava/util/List;Landroidx/compose/runtime/ControlledComposition;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0014\u0010\u0002\u001a\u00020\u00032\n\u0010\u0004\u001a\u0006\u0012\u0002\u0008\u00030\u0005H\u0016J\u0014\u0010\u0006\u001a\u00020\u00032\n\u0010\u0004\u001a\u0006\u0012\u0002\u0008\u00030\u0005H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "androidx/compose/runtime/ComposerImpl$derivedStateObserver$1",
        "Landroidx/compose/runtime/DerivedStateObserver;",
        "done",
        "",
        "derivedState",
        "Landroidx/compose/runtime/DerivedState;",
        "start",
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
.field final synthetic this$0:Landroidx/compose/runtime/ComposerImpl;


# direct methods
.method constructor <init>(Landroidx/compose/runtime/ComposerImpl;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl$derivedStateObserver$1;->this$0:Landroidx/compose/runtime/ComposerImpl;

    .line 1263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Landroidx/compose/runtime/DerivedState;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/DerivedState<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "derivedState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl$derivedStateObserver$1;->this$0:Landroidx/compose/runtime/ComposerImpl;

    .line 1269
    invoke-static {p0}, Landroidx/compose/runtime/ComposerImpl;->access$getChildrenComposing$p(Landroidx/compose/runtime/ComposerImpl;)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-static {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->access$setChildrenComposing$p(Landroidx/compose/runtime/ComposerImpl;I)V

    return-void
.end method

.method public start(Landroidx/compose/runtime/DerivedState;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/DerivedState<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "derivedState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl$derivedStateObserver$1;->this$0:Landroidx/compose/runtime/ComposerImpl;

    .line 1265
    invoke-static {p0}, Landroidx/compose/runtime/ComposerImpl;->access$getChildrenComposing$p(Landroidx/compose/runtime/ComposerImpl;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1}, Landroidx/compose/runtime/ComposerImpl;->access$setChildrenComposing$p(Landroidx/compose/runtime/ComposerImpl;I)V

    return-void
.end method
