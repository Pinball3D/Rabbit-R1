.class final Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$3$listener$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ExposedDropdownMenu.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$3;->invoke(Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;
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
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $coordinates:Landroidx/compose/ui/node/Ref;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/ui/node/Ref<",
            "Landroidx/compose/ui/layout/LayoutCoordinates;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $menuHeight$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $verticalMarginInPx:I

.field final synthetic $view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Landroidx/compose/ui/node/Ref;ILandroidx/compose/runtime/MutableState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroidx/compose/ui/node/Ref<",
            "Landroidx/compose/ui/layout/LayoutCoordinates;",
            ">;I",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$3$listener$1;->$view:Landroid/view/View;

    iput-object p2, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$3$listener$1;->$coordinates:Landroidx/compose/ui/node/Ref;

    iput p3, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$3$listener$1;->$verticalMarginInPx:I

    iput-object p4, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$3$listener$1;->$menuHeight$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 159
    invoke-virtual {p0}, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$3$listener$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 4

    iget-object v0, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$3$listener$1;->$view:Landroid/view/View;

    .line 161
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "view.rootView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$3$listener$1;->$coordinates:Landroidx/compose/ui/node/Ref;

    invoke-virtual {v1}, Landroidx/compose/ui/node/Ref;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/layout/LayoutCoordinates;

    iget v2, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$3$listener$1;->$verticalMarginInPx:I

    new-instance v3, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$3$listener$1$1;

    iget-object p0, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$3$listener$1;->$menuHeight$delegate:Landroidx/compose/runtime/MutableState;

    invoke-direct {v3, p0}, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$3$listener$1$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/material3/ExposedDropdownMenuKt;->access$updateHeight(Landroid/view/View;Landroidx/compose/ui/layout/LayoutCoordinates;ILkotlin/jvm/functions/Function1;)V

    return-void
.end method
