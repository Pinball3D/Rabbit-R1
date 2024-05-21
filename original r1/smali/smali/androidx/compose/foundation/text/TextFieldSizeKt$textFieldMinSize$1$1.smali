.class final Landroidx/compose/foundation/text/TextFieldSizeKt$textFieldMinSize$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TextFieldSize.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/text/TextFieldSizeKt$textFieldMinSize$1;->invoke(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Landroidx/compose/ui/layout/MeasureScope;",
        "Landroidx/compose/ui/layout/Measurable;",
        "Landroidx/compose/ui/unit/Constraints;",
        "Landroidx/compose/ui/layout/MeasureResult;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\n\u00a2\u0006\u0004\u0008\u0007\u0010\u0008"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/compose/ui/layout/MeasureResult;",
        "Landroidx/compose/ui/layout/MeasureScope;",
        "measurable",
        "Landroidx/compose/ui/layout/Measurable;",
        "constraints",
        "Landroidx/compose/ui/unit/Constraints;",
        "invoke-3p2s80s",
        "(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $minSizeState:Landroidx/compose/foundation/text/TextFieldSize;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/text/TextFieldSize;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/text/TextFieldSizeKt$textFieldMinSize$1$1;->$minSizeState:Landroidx/compose/foundation/text/TextFieldSize;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 61
    check-cast p1, Landroidx/compose/ui/layout/MeasureScope;

    check-cast p2, Landroidx/compose/ui/layout/Measurable;

    check-cast p3, Landroidx/compose/ui/unit/Constraints;

    invoke-virtual {p3}, Landroidx/compose/ui/unit/Constraints;->unbox-impl()J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroidx/compose/foundation/text/TextFieldSizeKt$textFieldMinSize$1$1;->invoke-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0
.end method

.method public final invoke-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 15

    move-object/from16 v0, p2

    const-string v1, "$this$layout"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "measurable"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    check-cast v1, Landroidx/compose/ui/Modifier;

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v5, v5, v3, v4}, Landroidx/compose/foundation/layout/SizeKt;->defaultMinSize-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-object v1, p0

    iget-object v1, v1, Landroidx/compose/foundation/text/TextFieldSizeKt$textFieldMinSize$1$1;->$minSizeState:Landroidx/compose/foundation/text/TextFieldSize;

    .line 63
    invoke-virtual {v1}, Landroidx/compose/foundation/text/TextFieldSize;->getMinSize-YbymL2g()J

    move-result-wide v3

    .line 66
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    move-result v1

    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v5

    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v6

    invoke-static {v1, v5, v6}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v9

    const/4 v10, 0x0

    .line 67
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    move-result v1

    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v3

    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v4

    invoke-static {v1, v3, v4}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v11

    const/4 v12, 0x0

    const/16 v13, 0xa

    const/4 v14, 0x0

    move-wide/from16 v7, p3

    .line 65
    invoke-static/range {v7 .. v14}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    move-result-wide v3

    .line 69
    invoke-interface {v0, v3, v4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    new-instance v1, Landroidx/compose/foundation/text/TextFieldSizeKt$textFieldMinSize$1$1$1;

    invoke-direct {v1, v0}, Landroidx/compose/foundation/text/TextFieldSizeKt$textFieldMinSize$1$1$1;-><init>(Landroidx/compose/ui/layout/Placeable;)V

    move-object v6, v1

    check-cast v6, Lkotlin/jvm/functions/Function1;

    const/4 v7, 0x4

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0
.end method
