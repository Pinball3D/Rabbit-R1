.class final Landroidx/compose/foundation/layout/BoxWithConstraintsKt$BoxWithConstraints$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "BoxWithConstraints.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/layout/BoxWithConstraintsKt;->BoxWithConstraints(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;ZLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/ui/layout/SubcomposeMeasureScope;",
        "Landroidx/compose/ui/unit/Constraints;",
        "Landroidx/compose/ui/layout/MeasureResult;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBoxWithConstraints.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BoxWithConstraints.kt\nandroidx/compose/foundation/layout/BoxWithConstraintsKt$BoxWithConstraints$1$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,124:1\n1#2:125\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/compose/ui/layout/MeasureResult;",
        "Landroidx/compose/ui/layout/SubcomposeMeasureScope;",
        "constraints",
        "Landroidx/compose/ui/unit/Constraints;",
        "invoke-0kLqBqw",
        "(Landroidx/compose/ui/layout/SubcomposeMeasureScope;J)Landroidx/compose/ui/layout/MeasureResult;"
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

.field final synthetic $content:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Landroidx/compose/foundation/layout/BoxWithConstraintsScope;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $measurePolicy:Landroidx/compose/ui/layout/MeasurePolicy;


# direct methods
.method constructor <init>(Landroidx/compose/ui/layout/MeasurePolicy;Lkotlin/jvm/functions/Function3;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/MeasurePolicy;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/foundation/layout/BoxWithConstraintsScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;I)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/layout/BoxWithConstraintsKt$BoxWithConstraints$1$1;->$measurePolicy:Landroidx/compose/ui/layout/MeasurePolicy;

    iput-object p2, p0, Landroidx/compose/foundation/layout/BoxWithConstraintsKt$BoxWithConstraints$1$1;->$content:Lkotlin/jvm/functions/Function3;

    iput p3, p0, Landroidx/compose/foundation/layout/BoxWithConstraintsKt$BoxWithConstraints$1$1;->$$dirty:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 67
    check-cast p1, Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    check-cast p2, Landroidx/compose/ui/unit/Constraints;

    invoke-virtual {p2}, Landroidx/compose/ui/unit/Constraints;->unbox-impl()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Landroidx/compose/foundation/layout/BoxWithConstraintsKt$BoxWithConstraints$1$1;->invoke-0kLqBqw(Landroidx/compose/ui/layout/SubcomposeMeasureScope;J)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0
.end method

.method public final invoke-0kLqBqw(Landroidx/compose/ui/layout/SubcomposeMeasureScope;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 5

    const-string v0, "$this$SubcomposeLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    new-instance v0, Landroidx/compose/foundation/layout/BoxWithConstraintsScopeImpl;

    move-object v1, p1

    check-cast v1, Landroidx/compose/ui/unit/Density;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p2, p3, v2}, Landroidx/compose/foundation/layout/BoxWithConstraintsScopeImpl;-><init>(Landroidx/compose/ui/unit/Density;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 69
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    new-instance v2, Landroidx/compose/foundation/layout/BoxWithConstraintsKt$BoxWithConstraints$1$1$measurables$1;

    iget-object v3, p0, Landroidx/compose/foundation/layout/BoxWithConstraintsKt$BoxWithConstraints$1$1;->$content:Lkotlin/jvm/functions/Function3;

    iget v4, p0, Landroidx/compose/foundation/layout/BoxWithConstraintsKt$BoxWithConstraints$1$1;->$$dirty:I

    invoke-direct {v2, v3, v0, v4}, Landroidx/compose/foundation/layout/BoxWithConstraintsKt$BoxWithConstraints$1$1$measurables$1;-><init>(Lkotlin/jvm/functions/Function3;Landroidx/compose/foundation/layout/BoxWithConstraintsScopeImpl;I)V

    const v0, -0x73eea2c7

    const/4 v3, 0x1

    invoke-static {v0, v3, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-interface {p1, v1, v0}, Landroidx/compose/ui/layout/SubcomposeMeasureScope;->subcompose(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/List;

    move-result-object v0

    iget-object p0, p0, Landroidx/compose/foundation/layout/BoxWithConstraintsKt$BoxWithConstraints$1$1;->$measurePolicy:Landroidx/compose/ui/layout/MeasurePolicy;

    .line 70
    check-cast p1, Landroidx/compose/ui/layout/MeasureScope;

    invoke-interface {p0, p1, v0, p2, p3}, Landroidx/compose/ui/layout/MeasurePolicy;->measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0
.end method
