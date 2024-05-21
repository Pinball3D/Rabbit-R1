.class final Landroidx/compose/foundation/text/ClickableTextKt$ClickableText$3;
.super Lkotlin/jvm/internal/Lambda;
.source "ClickableText.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/text/ClickableTextKt;->ClickableText-4YKlhWE(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;ZIILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V
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

.field final synthetic $$default:I

.field final synthetic $maxLines:I

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $onClick:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onTextLayout:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/text/TextLayoutResult;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $overflow:I

.field final synthetic $softWrap:Z

.field final synthetic $style:Landroidx/compose/ui/text/TextStyle;

.field final synthetic $text:Landroidx/compose/ui/text/AnnotatedString;


# direct methods
.method constructor <init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;ZIILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/text/AnnotatedString;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/ui/text/TextStyle;",
            "ZII",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/text/TextLayoutResult;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;II)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/text/ClickableTextKt$ClickableText$3;->$text:Landroidx/compose/ui/text/AnnotatedString;

    iput-object p2, p0, Landroidx/compose/foundation/text/ClickableTextKt$ClickableText$3;->$modifier:Landroidx/compose/ui/Modifier;

    iput-object p3, p0, Landroidx/compose/foundation/text/ClickableTextKt$ClickableText$3;->$style:Landroidx/compose/ui/text/TextStyle;

    iput-boolean p4, p0, Landroidx/compose/foundation/text/ClickableTextKt$ClickableText$3;->$softWrap:Z

    iput p5, p0, Landroidx/compose/foundation/text/ClickableTextKt$ClickableText$3;->$overflow:I

    iput p6, p0, Landroidx/compose/foundation/text/ClickableTextKt$ClickableText$3;->$maxLines:I

    iput-object p7, p0, Landroidx/compose/foundation/text/ClickableTextKt$ClickableText$3;->$onTextLayout:Lkotlin/jvm/functions/Function1;

    iput-object p8, p0, Landroidx/compose/foundation/text/ClickableTextKt$ClickableText$3;->$onClick:Lkotlin/jvm/functions/Function1;

    iput p9, p0, Landroidx/compose/foundation/text/ClickableTextKt$ClickableText$3;->$$changed:I

    iput p10, p0, Landroidx/compose/foundation/text/ClickableTextKt$ClickableText$3;->$$default:I

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

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/text/ClickableTextKt$ClickableText$3;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 11

    iget-object v0, p0, Landroidx/compose/foundation/text/ClickableTextKt$ClickableText$3;->$text:Landroidx/compose/ui/text/AnnotatedString;

    iget-object v1, p0, Landroidx/compose/foundation/text/ClickableTextKt$ClickableText$3;->$modifier:Landroidx/compose/ui/Modifier;

    iget-object v2, p0, Landroidx/compose/foundation/text/ClickableTextKt$ClickableText$3;->$style:Landroidx/compose/ui/text/TextStyle;

    iget-boolean v3, p0, Landroidx/compose/foundation/text/ClickableTextKt$ClickableText$3;->$softWrap:Z

    iget v4, p0, Landroidx/compose/foundation/text/ClickableTextKt$ClickableText$3;->$overflow:I

    iget v5, p0, Landroidx/compose/foundation/text/ClickableTextKt$ClickableText$3;->$maxLines:I

    iget-object v6, p0, Landroidx/compose/foundation/text/ClickableTextKt$ClickableText$3;->$onTextLayout:Lkotlin/jvm/functions/Function1;

    iget-object v7, p0, Landroidx/compose/foundation/text/ClickableTextKt$ClickableText$3;->$onClick:Lkotlin/jvm/functions/Function1;

    iget p2, p0, Landroidx/compose/foundation/text/ClickableTextKt$ClickableText$3;->$$changed:I

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v9

    iget v10, p0, Landroidx/compose/foundation/text/ClickableTextKt$ClickableText$3;->$$default:I

    move-object v8, p1

    invoke-static/range {v0 .. v10}, Landroidx/compose/foundation/text/ClickableTextKt;->ClickableText-4YKlhWE(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;ZIILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    return-void
.end method
