.class Lcom/google/android/material/textfield/IndicatorViewController$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "IndicatorViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/textfield/IndicatorViewController;->updateCaptionViewsVisibility(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/textfield/IndicatorViewController;

.field final synthetic val$captionToHide:I

.field final synthetic val$captionToShow:I

.field final synthetic val$captionViewToHide:Landroid/widget/TextView;

.field final synthetic val$captionViewToShow:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/google/android/material/textfield/IndicatorViewController;ILandroid/widget/TextView;ILandroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/textfield/IndicatorViewController$1;->this$0:Lcom/google/android/material/textfield/IndicatorViewController;

    iput p2, p0, Lcom/google/android/material/textfield/IndicatorViewController$1;->val$captionToShow:I

    iput-object p3, p0, Lcom/google/android/material/textfield/IndicatorViewController$1;->val$captionViewToHide:Landroid/widget/TextView;

    iput p4, p0, Lcom/google/android/material/textfield/IndicatorViewController$1;->val$captionToHide:I

    iput-object p5, p0, Lcom/google/android/material/textfield/IndicatorViewController$1;->val$captionViewToShow:Landroid/widget/TextView;

    .line 269
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/google/android/material/textfield/IndicatorViewController$1;->this$0:Lcom/google/android/material/textfield/IndicatorViewController;

    iget v0, p0, Lcom/google/android/material/textfield/IndicatorViewController$1;->val$captionToShow:I

    .line 272
    invoke-static {p1, v0}, Lcom/google/android/material/textfield/IndicatorViewController;->access$002(Lcom/google/android/material/textfield/IndicatorViewController;I)I

    iget-object p1, p0, Lcom/google/android/material/textfield/IndicatorViewController$1;->this$0:Lcom/google/android/material/textfield/IndicatorViewController;

    const/4 v0, 0x0

    .line 273
    invoke-static {p1, v0}, Lcom/google/android/material/textfield/IndicatorViewController;->access$102(Lcom/google/android/material/textfield/IndicatorViewController;Landroid/animation/Animator;)Landroid/animation/Animator;

    iget-object p1, p0, Lcom/google/android/material/textfield/IndicatorViewController$1;->val$captionViewToHide:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v1, 0x4

    .line 275
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget p1, p0, Lcom/google/android/material/textfield/IndicatorViewController$1;->val$captionToHide:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/textfield/IndicatorViewController$1;->this$0:Lcom/google/android/material/textfield/IndicatorViewController;

    .line 276
    invoke-static {p1}, Lcom/google/android/material/textfield/IndicatorViewController;->access$200(Lcom/google/android/material/textfield/IndicatorViewController;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/textfield/IndicatorViewController$1;->this$0:Lcom/google/android/material/textfield/IndicatorViewController;

    .line 277
    invoke-static {p1}, Lcom/google/android/material/textfield/IndicatorViewController;->access$200(Lcom/google/android/material/textfield/IndicatorViewController;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object p1, p0, Lcom/google/android/material/textfield/IndicatorViewController$1;->val$captionViewToShow:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 282
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTranslationY(F)V

    iget-object p0, p0, Lcom/google/android/material/textfield/IndicatorViewController$1;->val$captionViewToShow:Landroid/widget/TextView;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 283
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/material/textfield/IndicatorViewController$1;->val$captionViewToShow:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 290
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p0, p0, Lcom/google/android/material/textfield/IndicatorViewController$1;->val$captionViewToShow:Landroid/widget/TextView;

    const/4 p1, 0x0

    .line 291
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_0
    return-void
.end method
