.class public final Lcom/google/android/material/transition/ScaleProvider;
.super Ljava/lang/Object;
.source "ScaleProvider.java"

# interfaces
.implements Lcom/google/android/material/transition/VisibilityAnimatorProvider;


# instance fields
.field private growing:Z

.field private incomingEndScale:F

.field private incomingStartScale:F

.field private outgoingEndScale:F

.field private outgoingStartScale:F

.field private scaleOnDisappear:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 47
    invoke-direct {p0, v0}, Lcom/google/android/material/transition/ScaleProvider;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/material/transition/ScaleProvider;->outgoingStartScale:F

    const v1, 0x3f8ccccd    # 1.1f

    iput v1, p0, Lcom/google/android/material/transition/ScaleProvider;->outgoingEndScale:F

    const v1, 0x3f4ccccd    # 0.8f

    iput v1, p0, Lcom/google/android/material/transition/ScaleProvider;->incomingStartScale:F

    iput v0, p0, Lcom/google/android/material/transition/ScaleProvider;->incomingEndScale:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/transition/ScaleProvider;->scaleOnDisappear:Z

    iput-boolean p1, p0, Lcom/google/android/material/transition/ScaleProvider;->growing:Z

    return-void
.end method

.method private static createScaleAnimator(Landroid/view/View;FF)Landroid/animation/Animator;
    .locals 9

    .line 172
    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result v0

    .line 173
    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    move-result v1

    const/4 v2, 0x2

    new-array v3, v2, [Landroid/animation/PropertyValuesHolder;

    .line 174
    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v5, v2, [F

    mul-float v6, v0, p1

    const/4 v7, 0x0

    aput v6, v5, v7

    mul-float v6, v0, p2

    const/4 v8, 0x1

    aput v6, v5, v8

    .line 177
    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    aput-object v4, v3, v7

    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v2, v2, [F

    mul-float/2addr p1, v1

    aput p1, v2, v7

    mul-float/2addr p2, v1

    aput p2, v2, v8

    .line 179
    invoke-static {v4, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    aput-object p1, v3, v8

    .line 175
    invoke-static {p0, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 181
    new-instance p2, Lcom/google/android/material/transition/ScaleProvider$1;

    invoke-direct {p2, p0, v0, v1}, Lcom/google/android/material/transition/ScaleProvider$1;-><init>(Landroid/view/View;FF)V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p1
.end method


# virtual methods
.method public createAppear(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/animation/Animator;
    .locals 0

    iget-boolean p1, p0, Lcom/google/android/material/transition/ScaleProvider;->growing:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/google/android/material/transition/ScaleProvider;->incomingStartScale:F

    iget p0, p0, Lcom/google/android/material/transition/ScaleProvider;->incomingEndScale:F

    .line 151
    invoke-static {p2, p1, p0}, Lcom/google/android/material/transition/ScaleProvider;->createScaleAnimator(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object p0

    return-object p0

    :cond_0
    iget p1, p0, Lcom/google/android/material/transition/ScaleProvider;->outgoingEndScale:F

    iget p0, p0, Lcom/google/android/material/transition/ScaleProvider;->outgoingStartScale:F

    .line 153
    invoke-static {p2, p1, p0}, Lcom/google/android/material/transition/ScaleProvider;->createScaleAnimator(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public createDisappear(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/animation/Animator;
    .locals 0

    iget-boolean p1, p0, Lcom/google/android/material/transition/ScaleProvider;->scaleOnDisappear:Z

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-boolean p1, p0, Lcom/google/android/material/transition/ScaleProvider;->growing:Z

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/google/android/material/transition/ScaleProvider;->outgoingStartScale:F

    iget p0, p0, Lcom/google/android/material/transition/ScaleProvider;->outgoingEndScale:F

    .line 165
    invoke-static {p2, p1, p0}, Lcom/google/android/material/transition/ScaleProvider;->createScaleAnimator(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object p0

    return-object p0

    :cond_1
    iget p1, p0, Lcom/google/android/material/transition/ScaleProvider;->incomingEndScale:F

    iget p0, p0, Lcom/google/android/material/transition/ScaleProvider;->incomingStartScale:F

    .line 167
    invoke-static {p2, p1, p0}, Lcom/google/android/material/transition/ScaleProvider;->createScaleAnimator(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public getIncomingEndScale()F
    .locals 0

    iget p0, p0, Lcom/google/android/material/transition/ScaleProvider;->incomingEndScale:F

    return p0
.end method

.method public getIncomingStartScale()F
    .locals 0

    iget p0, p0, Lcom/google/android/material/transition/ScaleProvider;->incomingStartScale:F

    return p0
.end method

.method public getOutgoingEndScale()F
    .locals 0

    iget p0, p0, Lcom/google/android/material/transition/ScaleProvider;->outgoingEndScale:F

    return p0
.end method

.method public getOutgoingStartScale()F
    .locals 0

    iget p0, p0, Lcom/google/android/material/transition/ScaleProvider;->outgoingStartScale:F

    return p0
.end method

.method public isGrowing()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/material/transition/ScaleProvider;->growing:Z

    return p0
.end method

.method public isScaleOnDisappear()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/material/transition/ScaleProvider;->scaleOnDisappear:Z

    return p0
.end method

.method public setGrowing(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/transition/ScaleProvider;->growing:Z

    return-void
.end method

.method public setIncomingEndScale(F)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/transition/ScaleProvider;->incomingEndScale:F

    return-void
.end method

.method public setIncomingStartScale(F)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/transition/ScaleProvider;->incomingStartScale:F

    return-void
.end method

.method public setOutgoingEndScale(F)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/transition/ScaleProvider;->outgoingEndScale:F

    return-void
.end method

.method public setOutgoingStartScale(F)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/transition/ScaleProvider;->outgoingStartScale:F

    return-void
.end method

.method public setScaleOnDisappear(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/transition/ScaleProvider;->scaleOnDisappear:Z

    return-void
.end method
