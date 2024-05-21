.class final Landroidx/compose/animation/EnterExitTransitionKt$TransformOriginVectorConverter$1;
.super Lkotlin/jvm/internal/Lambda;
.source "EnterExitTransition.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/animation/EnterExitTransitionKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/graphics/TransformOrigin;",
        "Landroidx/compose/animation/core/AnimationVector2D;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/compose/animation/core/AnimationVector2D;",
        "it",
        "Landroidx/compose/ui/graphics/TransformOrigin;",
        "invoke-__ExYCQ",
        "(J)Landroidx/compose/animation/core/AnimationVector2D;"
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
.field public static final INSTANCE:Landroidx/compose/animation/EnterExitTransitionKt$TransformOriginVectorConverter$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/animation/EnterExitTransitionKt$TransformOriginVectorConverter$1;

    invoke-direct {v0}, Landroidx/compose/animation/EnterExitTransitionKt$TransformOriginVectorConverter$1;-><init>()V

    sput-object v0, Landroidx/compose/animation/EnterExitTransitionKt$TransformOriginVectorConverter$1;->INSTANCE:Landroidx/compose/animation/EnterExitTransitionKt$TransformOriginVectorConverter$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 937
    check-cast p1, Landroidx/compose/ui/graphics/TransformOrigin;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/TransformOrigin;->unbox-impl()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/animation/EnterExitTransitionKt$TransformOriginVectorConverter$1;->invoke-__ExYCQ(J)Landroidx/compose/animation/core/AnimationVector2D;

    move-result-object p0

    return-object p0
.end method

.method public final invoke-__ExYCQ(J)Landroidx/compose/animation/core/AnimationVector2D;
    .locals 1

    .line 938
    new-instance p0, Landroidx/compose/animation/core/AnimationVector2D;

    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/TransformOrigin;->getPivotFractionX-impl(J)F

    move-result v0

    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/TransformOrigin;->getPivotFractionY-impl(J)F

    move-result p1

    invoke-direct {p0, v0, p1}, Landroidx/compose/animation/core/AnimationVector2D;-><init>(FF)V

    return-object p0
.end method
