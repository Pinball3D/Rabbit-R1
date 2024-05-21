.class final Landroidx/compose/ui/input/pointer/PointerIconKt$pointerHoverIcon$2$onSetIcon$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PointerIcon.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


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
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/input/pointer/PointerIcon;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "pointerIcon",
        "Landroidx/compose/ui/input/pointer/PointerIcon;",
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
.field final synthetic $pointerIconService:Landroidx/compose/ui/input/pointer/PointerIconService;


# direct methods
.method constructor <init>(Landroidx/compose/ui/input/pointer/PointerIconService;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/input/pointer/PointerIconKt$pointerHoverIcon$2$onSetIcon$1;->$pointerIconService:Landroidx/compose/ui/input/pointer/PointerIconService;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 95
    check-cast p1, Landroidx/compose/ui/input/pointer/PointerIcon;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/input/pointer/PointerIconKt$pointerHoverIcon$2$onSetIcon$1;->invoke(Landroidx/compose/ui/input/pointer/PointerIcon;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/ui/input/pointer/PointerIcon;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/input/pointer/PointerIconKt$pointerHoverIcon$2$onSetIcon$1;->$pointerIconService:Landroidx/compose/ui/input/pointer/PointerIconService;

    .line 96
    invoke-interface {p0, p1}, Landroidx/compose/ui/input/pointer/PointerIconService;->setIcon(Landroidx/compose/ui/input/pointer/PointerIcon;)V

    return-void
.end method
