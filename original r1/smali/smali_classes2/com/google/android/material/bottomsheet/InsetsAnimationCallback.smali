.class Lcom/google/android/material/bottomsheet/InsetsAnimationCallback;
.super Landroidx/core/view/WindowInsetsAnimationCompat$Callback;
.source "InsetsAnimationCallback.java"


# instance fields
.field private startTranslationY:I

.field private startY:I

.field private final tmpLocation:[I

.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, v0}, Landroidx/core/view/WindowInsetsAnimationCompat$Callback;-><init>(I)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/material/bottomsheet/InsetsAnimationCallback;->tmpLocation:[I

    iput-object p1, p0, Lcom/google/android/material/bottomsheet/InsetsAnimationCallback;->view:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public onEnd(Landroidx/core/view/WindowInsetsAnimationCompat;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/bottomsheet/InsetsAnimationCallback;->view:Landroid/view/View;

    const/4 p1, 0x0

    .line 81
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public onPrepare(Landroidx/core/view/WindowInsetsAnimationCompat;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/material/bottomsheet/InsetsAnimationCallback;->view:Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/InsetsAnimationCallback;->tmpLocation:[I

    .line 43
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object p1, p0, Lcom/google/android/material/bottomsheet/InsetsAnimationCallback;->tmpLocation:[I

    const/4 v0, 0x1

    .line 44
    aget p1, p1, v0

    iput p1, p0, Lcom/google/android/material/bottomsheet/InsetsAnimationCallback;->startY:I

    return-void
.end method

.method public onProgress(Landroidx/core/view/WindowInsetsCompat;Ljava/util/List;)Landroidx/core/view/WindowInsetsCompat;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/view/WindowInsetsCompat;",
            "Ljava/util/List<",
            "Landroidx/core/view/WindowInsetsAnimationCompat;",
            ">;)",
            "Landroidx/core/view/WindowInsetsCompat;"
        }
    .end annotation

    .line 67
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/view/WindowInsetsAnimationCompat;

    .line 68
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsAnimationCompat;->getTypeMask()I

    move-result v1

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, p0, Lcom/google/android/material/bottomsheet/InsetsAnimationCallback;->startTranslationY:I

    const/4 v1, 0x0

    .line 71
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsAnimationCompat;->getInterpolatedFraction()F

    move-result v0

    invoke-static {p2, v1, v0}, Lcom/google/android/material/animation/AnimationUtils;->lerp(IIF)I

    move-result p2

    int-to-float p2, p2

    iget-object p0, p0, Lcom/google/android/material/bottomsheet/InsetsAnimationCallback;->view:Landroid/view/View;

    .line 72
    invoke-virtual {p0, p2}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    return-object p1
.end method

.method public onStart(Landroidx/core/view/WindowInsetsAnimationCompat;Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;)Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;
    .locals 1

    iget-object p1, p0, Lcom/google/android/material/bottomsheet/InsetsAnimationCallback;->view:Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/InsetsAnimationCallback;->tmpLocation:[I

    .line 52
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object p1, p0, Lcom/google/android/material/bottomsheet/InsetsAnimationCallback;->tmpLocation:[I

    const/4 v0, 0x1

    .line 53
    aget p1, p1, v0

    iget v0, p0, Lcom/google/android/material/bottomsheet/InsetsAnimationCallback;->startY:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/material/bottomsheet/InsetsAnimationCallback;->startTranslationY:I

    iget-object p0, p0, Lcom/google/android/material/bottomsheet/InsetsAnimationCallback;->view:Landroid/view/View;

    int-to-float p1, v0

    .line 57
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-object p2
.end method
