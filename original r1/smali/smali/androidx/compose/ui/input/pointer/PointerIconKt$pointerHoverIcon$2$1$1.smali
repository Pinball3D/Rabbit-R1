.class final Landroidx/compose/ui/input/pointer/PointerIconKt$pointerHoverIcon$2$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PointerIcon.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/input/pointer/PointerIconKt$pointerHoverIcon$2;->invoke(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
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
.field final synthetic $icon:Landroidx/compose/ui/input/pointer/PointerIcon;

.field final synthetic $onSetIcon:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/input/pointer/PointerIcon;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $overrideDescendants:Z

.field final synthetic $pointerIconModifierLocal:Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;


# direct methods
.method constructor <init>(Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;Landroidx/compose/ui/input/pointer/PointerIcon;ZLkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;",
            "Landroidx/compose/ui/input/pointer/PointerIcon;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerIcon;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/ui/input/pointer/PointerIconKt$pointerHoverIcon$2$1$1;->$pointerIconModifierLocal:Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;

    iput-object p2, p0, Landroidx/compose/ui/input/pointer/PointerIconKt$pointerHoverIcon$2$1$1;->$icon:Landroidx/compose/ui/input/pointer/PointerIcon;

    iput-boolean p3, p0, Landroidx/compose/ui/input/pointer/PointerIconKt$pointerHoverIcon$2$1$1;->$overrideDescendants:Z

    iput-object p4, p0, Landroidx/compose/ui/input/pointer/PointerIconKt$pointerHoverIcon$2$1$1;->$onSetIcon:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 101
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/PointerIconKt$pointerHoverIcon$2$1$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 3

    iget-object v0, p0, Landroidx/compose/ui/input/pointer/PointerIconKt$pointerHoverIcon$2$1$1;->$pointerIconModifierLocal:Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;

    iget-object v1, p0, Landroidx/compose/ui/input/pointer/PointerIconKt$pointerHoverIcon$2$1$1;->$icon:Landroidx/compose/ui/input/pointer/PointerIcon;

    iget-boolean v2, p0, Landroidx/compose/ui/input/pointer/PointerIconKt$pointerHoverIcon$2$1$1;->$overrideDescendants:Z

    iget-object p0, p0, Landroidx/compose/ui/input/pointer/PointerIconKt$pointerHoverIcon$2$1$1;->$onSetIcon:Lkotlin/jvm/functions/Function1;

    .line 102
    invoke-virtual {v0, v1, v2, p0}, Landroidx/compose/ui/input/pointer/PointerIconModifierLocal;->updateValues(Landroidx/compose/ui/input/pointer/PointerIcon;ZLkotlin/jvm/functions/Function1;)V

    return-void
.end method
