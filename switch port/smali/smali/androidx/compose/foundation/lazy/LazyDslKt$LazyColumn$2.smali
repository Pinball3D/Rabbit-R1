.class final Landroidx/compose/foundation/lazy/LazyDslKt$LazyColumn$2;
.super Lkotlin/jvm/internal/Lambda;
.source "LazyDsl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/lazy/LazyDslKt;->LazyColumn(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V
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

.field final synthetic $content:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/foundation/lazy/LazyListScope;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

.field final synthetic $flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

.field final synthetic $horizontalAlignment:Landroidx/compose/ui/Alignment$Horizontal;

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $reverseLayout:Z

.field final synthetic $state:Landroidx/compose/foundation/lazy/LazyListState;

.field final synthetic $verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;


# direct methods
.method constructor <init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;Lkotlin/jvm/functions/Function1;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/foundation/lazy/LazyListState;",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "Z",
            "Landroidx/compose/foundation/layout/Arrangement$Vertical;",
            "Landroidx/compose/ui/Alignment$Horizontal;",
            "Landroidx/compose/foundation/gestures/FlingBehavior;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/foundation/lazy/LazyListScope;",
            "Lkotlin/Unit;",
            ">;II)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyDslKt$LazyColumn$2;->$modifier:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Landroidx/compose/foundation/lazy/LazyDslKt$LazyColumn$2;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    iput-object p3, p0, Landroidx/compose/foundation/lazy/LazyDslKt$LazyColumn$2;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    iput-boolean p4, p0, Landroidx/compose/foundation/lazy/LazyDslKt$LazyColumn$2;->$reverseLayout:Z

    iput-object p5, p0, Landroidx/compose/foundation/lazy/LazyDslKt$LazyColumn$2;->$verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    iput-object p6, p0, Landroidx/compose/foundation/lazy/LazyDslKt$LazyColumn$2;->$horizontalAlignment:Landroidx/compose/ui/Alignment$Horizontal;

    iput-object p7, p0, Landroidx/compose/foundation/lazy/LazyDslKt$LazyColumn$2;->$flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

    iput-object p8, p0, Landroidx/compose/foundation/lazy/LazyDslKt$LazyColumn$2;->$content:Lkotlin/jvm/functions/Function1;

    iput p9, p0, Landroidx/compose/foundation/lazy/LazyDslKt$LazyColumn$2;->$$changed:I

    iput p10, p0, Landroidx/compose/foundation/lazy/LazyDslKt$LazyColumn$2;->$$default:I

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

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/lazy/LazyDslKt$LazyColumn$2;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 11

    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyDslKt$LazyColumn$2;->$modifier:Landroidx/compose/ui/Modifier;

    iget-object v1, p0, Landroidx/compose/foundation/lazy/LazyDslKt$LazyColumn$2;->$state:Landroidx/compose/foundation/lazy/LazyListState;

    iget-object v2, p0, Landroidx/compose/foundation/lazy/LazyDslKt$LazyColumn$2;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    iget-boolean v3, p0, Landroidx/compose/foundation/lazy/LazyDslKt$LazyColumn$2;->$reverseLayout:Z

    iget-object v4, p0, Landroidx/compose/foundation/lazy/LazyDslKt$LazyColumn$2;->$verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    iget-object v5, p0, Landroidx/compose/foundation/lazy/LazyDslKt$LazyColumn$2;->$horizontalAlignment:Landroidx/compose/ui/Alignment$Horizontal;

    iget-object v6, p0, Landroidx/compose/foundation/lazy/LazyDslKt$LazyColumn$2;->$flingBehavior:Landroidx/compose/foundation/gestures/FlingBehavior;

    iget-object v7, p0, Landroidx/compose/foundation/lazy/LazyDslKt$LazyColumn$2;->$content:Lkotlin/jvm/functions/Function1;

    iget p2, p0, Landroidx/compose/foundation/lazy/LazyDslKt$LazyColumn$2;->$$changed:I

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v9

    iget v10, p0, Landroidx/compose/foundation/lazy/LazyDslKt$LazyColumn$2;->$$default:I

    move-object v8, p1

    invoke-static/range {v0 .. v10}, Landroidx/compose/foundation/lazy/LazyDslKt;->LazyColumn(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/layout/PaddingValues;ZLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/foundation/gestures/FlingBehavior;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    return-void
.end method
