.class Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable$1;
.super Ljava/lang/Object;
.source "MaterialContainerTransform.java"

# interfaces
.implements Lcom/google/android/material/canvas/CanvasCompat$CanvasOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->drawStartView(Landroid/graphics/Canvas;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;


# direct methods
.method constructor <init>(Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable$1;->this$0:Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;

    .line 1307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/graphics/Canvas;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable$1;->this$0:Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;

    .line 1310
    invoke-static {p0}, Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;->access$800(Lcom/google/android/material/transition/platform/MaterialContainerTransform$TransitionDrawable;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method
