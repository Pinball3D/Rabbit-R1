.class Landroidx/fragment/app/FragmentAnim;
.super Ljava/lang/Object;
.source "FragmentAnim.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;,
        Landroidx/fragment/app/FragmentAnim$EndViewTransitionAnimation;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getNextAnim(Landroidx/fragment/app/Fragment;ZZ)I
    .locals 0

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    .line 125
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getPopEnterAnim()I

    move-result p0

    return p0

    .line 127
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getPopExitAnim()I

    move-result p0

    return p0

    :cond_1
    if-eqz p1, :cond_2

    .line 131
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getEnterAnim()I

    move-result p0

    return p0

    .line 133
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getExitAnim()I

    move-result p0

    return p0
.end method

.method static loadAnimation(Landroid/content/Context;Landroidx/fragment/app/Fragment;ZZ)Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;
    .locals 4

    .line 47
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getNextTransition()I

    move-result v0

    .line 48
    invoke-static {p1, p2, p3}, Landroidx/fragment/app/FragmentAnim;->getNextAnim(Landroidx/fragment/app/Fragment;ZZ)I

    move-result p3

    const/4 v1, 0x0

    .line 50
    invoke-virtual {p1, v1, v1, v1, v1}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    .line 56
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    sget v3, Landroidx/fragment/R$id;->visible_removing_fragment_view_tag:I

    .line 57
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 58
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    sget v3, Landroidx/fragment/R$id;->visible_removing_fragment_view_tag:I

    invoke-virtual {v1, v3, v2}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 61
    :cond_0
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v2

    .line 65
    :cond_1
    invoke-virtual {p1, v0, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateAnimation(IZI)Landroid/view/animation/Animation;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 67
    new-instance p0, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    invoke-direct {p0, v1}, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;)V

    return-object p0

    .line 70
    :cond_2
    invoke-virtual {p1, v0, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateAnimator(IZI)Landroid/animation/Animator;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 72
    new-instance p0, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;-><init>(Landroid/animation/Animator;)V

    return-object p0

    :cond_3
    if-nez p3, :cond_4

    if-eqz v0, :cond_4

    .line 76
    invoke-static {p0, v0, p2}, Landroidx/fragment/app/FragmentAnim;->transitToAnimResourceId(Landroid/content/Context;IZ)I

    move-result p3

    :cond_4
    if-eqz p3, :cond_7

    .line 80
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "anim"

    .line 81
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 86
    :try_start_0
    invoke-static {p0, p3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 88
    new-instance v0, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    invoke-direct {v0, p2}, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    :catch_0
    move-exception p0

    .line 93
    throw p0

    .line 101
    :catch_1
    :cond_5
    :try_start_1
    invoke-static {p0, p3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 103
    new-instance v0, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    invoke-direct {v0, p2}, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;-><init>(Landroid/animation/Animator;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    return-object v0

    :catch_2
    move-exception p2

    if-nez p1, :cond_6

    .line 111
    invoke-static {p0, p3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 113
    new-instance p1, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    invoke-direct {p1, p0}, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;)V

    return-object p1

    .line 108
    :cond_6
    throw p2

    :cond_7
    return-object v2
.end method

.method private static toActivityTransitResId(Landroid/content/Context;I)I
    .locals 1

    const v0, 0x1030001

    filled-new-array {p1}, [I

    move-result-object p1

    .line 171
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v0, -0x1

    .line 173
    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    .line 174
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p1
.end method

.method private static transitToAnimResourceId(Landroid/content/Context;IZ)I
    .locals 1

    const/16 v0, 0x1001

    if-eq p1, v0, :cond_8

    const/16 v0, 0x2002

    if-eq p1, v0, :cond_6

    const/16 v0, 0x2005

    if-eq p1, v0, :cond_4

    const/16 v0, 0x1003

    if-eq p1, v0, :cond_2

    const/16 v0, 0x1004

    if-eq p1, v0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    const p1, 0x10100b8

    .line 154
    invoke-static {p0, p1}, Landroidx/fragment/app/FragmentAnim;->toActivityTransitResId(Landroid/content/Context;I)I

    move-result p0

    goto :goto_0

    :cond_1
    const p1, 0x10100b9

    .line 155
    invoke-static {p0, p1}, Landroidx/fragment/app/FragmentAnim;->toActivityTransitResId(Landroid/content/Context;I)I

    move-result p0

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 150
    sget p0, Landroidx/fragment/R$animator;->fragment_fade_enter:I

    goto :goto_0

    :cond_3
    sget p0, Landroidx/fragment/R$animator;->fragment_fade_exit:I

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_5

    const p1, 0x10100ba

    .line 159
    invoke-static {p0, p1}, Landroidx/fragment/app/FragmentAnim;->toActivityTransitResId(Landroid/content/Context;I)I

    move-result p0

    goto :goto_0

    :cond_5
    const p1, 0x10100bb

    .line 161
    invoke-static {p0, p1}, Landroidx/fragment/app/FragmentAnim;->toActivityTransitResId(Landroid/content/Context;I)I

    move-result p0

    goto :goto_0

    :cond_6
    if-eqz p2, :cond_7

    .line 147
    sget p0, Landroidx/fragment/R$animator;->fragment_close_enter:I

    goto :goto_0

    :cond_7
    sget p0, Landroidx/fragment/R$animator;->fragment_close_exit:I

    goto :goto_0

    :cond_8
    if-eqz p2, :cond_9

    .line 144
    sget p0, Landroidx/fragment/R$animator;->fragment_open_enter:I

    goto :goto_0

    :cond_9
    sget p0, Landroidx/fragment/R$animator;->fragment_open_exit:I

    :goto_0
    return p0
.end method
