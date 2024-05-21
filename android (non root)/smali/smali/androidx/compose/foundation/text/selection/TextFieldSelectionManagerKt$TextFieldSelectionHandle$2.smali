.class final Landroidx/compose/foundation/text/selection/TextFieldSelectionManagerKt$TextFieldSelectionHandle$2;
.super Lkotlin/jvm/internal/Lambda;
.source "TextFieldSelectionManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/text/selection/TextFieldSelectionManagerKt;->TextFieldSelectionHandle(ZLandroidx/compose/ui/text/style/ResolvedTextDirection;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/runtime/Composer;I)V
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

.field final synthetic $direction:Landroidx/compose/ui/text/style/ResolvedTextDirection;

.field final synthetic $isStartHandle:Z

.field final synthetic $manager:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;


# direct methods
.method constructor <init>(ZLandroidx/compose/ui/text/style/ResolvedTextDirection;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;I)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManagerKt$TextFieldSelectionHandle$2;->$isStartHandle:Z

    iput-object p2, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManagerKt$TextFieldSelectionHandle$2;->$direction:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    iput-object p3, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManagerKt$TextFieldSelectionHandle$2;->$manager:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    iput p4, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManagerKt$TextFieldSelectionHandle$2;->$$changed:I

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

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManagerKt$TextFieldSelectionHandle$2;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 2

    iget-boolean p2, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManagerKt$TextFieldSelectionHandle$2;->$isStartHandle:Z

    iget-object v0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManagerKt$TextFieldSelectionHandle$2;->$direction:Landroidx/compose/ui/text/style/ResolvedTextDirection;

    iget-object v1, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManagerKt$TextFieldSelectionHandle$2;->$manager:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    iget p0, p0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManagerKt$TextFieldSelectionHandle$2;->$$changed:I

    or-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result p0

    invoke-static {p2, v0, v1, p1, p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManagerKt;->TextFieldSelectionHandle(ZLandroidx/compose/ui/text/style/ResolvedTextDirection;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/runtime/Composer;I)V

    return-void
.end method
