.class final Landroidx/compose/material3/TextFieldDefaults$OutlinedTextFieldDecorationBox$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TextFieldDefaults.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/TextFieldDefaults;->OutlinedTextFieldDecorationBox(Ljava/lang/String;Lkotlin/jvm/functions/Function2;ZZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/interaction/InteractionSource;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;III)V
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

.field final synthetic $$dirty1:I

.field final synthetic $colors:Landroidx/compose/material3/TextFieldColors;

.field final synthetic $enabled:Z

.field final synthetic $interactionSource:Landroidx/compose/foundation/interaction/InteractionSource;

.field final synthetic $isError:Z


# direct methods
.method constructor <init>(ZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/material3/TextFieldColors;II)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/material3/TextFieldDefaults$OutlinedTextFieldDecorationBox$1;->$enabled:Z

    iput-boolean p2, p0, Landroidx/compose/material3/TextFieldDefaults$OutlinedTextFieldDecorationBox$1;->$isError:Z

    iput-object p3, p0, Landroidx/compose/material3/TextFieldDefaults$OutlinedTextFieldDecorationBox$1;->$interactionSource:Landroidx/compose/foundation/interaction/InteractionSource;

    iput-object p4, p0, Landroidx/compose/material3/TextFieldDefaults$OutlinedTextFieldDecorationBox$1;->$colors:Landroidx/compose/material3/TextFieldColors;

    iput p5, p0, Landroidx/compose/material3/TextFieldDefaults$OutlinedTextFieldDecorationBox$1;->$$dirty:I

    iput p6, p0, Landroidx/compose/material3/TextFieldDefaults$OutlinedTextFieldDecorationBox$1;->$$dirty1:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1034
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/TextFieldDefaults$OutlinedTextFieldDecorationBox$1;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 14

    move-object v0, p0

    move/from16 v1, p2

    const-string v2, "C1034@57160L57:TextFieldDefaults.kt#uh7d8r"

    move-object v11, p1

    invoke-static {p1, v2}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v2, v1, 0xb

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 1035
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, -0x1

    const-string v3, "androidx.compose.material3.TextFieldDefaults.OutlinedTextFieldDecorationBox.<anonymous> (TextFieldDefaults.kt:1033)"

    const v4, -0x44bc661d

    invoke-static {v4, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2
    sget-object v3, Landroidx/compose/material3/OutlinedTextFieldDefaults;->INSTANCE:Landroidx/compose/material3/OutlinedTextFieldDefaults;

    iget-boolean v4, v0, Landroidx/compose/material3/TextFieldDefaults$OutlinedTextFieldDecorationBox$1;->$enabled:Z

    iget-boolean v5, v0, Landroidx/compose/material3/TextFieldDefaults$OutlinedTextFieldDecorationBox$1;->$isError:Z

    iget-object v6, v0, Landroidx/compose/material3/TextFieldDefaults$OutlinedTextFieldDecorationBox$1;->$interactionSource:Landroidx/compose/foundation/interaction/InteractionSource;

    iget-object v7, v0, Landroidx/compose/material3/TextFieldDefaults$OutlinedTextFieldDecorationBox$1;->$colors:Landroidx/compose/material3/TextFieldColors;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v1, v0, Landroidx/compose/material3/TextFieldDefaults$OutlinedTextFieldDecorationBox$1;->$$dirty:I

    shr-int/lit8 v2, v1, 0x6

    and-int/lit8 v2, v2, 0xe

    const/high16 v12, 0xc00000

    or-int/2addr v2, v12

    shr-int/lit8 v12, v1, 0xf

    and-int/lit8 v12, v12, 0x70

    or-int/2addr v2, v12

    shr-int/lit8 v1, v1, 0x9

    and-int/lit16 v1, v1, 0x380

    or-int/2addr v1, v2

    iget v0, v0, Landroidx/compose/material3/TextFieldDefaults$OutlinedTextFieldDecorationBox$1;->$$dirty1:I

    shr-int/lit8 v0, v0, 0x3

    and-int/lit16 v0, v0, 0x1c00

    or-int v12, v1, v0

    const/16 v13, 0x70

    move-object v11, p1

    invoke-virtual/range {v3 .. v13}, Landroidx/compose/material3/OutlinedTextFieldDefaults;->ContainerBox-nbWgWpA(ZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/ui/graphics/Shape;FFLandroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    :goto_1
    return-void
.end method
