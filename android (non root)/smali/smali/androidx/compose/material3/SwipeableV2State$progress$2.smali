.class final Landroidx/compose/material3/SwipeableV2State$progress$2;
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
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "invoke",
        "()Ljava/lang/Float;"
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

    iput-object p1, p0, Landroidx/compose/material3/SwipeableV2State$progress$2;->this$0:Landroidx/compose/material3/SwipeableV2State;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Float;
    .locals 6

    iget-object v0, p0, Landroidx/compose/material3/SwipeableV2State$progress$2;->this$0:Landroidx/compose/material3/SwipeableV2State;

    .line 254
    invoke-virtual {v0}, Landroidx/compose/material3/SwipeableV2State;->getAnchors$material3_release()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/material3/SwipeableV2State$progress$2;->this$0:Landroidx/compose/material3/SwipeableV2State;

    invoke-virtual {v1}, Landroidx/compose/material3/SwipeableV2State;->getCurrentValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Landroidx/compose/material3/SwipeableV2State$progress$2;->this$0:Landroidx/compose/material3/SwipeableV2State;

    .line 255
    invoke-virtual {v2}, Landroidx/compose/material3/SwipeableV2State;->getAnchors$material3_release()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Landroidx/compose/material3/SwipeableV2State$progress$2;->this$0:Landroidx/compose/material3/SwipeableV2State;

    invoke-virtual {v3}, Landroidx/compose/material3/SwipeableV2State;->getTargetValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    sub-float/2addr v2, v0

    .line 256
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v4, 0x358637bd    # 1.0E-6f

    cmpl-float v3, v3, v4

    const/high16 v5, 0x3f800000    # 1.0f

    if-lez v3, :cond_4

    iget-object p0, p0, Landroidx/compose/material3/SwipeableV2State$progress$2;->this$0:Landroidx/compose/material3/SwipeableV2State;

    .line 258
    invoke-virtual {p0}, Landroidx/compose/material3/SwipeableV2State;->requireOffset()F

    move-result p0

    sub-float/2addr p0, v0

    div-float/2addr p0, v2

    cmpg-float v0, p0, v4

    if-gez v0, :cond_2

    goto :goto_3

    :cond_2
    const v0, 0x3f7fffef    # 0.999999f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_3

    goto :goto_2

    :cond_3
    move v1, p0

    goto :goto_3

    :cond_4
    :goto_2
    move v1, v5

    .line 261
    :goto_3
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 253
    invoke-virtual {p0}, Landroidx/compose/material3/SwipeableV2State$progress$2;->invoke()Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
