.class final Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;
.super Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;
.source "CircularIndeterminateAnimatorDelegate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate<",
        "Landroid/animation/ObjectAnimator;",
        ">;"
    }
.end annotation


# static fields
.field private static final ANIMATION_FRACTION:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final COMPLETE_END_FRACTION:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final CONSTANT_ROTATION_DEGREES:I = 0x5f0

.field private static final DELAY_TO_COLLAPSE_IN_MS:[I

.field private static final DELAY_TO_EXPAND_IN_MS:[I

.field private static final DELAY_TO_FADE_IN_MS:[I

.field private static final DURATION_TO_COLLAPSE_IN_MS:I = 0x29b

.field private static final DURATION_TO_COMPLETE_END_IN_MS:I = 0x14d

.field private static final DURATION_TO_EXPAND_IN_MS:I = 0x29b

.field private static final DURATION_TO_FADE_IN_MS:I = 0x14d

.field private static final EXTRA_DEGREES_PER_CYCLE:I = 0xfa

.field private static final TAIL_DEGREES_OFFSET:I = -0x14

.field private static final TOTAL_CYCLES:I = 0x4

.field private static final TOTAL_DURATION_IN_MS:I = 0x1518


# instance fields
.field private animationFraction:F

.field private animator:Landroid/animation/ObjectAnimator;

.field animatorCompleteCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

.field private final baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

.field private completeEndAnimator:Landroid/animation/ObjectAnimator;

.field private completeEndFraction:F

.field private indicatorColorIndexOffset:I

.field private final interpolator:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xa8c

    const/16 v1, 0xfd2

    const/4 v2, 0x0

    const/16 v3, 0x546

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->DELAY_TO_EXPAND_IN_MS:[I

    const/16 v0, 0xd27

    const/16 v1, 0x126d

    const/16 v2, 0x29b

    const/16 v3, 0x7e1

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->DELAY_TO_COLLAPSE_IN_MS:[I

    const/16 v0, 0xe74

    const/16 v1, 0x13ba

    const/16 v2, 0x3e8

    const/16 v3, 0x92e

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->DELAY_TO_FADE_IN_MS:[I

    .line 238
    new-instance v0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate$3;

    const-class v1, Ljava/lang/Float;

    const-string v2, "animationFraction"

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate$3;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->ANIMATION_FRACTION:Landroid/util/Property;

    .line 252
    new-instance v0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate$4;

    const-class v1, Ljava/lang/Float;

    const-string v2, "completeEndFraction"

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate$4;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->COMPLETE_END_FRACTION:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;)V
    .locals 1

    const/4 v0, 0x1

    .line 67
    invoke-direct {p0, v0}, Lcom/google/android/material/progressindicator/IndeterminateAnimatorDelegate;-><init>(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->indicatorColorIndexOffset:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->animatorCompleteCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    iput-object p1, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    .line 71
    new-instance p1, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {p1}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->interpolator:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->indicatorColorIndexOffset:I

    return p0
.end method

.method static synthetic access$002(Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;I)I
    .locals 0

    .line 34
    iput p1, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->indicatorColorIndexOffset:I

    return p1
.end method

.method static synthetic access$100(Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;)Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;)F
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->getAnimationFraction()F

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;)F
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->getCompleteEndFraction()F

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;F)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->setCompleteEndFraction(F)V

    return-void
.end method

.method private getAnimationFraction()F
    .locals 0

    iget p0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->animationFraction:F

    return p0
.end method

.method private getCompleteEndFraction()F
    .locals 0

    iget p0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->completeEndFraction:F

    return p0
.end method

.method private maybeInitializeAnimators()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->animator:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x2

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->ANIMATION_FRACTION:Landroid/util/Property;

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    .line 87
    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->animator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x1518

    .line 88
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->animator:Landroid/animation/ObjectAnimator;

    const/4 v2, 0x0

    .line 89
    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->animator:Landroid/animation/ObjectAnimator;

    const/4 v2, -0x1

    .line 90
    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->animator:Landroid/animation/ObjectAnimator;

    .line 91
    new-instance v2, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate$1;

    invoke-direct {v2, p0}, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate$1;-><init>(Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;)V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->completeEndAnimator:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->COMPLETE_END_FRACTION:Landroid/util/Property;

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    .line 103
    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->completeEndAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x14d

    .line 104
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->completeEndAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->interpolator:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    .line 105
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->completeEndAnimator:Landroid/animation/ObjectAnimator;

    .line 106
    new-instance v1, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate$2;

    invoke-direct {v1, p0}, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate$2;-><init>(Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private maybeUpdateSegmentColors(I)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    sget-object v2, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->DELAY_TO_FADE_IN_MS:[I

    .line 185
    aget v2, v2, v1

    const/16 v3, 0x14d

    .line 186
    invoke-virtual {p0, p1, v2, v3}, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->getFractionInRange(III)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_0

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_0

    iget p1, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->indicatorColorIndexOffset:I

    add-int/2addr v1, p1

    iget-object p1, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    .line 188
    iget-object p1, p1, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    array-length p1, p1

    rem-int/2addr v1, p1

    add-int/lit8 p1, v1, 0x1

    iget-object v3, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    .line 190
    iget-object v3, v3, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    array-length v3, v3

    rem-int/2addr p1, v3

    iget-object v3, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    .line 191
    iget-object v3, v3, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    aget v1, v3, v1

    iget-object v3, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->drawable:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    .line 193
    invoke-virtual {v3}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->getAlpha()I

    move-result v3

    .line 192
    invoke-static {v1, v3}, Lcom/google/android/material/color/MaterialColors;->compositeARGBWithAlpha(II)I

    move-result v1

    iget-object v3, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    .line 194
    iget-object v3, v3, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    aget p1, v3, p1

    iget-object v3, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->drawable:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    .line 196
    invoke-virtual {v3}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->getAlpha()I

    move-result v3

    .line 195
    invoke-static {p1, v3}, Lcom/google/android/material/color/MaterialColors;->compositeARGBWithAlpha(II)I

    move-result p1

    iget-object v3, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->interpolator:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    .line 197
    invoke-virtual {v3, v2}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;->getInterpolation(F)F

    move-result v2

    .line 198
    iget-object p0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->segmentColors:[I

    .line 199
    invoke-static {}, Lcom/google/android/material/animation/ArgbEvaluatorCompat;->getInstance()Lcom/google/android/material/animation/ArgbEvaluatorCompat;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v3, v2, v1, p1}, Lcom/google/android/material/animation/ArgbEvaluatorCompat;->evaluate(FLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aput p1, p0, v0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private setCompleteEndFraction(F)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->completeEndFraction:F

    return-void
.end method

.method private updateSegmentPositions(I)V
    .locals 8

    .line 161
    iget-object v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->segmentPositions:[F

    iget v1, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->animationFraction:F

    const/high16 v2, 0x44be0000    # 1520.0f

    mul-float/2addr v1, v2

    const/high16 v3, -0x3e600000    # -20.0f

    add-float/2addr v1, v3

    const/4 v3, 0x0

    aput v1, v0, v3

    .line 162
    iget-object v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->segmentPositions:[F

    iget v1, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->animationFraction:F

    mul-float/2addr v1, v2

    const/4 v2, 0x1

    aput v1, v0, v2

    move v0, v3

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->DELAY_TO_EXPAND_IN_MS:[I

    .line 166
    aget v1, v1, v0

    const/16 v4, 0x29b

    .line 167
    invoke-virtual {p0, p1, v1, v4}, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->getFractionInRange(III)F

    move-result v1

    .line 168
    iget-object v5, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->segmentPositions:[F

    aget v6, v5, v2

    iget-object v7, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->interpolator:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-virtual {v7, v1}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;->getInterpolation(F)F

    move-result v1

    const/high16 v7, 0x437a0000    # 250.0f

    mul-float/2addr v1, v7

    add-float/2addr v6, v1

    aput v6, v5, v2

    sget-object v1, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->DELAY_TO_COLLAPSE_IN_MS:[I

    .line 170
    aget v1, v1, v0

    .line 171
    invoke-virtual {p0, p1, v1, v4}, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->getFractionInRange(III)F

    move-result v1

    .line 173
    iget-object v4, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->segmentPositions:[F

    aget v5, v4, v3

    iget-object v6, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->interpolator:Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-virtual {v6, v1}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;->getInterpolation(F)F

    move-result v1

    mul-float/2addr v1, v7

    add-float/2addr v5, v1

    aput v5, v4, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 176
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->segmentPositions:[F

    aget v0, p1, v3

    iget-object v1, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->segmentPositions:[F

    aget v1, v1, v2

    iget-object v4, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->segmentPositions:[F

    aget v4, v4, v3

    sub-float/2addr v1, v4

    iget v4, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->completeEndFraction:F

    mul-float/2addr v1, v4

    add-float/2addr v0, v1

    aput v0, p1, v3

    .line 178
    iget-object p1, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->segmentPositions:[F

    aget v0, p1, v3

    const/high16 v1, 0x43b40000    # 360.0f

    div-float/2addr v0, v1

    aput v0, p1, v3

    .line 179
    iget-object p0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->segmentPositions:[F

    aget p1, p0, v2

    div-float/2addr p1, v1

    aput p1, p0, v2

    return-void
.end method


# virtual methods
.method cancelAnimatorImmediately()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->animator:Landroid/animation/ObjectAnimator;

    if-eqz p0, :cond_0

    .line 123
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public invalidateSpecValues()V
    .locals 0

    .line 143
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->resetPropertiesForNewStart()V

    return-void
.end method

.method public registerAnimatorsCompleteCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->animatorCompleteCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    return-void
.end method

.method requestCancelAnimatorAfterCurrentCycle()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->completeEndAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    .line 130
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->drawable:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    invoke-virtual {v0}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->completeEndAnimator:Landroid/animation/ObjectAnimator;

    .line 135
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 137
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->cancelAnimatorImmediately()V

    :cond_2
    :goto_0
    return-void
.end method

.method resetPropertiesForNewStart()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->indicatorColorIndexOffset:I

    .line 208
    iget-object v1, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->segmentColors:[I

    iget-object v2, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->baseSpec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    iget-object v2, v2, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->drawable:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    .line 209
    invoke-virtual {v3}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->getAlpha()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/android/material/color/MaterialColors;->compositeARGBWithAlpha(II)I

    move-result v2

    aput v2, v1, v0

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->completeEndFraction:F

    return-void
.end method

.method setAnimationFraction(F)V
    .locals 1

    iput p1, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->animationFraction:F

    const v0, 0x45a8c000    # 5400.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 223
    invoke-direct {p0, p1}, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->updateSegmentPositions(I)V

    .line 224
    invoke-direct {p0, p1}, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->maybeUpdateSegmentColors(I)V

    .line 225
    iget-object p0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->drawable:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->invalidateSelf()V

    return-void
.end method

.method startAnimator()V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->maybeInitializeAnimators()V

    .line 80
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->resetPropertiesForNewStart()V

    iget-object p0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->animator:Landroid/animation/ObjectAnimator;

    .line 81
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public unregisterAnimatorsCompleteCallback()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/progressindicator/CircularIndeterminateAnimatorDelegate;->animatorCompleteCallback:Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    return-void
.end method
