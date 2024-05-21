.class public final Landroidx/compose/ui/platform/AndroidComposeView$pointerIconService$1;
.super Ljava/lang/Object;
.source "AndroidComposeView.android.kt"

# interfaces
.implements Landroidx/compose/ui/input/pointer/PointerIconService;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/platform/AndroidComposeView;-><init>(Landroid/content/Context;Lkotlin/coroutines/CoroutineContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016J\u0012\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0003H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "androidx/compose/ui/platform/AndroidComposeView$pointerIconService$1",
        "Landroidx/compose/ui/input/pointer/PointerIconService;",
        "currentIcon",
        "Landroidx/compose/ui/input/pointer/PointerIcon;",
        "getIcon",
        "setIcon",
        "",
        "value",
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
.field private currentIcon:Landroidx/compose/ui/input/pointer/PointerIcon;

.field final synthetic this$0:Landroidx/compose/ui/platform/AndroidComposeView;


# direct methods
.method constructor <init>(Landroidx/compose/ui/platform/AndroidComposeView;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeView$pointerIconService$1;->this$0:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 1758
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1759
    sget-object p1, Landroidx/compose/ui/input/pointer/PointerIcon;->Companion:Landroidx/compose/ui/input/pointer/PointerIcon$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerIcon$Companion;->getDefault()Landroidx/compose/ui/input/pointer/PointerIcon;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeView$pointerIconService$1;->currentIcon:Landroidx/compose/ui/input/pointer/PointerIcon;

    return-void
.end method


# virtual methods
.method public getIcon()Landroidx/compose/ui/input/pointer/PointerIcon;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView$pointerIconService$1;->currentIcon:Landroidx/compose/ui/input/pointer/PointerIcon;

    return-object p0
.end method

.method public setIcon(Landroidx/compose/ui/input/pointer/PointerIcon;)V
    .locals 1

    if-nez p1, :cond_0

    .line 1766
    sget-object p1, Landroidx/compose/ui/input/pointer/PointerIcon;->Companion:Landroidx/compose/ui/input/pointer/PointerIcon$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerIcon$Companion;->getDefault()Landroidx/compose/ui/input/pointer/PointerIcon;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Landroidx/compose/ui/platform/AndroidComposeView$pointerIconService$1;->currentIcon:Landroidx/compose/ui/input/pointer/PointerIcon;

    .line 1768
    sget-object p1, Landroidx/compose/ui/platform/AndroidComposeViewVerificationHelperMethodsN;->INSTANCE:Landroidx/compose/ui/platform/AndroidComposeViewVerificationHelperMethodsN;

    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeView$pointerIconService$1;->this$0:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 1769
    check-cast v0, Landroid/view/View;

    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView$pointerIconService$1;->currentIcon:Landroidx/compose/ui/input/pointer/PointerIcon;

    .line 1768
    invoke-virtual {p1, v0, p0}, Landroidx/compose/ui/platform/AndroidComposeViewVerificationHelperMethodsN;->setPointerIcon(Landroid/view/View;Landroidx/compose/ui/input/pointer/PointerIcon;)V

    return-void
.end method
