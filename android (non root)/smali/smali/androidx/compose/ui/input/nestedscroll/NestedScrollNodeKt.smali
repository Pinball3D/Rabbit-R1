.class public final Landroidx/compose/ui/input/nestedscroll/NestedScrollNodeKt;
.super Ljava/lang/Object;
.source "NestedScrollNode.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\n\"\u001c\u0010\u0000\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u000b"
    }
    d2 = {
        "ModifierLocalNestedScroll",
        "Landroidx/compose/ui/modifier/ProvidableModifierLocal;",
        "Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;",
        "getModifierLocalNestedScroll",
        "()Landroidx/compose/ui/modifier/ProvidableModifierLocal;",
        "nestedScrollModifierNode",
        "Landroidx/compose/ui/node/DelegatableNode;",
        "connection",
        "Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;",
        "dispatcher",
        "Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;",
        "ui_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final ModifierLocalNestedScroll:Landroidx/compose/ui/modifier/ProvidableModifierLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/ui/modifier/ProvidableModifierLocal<",
            "Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    sget-object v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNodeKt$ModifierLocalNestedScroll$1;->INSTANCE:Landroidx/compose/ui/input/nestedscroll/NestedScrollNodeKt$ModifierLocalNestedScroll$1;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Landroidx/compose/ui/modifier/ModifierLocalKt;->modifierLocalOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNodeKt;->ModifierLocalNestedScroll:Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    return-void
.end method

.method public static final getModifierLocalNestedScroll()Landroidx/compose/ui/modifier/ProvidableModifierLocal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/ui/modifier/ProvidableModifierLocal<",
            "Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNodeKt;->ModifierLocalNestedScroll:Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    return-object v0
.end method

.method public static final nestedScrollModifierNode(Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;)Landroidx/compose/ui/node/DelegatableNode;
    .locals 1

    const-string v0, "connection"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    new-instance v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;

    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;-><init>(Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;)V

    check-cast v0, Landroidx/compose/ui/node/DelegatableNode;

    return-object v0
.end method
