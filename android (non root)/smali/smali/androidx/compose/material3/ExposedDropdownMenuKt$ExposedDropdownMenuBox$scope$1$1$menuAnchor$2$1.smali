.class final Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1$menuAnchor$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ExposedDropdownMenu.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1$menuAnchor$2;->invoke(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/layout/LayoutCoordinates;",
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

.field final synthetic $width$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/compose/ui/node/Ref;Landroid/view/View;ILandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/node/Ref<",
            "Landroidx/compose/ui/layout/LayoutCoordinates;",
            ">;",
            "Landroid/view/View;",
            "I",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1$menuAnchor$2$1;->$coordinates:Landroidx/compose/ui/node/Ref;

    iput-object p2, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1$menuAnchor$2$1;->$view:Landroid/view/View;

    iput p3, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1$menuAnchor$2$1;->$verticalMarginInPx:I

    iput-object p4, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1$menuAnchor$2$1;->$width$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p5, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1$menuAnchor$2$1;->$menuHeight$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 120
    check-cast p1, Landroidx/compose/ui/layout/LayoutCoordinates;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1$menuAnchor$2$1;->invoke(Landroidx/compose/ui/layout/LayoutCoordinates;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/ui/layout/LayoutCoordinates;)V
    .locals 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1$menuAnchor$2$1;->$width$delegate:Landroidx/compose/runtime/MutableState;

    .line 121
    invoke-interface {p1}, Landroidx/compose/ui/layout/LayoutCoordinates;->getSize-YbymL2g()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/material3/ExposedDropdownMenuKt;->access$ExposedDropdownMenuBox$lambda$2(Landroidx/compose/runtime/MutableState;I)V

    iget-object v0, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1$menuAnchor$2$1;->$coordinates:Landroidx/compose/ui/node/Ref;

    .line 122
    invoke-virtual {v0, p1}, Landroidx/compose/ui/node/Ref;->setValue(Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1$menuAnchor$2$1;->$view:Landroid/view/View;

    .line 124
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    const-string/jumbo v0, "view.rootView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1$menuAnchor$2$1;->$coordinates:Landroidx/compose/ui/node/Ref;

    .line 125
    invoke-virtual {v0}, Landroidx/compose/ui/node/Ref;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/layout/LayoutCoordinates;

    iget v1, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1$menuAnchor$2$1;->$verticalMarginInPx:I

    .line 123
    new-instance v2, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1$menuAnchor$2$1$1;

    iget-object p0, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1$menuAnchor$2$1;->$menuHeight$delegate:Landroidx/compose/runtime/MutableState;

    invoke-direct {v2, p0}, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1$menuAnchor$2$1$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {p1, v0, v1, v2}, Landroidx/compose/material3/ExposedDropdownMenuKt;->access$updateHeight(Landroid/view/View;Landroidx/compose/ui/layout/LayoutCoordinates;ILkotlin/jvm/functions/Function1;)V

    return-void
.end method
