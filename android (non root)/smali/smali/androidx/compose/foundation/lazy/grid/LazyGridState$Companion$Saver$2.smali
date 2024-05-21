.class final Landroidx/compose/foundation/lazy/grid/LazyGridState$Companion$Saver$2;
.super Lkotlin/jvm/internal/Lambda;
.source "LazyGridState.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/lazy/grid/LazyGridState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/util/List<",
        "+",
        "Ljava/lang/Integer;",
        ">;",
        "Landroidx/compose/foundation/lazy/grid/LazyGridState;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/compose/foundation/lazy/grid/LazyGridState;",
        "it",
        "",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/foundation/lazy/grid/LazyGridState$Companion$Saver$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/foundation/lazy/grid/LazyGridState$Companion$Saver$2;

    invoke-direct {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridState$Companion$Saver$2;-><init>()V

    sput-object v0, Landroidx/compose/foundation/lazy/grid/LazyGridState$Companion$Saver$2;->INSTANCE:Landroidx/compose/foundation/lazy/grid/LazyGridState$Companion$Saver$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/util/List;)Landroidx/compose/foundation/lazy/grid/LazyGridState;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroidx/compose/foundation/lazy/grid/LazyGridState;"
        }
    .end annotation

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 446
    new-instance p0, Landroidx/compose/foundation/lazy/grid/LazyGridState;

    const/4 v0, 0x0

    .line 447
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    const/4 v1, 0x1

    .line 448
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 446
    invoke-direct {p0, v0, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridState;-><init>(II)V

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 443
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridState$Companion$Saver$2;->invoke(Ljava/util/List;)Landroidx/compose/foundation/lazy/grid/LazyGridState;

    move-result-object p0

    return-object p0
.end method
