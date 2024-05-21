.class final Landroidx/compose/foundation/text/TextFieldScrollKt$textFieldScrollable$2$scrollableState$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TextFieldScroll.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/text/TextFieldScrollKt$textFieldScrollable$2;->invoke(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
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
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "delta",
        "invoke",
        "(F)Ljava/lang/Float;"
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
.field final synthetic $scrollerPosition:Landroidx/compose/foundation/text/TextFieldScrollerPosition;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/text/TextFieldScrollerPosition;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/text/TextFieldScrollKt$textFieldScrollable$2$scrollableState$1$1;->$scrollerPosition:Landroidx/compose/foundation/text/TextFieldScrollerPosition;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(F)Ljava/lang/Float;
    .locals 2

    iget-object v0, p0, Landroidx/compose/foundation/text/TextFieldScrollKt$textFieldScrollable$2$scrollableState$1$1;->$scrollerPosition:Landroidx/compose/foundation/text/TextFieldScrollerPosition;

    .line 72
    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->getOffset()F

    move-result v0

    add-float/2addr v0, p1

    iget-object v1, p0, Landroidx/compose/foundation/text/TextFieldScrollKt$textFieldScrollable$2$scrollableState$1$1;->$scrollerPosition:Landroidx/compose/foundation/text/TextFieldScrollerPosition;

    .line 74
    invoke-virtual {v1}, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->getMaximum()F

    move-result v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    iget-object p1, p0, Landroidx/compose/foundation/text/TextFieldScrollKt$textFieldScrollable$2$scrollableState$1$1;->$scrollerPosition:Landroidx/compose/foundation/text/TextFieldScrollerPosition;

    .line 75
    invoke-virtual {p1}, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->getMaximum()F

    move-result p1

    iget-object v0, p0, Landroidx/compose/foundation/text/TextFieldScrollKt$textFieldScrollable$2$scrollableState$1$1;->$scrollerPosition:Landroidx/compose/foundation/text/TextFieldScrollerPosition;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->getOffset()F

    move-result v0

    sub-float/2addr p1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget-object p1, p0, Landroidx/compose/foundation/text/TextFieldScrollKt$textFieldScrollable$2$scrollableState$1$1;->$scrollerPosition:Landroidx/compose/foundation/text/TextFieldScrollerPosition;

    .line 76
    invoke-virtual {p1}, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->getOffset()F

    move-result p1

    neg-float p1, p1

    :cond_1
    :goto_0
    iget-object p0, p0, Landroidx/compose/foundation/text/TextFieldScrollKt$textFieldScrollable$2$scrollableState$1$1;->$scrollerPosition:Landroidx/compose/foundation/text/TextFieldScrollerPosition;

    .line 79
    invoke-virtual {p0}, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->getOffset()F

    move-result v0

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/text/TextFieldScrollerPosition;->setOffset(F)V

    .line 80
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 71
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/TextFieldScrollKt$textFieldScrollable$2$scrollableState$1$1;->invoke(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
