.class final Landroidx/compose/material3/TextKt$Text$6;
.super Lkotlin/jvm/internal/Lambda;
.source "Text.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/TextKt;->Text-IbK3jfQ(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILjava/util/Map;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V
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

.field final synthetic $color:J

.field final synthetic $fontFamily:Landroidx/compose/ui/text/font/FontFamily;

.field final synthetic $fontSize:J

.field final synthetic $fontStyle:Landroidx/compose/ui/text/font/FontStyle;

.field final synthetic $fontWeight:Landroidx/compose/ui/text/font/FontWeight;

.field final synthetic $inlineContent:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/compose/foundation/text/InlineTextContent;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $letterSpacing:J

.field final synthetic $lineHeight:J

.field final synthetic $maxLines:I

.field final synthetic $minLines:I

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

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

.field final synthetic $textAlign:Landroidx/compose/ui/text/style/TextAlign;

.field final synthetic $textDecoration:Landroidx/compose/ui/text/style/TextDecoration;


# direct methods
.method constructor <init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILjava/util/Map;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;III)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/text/AnnotatedString;",
            "Landroidx/compose/ui/Modifier;",
            "JJ",
            "Landroidx/compose/ui/text/font/FontStyle;",
            "Landroidx/compose/ui/text/font/FontWeight;",
            "Landroidx/compose/ui/text/font/FontFamily;",
            "J",
            "Landroidx/compose/ui/text/style/TextDecoration;",
            "Landroidx/compose/ui/text/style/TextAlign;",
            "JIZII",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/compose/foundation/text/InlineTextContent;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/text/TextLayoutResult;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/text/TextStyle;",
            "III)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Landroidx/compose/material3/TextKt$Text$6;->$text:Landroidx/compose/ui/text/AnnotatedString;

    move-object v1, p2

    iput-object v1, v0, Landroidx/compose/material3/TextKt$Text$6;->$modifier:Landroidx/compose/ui/Modifier;

    move-wide v1, p3

    iput-wide v1, v0, Landroidx/compose/material3/TextKt$Text$6;->$color:J

    move-wide v1, p5

    iput-wide v1, v0, Landroidx/compose/material3/TextKt$Text$6;->$fontSize:J

    move-object v1, p7

    iput-object v1, v0, Landroidx/compose/material3/TextKt$Text$6;->$fontStyle:Landroidx/compose/ui/text/font/FontStyle;

    move-object v1, p8

    iput-object v1, v0, Landroidx/compose/material3/TextKt$Text$6;->$fontWeight:Landroidx/compose/ui/text/font/FontWeight;

    move-object v1, p9

    iput-object v1, v0, Landroidx/compose/material3/TextKt$Text$6;->$fontFamily:Landroidx/compose/ui/text/font/FontFamily;

    move-wide v1, p10

    iput-wide v1, v0, Landroidx/compose/material3/TextKt$Text$6;->$letterSpacing:J

    move-object v1, p12

    iput-object v1, v0, Landroidx/compose/material3/TextKt$Text$6;->$textDecoration:Landroidx/compose/ui/text/style/TextDecoration;

    move-object/from16 v1, p13

    iput-object v1, v0, Landroidx/compose/material3/TextKt$Text$6;->$textAlign:Landroidx/compose/ui/text/style/TextAlign;

    move-wide/from16 v1, p14

    iput-wide v1, v0, Landroidx/compose/material3/TextKt$Text$6;->$lineHeight:J

    move/from16 v1, p16

    iput v1, v0, Landroidx/compose/material3/TextKt$Text$6;->$overflow:I

    move/from16 v1, p17

    iput-boolean v1, v0, Landroidx/compose/material3/TextKt$Text$6;->$softWrap:Z

    move/from16 v1, p18

    iput v1, v0, Landroidx/compose/material3/TextKt$Text$6;->$maxLines:I

    move/from16 v1, p19

    iput v1, v0, Landroidx/compose/material3/TextKt$Text$6;->$minLines:I

    move-object/from16 v1, p20

    iput-object v1, v0, Landroidx/compose/material3/TextKt$Text$6;->$inlineContent:Ljava/util/Map;

    move-object/from16 v1, p21

    iput-object v1, v0, Landroidx/compose/material3/TextKt$Text$6;->$onTextLayout:Lkotlin/jvm/functions/Function1;

    move-object/from16 v1, p22

    iput-object v1, v0, Landroidx/compose/material3/TextKt$Text$6;->$style:Landroidx/compose/ui/text/TextStyle;

    move/from16 v1, p23

    iput v1, v0, Landroidx/compose/material3/TextKt$Text$6;->$$changed:I

    move/from16 v1, p24

    iput v1, v0, Landroidx/compose/material3/TextKt$Text$6;->$$changed1:I

    move/from16 v1, p25

    iput v1, v0, Landroidx/compose/material3/TextKt$Text$6;->$$default:I

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

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/TextKt$Text$6;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v23, p1

    iget-object v1, v0, Landroidx/compose/material3/TextKt$Text$6;->$text:Landroidx/compose/ui/text/AnnotatedString;

    iget-object v2, v0, Landroidx/compose/material3/TextKt$Text$6;->$modifier:Landroidx/compose/ui/Modifier;

    iget-wide v3, v0, Landroidx/compose/material3/TextKt$Text$6;->$color:J

    iget-wide v5, v0, Landroidx/compose/material3/TextKt$Text$6;->$fontSize:J

    iget-object v7, v0, Landroidx/compose/material3/TextKt$Text$6;->$fontStyle:Landroidx/compose/ui/text/font/FontStyle;

    iget-object v8, v0, Landroidx/compose/material3/TextKt$Text$6;->$fontWeight:Landroidx/compose/ui/text/font/FontWeight;

    iget-object v9, v0, Landroidx/compose/material3/TextKt$Text$6;->$fontFamily:Landroidx/compose/ui/text/font/FontFamily;

    iget-wide v10, v0, Landroidx/compose/material3/TextKt$Text$6;->$letterSpacing:J

    iget-object v12, v0, Landroidx/compose/material3/TextKt$Text$6;->$textDecoration:Landroidx/compose/ui/text/style/TextDecoration;

    iget-object v13, v0, Landroidx/compose/material3/TextKt$Text$6;->$textAlign:Landroidx/compose/ui/text/style/TextAlign;

    iget-wide v14, v0, Landroidx/compose/material3/TextKt$Text$6;->$lineHeight:J

    move-object/from16 p1, v1

    iget v1, v0, Landroidx/compose/material3/TextKt$Text$6;->$overflow:I

    move/from16 v16, v1

    iget-boolean v1, v0, Landroidx/compose/material3/TextKt$Text$6;->$softWrap:Z

    move/from16 v17, v1

    iget v1, v0, Landroidx/compose/material3/TextKt$Text$6;->$maxLines:I

    move/from16 v18, v1

    iget v1, v0, Landroidx/compose/material3/TextKt$Text$6;->$minLines:I

    move/from16 v19, v1

    iget-object v1, v0, Landroidx/compose/material3/TextKt$Text$6;->$inlineContent:Ljava/util/Map;

    move-object/from16 v20, v1

    iget-object v1, v0, Landroidx/compose/material3/TextKt$Text$6;->$onTextLayout:Lkotlin/jvm/functions/Function1;

    move-object/from16 v21, v1

    iget-object v1, v0, Landroidx/compose/material3/TextKt$Text$6;->$style:Landroidx/compose/ui/text/TextStyle;

    move-object/from16 v22, v1

    iget v1, v0, Landroidx/compose/material3/TextKt$Text$6;->$$changed:I

    or-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v24

    iget v1, v0, Landroidx/compose/material3/TextKt$Text$6;->$$changed1:I

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v25

    iget v0, v0, Landroidx/compose/material3/TextKt$Text$6;->$$default:I

    move/from16 v26, v0

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v26}, Landroidx/compose/material3/TextKt;->Text-IbK3jfQ(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILjava/util/Map;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    return-void
.end method
