.class public final Landroidx/compose/ui/viewinterop/ViewFactoryHolder;
.super Landroidx/compose/ui/viewinterop/AndroidViewHolder;
.source "AndroidView.android.kt"

# interfaces
.implements Landroidx/compose/ui/platform/ViewRootForInspector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Landroidx/compose/ui/viewinterop/AndroidViewHolder;",
        "Landroidx/compose/ui/platform/ViewRootForInspector;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidView.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidView.android.kt\nandroidx/compose/ui/viewinterop/ViewFactoryHolder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,398:1\n1#2:399\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\n\u0008\u0000\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u00020\u00032\u00020\u0004BA\u0008\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00028\u00000\u0008\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\u0006\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0002\u0010\u000fB?\u0008\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\u0006\u0010\u0010\u001a\u00028\u0000\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0012\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\u0006\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0002\u0010\u0013J\u0008\u0010-\u001a\u00020\u0017H\u0002J\u0008\u0010.\u001a\u00020\u0017H\u0002R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0011\u001a\u00020\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R<\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00170\u00082\u0012\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00170\u0008@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR<\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00170\u00082\u0012\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00170\u0008@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u001a\"\u0004\u0008\u001f\u0010\u001cR\"\u0010!\u001a\u0004\u0018\u00010 2\u0008\u0010\u0016\u001a\u0004\u0018\u00010 @BX\u0082\u000e\u00a2\u0006\u0008\n\u0000\"\u0004\u0008\"\u0010#R\u000e\u0010$\u001a\u00020%X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u00028\u0000X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010&R<\u0010\'\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00170\u00082\u0012\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00170\u0008@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010\u001a\"\u0004\u0008)\u0010\u001cR\u0014\u0010*\u001a\u00020\u00028VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008+\u0010,\u00a8\u0006/"
    }
    d2 = {
        "Landroidx/compose/ui/viewinterop/ViewFactoryHolder;",
        "T",
        "Landroid/view/View;",
        "Landroidx/compose/ui/viewinterop/AndroidViewHolder;",
        "Landroidx/compose/ui/platform/ViewRootForInspector;",
        "context",
        "Landroid/content/Context;",
        "factory",
        "Lkotlin/Function1;",
        "parentContext",
        "Landroidx/compose/runtime/CompositionContext;",
        "saveStateRegistry",
        "Landroidx/compose/runtime/saveable/SaveableStateRegistry;",
        "compositeKeyHash",
        "",
        "(Landroid/content/Context;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/CompositionContext;Landroidx/compose/runtime/saveable/SaveableStateRegistry;I)V",
        "typedView",
        "dispatcher",
        "Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;",
        "(Landroid/content/Context;Landroidx/compose/runtime/CompositionContext;Landroid/view/View;Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;Landroidx/compose/runtime/saveable/SaveableStateRegistry;I)V",
        "getDispatcher",
        "()Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;",
        "value",
        "",
        "releaseBlock",
        "getReleaseBlock",
        "()Lkotlin/jvm/functions/Function1;",
        "setReleaseBlock",
        "(Lkotlin/jvm/functions/Function1;)V",
        "resetBlock",
        "getResetBlock",
        "setResetBlock",
        "Landroidx/compose/runtime/saveable/SaveableStateRegistry$Entry;",
        "savableRegistryEntry",
        "setSavableRegistryEntry",
        "(Landroidx/compose/runtime/saveable/SaveableStateRegistry$Entry;)V",
        "saveStateKey",
        "",
        "Landroid/view/View;",
        "updateBlock",
        "getUpdateBlock",
        "setUpdateBlock",
        "viewRoot",
        "getViewRoot",
        "()Landroid/view/View;",
        "registerSaveStateProvider",
        "unregisterSaveStateProvider",
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
.field private final compositeKeyHash:I

.field private final dispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

.field private releaseBlock:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private resetBlock:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private savableRegistryEntry:Landroidx/compose/runtime/saveable/SaveableStateRegistry$Entry;

.field private final saveStateKey:Ljava/lang/String;

.field private final saveStateRegistry:Landroidx/compose/runtime/saveable/SaveableStateRegistry;

.field private final typedView:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private updateBlock:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroidx/compose/runtime/CompositionContext;Landroid/view/View;Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;Landroidx/compose/runtime/saveable/SaveableStateRegistry;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/compose/runtime/CompositionContext;",
            "TT;",
            "Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;",
            "Landroidx/compose/runtime/saveable/SaveableStateRegistry;",
            "I)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p6

    move-object v4, p4

    move-object v5, p3

    .line 326
    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;-><init>(Landroid/content/Context;Landroidx/compose/runtime/CompositionContext;ILandroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;Landroid/view/View;)V

    iput-object p3, p0, Landroidx/compose/ui/viewinterop/ViewFactoryHolder;->typedView:Landroid/view/View;

    iput-object p4, p0, Landroidx/compose/ui/viewinterop/ViewFactoryHolder;->dispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    iput-object p5, p0, Landroidx/compose/ui/viewinterop/ViewFactoryHolder;->saveStateRegistry:Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    iput p6, p0, Landroidx/compose/ui/viewinterop/ViewFactoryHolder;->compositeKeyHash:I

    const/4 p1, 0x0

    .line 354
    invoke-virtual {p0, p1}, Landroidx/compose/ui/viewinterop/ViewFactoryHolder;->setClipChildren(Z)V

    .line 355
    invoke-static {p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/viewinterop/ViewFactoryHolder;->saveStateKey:Ljava/lang/String;

    const/4 p2, 0x0

    if-eqz p5, :cond_0

    .line 359
    invoke-interface {p5, p1}, Landroidx/compose/runtime/saveable/SaveableStateRegistry;->consumeRestored(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p2

    .line 358
    :goto_0
    instance-of p4, p1, Landroid/util/SparseArray;

    if-eqz p4, :cond_1

    move-object p2, p1

    check-cast p2, Landroid/util/SparseArray;

    :cond_1
    if-eqz p2, :cond_2

    .line 360
    invoke-virtual {p3, p2}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 361
    :cond_2
    invoke-direct {p0}, Landroidx/compose/ui/viewinterop/ViewFactoryHolder;->registerSaveStateProvider()V

    .line 364
    invoke-static {}, Landroidx/compose/ui/viewinterop/AndroidView_androidKt;->getNoOpUpdate()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/viewinterop/ViewFactoryHolder;->updateBlock:Lkotlin/jvm/functions/Function1;

    .line 370
    invoke-static {}, Landroidx/compose/ui/viewinterop/AndroidView_androidKt;->getNoOpUpdate()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/viewinterop/ViewFactoryHolder;->resetBlock:Lkotlin/jvm/functions/Function1;

    .line 376
    invoke-static {}, Landroidx/compose/ui/viewinterop/AndroidView_androidKt;->getNoOpUpdate()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/viewinterop/ViewFactoryHolder;->releaseBlock:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Landroidx/compose/runtime/CompositionContext;Landroid/view/View;Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;Landroidx/compose/runtime/saveable/SaveableStateRegistry;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_0

    const/4 p2, 0x0

    :cond_0
    move-object v2, p2

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_1

    .line 323
    new-instance p4, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    invoke-direct {p4}, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;-><init>()V

    :cond_1
    move-object v4, p4

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v5, p5

    move v6, p6

    .line 318
    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/viewinterop/ViewFactoryHolder;-><init>(Landroid/content/Context;Landroidx/compose/runtime/CompositionContext;Landroid/view/View;Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;Landroidx/compose/runtime/saveable/SaveableStateRegistry;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/CompositionContext;Landroidx/compose/runtime/saveable/SaveableStateRegistry;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/content/Context;",
            "+TT;>;",
            "Landroidx/compose/runtime/CompositionContext;",
            "Landroidx/compose/runtime/saveable/SaveableStateRegistry;",
            "I)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 337
    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/view/View;

    const/4 v4, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v5, p4

    move v6, p5

    .line 335
    invoke-direct/range {v0 .. v8}, Landroidx/compose/ui/viewinterop/ViewFactoryHolder;-><init>(Landroid/content/Context;Landroidx/compose/runtime/CompositionContext;Landroid/view/View;Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;Landroidx/compose/runtime/saveable/SaveableStateRegistry;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/CompositionContext;Landroidx/compose/runtime/saveable/SaveableStateRegistry;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x4

    if-eqz p6, :cond_0

    const/4 p3, 0x0

    :cond_0
    move-object v3, p3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move v5, p5

    .line 329
    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/viewinterop/ViewFactoryHolder;-><init>(Landroid/content/Context;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/CompositionContext;Landroidx/compose/runtime/saveable/SaveableStateRegistry;I)V

    return-void
.end method

.method public static final synthetic access$getTypedView$p(Landroidx/compose/ui/viewinterop/ViewFactoryHolder;)Landroid/view/View;
    .locals 0

    .line 318
    iget-object p0, p0, Landroidx/compose/ui/viewinterop/ViewFactoryHolder;->typedView:Landroid/view/View;

    return-object p0
.end method

.method public static final synthetic access$unregisterSaveStateProvider(Landroidx/compose/ui/viewinterop/ViewFactoryHolder;)V
    .locals 0

    .line 318
    invoke-direct {p0}, Landroidx/compose/ui/viewinterop/ViewFactoryHolder;->unregisterSaveStateProvider()V

    return-void
.end method

.method private final registerSaveStateProvider()V
    .locals 3

    iget-object v0, p0, Landroidx/compose/ui/viewinterop/ViewFactoryHolder;->saveStateRegistry:Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/compose/ui/viewinterop/ViewFactoryHolder;->saveStateKey:Ljava/lang/String;

    .line 387
    new-instance v2, Landroidx/compose/ui/viewinterop/ViewFactoryHolder$registerSaveStateProvider$1;

    invoke-direct {v2, p0}, Landroidx/compose/ui/viewinterop/ViewFactoryHolder$registerSaveStateProvider$1;-><init>(Landroidx/compose/ui/viewinterop/ViewFactoryHolder;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0, v1, v2}, Landroidx/compose/runtime/saveable/SaveableStateRegistry;->registerProvider(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/saveable/SaveableStateRegistry$Entry;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/compose/ui/viewinterop/ViewFactoryHolder;->setSavableRegistryEntry(Landroidx/compose/runtime/saveable/SaveableStateRegistry$Entry;)V

    :cond_0
    return-void
.end method

.method private final setSavableRegistryEntry(Landroidx/compose/runtime/saveable/SaveableStateRegistry$Entry;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/viewinterop/ViewFactoryHolder;->savableRegistryEntry:Landroidx/compose/runtime/saveable/SaveableStateRegistry$Entry;

    if-eqz v0, :cond_0

    .line 349
    invoke-interface {v0}, Landroidx/compose/runtime/saveable/SaveableStateRegistry$Entry;->unregister()V

    :cond_0
    iput-object p1, p0, Landroidx/compose/ui/viewinterop/ViewFactoryHolder;->savableRegistryEntry:Landroidx/compose/runtime/saveable/SaveableStateRegistry$Entry;

    return-void
.end method

.method private final unregisterSaveStateProvider()V
    .locals 1

    const/4 v0, 0x0

    .line 396
    invoke-direct {p0, v0}, Landroidx/compose/ui/viewinterop/ViewFactoryHolder;->setSavableRegistryEntry(Landroidx/compose/runtime/saveable/SaveableStateRegistry$Entry;)V

    return-void
.end method


# virtual methods
.method public final getDispatcher()Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/viewinterop/ViewFactoryHolder;->dispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    return-object p0
.end method

.method public final getReleaseBlock()Lkotlin/jvm/functions/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "TT;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/ui/viewinterop/ViewFactoryHolder;->releaseBlock:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final getResetBlock()Lkotlin/jvm/functions/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "TT;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/ui/viewinterop/ViewFactoryHolder;->resetBlock:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final getUpdateBlock()Lkotlin/jvm/functions/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "TT;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/ui/viewinterop/ViewFactoryHolder;->updateBlock:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public getViewRoot()Landroid/view/View;
    .locals 0

    .line 343
    check-cast p0, Landroid/view/View;

    return-object p0
.end method

.method public final setReleaseBlock(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/compose/ui/viewinterop/ViewFactoryHolder;->releaseBlock:Lkotlin/jvm/functions/Function1;

    .line 379
    new-instance p1, Landroidx/compose/ui/viewinterop/ViewFactoryHolder$releaseBlock$1;

    invoke-direct {p1, p0}, Landroidx/compose/ui/viewinterop/ViewFactoryHolder$releaseBlock$1;-><init>(Landroidx/compose/ui/viewinterop/ViewFactoryHolder;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/viewinterop/ViewFactoryHolder;->setRelease(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final setResetBlock(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/compose/ui/viewinterop/ViewFactoryHolder;->resetBlock:Lkotlin/jvm/functions/Function1;

    .line 373
    new-instance p1, Landroidx/compose/ui/viewinterop/ViewFactoryHolder$resetBlock$1;

    invoke-direct {p1, p0}, Landroidx/compose/ui/viewinterop/ViewFactoryHolder$resetBlock$1;-><init>(Landroidx/compose/ui/viewinterop/ViewFactoryHolder;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/viewinterop/ViewFactoryHolder;->setReset(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final setUpdateBlock(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/compose/ui/viewinterop/ViewFactoryHolder;->updateBlock:Lkotlin/jvm/functions/Function1;

    .line 367
    new-instance p1, Landroidx/compose/ui/viewinterop/ViewFactoryHolder$updateBlock$1;

    invoke-direct {p1, p0}, Landroidx/compose/ui/viewinterop/ViewFactoryHolder$updateBlock$1;-><init>(Landroidx/compose/ui/viewinterop/ViewFactoryHolder;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/viewinterop/ViewFactoryHolder;->setUpdate(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
