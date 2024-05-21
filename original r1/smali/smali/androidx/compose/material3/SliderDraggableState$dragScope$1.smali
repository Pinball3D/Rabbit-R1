.class public final Landroidx/compose/material3/SliderDraggableState$dragScope$1;
.super Ljava/lang/Object;
.source "Slider.kt"

# interfaces
.implements Landroidx/compose/foundation/gestures/DragScope;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/SliderDraggableState;-><init>(Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "androidx/compose/material3/SliderDraggableState$dragScope$1",
        "Landroidx/compose/foundation/gestures/DragScope;",
        "dragBy",
        "",
        "pixels",
        "",
        "material3_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/compose/material3/SliderDraggableState;


# direct methods
.method constructor <init>(Landroidx/compose/material3/SliderDraggableState;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/SliderDraggableState$dragScope$1;->this$0:Landroidx/compose/material3/SliderDraggableState;

    .line 1438
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dragBy(F)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/SliderDraggableState$dragScope$1;->this$0:Landroidx/compose/material3/SliderDraggableState;

    .line 1439
    invoke-virtual {p0}, Landroidx/compose/material3/SliderDraggableState;->getOnDelta()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
