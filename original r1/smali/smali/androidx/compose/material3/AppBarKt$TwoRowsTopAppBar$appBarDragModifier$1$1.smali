.class final Landroidx/compose/material3/AppBarKt$TwoRowsTopAppBar$appBarDragModifier$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AppBar.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/AppBarKt;->TwoRowsTopAppBar-tjU4iQQ(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;FLkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarColors;FFLandroidx/compose/material3/TopAppBarScrollBehavior;Landroidx/compose/runtime/Composer;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Float;",
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
.field final synthetic $scrollBehavior:Landroidx/compose/material3/TopAppBarScrollBehavior;


# direct methods
.method constructor <init>(Landroidx/compose/material3/TopAppBarScrollBehavior;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/AppBarKt$TwoRowsTopAppBar$appBarDragModifier$1$1;->$scrollBehavior:Landroidx/compose/material3/TopAppBarScrollBehavior;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1188
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/compose/material3/AppBarKt$TwoRowsTopAppBar$appBarDragModifier$1$1;->invoke(F)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(F)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/material3/AppBarKt$TwoRowsTopAppBar$appBarDragModifier$1$1;->$scrollBehavior:Landroidx/compose/material3/TopAppBarScrollBehavior;

    .line 1189
    invoke-interface {v0}, Landroidx/compose/material3/TopAppBarScrollBehavior;->getState()Landroidx/compose/material3/TopAppBarState;

    move-result-object v0

    iget-object p0, p0, Landroidx/compose/material3/AppBarKt$TwoRowsTopAppBar$appBarDragModifier$1$1;->$scrollBehavior:Landroidx/compose/material3/TopAppBarScrollBehavior;

    invoke-interface {p0}, Landroidx/compose/material3/TopAppBarScrollBehavior;->getState()Landroidx/compose/material3/TopAppBarState;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/material3/TopAppBarState;->getHeightOffset()F

    move-result p0

    add-float/2addr p0, p1

    invoke-virtual {v0, p0}, Landroidx/compose/material3/TopAppBarState;->setHeightOffset(F)V

    return-void
.end method
