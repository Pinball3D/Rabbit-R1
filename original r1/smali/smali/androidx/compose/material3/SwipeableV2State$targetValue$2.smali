.class final Landroidx/compose/material3/SwipeableV2State$targetValue$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SwipeableV2.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/SwipeableV2State;-><init>(Ljava/lang/Object;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0004\n\u0002\u0008\u0004\u0010\u0000\u001a\u0002H\u0001\"\u0004\u0008\u0000\u0010\u0001H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "T",
        "invoke",
        "()Ljava/lang/Object;"
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
.field final synthetic this$0:Landroidx/compose/material3/SwipeableV2State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/material3/SwipeableV2State<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/compose/material3/SwipeableV2State;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/SwipeableV2State<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/SwipeableV2State$targetValue$2;->this$0:Landroidx/compose/material3/SwipeableV2State;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/compose/material3/SwipeableV2State$targetValue$2;->this$0:Landroidx/compose/material3/SwipeableV2State;

    .line 208
    invoke-static {v0}, Landroidx/compose/material3/SwipeableV2State;->access$getAnimationTarget(Landroidx/compose/material3/SwipeableV2State;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object p0, p0, Landroidx/compose/material3/SwipeableV2State$targetValue$2;->this$0:Landroidx/compose/material3/SwipeableV2State;

    .line 209
    invoke-virtual {p0}, Landroidx/compose/material3/SwipeableV2State;->getOffset()Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/material3/SwipeableV2State;->getCurrentValue()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Landroidx/compose/material3/SwipeableV2State;->access$computeTarget(Landroidx/compose/material3/SwipeableV2State;FLjava/lang/Object;F)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 212
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/material3/SwipeableV2State;->getCurrentValue()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    move-object v0, p0

    :cond_1
    return-object v0
.end method
