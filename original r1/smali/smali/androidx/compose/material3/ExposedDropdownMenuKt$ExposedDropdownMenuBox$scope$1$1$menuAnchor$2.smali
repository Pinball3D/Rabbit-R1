.class final Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1$menuAnchor$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ExposedDropdownMenu.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1;->menuAnchor(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Landroidx/compose/ui/Modifier;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Landroidx/compose/ui/Modifier;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExposedDropdownMenu.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExposedDropdownMenu.kt\nandroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1$menuAnchor$2\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n*L\n1#1,1058:1\n50#2:1059\n49#2:1060\n1114#3,6:1061\n*S KotlinDebug\n*F\n+ 1 ExposedDropdownMenu.kt\nandroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1$menuAnchor$2\n*L\n132#1:1059\n132#1:1060\n132#1:1061,6\n*E\n"
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
.method constructor <init>(ZLkotlin/jvm/functions/Function1;ILandroidx/compose/ui/focus/FocusRequester;Landroidx/compose/ui/node/Ref;Landroid/view/View;ILandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V
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
            ">;)V"
        }
    .end annotation

    iput-boolean p1, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1$menuAnchor$2;->$expanded:Z

    iput-object p2, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1$menuAnchor$2;->$onExpandedChange:Lkotlin/jvm/functions/Function1;

    iput p3, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1$menuAnchor$2;->$$dirty:I

    iput-object p4, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1$menuAnchor$2;->$focusRequester:Landroidx/compose/ui/focus/FocusRequester;

    iput-object p5, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1$menuAnchor$2;->$coordinates:Landroidx/compose/ui/node/Ref;

    iput-object p6, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1$menuAnchor$2;->$view:Landroid/view/View;

    iput p7, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1$menuAnchor$2;->$verticalMarginInPx:I

    iput-object p8, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1$menuAnchor$2;->$width$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p9, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1$menuAnchor$2;->$menuHeight$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
    .locals 9

    const-string v0, "$this$composed"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x6636ca19

    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C131@6216L31,129@6116L154:ExposedDropdownMenu.kt#uh7d8r"

    invoke-static {p2, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "androidx.compose.material3.ExposedDropdownMenuBox.<anonymous>.<no name provided>.menuAnchor.<anonymous> (ExposedDropdownMenu.kt:118)"

    .line 120
    invoke-static {v0, p3, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    new-instance p3, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1$menuAnchor$2$1;

    iget-object v4, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1$menuAnchor$2;->$coordinates:Landroidx/compose/ui/node/Ref;

    iget-object v5, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1$menuAnchor$2;->$view:Landroid/view/View;

    iget v6, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1$menuAnchor$2;->$verticalMarginInPx:I

    iget-object v7, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1$menuAnchor$2;->$width$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v8, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1$menuAnchor$2;->$menuHeight$delegate:Landroidx/compose/runtime/MutableState;

    move-object v3, p3

    invoke-direct/range {v3 .. v8}, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1$menuAnchor$2$1;-><init>(Landroidx/compose/ui/node/Ref;Landroid/view/View;ILandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V

    check-cast p3, Lkotlin/jvm/functions/Function1;

    invoke-static {p1, p3}, Landroidx/compose/ui/layout/OnGloballyPositionedModifierKt;->onGloballyPositioned(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1$menuAnchor$2;->$expanded:Z

    iget-object p1, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1$menuAnchor$2;->$onExpandedChange:Lkotlin/jvm/functions/Function1;

    .line 132
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    iget-object v2, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1$menuAnchor$2;->$onExpandedChange:Lkotlin/jvm/functions/Function1;

    iget-boolean v3, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1$menuAnchor$2;->$expanded:Z

    const v4, 0x1e7b2b64

    invoke-interface {p2, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v4, "CC(remember)P(1,2):Composables.kt#9igjgp"

    invoke-static {p2, v4}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    .line 1059
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result p1

    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result p3

    or-int/2addr p1, p3

    .line 1061
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object p3

    if-nez p1, :cond_1

    .line 1062
    sget-object p1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object p1

    if-ne p3, p1, :cond_2

    .line 132
    :cond_1
    new-instance p1, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1$menuAnchor$2$2$1;

    invoke-direct {p1, v2, v3}, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1$menuAnchor$2$2$1;-><init>(Lkotlin/jvm/functions/Function1;Z)V

    move-object p3, p1

    check-cast p3, Lkotlin/jvm/functions/Function0;

    .line 1064
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 1060
    :cond_2
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    move-object v2, p3

    check-cast v2, Lkotlin/jvm/functions/Function0;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget p1, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1$menuAnchor$2;->$$dirty:I

    shl-int/lit8 p1, p1, 0x3

    and-int/lit8 v7, p1, 0x70

    const/16 v8, 0x1c

    move-object v6, p2

    .line 130
    invoke-static/range {v0 .. v8}, Landroidx/compose/material3/ExposedDropdownMenuKt;->access$expandable(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/ui/Modifier;

    move-result-object p1

    iget-object p0, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1$menuAnchor$2;->$focusRequester:Landroidx/compose/ui/focus/FocusRequester;

    .line 133
    invoke-static {p1, p0}, Landroidx/compose/ui/focus/FocusRequesterModifierKt;->focusRequester(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/focus/FocusRequester;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 119
    check-cast p1, Landroidx/compose/ui/Modifier;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1$menuAnchor$2;->invoke(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method
