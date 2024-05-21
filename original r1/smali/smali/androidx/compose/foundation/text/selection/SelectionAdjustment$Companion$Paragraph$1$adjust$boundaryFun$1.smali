.class final synthetic Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion$Paragraph$1$adjust$boundaryFun$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SelectionAdjustment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion$Paragraph$1;->adjust-ZXO7KMw(Landroidx/compose/ui/text/TextLayoutResult;JIZLandroidx/compose/ui/text/TextRange;)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Integer;",
        "Landroidx/compose/ui/text/TextRange;",
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


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const/4 v1, 0x1

    const-class v3, Landroidx/compose/foundation/text/StringHelpersKt;

    const-string v4, "getParagraphBoundary"

    const-string v5, "getParagraphBoundary(Ljava/lang/CharSequence;I)J"

    const/4 v6, 0x1

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 140
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion$Paragraph$1$adjust$boundaryFun$1;->invoke--jx7JFs(I)J

    move-result-wide p0

    invoke-static {p0, p1}, Landroidx/compose/ui/text/TextRange;->box-impl(J)Landroidx/compose/ui/text/TextRange;

    move-result-object p0

    return-object p0
.end method

.method public final invoke--jx7JFs(I)J
    .locals 0

    .line 140
    iget-object p0, p0, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion$Paragraph$1$adjust$boundaryFun$1;->receiver:Ljava/lang/Object;

    check-cast p0, Ljava/lang/CharSequence;

    invoke-static {p0, p1}, Landroidx/compose/foundation/text/StringHelpersKt;->getParagraphBoundary(Ljava/lang/CharSequence;I)J

    move-result-wide p0

    return-wide p0
.end method
