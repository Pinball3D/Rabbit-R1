.class public final Landroidx/compose/runtime/saveable/SaveableStateHolderImpl$RegistryHolder;
.super Ljava/lang/Object;
.source "SaveableStateHolder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "RegistryHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010 \n\u0000\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0002\u0010\u0003J.\u0010\u0010\u001a\u00020\u00112&\u0010\u0012\u001a\"\u0012\u0004\u0012\u00020\u0001\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u0015\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00160\u00140\u0013R\u0011\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0017"
    }
    d2 = {
        "Landroidx/compose/runtime/saveable/SaveableStateHolderImpl$RegistryHolder;",
        "",
        "key",
        "(Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;Ljava/lang/Object;)V",
        "getKey",
        "()Ljava/lang/Object;",
        "registry",
        "Landroidx/compose/runtime/saveable/SaveableStateRegistry;",
        "getRegistry",
        "()Landroidx/compose/runtime/saveable/SaveableStateRegistry;",
        "shouldSave",
        "",
        "getShouldSave",
        "()Z",
        "setShouldSave",
        "(Z)V",
        "saveTo",
        "",
        "map",
        "",
        "",
        "",
        "",
        "runtime-saveable_release"
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
.field private final key:Ljava/lang/Object;

.field private final registry:Landroidx/compose/runtime/saveable/SaveableStateRegistry;

.field private shouldSave:Z

.field final synthetic this$0:Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl$RegistryHolder;->this$0:Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl$RegistryHolder;->key:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl$RegistryHolder;->shouldSave:Z

    .line 119
    invoke-static {p1}, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;->access$getSavedStates$p(Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    new-instance v0, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl$RegistryHolder$registry$1;

    invoke-direct {v0, p1}, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl$RegistryHolder$registry$1;-><init>(Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {p2, v0}, Landroidx/compose/runtime/saveable/SaveableStateRegistryKt;->SaveableStateRegistry(Ljava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl$RegistryHolder;->registry:Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    return-void
.end method


# virtual methods
.method public final getKey()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl$RegistryHolder;->key:Ljava/lang/Object;

    return-object p0
.end method

.method public final getRegistry()Landroidx/compose/runtime/saveable/SaveableStateRegistry;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl$RegistryHolder;->registry:Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    return-object p0
.end method

.method public final getShouldSave()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl$RegistryHolder;->shouldSave:Z

    return p0
.end method

.method public final saveTo(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;>;)V"
        }
    .end annotation

    const-string v0, "map"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl$RegistryHolder;->shouldSave:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl$RegistryHolder;->registry:Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    .line 125
    invoke-interface {v0}, Landroidx/compose/runtime/saveable/SaveableStateRegistry;->performSave()Ljava/util/Map;

    move-result-object v0

    .line 126
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl$RegistryHolder;->key:Ljava/lang/Object;

    .line 127
    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl$RegistryHolder;->key:Ljava/lang/Object;

    .line 129
    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public final setShouldSave(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl$RegistryHolder;->shouldSave:Z

    return-void
.end method
