.class public final Landroidx/compose/material3/MappedInteractionSource$special$$inlined$map$1$2;
.super Ljava/lang/Object;
.source "Emitters.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/MappedInteractionSource$special$$inlined$map$1;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 MappedInteractionSource.kt\nandroidx/compose/material3/MappedInteractionSource\n*L\n1#1,222:1\n48#2:223\n36#3,23:224\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002\"\u0004\u0008\u0001\u0010\u00032\u0006\u0010\u0004\u001a\u0002H\u0002H\u008a@\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0008"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "R",
        "value",
        "emit",
        "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "kotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1",
        "kotlinx/coroutines/flow/FlowKt__TransformKt$map$$inlined$unsafeTransform$1$2"
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
.field final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

.field final synthetic this$0:Landroidx/compose/material3/MappedInteractionSource;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Landroidx/compose/material3/MappedInteractionSource;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/MappedInteractionSource$special$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p2, p0, Landroidx/compose/material3/MappedInteractionSource$special$$inlined$map$1$2;->this$0:Landroidx/compose/material3/MappedInteractionSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Landroidx/compose/material3/MappedInteractionSource$special$$inlined$map$1$2$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Landroidx/compose/material3/MappedInteractionSource$special$$inlined$map$1$2$1;

    iget v1, v0, Landroidx/compose/material3/MappedInteractionSource$special$$inlined$map$1$2$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Landroidx/compose/material3/MappedInteractionSource$special$$inlined$map$1$2$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Landroidx/compose/material3/MappedInteractionSource$special$$inlined$map$1$2$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/material3/MappedInteractionSource$special$$inlined$map$1$2$1;

    invoke-direct {v0, p0, p2}, Landroidx/compose/material3/MappedInteractionSource$special$$inlined$map$1$2$1;-><init>(Landroidx/compose/material3/MappedInteractionSource$special$$inlined$map$1$2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Landroidx/compose/material3/MappedInteractionSource$special$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 0
    iget v2, v0, Landroidx/compose/material3/MappedInteractionSource$special$$inlined$map$1$2$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p2, p0, Landroidx/compose/material3/MappedInteractionSource$special$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    .line 223
    move-object v2, v0

    check-cast v2, Lkotlin/coroutines/Continuation;

    check-cast p1, Landroidx/compose/foundation/interaction/Interaction;

    .line 225
    instance-of v2, p1, Landroidx/compose/foundation/interaction/PressInteraction$Press;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/compose/material3/MappedInteractionSource$special$$inlined$map$1$2;->this$0:Landroidx/compose/material3/MappedInteractionSource;

    .line 226
    move-object v4, p1

    check-cast v4, Landroidx/compose/foundation/interaction/PressInteraction$Press;

    invoke-static {v2, v4}, Landroidx/compose/material3/MappedInteractionSource;->access$mapPress(Landroidx/compose/material3/MappedInteractionSource;Landroidx/compose/foundation/interaction/PressInteraction$Press;)Landroidx/compose/foundation/interaction/PressInteraction$Press;

    move-result-object v2

    iget-object p0, p0, Landroidx/compose/material3/MappedInteractionSource$special$$inlined$map$1$2;->this$0:Landroidx/compose/material3/MappedInteractionSource;

    .line 227
    invoke-static {p0}, Landroidx/compose/material3/MappedInteractionSource;->access$getMappedPresses$p(Landroidx/compose/material3/MappedInteractionSource;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    move-object p1, v2

    check-cast p1, Landroidx/compose/foundation/interaction/Interaction;

    goto :goto_3

    .line 230
    :cond_3
    instance-of v2, p1, Landroidx/compose/foundation/interaction/PressInteraction$Cancel;

    if-eqz v2, :cond_5

    iget-object p0, p0, Landroidx/compose/material3/MappedInteractionSource$special$$inlined$map$1$2;->this$0:Landroidx/compose/material3/MappedInteractionSource;

    .line 231
    invoke-static {p0}, Landroidx/compose/material3/MappedInteractionSource;->access$getMappedPresses$p(Landroidx/compose/material3/MappedInteractionSource;)Ljava/util/Map;

    move-result-object p0

    check-cast p1, Landroidx/compose/foundation/interaction/PressInteraction$Cancel;

    invoke-virtual {p1}, Landroidx/compose/foundation/interaction/PressInteraction$Cancel;->getPress()Landroidx/compose/foundation/interaction/PressInteraction$Press;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/interaction/PressInteraction$Press;

    if-nez p0, :cond_4

    goto :goto_1

    .line 235
    :cond_4
    new-instance p1, Landroidx/compose/foundation/interaction/PressInteraction$Cancel;

    invoke-direct {p1, p0}, Landroidx/compose/foundation/interaction/PressInteraction$Cancel;-><init>(Landroidx/compose/foundation/interaction/PressInteraction$Press;)V

    :goto_1
    check-cast p1, Landroidx/compose/foundation/interaction/Interaction;

    goto :goto_3

    .line 238
    :cond_5
    instance-of v2, p1, Landroidx/compose/foundation/interaction/PressInteraction$Release;

    if-eqz v2, :cond_7

    iget-object p0, p0, Landroidx/compose/material3/MappedInteractionSource$special$$inlined$map$1$2;->this$0:Landroidx/compose/material3/MappedInteractionSource;

    .line 239
    invoke-static {p0}, Landroidx/compose/material3/MappedInteractionSource;->access$getMappedPresses$p(Landroidx/compose/material3/MappedInteractionSource;)Ljava/util/Map;

    move-result-object p0

    check-cast p1, Landroidx/compose/foundation/interaction/PressInteraction$Release;

    invoke-virtual {p1}, Landroidx/compose/foundation/interaction/PressInteraction$Release;->getPress()Landroidx/compose/foundation/interaction/PressInteraction$Press;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/interaction/PressInteraction$Press;

    if-nez p0, :cond_6

    goto :goto_2

    .line 243
    :cond_6
    new-instance p1, Landroidx/compose/foundation/interaction/PressInteraction$Release;

    invoke-direct {p1, p0}, Landroidx/compose/foundation/interaction/PressInteraction$Release;-><init>(Landroidx/compose/foundation/interaction/PressInteraction$Press;)V

    :goto_2
    check-cast p1, Landroidx/compose/foundation/interaction/Interaction;

    .line 223
    :cond_7
    :goto_3
    iput v3, v0, Landroidx/compose/material3/MappedInteractionSource$special$$inlined$map$1$2$1;->label:I

    invoke-interface {p2, p1, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_8

    return-object v1

    :cond_8
    :goto_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
