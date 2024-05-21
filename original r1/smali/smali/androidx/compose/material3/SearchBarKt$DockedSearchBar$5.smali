.class final Landroidx/compose/material3/SearchBarKt$DockedSearchBar$5;
.super Lkotlin/jvm/internal/Lambda;
.source "SearchBar.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/SearchBarKt;->DockedSearchBar-rpjkMjA(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V
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
.field final synthetic $$changed:I

.field final synthetic $$changed1:I

.field final synthetic $$default:I

.field final synthetic $active:Z

.field final synthetic $colors:Landroidx/compose/material3/SearchBarColors;

.field final synthetic $content:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Landroidx/compose/foundation/layout/ColumnScope;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $enabled:Z

.field final synthetic $interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

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

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $onActiveChange:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onQueryChange:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onSearch:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $placeholder:Lkotlin/jvm/functions/Function2;
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

.field final synthetic $query:Ljava/lang/String;

.field final synthetic $shape:Landroidx/compose/ui/graphics/Shape;

.field final synthetic $tonalElevation:F

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
.method constructor <init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;III)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/graphics/Shape;",
            "Landroidx/compose/material3/SearchBarColors;",
            "F",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/foundation/layout/ColumnScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;III)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Landroidx/compose/material3/SearchBarKt$DockedSearchBar$5;->$query:Ljava/lang/String;

    move-object v1, p2

    iput-object v1, v0, Landroidx/compose/material3/SearchBarKt$DockedSearchBar$5;->$onQueryChange:Lkotlin/jvm/functions/Function1;

    move-object v1, p3

    iput-object v1, v0, Landroidx/compose/material3/SearchBarKt$DockedSearchBar$5;->$onSearch:Lkotlin/jvm/functions/Function1;

    move v1, p4

    iput-boolean v1, v0, Landroidx/compose/material3/SearchBarKt$DockedSearchBar$5;->$active:Z

    move-object v1, p5

    iput-object v1, v0, Landroidx/compose/material3/SearchBarKt$DockedSearchBar$5;->$onActiveChange:Lkotlin/jvm/functions/Function1;

    move-object v1, p6

    iput-object v1, v0, Landroidx/compose/material3/SearchBarKt$DockedSearchBar$5;->$modifier:Landroidx/compose/ui/Modifier;

    move v1, p7

    iput-boolean v1, v0, Landroidx/compose/material3/SearchBarKt$DockedSearchBar$5;->$enabled:Z

    move-object v1, p8

    iput-object v1, v0, Landroidx/compose/material3/SearchBarKt$DockedSearchBar$5;->$placeholder:Lkotlin/jvm/functions/Function2;

    move-object v1, p9

    iput-object v1, v0, Landroidx/compose/material3/SearchBarKt$DockedSearchBar$5;->$leadingIcon:Lkotlin/jvm/functions/Function2;

    move-object v1, p10

    iput-object v1, v0, Landroidx/compose/material3/SearchBarKt$DockedSearchBar$5;->$trailingIcon:Lkotlin/jvm/functions/Function2;

    move-object v1, p11

    iput-object v1, v0, Landroidx/compose/material3/SearchBarKt$DockedSearchBar$5;->$shape:Landroidx/compose/ui/graphics/Shape;

    move-object v1, p12

    iput-object v1, v0, Landroidx/compose/material3/SearchBarKt$DockedSearchBar$5;->$colors:Landroidx/compose/material3/SearchBarColors;

    move v1, p13

    iput v1, v0, Landroidx/compose/material3/SearchBarKt$DockedSearchBar$5;->$tonalElevation:F

    move-object/from16 v1, p14

    iput-object v1, v0, Landroidx/compose/material3/SearchBarKt$DockedSearchBar$5;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    move-object/from16 v1, p15

    iput-object v1, v0, Landroidx/compose/material3/SearchBarKt$DockedSearchBar$5;->$content:Lkotlin/jvm/functions/Function3;

    move/from16 v1, p16

    iput v1, v0, Landroidx/compose/material3/SearchBarKt$DockedSearchBar$5;->$$changed:I

    move/from16 v1, p17

    iput v1, v0, Landroidx/compose/material3/SearchBarKt$DockedSearchBar$5;->$$changed1:I

    move/from16 v1, p18

    iput v1, v0, Landroidx/compose/material3/SearchBarKt$DockedSearchBar$5;->$$default:I

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/SearchBarKt$DockedSearchBar$5;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v16, p1

    iget-object v1, v0, Landroidx/compose/material3/SearchBarKt$DockedSearchBar$5;->$query:Ljava/lang/String;

    iget-object v2, v0, Landroidx/compose/material3/SearchBarKt$DockedSearchBar$5;->$onQueryChange:Lkotlin/jvm/functions/Function1;

    iget-object v3, v0, Landroidx/compose/material3/SearchBarKt$DockedSearchBar$5;->$onSearch:Lkotlin/jvm/functions/Function1;

    iget-boolean v4, v0, Landroidx/compose/material3/SearchBarKt$DockedSearchBar$5;->$active:Z

    iget-object v5, v0, Landroidx/compose/material3/SearchBarKt$DockedSearchBar$5;->$onActiveChange:Lkotlin/jvm/functions/Function1;

    iget-object v6, v0, Landroidx/compose/material3/SearchBarKt$DockedSearchBar$5;->$modifier:Landroidx/compose/ui/Modifier;

    iget-boolean v7, v0, Landroidx/compose/material3/SearchBarKt$DockedSearchBar$5;->$enabled:Z

    iget-object v8, v0, Landroidx/compose/material3/SearchBarKt$DockedSearchBar$5;->$placeholder:Lkotlin/jvm/functions/Function2;

    iget-object v9, v0, Landroidx/compose/material3/SearchBarKt$DockedSearchBar$5;->$leadingIcon:Lkotlin/jvm/functions/Function2;

    iget-object v10, v0, Landroidx/compose/material3/SearchBarKt$DockedSearchBar$5;->$trailingIcon:Lkotlin/jvm/functions/Function2;

    iget-object v11, v0, Landroidx/compose/material3/SearchBarKt$DockedSearchBar$5;->$shape:Landroidx/compose/ui/graphics/Shape;

    iget-object v12, v0, Landroidx/compose/material3/SearchBarKt$DockedSearchBar$5;->$colors:Landroidx/compose/material3/SearchBarColors;

    iget v13, v0, Landroidx/compose/material3/SearchBarKt$DockedSearchBar$5;->$tonalElevation:F

    iget-object v14, v0, Landroidx/compose/material3/SearchBarKt$DockedSearchBar$5;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget-object v15, v0, Landroidx/compose/material3/SearchBarKt$DockedSearchBar$5;->$content:Lkotlin/jvm/functions/Function3;

    move-object/from16 p1, v1

    iget v1, v0, Landroidx/compose/material3/SearchBarKt$DockedSearchBar$5;->$$changed:I

    or-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v17

    iget v1, v0, Landroidx/compose/material3/SearchBarKt$DockedSearchBar$5;->$$changed1:I

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v18

    iget v0, v0, Landroidx/compose/material3/SearchBarKt$DockedSearchBar$5;->$$default:I

    move/from16 v19, v0

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v19}, Landroidx/compose/material3/SearchBarKt;->DockedSearchBar-rpjkMjA(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V

    return-void
.end method
