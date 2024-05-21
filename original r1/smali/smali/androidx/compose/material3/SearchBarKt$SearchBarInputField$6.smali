.class final Landroidx/compose/material3/SearchBarKt$SearchBarInputField$6;
.super Lkotlin/jvm/internal/Lambda;
.source "SearchBar.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/SearchBarKt;->SearchBarInputField(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;III)V
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

.field final synthetic $colors:Landroidx/compose/material3/TextFieldColors;

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
.method constructor <init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;III)V
    .locals 0
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
            "Landroidx/compose/material3/TextFieldColors;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "III)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/SearchBarKt$SearchBarInputField$6;->$query:Ljava/lang/String;

    iput-object p2, p0, Landroidx/compose/material3/SearchBarKt$SearchBarInputField$6;->$onQueryChange:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Landroidx/compose/material3/SearchBarKt$SearchBarInputField$6;->$onSearch:Lkotlin/jvm/functions/Function1;

    iput-boolean p4, p0, Landroidx/compose/material3/SearchBarKt$SearchBarInputField$6;->$active:Z

    iput-object p5, p0, Landroidx/compose/material3/SearchBarKt$SearchBarInputField$6;->$onActiveChange:Lkotlin/jvm/functions/Function1;

    iput-object p6, p0, Landroidx/compose/material3/SearchBarKt$SearchBarInputField$6;->$modifier:Landroidx/compose/ui/Modifier;

    iput-boolean p7, p0, Landroidx/compose/material3/SearchBarKt$SearchBarInputField$6;->$enabled:Z

    iput-object p8, p0, Landroidx/compose/material3/SearchBarKt$SearchBarInputField$6;->$placeholder:Lkotlin/jvm/functions/Function2;

    iput-object p9, p0, Landroidx/compose/material3/SearchBarKt$SearchBarInputField$6;->$leadingIcon:Lkotlin/jvm/functions/Function2;

    iput-object p10, p0, Landroidx/compose/material3/SearchBarKt$SearchBarInputField$6;->$trailingIcon:Lkotlin/jvm/functions/Function2;

    iput-object p11, p0, Landroidx/compose/material3/SearchBarKt$SearchBarInputField$6;->$colors:Landroidx/compose/material3/TextFieldColors;

    iput-object p12, p0, Landroidx/compose/material3/SearchBarKt$SearchBarInputField$6;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput p13, p0, Landroidx/compose/material3/SearchBarKt$SearchBarInputField$6;->$$changed:I

    iput p14, p0, Landroidx/compose/material3/SearchBarKt$SearchBarInputField$6;->$$changed1:I

    iput p15, p0, Landroidx/compose/material3/SearchBarKt$SearchBarInputField$6;->$$default:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/SearchBarKt$SearchBarInputField$6;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/material3/SearchBarKt$SearchBarInputField$6;->$query:Ljava/lang/String;

    iget-object v2, v0, Landroidx/compose/material3/SearchBarKt$SearchBarInputField$6;->$onQueryChange:Lkotlin/jvm/functions/Function1;

    iget-object v3, v0, Landroidx/compose/material3/SearchBarKt$SearchBarInputField$6;->$onSearch:Lkotlin/jvm/functions/Function1;

    iget-boolean v4, v0, Landroidx/compose/material3/SearchBarKt$SearchBarInputField$6;->$active:Z

    iget-object v5, v0, Landroidx/compose/material3/SearchBarKt$SearchBarInputField$6;->$onActiveChange:Lkotlin/jvm/functions/Function1;

    iget-object v6, v0, Landroidx/compose/material3/SearchBarKt$SearchBarInputField$6;->$modifier:Landroidx/compose/ui/Modifier;

    iget-boolean v7, v0, Landroidx/compose/material3/SearchBarKt$SearchBarInputField$6;->$enabled:Z

    iget-object v8, v0, Landroidx/compose/material3/SearchBarKt$SearchBarInputField$6;->$placeholder:Lkotlin/jvm/functions/Function2;

    iget-object v9, v0, Landroidx/compose/material3/SearchBarKt$SearchBarInputField$6;->$leadingIcon:Lkotlin/jvm/functions/Function2;

    iget-object v10, v0, Landroidx/compose/material3/SearchBarKt$SearchBarInputField$6;->$trailingIcon:Lkotlin/jvm/functions/Function2;

    iget-object v11, v0, Landroidx/compose/material3/SearchBarKt$SearchBarInputField$6;->$colors:Landroidx/compose/material3/TextFieldColors;

    iget-object v12, v0, Landroidx/compose/material3/SearchBarKt$SearchBarInputField$6;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget v13, v0, Landroidx/compose/material3/SearchBarKt$SearchBarInputField$6;->$$changed:I

    or-int/lit8 v13, v13, 0x1

    invoke-static {v13}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v13

    iget v14, v0, Landroidx/compose/material3/SearchBarKt$SearchBarInputField$6;->$$changed1:I

    invoke-static {v14}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v14

    iget v15, v0, Landroidx/compose/material3/SearchBarKt$SearchBarInputField$6;->$$default:I

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move v3, v4

    move-object v4, v5

    move-object v5, v6

    move v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object/from16 v12, p1

    invoke-static/range {v0 .. v15}, Landroidx/compose/material3/SearchBarKt;->access$SearchBarInputField(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;III)V

    return-void
.end method
