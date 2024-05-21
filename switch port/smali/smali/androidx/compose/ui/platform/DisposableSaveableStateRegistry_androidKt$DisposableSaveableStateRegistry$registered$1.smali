.class final Landroidx/compose/ui/platform/DisposableSaveableStateRegistry_androidKt$DisposableSaveableStateRegistry$registered$1;
.super Ljava/lang/Object;
.source "DisposableSaveableStateRegistry.android.kt"

# interfaces
.implements Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/platform/DisposableSaveableStateRegistry_androidKt;->DisposableSaveableStateRegistry(Ljava/lang/String;Landroidx/savedstate/SavedStateRegistryOwner;)Landroidx/compose/ui/platform/DisposableSaveableStateRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0006\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001H\n"
    }
    d2 = {
        "<anonymous>",
        "Landroid/os/Bundle;"
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
.field final synthetic $saveableStateRegistry:Landroidx/compose/runtime/saveable/SaveableStateRegistry;


# direct methods
.method constructor <init>(Landroidx/compose/runtime/saveable/SaveableStateRegistry;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/platform/DisposableSaveableStateRegistry_androidKt$DisposableSaveableStateRegistry$registered$1;->$saveableStateRegistry:Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final saveState()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/DisposableSaveableStateRegistry_androidKt$DisposableSaveableStateRegistry$registered$1;->$saveableStateRegistry:Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    .line 83
    invoke-interface {p0}, Landroidx/compose/runtime/saveable/SaveableStateRegistry;->performSave()Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/ui/platform/DisposableSaveableStateRegistry_androidKt;->access$toBundle(Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
