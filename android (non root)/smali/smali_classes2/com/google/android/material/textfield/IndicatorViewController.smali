.class final Lcom/google/android/material/textfield/IndicatorViewController;
.super Ljava/lang/Object;
.source "IndicatorViewController.java"


# static fields
.field private static final CAPTION_STATE_ERROR:I = 0x1

.field private static final CAPTION_STATE_HELPER_TEXT:I = 0x2

.field private static final CAPTION_STATE_NONE:I = 0x0

.field static final COUNTER_INDEX:I = 0x2

.field private static final DEFAULT_CAPTION_FADE_ANIMATION_DURATION:I = 0xa7

.field private static final DEFAULT_CAPTION_TRANSLATION_Y_ANIMATION_DURATION:I = 0xd9

.field static final ERROR_INDEX:I = 0x0

.field static final HELPER_INDEX:I = 0x1


# instance fields
.field private captionAnimator:Landroid/animation/Animator;

.field private captionArea:Landroid/widget/FrameLayout;

.field private captionDisplayed:I

.field private final captionFadeInAnimationDuration:I

.field private final captionFadeInAnimationInterpolator:Landroid/animation/TimeInterpolator;

.field private final captionFadeOutAnimationDuration:I

.field private final captionFadeOutAnimationInterpolator:Landroid/animation/TimeInterpolator;

.field private captionToShow:I

.field private final captionTranslationYAnimationDuration:I

.field private final captionTranslationYAnimationInterpolator:Landroid/animation/TimeInterpolator;

.field private final captionTranslationYPx:F

.field private final context:Landroid/content/Context;

.field private errorEnabled:Z

.field private errorText:Ljava/lang/CharSequence;

.field private errorTextAppearance:I

.field private errorView:Landroid/widget/TextView;

.field private errorViewAccessibilityLiveRegion:I

.field private errorViewContentDescription:Ljava/lang/CharSequence;

.field private errorViewTextColor:Landroid/content/res/ColorStateList;

.field private helperText:Ljava/lang/CharSequence;

.field private helperTextEnabled:Z

.field private helperTextTextAppearance:I

.field private helperTextView:Landroid/widget/TextView;

.field private helperTextViewTextColor:Landroid/content/res/ColorStateList;

.field private indicatorArea:Landroid/widget/LinearLayout;

.field private indicatorsAdded:I

.field private final textInputView:Lcom/google/android/material/textfield/TextInputLayout;

