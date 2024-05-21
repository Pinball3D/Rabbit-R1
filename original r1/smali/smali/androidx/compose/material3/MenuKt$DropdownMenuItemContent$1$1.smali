.class final Landroidx/compose/material3/MenuKt$DropdownMenuItemContent$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Menu.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/MenuKt;->DropdownMenuItemContent(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/MenuItemColors;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
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
.field final synthetic $$dirty:I

.field final synthetic $colors:Landroidx/compose/material3/MenuItemColors;

.field final synthetic $enabled:Z

.field final synthetic $leadingIcon:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $text:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $this_Row:Landroidx/compose/foundation/layout/RowScope;

.field final synthetic $trailingIcon:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/MenuItemColors;ZILkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/RowScope;Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/material3/MenuItemColors;",
            "ZI",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/foundation/layout/RowScope;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/MenuKt$DropdownMenuItemContent$1$1;->$leadingIcon:Lkotlin/jvm/functions/Function2;

    iput-object p2, p0, Landroidx/compose/material3/MenuKt$DropdownMenuItemContent$1$1;->$colors:Landroidx/compose/material3/MenuItemColors;

    iput-boolean p3, p0, Landroidx/compose/material3/MenuKt$DropdownMenuItemContent$1$1;->$enabled:Z

    iput p4, p0, Landroidx/compose/material3/MenuKt$DropdownMenuItemContent$1$1;->$$dirty:I

    iput-object p5, p0, Landroidx/compose/material3/MenuKt$DropdownMenuItemContent$1$1;->$trailingIcon:Lkotlin/jvm/functions/Function2;

    iput-object p6, p0, Landroidx/compose/material3/MenuKt$DropdownMenuItemContent$1$1;->$this_Row:Landroidx/compose/foundation/layout/RowScope;

    iput-object p7, p0, Landroidx/compose/material3/MenuKt$DropdownMenuItemContent$1$1;->$text:Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 172
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/MenuKt$DropdownMenuItemContent$1$1;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 10

    const-string v0, "C181@6637L18,181@6578L777,203@7492L26,202@7412L310:Menu.kt#uh7d8r"

    invoke-static {p1, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v0, p2, 0xb

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 173
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 210
    :cond_0
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_1

    .line 173
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    const-string v1, "androidx.compose.material3.DropdownMenuItemContent.<anonymous>.<anonymous> (Menu.kt:171)"

    const v2, 0x3f7b66ec

    invoke-static {v2, p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2
    const p2, 0x5502e8e7

    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string p2, "174@6323L25,173@6243L308"

    invoke-static {p1, p2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/compose/material3/MenuKt$DropdownMenuItemContent$1$1;->$leadingIcon:Lkotlin/jvm/functions/Function2;

    const/16 v0, 0x38

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_3

    new-array p2, v2, [Landroidx/compose/runtime/ProvidedValue;

    .line 175
    invoke-static {}, Landroidx/compose/material3/ContentColorKt;->getLocalContentColor()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v3

    iget-object v4, p0, Landroidx/compose/material3/MenuKt$DropdownMenuItemContent$1$1;->$colors:Landroidx/compose/material3/MenuItemColors;

    iget-boolean v5, p0, Landroidx/compose/material3/MenuKt$DropdownMenuItemContent$1$1;->$enabled:Z

    iget v6, p0, Landroidx/compose/material3/MenuKt$DropdownMenuItemContent$1$1;->$$dirty:I

    shr-int/lit8 v7, v6, 0xf

    and-int/lit8 v7, v7, 0xe

    shr-int/lit8 v6, v6, 0xf

    and-int/lit8 v6, v6, 0x70

    or-int/2addr v6, v7

    invoke-virtual {v4, v5, p1, v6}, Landroidx/compose/material3/MenuItemColors;->leadingIconColor$material3_release(ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v4

    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v3

    aput-object v3, p2, v1

    .line 176
    new-instance v3, Landroidx/compose/material3/MenuKt$DropdownMenuItemContent$1$1$1;

    iget-object v4, p0, Landroidx/compose/material3/MenuKt$DropdownMenuItemContent$1$1;->$leadingIcon:Lkotlin/jvm/functions/Function2;

    iget v5, p0, Landroidx/compose/material3/MenuKt$DropdownMenuItemContent$1$1;->$$dirty:I

    invoke-direct {v3, v4, v5}, Landroidx/compose/material3/MenuKt$DropdownMenuItemContent$1$1$1;-><init>(Lkotlin/jvm/functions/Function2;I)V

    const v4, 0x79540fc7

    invoke-static {p1, v4, v2, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v3

    check-cast v3, Lkotlin/jvm/functions/Function2;

    .line 174
    invoke-static {p2, v3, p1, v0}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    :cond_3
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    new-array p2, v2, [Landroidx/compose/runtime/ProvidedValue;

    .line 182
    invoke-static {}, Landroidx/compose/material3/ContentColorKt;->getLocalContentColor()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v3

    iget-object v4, p0, Landroidx/compose/material3/MenuKt$DropdownMenuItemContent$1$1;->$colors:Landroidx/compose/material3/MenuItemColors;

    iget-boolean v5, p0, Landroidx/compose/material3/MenuKt$DropdownMenuItemContent$1$1;->$enabled:Z

    iget v6, p0, Landroidx/compose/material3/MenuKt$DropdownMenuItemContent$1$1;->$$dirty:I

    shr-int/lit8 v7, v6, 0xf

    and-int/lit8 v7, v7, 0xe

    shr-int/lit8 v6, v6, 0xf

    and-int/lit8 v6, v6, 0x70

    or-int/2addr v6, v7

    invoke-virtual {v4, v5, p1, v6}, Landroidx/compose/material3/MenuItemColors;->textColor$material3_release(ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v4

    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v3

    aput-object v3, p2, v1

    new-instance v3, Landroidx/compose/material3/MenuKt$DropdownMenuItemContent$1$1$2;

    iget-object v5, p0, Landroidx/compose/material3/MenuKt$DropdownMenuItemContent$1$1;->$this_Row:Landroidx/compose/foundation/layout/RowScope;

    iget-object v6, p0, Landroidx/compose/material3/MenuKt$DropdownMenuItemContent$1$1;->$leadingIcon:Lkotlin/jvm/functions/Function2;

    iget-object v7, p0, Landroidx/compose/material3/MenuKt$DropdownMenuItemContent$1$1;->$trailingIcon:Lkotlin/jvm/functions/Function2;

    iget-object v8, p0, Landroidx/compose/material3/MenuKt$DropdownMenuItemContent$1$1;->$text:Lkotlin/jvm/functions/Function2;

    iget v9, p0, Landroidx/compose/material3/MenuKt$DropdownMenuItemContent$1$1;->$$dirty:I

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Landroidx/compose/material3/MenuKt$DropdownMenuItemContent$1$1$2;-><init>(Landroidx/compose/foundation/layout/RowScope;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;I)V

    const v4, -0x670cd454

    invoke-static {p1, v4, v2, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v3

    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-static {p2, v3, p1, v0}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    iget-object p2, p0, Landroidx/compose/material3/MenuKt$DropdownMenuItemContent$1$1;->$trailingIcon:Lkotlin/jvm/functions/Function2;

    if-eqz p2, :cond_4

    new-array p2, v2, [Landroidx/compose/runtime/ProvidedValue;

    .line 204
    invoke-static {}, Landroidx/compose/material3/ContentColorKt;->getLocalContentColor()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v3

    iget-object v4, p0, Landroidx/compose/material3/MenuKt$DropdownMenuItemContent$1$1;->$colors:Landroidx/compose/material3/MenuItemColors;

    iget-boolean v5, p0, Landroidx/compose/material3/MenuKt$DropdownMenuItemContent$1$1;->$enabled:Z

    iget v6, p0, Landroidx/compose/material3/MenuKt$DropdownMenuItemContent$1$1;->$$dirty:I

    shr-int/lit8 v7, v6, 0xf

    and-int/lit8 v7, v7, 0xe

    shr-int/lit8 v6, v6, 0xf

    and-int/lit8 v6, v6, 0x70

    or-int/2addr v6, v7

    invoke-virtual {v4, v5, p1, v6}, Landroidx/compose/material3/MenuItemColors;->trailingIconColor$material3_release(ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v4

    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v3

    aput-object v3, p2, v1

    .line 205
    new-instance v1, Landroidx/compose/material3/MenuKt$DropdownMenuItemContent$1$1$3;

    iget-object v3, p0, Landroidx/compose/material3/MenuKt$DropdownMenuItemContent$1$1;->$trailingIcon:Lkotlin/jvm/functions/Function2;

    iget p0, p0, Landroidx/compose/material3/MenuKt$DropdownMenuItemContent$1$1;->$$dirty:I

    invoke-direct {v1, v3, p0}, Landroidx/compose/material3/MenuKt$DropdownMenuItemContent$1$1$3;-><init>(Lkotlin/jvm/functions/Function2;I)V

    const p0, 0x2296dbfe

    invoke-static {p1, p0, v2, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object p0

    check-cast p0, Lkotlin/jvm/functions/Function2;

    .line 203
    invoke-static {p2, p0, p1, v0}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    :cond_4
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_5
    :goto_1
    return-void
.end method
