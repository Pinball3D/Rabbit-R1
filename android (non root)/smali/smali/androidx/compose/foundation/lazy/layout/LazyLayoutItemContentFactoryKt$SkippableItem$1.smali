.class final Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactoryKt$SkippableItem$1;
.super Lkotlin/jvm/internal/Lambda;
.source "LazyLayoutItemContentFactory.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactoryKt;->SkippableItem-JVlU9Rs(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;Ljava/lang/Object;ILjava/lang/Object;Landroidx/compose/runtime/Composer;I)V
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
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\u000b\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "(Landroidx/compose/runtime/Composer;I)V"
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
.field final synthetic $$dirty:I

.field final synthetic $index:I

.field final synthetic $itemProvider:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;

.field final synthetic $key:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;ILjava/lang/Object;I)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactoryKt$SkippableItem$1;->$itemProvider:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;

    iput p2, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactoryKt$SkippableItem$1;->$index:I

    iput-object p3, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactoryKt$SkippableItem$1;->$key:Ljava/lang/Object;

    iput p4, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactoryKt$SkippableItem$1;->$$dirty:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 134
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactoryKt$SkippableItem$1;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 3

    const-string v0, "C134@4765L22:LazyLayoutItemContentFactory.kt#wow0x6"

    invoke-static {p1, v0}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    and-int/lit8 v0, p2, 0xb

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 135
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

    const-string v1, "androidx.compose.foundation.lazy.layout.SkippableItem.<anonymous> (LazyLayoutItemContentFactory.kt:133)"

    const v2, 0x3a785bde

    invoke-static {v2, p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2
    iget-object p2, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactoryKt$SkippableItem$1;->$itemProvider:Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;

    iget v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactoryKt$SkippableItem$1;->$index:I

    iget-object v1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactoryKt$SkippableItem$1;->$key:Ljava/lang/Object;

    iget p0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemContentFactoryKt$SkippableItem$1;->$$dirty:I

    shr-int/lit8 v2, p0, 0x6

    and-int/lit8 v2, v2, 0xe

    or-int/lit8 v2, v2, 0x40

    shl-int/lit8 p0, p0, 0x6

    and-int/lit16 p0, p0, 0x380

    or-int/2addr p0, v2

    invoke-interface {p2, v0, v1, p1, p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;->Item(ILjava/lang/Object;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    :goto_1
    return-void
.end method
