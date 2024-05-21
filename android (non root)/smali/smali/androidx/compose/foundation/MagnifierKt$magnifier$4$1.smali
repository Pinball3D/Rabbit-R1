.class final Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Magnifier.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/MagnifierKt$magnifier$4;->invoke(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.compose.foundation.MagnifierKt$magnifier$4$1"
    f = "Magnifier.kt"
    i = {
        0x0
    }
    l = {
        0x16b
    }
    m = "invokeSuspend"
    n = {
        "magnifier"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field final synthetic $anchorPositionInRoot$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $density:Landroidx/compose/ui/unit/Density;

.field final synthetic $isMagnifierShown$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onNeedsUpdate:Lkotlinx/coroutines/flow/MutableSharedFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableSharedFlow<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $platformMagnifierFactory:Landroidx/compose/foundation/PlatformMagnifierFactory;

.field final synthetic $sourceCenterInRoot$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $style:Landroidx/compose/foundation/MagnifierStyle;

.field final synthetic $updatedMagnifierCenter$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/unit/Density;",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $updatedOnSizeChanged$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/unit/DpSize;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $updatedZoom$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $view:Landroid/view/View;

.field final synthetic $zoom:F

.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Landroidx/compose/foundation/PlatformMagnifierFactory;Landroidx/compose/foundation/MagnifierStyle;Landroid/view/View;Landroidx/compose/ui/unit/Density;FLkotlinx/coroutines/flow/MutableSharedFlow;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/PlatformMagnifierFactory;",
            "Landroidx/compose/foundation/MagnifierStyle;",
            "Landroid/view/View;",
            "Landroidx/compose/ui/unit/Density;",
            "F",
            "Lkotlinx/coroutines/flow/MutableSharedFlow<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/unit/DpSize;",
            "Lkotlin/Unit;",
            ">;>;",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/unit/Density;",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;>;",
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/ui/geometry/Offset;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->$platformMagnifierFactory:Landroidx/compose/foundation/PlatformMagnifierFactory;

    iput-object p2, p0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->$style:Landroidx/compose/foundation/MagnifierStyle;

    iput-object p3, p0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->$view:Landroid/view/View;

    iput-object p4, p0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->$density:Landroidx/compose/ui/unit/Density;

    iput p5, p0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->$zoom:F

    iput-object p6, p0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->$onNeedsUpdate:Lkotlinx/coroutines/flow/MutableSharedFlow;

    iput-object p7, p0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->$updatedOnSizeChanged$delegate:Landroidx/compose/runtime/State;

    iput-object p8, p0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->$isMagnifierShown$delegate:Landroidx/compose/runtime/State;

    iput-object p9, p0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->$sourceCenterInRoot$delegate:Landroidx/compose/runtime/State;

    iput-object p10, p0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->$updatedMagnifierCenter$delegate:Landroidx/compose/runtime/State;

    iput-object p11, p0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->$anchorPositionInRoot$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p12, p0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->$updatedZoom$delegate:Landroidx/compose/runtime/State;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p13}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    move-object v0, p0

    new-instance v14, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;

    iget-object v1, v0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->$platformMagnifierFactory:Landroidx/compose/foundation/PlatformMagnifierFactory;

    iget-object v2, v0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->$style:Landroidx/compose/foundation/MagnifierStyle;

    iget-object v3, v0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->$view:Landroid/view/View;

    iget-object v4, v0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->$density:Landroidx/compose/ui/unit/Density;

    iget v5, v0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->$zoom:F

    iget-object v6, v0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->$onNeedsUpdate:Lkotlinx/coroutines/flow/MutableSharedFlow;

    iget-object v7, v0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->$updatedOnSizeChanged$delegate:Landroidx/compose/runtime/State;

    iget-object v8, v0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->$isMagnifierShown$delegate:Landroidx/compose/runtime/State;

    iget-object v9, v0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->$sourceCenterInRoot$delegate:Landroidx/compose/runtime/State;

    iget-object v10, v0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->$updatedMagnifierCenter$delegate:Landroidx/compose/runtime/State;

    iget-object v11, v0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->$anchorPositionInRoot$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v12, v0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->$updatedZoom$delegate:Landroidx/compose/runtime/State;

    move-object v0, v14

    move-object/from16 v13, p2

    invoke-direct/range {v0 .. v13}, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;-><init>(Landroidx/compose/foundation/PlatformMagnifierFactory;Landroidx/compose/foundation/MagnifierStyle;Landroid/view/View;Landroidx/compose/ui/unit/Density;FLkotlinx/coroutines/flow/MutableSharedFlow;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v0, p1

    iput-object v0, v14, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->L$0:Ljava/lang/Object;

    check-cast v14, Lkotlin/coroutines/Continuation;

    return-object v14
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v0, v0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->L$0:Ljava/lang/Object;

    .line 65535
    move-object v1, v0

    check-cast v1, Landroidx/compose/foundation/PlatformMagnifier;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, v0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/CoroutineScope;

    iget-object v4, v0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->$platformMagnifierFactory:Landroidx/compose/foundation/PlatformMagnifierFactory;

    iget-object v5, v0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->$style:Landroidx/compose/foundation/MagnifierStyle;

    iget-object v6, v0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->$view:Landroid/view/View;

    iget-object v7, v0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->$density:Landroidx/compose/ui/unit/Density;

    iget v8, v0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->$zoom:F

    .line 316
    invoke-interface {v4, v5, v6, v7, v8}, Landroidx/compose/foundation/PlatformMagnifierFactory;->create(Landroidx/compose/foundation/MagnifierStyle;Landroid/view/View;Landroidx/compose/ui/unit/Density;F)Landroidx/compose/foundation/PlatformMagnifier;

    move-result-object v4

    .line 317
    new-instance v5, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    invoke-interface {v4}, Landroidx/compose/foundation/PlatformMagnifier;->getSize-YbymL2g()J

    move-result-wide v6

    iget-object v8, v0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->$density:Landroidx/compose/ui/unit/Density;

    iget-object v9, v0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->$updatedOnSizeChanged$delegate:Landroidx/compose/runtime/State;

    .line 318
    invoke-static {v9}, Landroidx/compose/foundation/MagnifierKt$magnifier$4;->access$invoke$lambda$6(Landroidx/compose/runtime/State;)Lkotlin/jvm/functions/Function1;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 320
    invoke-static {v6, v7}, Landroidx/compose/ui/unit/IntSizeKt;->toSize-ozmzZPI(J)J

    move-result-wide v10

    invoke-interface {v8, v10, v11}, Landroidx/compose/ui/unit/Density;->toDpSize-k-rfVVM(J)J

    move-result-wide v10

    invoke-static {v10, v11}, Landroidx/compose/ui/unit/DpSize;->box-impl(J)Landroidx/compose/ui/unit/DpSize;

    move-result-object v8

    .line 318
    invoke-interface {v9, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    :cond_2
    iput-wide v6, v5, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    iget-object v6, v0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->$onNeedsUpdate:Lkotlinx/coroutines/flow/MutableSharedFlow;

    .line 326
    check-cast v6, Lkotlinx/coroutines/flow/Flow;

    .line 327
    new-instance v7, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1$1;

    const/4 v8, 0x0

    invoke-direct {v7, v4, v8}, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1$1;-><init>(Landroidx/compose/foundation/PlatformMagnifier;Lkotlin/coroutines/Continuation;)V

    check-cast v7, Lkotlin/jvm/functions/Function2;

    invoke-static {v6, v7}, Lkotlinx/coroutines/flow/FlowKt;->onEach(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v6

    .line 328
    invoke-static {v6, v2}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)Lkotlinx/coroutines/Job;

    .line 333
    :try_start_1
    new-instance v2, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1$2;

    iget-object v11, v0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->$density:Landroidx/compose/ui/unit/Density;

    iget-object v12, v0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->$isMagnifierShown$delegate:Landroidx/compose/runtime/State;

    iget-object v13, v0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->$sourceCenterInRoot$delegate:Landroidx/compose/runtime/State;

    iget-object v14, v0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->$updatedMagnifierCenter$delegate:Landroidx/compose/runtime/State;

    iget-object v15, v0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->$anchorPositionInRoot$delegate:Landroidx/compose/runtime/MutableState;

    iget-object v6, v0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->$updatedZoom$delegate:Landroidx/compose/runtime/State;

    iget-object v7, v0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->$updatedOnSizeChanged$delegate:Landroidx/compose/runtime/State;

    move-object v9, v2

    move-object v10, v4

    move-object/from16 v16, v6

    move-object/from16 v17, v5

    move-object/from16 v18, v7

    invoke-direct/range {v9 .. v18}, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1$2;-><init>(Landroidx/compose/foundation/PlatformMagnifier;Landroidx/compose/ui/unit/Density;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Lkotlin/jvm/internal/Ref$LongRef;Landroidx/compose/runtime/State;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v2}, Landroidx/compose/runtime/SnapshotStateKt;->snapshotFlow(Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v2

    move-object v5, v0

    check-cast v5, Lkotlin/coroutines/Continuation;

    iput-object v4, v0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Landroidx/compose/foundation/MagnifierKt$magnifier$4$1;->label:I

    .line 363
    invoke-static {v2, v5}, Lkotlinx/coroutines/flow/FlowKt;->collect(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v1, v4

    .line 367
    :goto_0
    invoke-interface {v1}, Landroidx/compose/foundation/PlatformMagnifier;->dismiss()V

    .line 369
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :catchall_1
    move-exception v0

    move-object v1, v4

    .line 367
    :goto_1
    invoke-interface {v1}, Landroidx/compose/foundation/PlatformMagnifier;->dismiss()V

    throw v0
.end method