.field private typeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 2

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->context:Landroid/content/Context;

    iput-object p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->textInputView:Lcom/google/android/material/textfield/TextInputLayout;

    .line 138
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/google/android/material/R$dimen;->design_textinput_caption_translate_y:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionTranslationYPx:F

    .line 139
    sget p1, Lcom/google/android/material/R$attr;->motionDurationShort4:I

    const/16 v1, 0xd9

    .line 140
    invoke-static {v0, p1, v1}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeDuration(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionTranslationYAnimationDuration:I

    .line 142
    sget p1, Lcom/google/android/material/R$attr;->motionDurationMedium4:I

    const/16 v1, 0xa7

    .line 143
    invoke-static {v0, p1, v1}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeDuration(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionFadeInAnimationDuration:I

    .line 145
    sget p1, Lcom/google/android/material/R$attr;->motionDurationShort4:I

    .line 146
    invoke-static {v0, p1, v1}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeDuration(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionFadeOutAnimationDuration:I

    .line 148
    sget p1, Lcom/google/android/material/R$attr;->motionEasingEmphasizedDecelerateInterpolator:I

    sget-object v1, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 149
    invoke-static {v0, p1, v1}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeInterpolator(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionTranslationYAnimationInterpolator:Landroid/animation/TimeInterpolator;

    .line 153
    sget p1, Lcom/google/android/material/R$attr;->motionEasingEmphasizedDecelerateInterpolator:I

    sget-object v1, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 154
    invoke-static {v0, p1, v1}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeInterpolator(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionFadeInAnimationInterpolator:Landroid/animation/TimeInterpolator;

    .line 158
    sget p1, Lcom/google/android/material/R$attr;->motionEasingLinearInterpolator:I

    sget-object v1, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 159
    invoke-static {v0, p1, v1}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeInterpolator(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionFadeOutAnimationInterpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method static synthetic access$002(Lcom/google/android/material/textfield/IndicatorViewController;I)I
    .locals 0

    .line 67
    iput p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionDisplayed:I

    return p1
.end method

.method static synthetic access$102(Lcom/google/android/material/textfield/IndicatorViewController;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/android/material/textfield/IndicatorViewController;)Landroid/widget/TextView;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/android/material/textfield/IndicatorViewController;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->textInputView:Lcom/google/android/material/textfield/TextInputLayout;

    return-object p0
.end method

.method private canAdjustIndicatorPadding()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->indicatorArea:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->textInputView:Lcom/google/android/material/textfield/TextInputLayout;

    .line 426
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private createCaptionAnimators(Ljava/util/List;ZLandroid/widget/TextView;III)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;Z",
            "Landroid/widget/TextView;",
            "III)V"
        }
    .end annotation

    if-eqz p3, :cond_4

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    if-eq p4, p6, :cond_1

    if-ne p4, p5, :cond_4

    :cond_1
    if-ne p6, p4, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 345
    :goto_0
    invoke-direct {p0, p3, p2}, Lcom/google/android/material/textfield/IndicatorViewController;->createCaptionOpacityAnimator(Landroid/widget/TextView;Z)Landroid/animation/ObjectAnimator;

    move-result-object p2

    if-ne p4, p6, :cond_3

    if-eqz p5, :cond_3

    iget v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionFadeOutAnimationDuration:I

    int-to-long v0, v0

    .line 349
    invoke-virtual {p2, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 351
    :cond_3
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-ne p6, p4, :cond_4

    if-eqz p5, :cond_4

    .line 353
    invoke-direct {p0, p3}, Lcom/google/android/material/textfield/IndicatorViewController;->createCaptionTranslationYAnimator(Landroid/widget/TextView;)Landroid/animation/ObjectAnimator;

    move-result-object p2

    iget p0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionFadeOutAnimationDuration:I

    int-to-long p3, p0

    .line 354
    invoke-virtual {p2, p3, p4}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 355
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    return-void
.end method

.method private createCaptionOpacityAnimator(Landroid/widget/TextView;Z)Landroid/animation/ObjectAnimator;
    .locals 4

    if-eqz p2, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 362
    :goto_0
    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    if-eqz p2, :cond_1

    iget v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionFadeInAnimationDuration:I

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionFadeOutAnimationDuration:I

    :goto_1
    int-to-long v0, v0

    .line 363
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    if-eqz p2, :cond_2

    iget-object p0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionFadeInAnimationInterpolator:Landroid/animation/TimeInterpolator;

    goto :goto_2

    :cond_2
    iget-object p0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionFadeOutAnimationInterpolator:Landroid/animation/TimeInterpolator;

    .line 365
    :goto_2
    invoke-virtual {p1, p0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p1
.end method

.method private createCaptionTranslationYAnimator(Landroid/widget/TextView;)Landroid/animation/ObjectAnimator;
    .locals 4

    .line 371
    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    iget v2, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionTranslationYPx:F

    neg-float v2, v2

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 372
    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iget v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionTranslationYAnimationDuration:I

    int-to-long v0, v0

    .line 373
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object p0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionTranslationYAnimationInterpolator:Landroid/animation/TimeInterpolator;

    .line 374
    invoke-virtual {p1, p0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p1
.end method

.method private getCaptionViewFromDisplayState(I)Landroid/widget/TextView;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    return-object p0
.end method

.method private getIndicatorPadding(ZII)I
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->context:Landroid/content/Context;

    .line 432
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    :cond_0
    return p3
.end method

.method private isCaptionStateError(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorText:Ljava/lang/CharSequence;

    .line 590
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isCaptionStateHelperText(I)Z
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperText:Ljava/lang/CharSequence;

    .line 604
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setCaptionViewVisibilities(II)V
    .locals 2

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 311
    invoke-direct {p0, p2}, Lcom/google/android/material/textfield/IndicatorViewController;->getCaptionViewFromDisplayState(I)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 313
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 314
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_1
    if-eqz p1, :cond_2

    .line 319
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/IndicatorViewController;->getCaptionViewFromDisplayState(I)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x4

    .line 321
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    const/4 p1, 0x0

    .line 324
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iput p2, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionDisplayed:I

    return-void
.end method

.method private setTextViewTypeface(Landroid/widget/TextView;Landroid/graphics/Typeface;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 627
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method

.method private setViewGroupGoneIfEmpty(Landroid/view/ViewGroup;I)V
    .locals 0

    if-nez p2, :cond_0

    const/16 p0, 0x8

    .line 480
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private shouldAnimateCaptionView(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->textInputView:Lcom/google/android/material/textfield/TextInputLayout;

    .line 227
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->textInputView:Lcom/google/android/material/textfield/TextInputLayout;

    .line 228
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionToShow:I

    iget p0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionDisplayed:I

    if-ne v0, p0, :cond_0

    if-eqz p1, :cond_0

    .line 231
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private updateCaptionViewsVisibility(IIZ)V
    .locals 13

    move-object v7, p0

    move v8, p2

    move v9, p1

    move/from16 v10, p3

    if-ne v9, v8, :cond_0

    return-void

    :cond_0
    if-eqz v10, :cond_1

    .line 244
    new-instance v11, Landroid/animation/AnimatorSet;

    invoke-direct {v11}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v11, v7, Lcom/google/android/material/textfield/IndicatorViewController;->captionAnimator:Landroid/animation/Animator;

    .line 246
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v2, v7, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextEnabled:Z

    iget-object v3, v7, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    const/4 v4, 0x2

    move-object v0, p0

    move-object v1, v12

    move v5, p1

    move v6, p2

    .line 248
    invoke-direct/range {v0 .. v6}, Lcom/google/android/material/textfield/IndicatorViewController;->createCaptionAnimators(Ljava/util/List;ZLandroid/widget/TextView;III)V

    iget-boolean v2, v7, Lcom/google/android/material/textfield/IndicatorViewController;->errorEnabled:Z

    iget-object v3, v7, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    const/4 v4, 0x1

    .line 256
    invoke-direct/range {v0 .. v6}, Lcom/google/android/material/textfield/IndicatorViewController;->createCaptionAnimators(Ljava/util/List;ZLandroid/widget/TextView;III)V

    .line 264
    invoke-static {v11, v12}, Lcom/google/android/material/animation/AnimatorSetCompat;->playTogether(Landroid/animation/AnimatorSet;Ljava/util/List;)V

    .line 265
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/IndicatorViewController;->getCaptionViewFromDisplayState(I)Landroid/widget/TextView;

    move-result-object v3

    .line 266
    invoke-direct {p0, p2}, Lcom/google/android/material/textfield/IndicatorViewController;->getCaptionViewFromDisplayState(I)Landroid/widget/TextView;

    move-result-object v5

    .line 268
    new-instance v6, Lcom/google/android/material/textfield/IndicatorViewController$1;

    move-object v0, v6

    move-object v1, p0

    move v2, p2

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/textfield/IndicatorViewController$1;-><init>(Lcom/google/android/material/textfield/IndicatorViewController;ILandroid/widget/TextView;ILandroid/widget/TextView;)V

    invoke-virtual {v11, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 295
    invoke-virtual {v11}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 297
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/textfield/IndicatorViewController;->setCaptionViewVisibilities(II)V

    :goto_0
    iget-object v0, v7, Lcom/google/android/material/textfield/IndicatorViewController;->textInputView:Lcom/google/android/material/textfield/TextInputLayout;

    .line 299
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->updateEditTextBackground()V

    iget-object v0, v7, Lcom/google/android/material/textfield/IndicatorViewController;->textInputView:Lcom/google/android/material/textfield/TextInputLayout;

    .line 300
    invoke-virtual {v0, v10}, Lcom/google/android/material/textfield/TextInputLayout;->updateLabelState(Z)V

    iget-object v0, v7, Lcom/google/android/material/textfield/IndicatorViewController;->textInputView:Lcom/google/android/material/textfield/TextInputLayout;

    .line 301
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->updateTextInputBoxState()V

    return-void
.end method


# virtual methods
.method addIndicator(Landroid/widget/TextView;I)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->indicatorArea:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    const/4 v2, -0x2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionArea:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 438
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/google/android/material/textfield/IndicatorViewController;->context:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->indicatorArea:Landroid/widget/LinearLayout;

    .line 439
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->textInputView:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v3, p0, Lcom/google/android/material/textfield/IndicatorViewController;->indicatorArea:Landroid/widget/LinearLayout;

    const/4 v4, -0x1

    .line 440
    invoke-virtual {v0, v3, v4, v2}, Lcom/google/android/material/textfield/TextInputLayout;->addView(Landroid/view/View;II)V

    .line 442
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/google/android/material/textfield/IndicatorViewController;->context:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionArea:Landroid/widget/FrameLayout;

    .line 443
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iget-object v3, p0, Lcom/google/android/material/textfield/IndicatorViewController;->indicatorArea:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionArea:Landroid/widget/FrameLayout;

    .line 445
    invoke-virtual {v3, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->textInputView:Lcom/google/android/material/textfield/TextInputLayout;

    .line 447
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 448
    invoke-virtual {p0}, Lcom/google/android/material/textfield/IndicatorViewController;->adjustIndicatorPadding()V

    .line 452
    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/android/material/textfield/IndicatorViewController;->isCaptionView(I)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionArea:Landroid/widget/FrameLayout;

    .line 453
    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p2, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionArea:Landroid/widget/FrameLayout;

    .line 454
    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 456
    :cond_1
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->indicatorArea:Landroid/widget/LinearLayout;

    .line 458
    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    iget-object p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->indicatorArea:Landroid/widget/LinearLayout;

    .line 460
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->indicatorsAdded:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->indicatorsAdded:I

    return-void
.end method

.method adjustIndicatorPadding()V
    .locals 7

    .line 402
    invoke-direct {p0}, Lcom/google/android/material/textfield/IndicatorViewController;->canAdjustIndicatorPadding()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->textInputView:Lcom/google/android/material/textfield/TextInputLayout;

    .line 403
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->context:Landroid/content/Context;

    .line 404
    invoke-static {v1}, Lcom/google/android/material/resources/MaterialResources;->isFontScaleAtLeast1_3(Landroid/content/Context;)Z

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/textfield/IndicatorViewController;->indicatorArea:Landroid/widget/LinearLayout;

    .line 405
    sget v3, Lcom/google/android/material/R$dimen;->material_helper_text_font_1_3_padding_horizontal:I

    .line 410
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v4

    .line 407
    invoke-direct {p0, v1, v3, v4}, Lcom/google/android/material/textfield/IndicatorViewController;->getIndicatorPadding(ZII)I

    move-result v3

    sget v4, Lcom/google/android/material/R$dimen;->material_helper_text_font_1_3_padding_top:I

    iget-object v5, p0, Lcom/google/android/material/textfield/IndicatorViewController;->context:Landroid/content/Context;

    .line 415
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/google/android/material/R$dimen;->material_helper_text_default_padding_top:I

    .line 416
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 411
    invoke-direct {p0, v1, v4, v5}, Lcom/google/android/material/textfield/IndicatorViewController;->getIndicatorPadding(ZII)I

    move-result v4

    sget v5, Lcom/google/android/material/R$dimen;->material_helper_text_font_1_3_padding_horizontal:I

    .line 420
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    move-result v0

    .line 417
    invoke-direct {p0, v1, v5, v0}, Lcom/google/android/material/textfield/IndicatorViewController;->getIndicatorPadding(ZII)I

    move-result p0

    const/4 v0, 0x0

    .line 405
    invoke-static {v2, v3, v4, p0, v0}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    :cond_0
    return-void
.end method

.method cancelCaptionAnimator()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionAnimator:Landroid/animation/Animator;

    if-eqz p0, :cond_0

    .line 380
    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method errorIsDisplayed()Z
    .locals 1

    iget v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionDisplayed:I

    .line 580
    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/IndicatorViewController;->isCaptionStateError(I)Z

    move-result p0

    return p0
.end method

.method errorShouldBeShown()Z
    .locals 1

    iget v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionToShow:I

    .line 584
    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/IndicatorViewController;->isCaptionStateError(I)Z

    move-result p0

    return p0
.end method

.method getErrorAccessibilityLiveRegion()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorViewAccessibilityLiveRegion:I

    return p0
.end method

.method getErrorContentDescription()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorViewContentDescription:Ljava/lang/CharSequence;

    return-object p0
.end method

.method getErrorText()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method getErrorViewCurrentTextColor()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 633
    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method getErrorViewTextColors()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 638
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method getHelperText()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method getHelperTextView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method getHelperTextViewColors()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 685
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method getHelperTextViewCurrentTextColor()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 680
    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method helperTextIsDisplayed()Z
    .locals 1

    iget v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionDisplayed:I

    .line 594
    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/IndicatorViewController;->isCaptionStateHelperText(I)Z

    move-result p0

    return p0
.end method

.method helperTextShouldBeShown()Z
    .locals 1

    iget v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionToShow:I

    .line 598
    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/IndicatorViewController;->isCaptionStateHelperText(I)Z

    move-result p0

    return p0
.end method

.method hideError()V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorText:Ljava/lang/CharSequence;

    .line 202
    invoke-virtual {p0}, Lcom/google/android/material/textfield/IndicatorViewController;->cancelCaptionAnimator()V

    iget v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionDisplayed:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperText:Ljava/lang/CharSequence;

    .line 206
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionToShow:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionToShow:I

    :cond_1
    :goto_0
    iget v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionDisplayed:I

    iget v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionToShow:I

    iget-object v2, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    const-string v3, ""

    .line 214
    invoke-direct {p0, v2, v3}, Lcom/google/android/material/textfield/IndicatorViewController;->shouldAnimateCaptionView(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 213
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/material/textfield/IndicatorViewController;->updateCaptionViewsVisibility(IIZ)V

    return-void
.end method

.method hideHelperText()V
    .locals 4

    .line 177
    invoke-virtual {p0}, Lcom/google/android/material/textfield/IndicatorViewController;->cancelCaptionAnimator()V

    iget v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionDisplayed:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionToShow:I

    :cond_0
    iget v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionToShow:I

    iget-object v2, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    const-string v3, ""

    .line 184
    invoke-direct {p0, v2, v3}, Lcom/google/android/material/textfield/IndicatorViewController;->shouldAnimateCaptionView(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 183
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/material/textfield/IndicatorViewController;->updateCaptionViewsVisibility(IIZ)V

    return-void
.end method

.method isCaptionView(I)Z
    .locals 0

    const/4 p0, 0x1

    if-eqz p1, :cond_1

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :cond_1
    :goto_0
    return p0
.end method

.method isErrorEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorEnabled:Z

    return p0
.end method

.method isHelperTextEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextEnabled:Z

    return p0
.end method

.method removeIndicator(Landroid/widget/TextView;I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->indicatorArea:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    .line 469
    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/android/material/textfield/IndicatorViewController;->isCaptionView(I)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionArea:Landroid/widget/FrameLayout;

    if-eqz p2, :cond_1

    .line 470
    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/google/android/material/textfield/IndicatorViewController;->indicatorArea:Landroid/widget/LinearLayout;

    .line 472
    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    :goto_0
    iget p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->indicatorsAdded:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->indicatorsAdded:I

    iget-object p2, p0, Lcom/google/android/material/textfield/IndicatorViewController;->indicatorArea:Landroid/widget/LinearLayout;

    .line 475
    invoke-direct {p0, p2, p1}, Lcom/google/android/material/textfield/IndicatorViewController;->setViewGroupGoneIfEmpty(Landroid/view/ViewGroup;I)V

    return-void
.end method

.method setErrorAccessibilityLiveRegion(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorViewAccessibilityLiveRegion:I

    iget-object p0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 665
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityLiveRegion(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method setErrorContentDescription(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorViewContentDescription:Ljava/lang/CharSequence;

    iget-object p0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 658
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method setErrorEnabled(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorEnabled:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 491
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/textfield/IndicatorViewController;->cancelCaptionAnimator()V

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 494
    new-instance v1, Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v2, p0, Lcom/google/android/material/textfield/IndicatorViewController;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    .line 495
    sget v2, Lcom/google/android/material/R$id;->textinput_error:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    iget-object v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    const/4 v2, 0x5

    .line 497
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAlignment(I)V

    iget-object v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->typeface:Landroid/graphics/Typeface;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    .line 500
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_1
    iget v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorTextAppearance:I

    .line 502
    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/IndicatorViewController;->setErrorTextAppearance(I)V

    iget-object v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorViewTextColor:Landroid/content/res/ColorStateList;

    .line 503
    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/IndicatorViewController;->setErrorViewTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorViewContentDescription:Ljava/lang/CharSequence;

    .line 504
    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/IndicatorViewController;->setErrorContentDescription(Ljava/lang/CharSequence;)V

    iget v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorViewAccessibilityLiveRegion:I

    .line 505
    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/IndicatorViewController;->setErrorAccessibilityLiveRegion(I)V

    iget-object v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    const/4 v2, 0x4

    .line 506
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    .line 507
    invoke-virtual {p0, v1, v0}, Lcom/google/android/material/textfield/IndicatorViewController;->addIndicator(Landroid/widget/TextView;I)V

    goto :goto_0

    .line 509
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/textfield/IndicatorViewController;->hideError()V

    iget-object v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    .line 510
    invoke-virtual {p0, v1, v0}, Lcom/google/android/material/textfield/IndicatorViewController;->removeIndicator(Landroid/widget/TextView;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->textInputView:Lcom/google/android/material/textfield/TextInputLayout;

    .line 512
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->updateEditTextBackground()V

    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->textInputView:Lcom/google/android/material/textfield/TextInputLayout;

    .line 513
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->updateTextInputBoxState()V

    :goto_0
    iput-boolean p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorEnabled:Z

    return-void
.end method

.method setErrorTextAppearance(I)V
    .locals 1

    iput p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorTextAppearance:I

    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->textInputView:Lcom/google/android/material/textfield/TextInputLayout;

    .line 651
    invoke-virtual {p0, v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setTextAppearanceCompatWithErrorFallback(Landroid/widget/TextView;I)V

    :cond_0
    return-void
.end method

.method setErrorViewTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorViewTextColor:Landroid/content/res/ColorStateList;

    iget-object p0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 644
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method setHelperTextAppearance(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextTextAppearance:I

    iget-object p0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 698
    invoke-static {p0, p1}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    :cond_0
    return-void
.end method

.method setHelperTextEnabled(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextEnabled:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 533
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/textfield/IndicatorViewController;->cancelCaptionAnimator()V

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 536
    new-instance v1, Landroidx/appcompat/widget/AppCompatTextView;

    iget-object v2, p0, Lcom/google/android/material/textfield/IndicatorViewController;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    .line 537
    sget v2, Lcom/google/android/material/R$id;->textinput_helper_text:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    iget-object v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    const/4 v2, 0x5

    .line 539
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAlignment(I)V

    iget-object v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->typeface:Landroid/graphics/Typeface;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    .line 542
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_1
    iget-object v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    const/4 v2, 0x4

    .line 544
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    .line 545
    invoke-static {v1, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityLiveRegion(Landroid/view/View;I)V

    iget v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextTextAppearance:I

    .line 547
    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/IndicatorViewController;->setHelperTextAppearance(I)V

    iget-object v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextViewTextColor:Landroid/content/res/ColorStateList;

    .line 548
    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/IndicatorViewController;->setHelperTextViewTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    .line 549
    invoke-virtual {p0, v1, v0}, Lcom/google/android/material/textfield/IndicatorViewController;->addIndicator(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    .line 551
    new-instance v1, Lcom/google/android/material/textfield/IndicatorViewController$2;

    invoke-direct {v1, p0}, Lcom/google/android/material/textfield/IndicatorViewController$2;-><init>(Lcom/google/android/material/textfield/IndicatorViewController;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    goto :goto_0

    .line 565
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/textfield/IndicatorViewController;->hideHelperText()V

    iget-object v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    .line 566
    invoke-virtual {p0, v1, v0}, Lcom/google/android/material/textfield/IndicatorViewController;->removeIndicator(Landroid/widget/TextView;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->textInputView:Lcom/google/android/material/textfield/TextInputLayout;

    .line 568
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->updateEditTextBackground()V

    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->textInputView:Lcom/google/android/material/textfield/TextInputLayout;

    .line 569
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->updateTextInputBoxState()V

    :goto_0
    iput-boolean p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextEnabled:Z

    return-void
.end method

.method setHelperTextViewTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextViewTextColor:Landroid/content/res/ColorStateList;

    iget-object p0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 691
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method setTypefaces(Landroid/graphics/Typeface;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->typeface:Landroid/graphics/Typeface;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->typeface:Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    .line 620
    invoke-direct {p0, v0, p1}, Lcom/google/android/material/textfield/IndicatorViewController;->setTextViewTypeface(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    .line 621
    invoke-direct {p0, v0, p1}, Lcom/google/android/material/textfield/IndicatorViewController;->setTextViewTypeface(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method

.method showError(Ljava/lang/CharSequence;)V
    .locals 3

    .line 188
    invoke-virtual {p0}, Lcom/google/android/material/textfield/IndicatorViewController;->cancelCaptionAnimator()V

    iput-object p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    .line 190
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionDisplayed:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iput v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionToShow:I

    :cond_0
    iget v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionToShow:I

    iget-object v2, p0, Lcom/google/android/material/textfield/IndicatorViewController;->errorView:Landroid/widget/TextView;

    .line 197
    invoke-direct {p0, v2, p1}, Lcom/google/android/material/textfield/IndicatorViewController;->shouldAnimateCaptionView(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    move-result p1

    .line 196
    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/material/textfield/IndicatorViewController;->updateCaptionViewsVisibility(IIZ)V

    return-void
.end method

.method showHelper(Ljava/lang/CharSequence;)V
    .locals 3

    .line 164
    invoke-virtual {p0}, Lcom/google/android/material/textfield/IndicatorViewController;->cancelCaptionAnimator()V

    iput-object p1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    .line 166
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionDisplayed:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iput v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionToShow:I

    :cond_0
    iget v1, p0, Lcom/google/android/material/textfield/IndicatorViewController;->captionToShow:I

    iget-object v2, p0, Lcom/google/android/material/textfield/IndicatorViewController;->helperTextView:Landroid/widget/TextView;

    .line 173
    invoke-direct {p0, v2, p1}, Lcom/google/android/material/textfield/IndicatorViewController;->shouldAnimateCaptionView(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    move-result p1

    .line 172
    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/material/textfield/IndicatorViewController;->updateCaptionViewsVisibility(IIZ)V

    return-void
.end method
