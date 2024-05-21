.class final Landroidx/compose/material3/TextFieldDefaults$TextFieldDecorationBox$3;
.super Lkotlin/jvm/internal/Lambda;
.source "TextFieldDefaults.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/TextFieldDefaults;->TextFieldDecorationBox(Ljava/lang/String;Lkotlin/jvm/functions/Function2;ZZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/interaction/InteractionSource;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;III)V
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

.field final synthetic $shape:Landroidx/compose/ui/graphics/Shape;


# direct methods
.method constructor <init>(ZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/ui/graphics/Shape;II)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/material3/TextFieldDefaults$TextFieldDecorationBox$3;->$enabled:Z

    iput-boolean p2, p0, Landroidx/compose/material3/TextFieldDefaults$TextFieldDecorationBox$3;->$isError:Z

    iput-object p3, p0, Landroidx/compose/material3/TextFieldDefaults$TextFieldDecorationBox$3;->$interactionSource:Landroidx/compose/foundation/interaction/InteractionSource;

    iput-object p4, p0, Landroidx/compose/material3/TextFieldDefaults$TextFieldDecorationBox$3;->$colors:Landroidx/compose/material3/TextFieldColors;

    iput-object p5, p0, Landroidx/compose/material3/TextFieldDefaults$TextFieldDecorationBox$3;->$shape:Landroidx/compose/ui/graphics/Shape;

    iput p6, p0, Landroidx/compose/material3/TextFieldDefaults$TextFieldDecorationBox$3;->$$dirty:I

    iput p7, p0, Landroidx/compose/material3/TextFieldDefaults$TextFieldDecorationBox$3;->$$dirty1:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1271
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/TextFieldDefaults$TextFieldDecorationBox$3;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 12

    const-string v0, "C1271@71620L64:TextFieldDefaults.kt#uh7d8r"

    invoke-static {p1, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v0, p2, 0xb

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1272
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    const-string v1, "androidx.compose.material3.TextFieldDefaults.TextFieldDecorationBox.<anonymous> (TextFieldDefaults.kt:1270)"

    const v2, -0x45d31122

    invoke-static {v2, p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2
    sget-object v3, Landroidx/compose/material3/TextFieldDefaults;->INSTANCE:Landroidx/compose/material3/TextFieldDefaults;

    iget-boolean v4, p0, Landroidx/compose/material3/TextFieldDefaults$TextFieldDecorationBox$3;->$enabled:Z

    iget-boolean v5, p0, Landroidx/compose/material3/TextFieldDefaults$TextFieldDecorationBox$3;->$isError:Z

    iget-object v6, p0, Landroidx/compose/material3/TextFieldDefaults$TextFieldDecorationBox$3;->$interactionSource:Landroidx/compose/foundation/interaction/InteractionSource;

    iget-object v7, p0, Landroidx/compose/material3/TextFieldDefaults$TextFieldDecorationBox$3;->$colors:Landroidx/compose/material3/TextFieldColors;

    iget-object v8, p0, Landroidx/compose/material3/TextFieldDefaults$TextFieldDecorationBox$3;->$shape:Landroidx/compose/ui/graphics/Shape;

    iget p2, p0, Landroidx/compose/material3/TextFieldDefaults$TextFieldDecorationBox$3;->$$dirty:I

    shr-int/lit8 v0, p2, 0x6

    and-int/lit8 v0, v0, 0xe

    const/high16 v1, 0x30000

    or-int/2addr v0, v1

    shr-int/lit8 v1, p2, 0xf

    and-int/lit8 v1, v1, 0x70

    or-int/2addr v0, v1

    shr-int/lit8 p2, p2, 0x9

    and-int/lit16 p2, p2, 0x380

    or-int/2addr p2, v0

    iget p0, p0, Landroidx/compose/material3/TextFieldDefaults$TextFieldDecorationBox$3;->$$dirty1:I

    and-int/lit16 v0, p0, 0x1c00

    or-int/2addr p2, v0

    const v0, 0xe000

    shl-int/lit8 p0, p0, 0x6

    and-int/2addr p0, v0

    or-int v10, p2, p0

    const/4 v11, 0x0

    move-object v9, p1

    invoke-virtual/range {v3 .. v11}, Landroidx/compose/material3/TextFieldDefaults;->ContainerBox(ZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    :goto_1
    return-void
.end method
