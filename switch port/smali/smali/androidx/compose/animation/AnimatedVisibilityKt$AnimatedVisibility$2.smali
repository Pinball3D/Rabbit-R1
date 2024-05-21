.class final Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$2;
.super Lkotlin/jvm/internal/Lambda;
.source "AnimatedVisibility.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/animation/AnimatedVisibilityKt;->AnimatedVisibility(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
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

.field final synthetic $content:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Landroidx/compose/animation/AnimatedVisibilityScope;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $enter:Landroidx/compose/animation/EnterTransition;

.field final synthetic $exit:Landroidx/compose/animation/ExitTransition;

.field final synthetic $label:Ljava/lang/String;

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $visible:Z


# direct methods
.method constructor <init>(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Lkotlin/jvm/functions/Function3;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/animation/EnterTransition;",
            "Landroidx/compose/animation/ExitTransition;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroidx/compose/animation/AnimatedVisibilityScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;II)V"
        }
    .end annotation

    iput-boolean p1, p0, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$2;->$visible:Z

    iput-object p2, p0, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$2;->$modifier:Landroidx/compose/ui/Modifier;

    iput-object p3, p0, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$2;->$enter:Landroidx/compose/animation/EnterTransition;

    iput-object p4, p0, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$2;->$exit:Landroidx/compose/animation/ExitTransition;

    iput-object p5, p0, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$2;->$label:Ljava/lang/String;

    iput-object p6, p0, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$2;->$content:Lkotlin/jvm/functions/Function3;

    iput p7, p0, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$2;->$$changed:I

    iput p8, p0, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$2;->$$default:I

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

    invoke-virtual {p0, p1, p2}, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$2;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 9

    iget-boolean v0, p0, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$2;->$visible:Z

    iget-object v1, p0, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$2;->$modifier:Landroidx/compose/ui/Modifier;

    iget-object v2, p0, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$2;->$enter:Landroidx/compose/animation/EnterTransition;

    iget-object v3, p0, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$2;->$exit:Landroidx/compose/animation/ExitTransition;

    iget-object v4, p0, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$2;->$label:Ljava/lang/String;

    iget-object v5, p0, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$2;->$content:Lkotlin/jvm/functions/Function3;

    iget p2, p0, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$2;->$$changed:I

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v7

    iget v8, p0, Landroidx/compose/animation/AnimatedVisibilityKt$AnimatedVisibility$2;->$$default:I

    move-object v6, p1

    invoke-static/range {v0 .. v8}, Landroidx/compose/animation/AnimatedVisibilityKt;->AnimatedVisibility(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    return-void
.end method
