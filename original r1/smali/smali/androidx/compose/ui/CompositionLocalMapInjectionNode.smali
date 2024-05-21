.class public final Landroidx/compose/ui/CompositionLocalMapInjectionNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "ComposedModifier.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\t\u001a\u00020\nH\u0016R$\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0003@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\u0004\u00a8\u0006\u000b"
    }
    d2 = {
        "Landroidx/compose/ui/CompositionLocalMapInjectionNode;",
        "Landroidx/compose/ui/Modifier$Node;",
        "map",
        "Landroidx/compose/runtime/CompositionLocalMap;",
        "(Landroidx/compose/runtime/CompositionLocalMap;)V",
        "value",
        "getMap",
        "()Landroidx/compose/runtime/CompositionLocalMap;",
        "setMap",
        "onAttach",
        "",
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
.field private map:Landroidx/compose/runtime/CompositionLocalMap;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/CompositionLocalMap;)V
    .locals 1

    const-string v0, "map"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 287
    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/CompositionLocalMapInjectionNode;->map:Landroidx/compose/runtime/CompositionLocalMap;

    return-void
.end method


# virtual methods
.method public final getMap()Landroidx/compose/runtime/CompositionLocalMap;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/CompositionLocalMapInjectionNode;->map:Landroidx/compose/runtime/CompositionLocalMap;

    return-object p0
.end method

.method public onAttach()V
    .locals 1

    .line 294
    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/node/DelegatableNode;

    invoke-static {v0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    iget-object p0, p0, Landroidx/compose/ui/CompositionLocalMapInjectionNode;->map:Landroidx/compose/runtime/CompositionLocalMap;

    invoke-virtual {v0, p0}, Landroidx/compose/ui/node/LayoutNode;->setCompositionLocalMap(Landroidx/compose/runtime/CompositionLocalMap;)V

    return-void
.end method

.method public final setMap(Landroidx/compose/runtime/CompositionLocalMap;)V
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/compose/ui/CompositionLocalMapInjectionNode;->map:Landroidx/compose/runtime/CompositionLocalMap;

    .line 291
    check-cast p0, Landroidx/compose/ui/node/DelegatableNode;

    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/LayoutNode;->setCompositionLocalMap(Landroidx/compose/runtime/CompositionLocalMap;)V

    return-void
.end method
