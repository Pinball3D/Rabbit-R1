.class public final Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1;
.super Ljava/lang/Object;
.source "ExposedDropdownMenu.kt"

# interfaces
.implements Landroidx/compose/material3/ExposedDropdownMenuBoxScope;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/ExposedDropdownMenuKt;->ExposedDropdownMenuBox(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExposedDropdownMenu.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExposedDropdownMenu.kt\nandroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1\n+ 2 InspectableValue.kt\nandroidx/compose/ui/platform/InspectableValueKt\n*L\n1#1,1058:1\n135#2:1059\n*S KotlinDebug\n*F\n+ 1 ExposedDropdownMenu.kt\nandroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1\n*L\n119#1:1059\n*E\n"
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
.field final synthetic $$dirty:I

.field final synthetic $coordinates:Landroidx/compose/ui/node/Ref;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/ui/node/Ref<",
            "Landroidx/compose/ui/layout/LayoutCoordinates;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $density:Landroidx/compose/ui/unit/Density;

.field final synthetic $expanded:Z

.field final synthetic $focusRequester:Landroidx/compose/ui/focus/FocusRequester;

.field final synthetic $menuHeight$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onExpandedChange:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
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
.method constructor <init>(ZLkotlin/jvm/functions/Function1;ILandroidx/compose/ui/focus/FocusRequester;Landroidx/compose/ui/node/Ref;Landroid/view/View;ILandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/unit/Density;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;I",
            "Landroidx/compose/ui/focus/FocusRequester;",
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
            ">;",
            "Landroidx/compose/ui/unit/Density;",
            ")V"
        }
    .end annotation

    iput-boolean p1, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1;->$expanded:Z

    iput-object p2, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1;->$onExpandedChange:Lkotlin/jvm/functions/Function1;

    iput p3, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1;->$$dirty:I

    iput-object p4, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1;->$focusRequester:Landroidx/compose/ui/focus/FocusRequester;

    iput-object p5, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1;->$coordinates:Landroidx/compose/ui/node/Ref;

    iput-object p6, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1;->$view:Landroid/view/View;

    iput p7, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1;->$verticalMarginInPx:I

    iput-object p8, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1;->$width$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p9, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1;->$menuHeight$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p10, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1;->$density:Landroidx/compose/ui/unit/Density;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exposedDropdownSize(Landroidx/compose/ui/Modifier;Z)Landroidx/compose/ui/Modifier;
    .locals 5

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1;->$density:Landroidx/compose/ui/unit/Density;

    iget-object v1, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1;->$menuHeight$delegate:Landroidx/compose/runtime/MutableState;

    iget-object p0, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1;->$width$delegate:Landroidx/compose/runtime/MutableState;

    .line 138
    invoke-static {v1}, Landroidx/compose/material3/ExposedDropdownMenuKt;->access$ExposedDropdownMenuBox$lambda$4(Landroidx/compose/runtime/MutableState;)I

    move-result v1

    invoke-interface {v0, v1}, Landroidx/compose/ui/unit/Density;->toDp-u2uoSUM(I)F

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {p1, v4, v1, v2, v3}, Landroidx/compose/foundation/layout/SizeKt;->heightIn-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 140
    invoke-static {p0}, Landroidx/compose/material3/ExposedDropdownMenuKt;->access$ExposedDropdownMenuBox$lambda$1(Landroidx/compose/runtime/MutableState;)I

    move-result p0

    invoke-interface {v0, p0}, Landroidx/compose/ui/unit/Density;->toDp-u2uoSUM(I)F

    move-result p0

    invoke-static {p1, p0}, Landroidx/compose/foundation/layout/SizeKt;->width-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public menuAnchor(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
    .locals 12

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1059
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->isDebugInspectorInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1$menuAnchor$$inlined$debugInspectorInfo$1;

    invoke-direct {v0}, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1$menuAnchor$$inlined$debugInspectorInfo$1;-><init>()V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->getNoInspectorInfo()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    .line 119
    :goto_0
    new-instance v11, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1$menuAnchor$2;

    iget-boolean v2, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1;->$expanded:Z

    iget-object v3, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1;->$onExpandedChange:Lkotlin/jvm/functions/Function1;

    iget v4, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1;->$$dirty:I

    iget-object v5, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1;->$focusRequester:Landroidx/compose/ui/focus/FocusRequester;

    iget-object v6, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1;->$coordinates:Landroidx/compose/ui/node/Ref;

    iget-object v7, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1;->$view:Landroid/view/View;

    iget v8, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1;->$verticalMarginInPx:I

    iget-object v9, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1;->$width$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v10, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1;->$menuHeight$delegate:Landroidx/compose/runtime/MutableState;

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1$menuAnchor$2;-><init>(ZLkotlin/jvm/functions/Function1;ILandroidx/compose/ui/focus/FocusRequester;Landroidx/compose/ui/node/Ref;Landroid/view/View;ILandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V

    check-cast v11, Lkotlin/jvm/functions/Function3;

    invoke-static {p1, v0, v11}, Landroidx/compose/ui/ComposedModifierKt;->composed(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method
