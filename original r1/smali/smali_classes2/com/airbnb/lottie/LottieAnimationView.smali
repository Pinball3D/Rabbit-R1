.class public Lcom/airbnb/lottie/LottieAnimationView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "LottieAnimationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/LottieAnimationView$WeakSuccessListener;,
        Lcom/airbnb/lottie/LottieAnimationView$WeakFailureListener;,
        Lcom/airbnb/lottie/LottieAnimationView$SavedState;,
        Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;
    }
.end annotation


# static fields
.field private static final DEFAULT_FAILURE_LISTENER:Lcom/airbnb/lottie/LottieListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/LottieListener<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "LottieAnimationView"


# instance fields
.field private animationName:Ljava/lang/String;

.field private animationResId:I

.field private autoPlay:Z

.field private cacheComposition:Z

.field private composition:Lcom/airbnb/lottie/LottieComposition;

.field private compositionTask:Lcom/airbnb/lottie/LottieTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/LottieTask<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation
.end field

.field private failureListener:Lcom/airbnb/lottie/LottieListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/LottieListener<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private fallbackResource:I

.field private ignoreUnschedule:Z

.field private final loadedListener:Lcom/airbnb/lottie/LottieListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/LottieListener<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation
.end field

.field private final lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

.field private final lottieOnCompositionLoadedListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/airbnb/lottie/LottieOnCompositionLoadedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final userActionsTaken:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;",
            ">;"
        }
    .end annotation
.end field

.field private final wrappedFailureListener:Lcom/airbnb/lottie/LottieListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/LottieListener<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    new-instance v0, Lcom/airbnb/lottie/LottieAnimationView$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/airbnb/lottie/LottieAnimationView$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/LottieAnimationView;->DEFAULT_FAILURE_LISTENER:Lcom/airbnb/lottie/LottieListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 148
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    .line 77
    new-instance p1, Lcom/airbnb/lottie/LottieAnimationView$WeakSuccessListener;

    invoke-direct {p1, p0}, Lcom/airbnb/lottie/LottieAnimationView$WeakSuccessListener;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->loadedListener:Lcom/airbnb/lottie/LottieListener;

    .line 96
    new-instance p1, Lcom/airbnb/lottie/LottieAnimationView$WeakFailureListener;

    invoke-direct {p1, p0}, Lcom/airbnb/lottie/LottieAnimationView$WeakFailureListener;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->wrappedFailureListener:Lcom/airbnb/lottie/LottieListener;

    const/4 p1, 0x0

    iput p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->fallbackResource:I

    .line 123
    new-instance v0, Lcom/airbnb/lottie/LottieDrawable;

    invoke-direct {v0}, Lcom/airbnb/lottie/LottieDrawable;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->ignoreUnschedule:Z

    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->autoPlay:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->cacheComposition:Z

    .line 138
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->userActionsTaken:Ljava/util/Set;

    .line 139
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieOnCompositionLoadedListeners:Ljava/util/Set;

    const/4 p1, 0x0

    .line 149
    sget v0, Lcom/airbnb/lottie/R$attr;->lottieAnimationViewStyle:I

    invoke-direct {p0, p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 153
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    new-instance p1, Lcom/airbnb/lottie/LottieAnimationView$WeakSuccessListener;

    invoke-direct {p1, p0}, Lcom/airbnb/lottie/LottieAnimationView$WeakSuccessListener;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->loadedListener:Lcom/airbnb/lottie/LottieListener;

    .line 96
    new-instance p1, Lcom/airbnb/lottie/LottieAnimationView$WeakFailureListener;

    invoke-direct {p1, p0}, Lcom/airbnb/lottie/LottieAnimationView$WeakFailureListener;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->wrappedFailureListener:Lcom/airbnb/lottie/LottieListener;

    const/4 p1, 0x0

    iput p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->fallbackResource:I

    .line 123
    new-instance v0, Lcom/airbnb/lottie/LottieDrawable;

    invoke-direct {v0}, Lcom/airbnb/lottie/LottieDrawable;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->ignoreUnschedule:Z

    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->autoPlay:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->cacheComposition:Z

    .line 138
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->userActionsTaken:Ljava/util/Set;

    .line 139
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieOnCompositionLoadedListeners:Ljava/util/Set;

    .line 154
    sget p1, Lcom/airbnb/lottie/R$attr;->lottieAnimationViewStyle:I

    invoke-direct {p0, p2, p1}, Lcom/airbnb/lottie/LottieAnimationView;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 158
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    new-instance p1, Lcom/airbnb/lottie/LottieAnimationView$WeakSuccessListener;

    invoke-direct {p1, p0}, Lcom/airbnb/lottie/LottieAnimationView$WeakSuccessListener;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->loadedListener:Lcom/airbnb/lottie/LottieListener;

    .line 96
    new-instance p1, Lcom/airbnb/lottie/LottieAnimationView$WeakFailureListener;

    invoke-direct {p1, p0}, Lcom/airbnb/lottie/LottieAnimationView$WeakFailureListener;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->wrappedFailureListener:Lcom/airbnb/lottie/LottieListener;

    const/4 p1, 0x0

    iput p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->fallbackResource:I

    .line 123
    new-instance v0, Lcom/airbnb/lottie/LottieDrawable;

    invoke-direct {v0}, Lcom/airbnb/lottie/LottieDrawable;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->ignoreUnschedule:Z

    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->autoPlay:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->cacheComposition:Z

    .line 138
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->userActionsTaken:Ljava/util/Set;

    .line 139
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieOnCompositionLoadedListeners:Ljava/util/Set;

    .line 159
    invoke-direct {p0, p2, p3}, Lcom/airbnb/lottie/LottieAnimationView;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/lottie/LottieAnimationView;)I
    .locals 0

    .line 65
    iget p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->fallbackResource:I

    return p0
.end method

.method static synthetic access$100(Lcom/airbnb/lottie/LottieAnimationView;)Lcom/airbnb/lottie/LottieListener;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->failureListener:Lcom/airbnb/lottie/LottieListener;

    return-object p0
.end method

.method static synthetic access$200()Lcom/airbnb/lottie/LottieListener;
    .locals 1

    sget-object v0, Lcom/airbnb/lottie/LottieAnimationView;->DEFAULT_FAILURE_LISTENER:Lcom/airbnb/lottie/LottieListener;

    return-object v0
.end method

.method private cancelLoaderTask()V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->compositionTask:Lcom/airbnb/lottie/LottieTask;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->loadedListener:Lcom/airbnb/lottie/LottieListener;

    .line 623
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieTask;->removeListener(Lcom/airbnb/lottie/LottieListener;)Lcom/airbnb/lottie/LottieTask;

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->compositionTask:Lcom/airbnb/lottie/LottieTask;

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->wrappedFailureListener:Lcom/airbnb/lottie/LottieListener;

    .line 624
    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/LottieTask;->removeFailureListener(Lcom/airbnb/lottie/LottieListener;)Lcom/airbnb/lottie/LottieTask;

    :cond_0
    return-void
.end method

.method private clearComposition()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->composition:Lcom/airbnb/lottie/LottieComposition;

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 1139
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->clearComposition()V

    return-void
.end method

.method private fromAssets(Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/lottie/LottieTask<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 484
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 485
    new-instance v0, Lcom/airbnb/lottie/LottieTask;

    new-instance v1, Lcom/airbnb/lottie/LottieAnimationView$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/LottieAnimationView$$ExternalSyntheticLambda2;-><init>(Lcom/airbnb/lottie/LottieAnimationView;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-direct {v0, v1, p0}, Lcom/airbnb/lottie/LottieTask;-><init>(Ljava/util/concurrent/Callable;Z)V

    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->cacheComposition:Z

    if-eqz v0, :cond_1

    .line 489
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromAsset(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromAsset(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private fromRawRes(I)Lcom/airbnb/lottie/LottieTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/airbnb/lottie/LottieTask<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;"
        }
    .end annotation

    .line 468
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    new-instance v0, Lcom/airbnb/lottie/LottieTask;

    new-instance v1, Lcom/airbnb/lottie/LottieAnimationView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/LottieAnimationView$$ExternalSyntheticLambda0;-><init>(Lcom/airbnb/lottie/LottieAnimationView;I)V

    const/4 p0, 0x1

    invoke-direct {v0, v1, p0}, Lcom/airbnb/lottie/LottieTask;-><init>(Ljava/util/concurrent/Callable;Z)V

    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->cacheComposition:Z

    if-eqz v0, :cond_1

    .line 473
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromRawRes(Landroid/content/Context;I)Lcom/airbnb/lottie/LottieTask;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromRawRes(Landroid/content/Context;ILjava/lang/String;)Lcom/airbnb/lottie/LottieTask;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 5

    .line 163
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 164
    sget p2, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_cacheComposition:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/airbnb/lottie/LottieAnimationView;->cacheComposition:Z

    .line 165
    sget p2, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_rawRes:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    .line 166
    sget v1, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_fileName:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    .line 167
    sget v3, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_url:I

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz p2, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 169
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "lottie_rawRes and lottie_fileName cannot be used at the same time. Please use only one at once."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 172
    sget p2, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_rawRes:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-eqz p2, :cond_4

    .line 174
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    .line 177
    sget p2, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_fileName:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 179
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_4

    .line 182
    sget p2, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_url:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 184
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimationFromUrl(Ljava/lang/String;)V

    .line 188
    :cond_4
    :goto_1
    sget p2, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_fallbackRes:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setFallbackResource(I)V

    .line 189
    sget p2, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_autoPlay:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    if-eqz p2, :cond_5

    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->autoPlay:Z

    .line 193
    :cond_5
    sget p2, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_loop:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    const/4 v1, -0x1

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 194
    invoke-virtual {p2, v1}, Lcom/airbnb/lottie/LottieDrawable;->setRepeatCount(I)V

    .line 197
    :cond_6
    sget p2, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_repeatMode:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 198
    sget p2, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_repeatMode:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatMode(I)V

    .line 202
    :cond_7
    sget p2, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_repeatCount:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 203
    sget p2, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_repeatCount:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 207
    :cond_8
    sget p2, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_speed:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 208
    sget p2, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_speed:I

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setSpeed(F)V

    .line 211
    :cond_9
    sget p2, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_clipToCompositionBounds:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 212
    sget p2, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_clipToCompositionBounds:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setClipToCompositionBounds(Z)V

    .line 215
    :cond_a
    sget p2, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_clipTextToBoundingBox:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 216
    sget p2, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_clipTextToBoundingBox:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setClipTextToBoundingBox(Z)V

    .line 219
    :cond_b
    sget p2, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_defaultFontFileExtension:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 220
    sget p2, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_defaultFontFileExtension:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setDefaultFontFileExtension(Ljava/lang/String;)V

    .line 223
    :cond_c
    sget p2, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_imageAssetsFolder:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setImageAssetsFolder(Ljava/lang/String;)V

    .line 225
    sget p2, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_progress:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    .line 226
    sget v3, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_progress:I

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-direct {p0, v3, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setProgressInternal(FZ)V

    .line 228
    sget p2, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_enableMergePathsForKitKatAndAbove:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->enableMergePathsForKitKatAndAbove(Z)V

    .line 230
    sget p2, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_colorFilter:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 231
    sget p2, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_colorFilter:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 232
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p2

    .line 233
    new-instance v1, Lcom/airbnb/lottie/SimpleColorFilter;

    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p2

    invoke-direct {v1, p2}, Lcom/airbnb/lottie/SimpleColorFilter;-><init>(I)V

    .line 234
    new-instance p2, Lcom/airbnb/lottie/model/KeyPath;

    const-string v3, "**"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {p2, v3}, Lcom/airbnb/lottie/model/KeyPath;-><init>([Ljava/lang/String;)V

    .line 235
    new-instance v3, Lcom/airbnb/lottie/value/LottieValueCallback;

    invoke-direct {v3, v1}, Lcom/airbnb/lottie/value/LottieValueCallback;-><init>(Ljava/lang/Object;)V

    .line 236
    sget-object v1, Lcom/airbnb/lottie/LottieProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    invoke-virtual {p0, p2, v1, v3}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    .line 239
    :cond_d
    sget p2, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_renderMode:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_f

    .line 240
    sget p2, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_renderMode:I

    sget-object v1, Lcom/airbnb/lottie/RenderMode;->AUTOMATIC:Lcom/airbnb/lottie/RenderMode;

    invoke-virtual {v1}, Lcom/airbnb/lottie/RenderMode;->ordinal()I

    move-result v1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 241
    invoke-static {}, Lcom/airbnb/lottie/RenderMode;->values()[Lcom/airbnb/lottie/RenderMode;

    move-result-object v1

    array-length v1, v1

    if-lt p2, v1, :cond_e

    .line 242
    sget-object p2, Lcom/airbnb/lottie/RenderMode;->AUTOMATIC:Lcom/airbnb/lottie/RenderMode;

    invoke-virtual {p2}, Lcom/airbnb/lottie/RenderMode;->ordinal()I

    move-result p2

    .line 244
    :cond_e
    invoke-static {}, Lcom/airbnb/lottie/RenderMode;->values()[Lcom/airbnb/lottie/RenderMode;

    move-result-object v1

    aget-object p2, v1, p2

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setRenderMode(Lcom/airbnb/lottie/RenderMode;)V

    .line 247
    :cond_f
    sget p2, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_asyncUpdates:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_11

    .line 248
    sget p2, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_asyncUpdates:I

    sget-object v1, Lcom/airbnb/lottie/AsyncUpdates;->AUTOMATIC:Lcom/airbnb/lottie/AsyncUpdates;

    invoke-virtual {v1}, Lcom/airbnb/lottie/AsyncUpdates;->ordinal()I

    move-result v1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 249
    invoke-static {}, Lcom/airbnb/lottie/RenderMode;->values()[Lcom/airbnb/lottie/RenderMode;

    move-result-object v1

    array-length v1, v1

    if-lt p2, v1, :cond_10

    .line 250
    sget-object p2, Lcom/airbnb/lottie/AsyncUpdates;->AUTOMATIC:Lcom/airbnb/lottie/AsyncUpdates;

    invoke-virtual {p2}, Lcom/airbnb/lottie/AsyncUpdates;->ordinal()I

    move-result p2

    .line 252
    :cond_10
    invoke-static {}, Lcom/airbnb/lottie/AsyncUpdates;->values()[Lcom/airbnb/lottie/AsyncUpdates;

    move-result-object v1

    aget-object p2, v1, p2

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setAsyncUpdates(Lcom/airbnb/lottie/AsyncUpdates;)V

    .line 255
    :cond_11
    sget p2, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_ignoreDisabledSystemAnimations:I

    .line 256
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 255
    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setIgnoreDisabledSystemAnimations(Z)V

    .line 262
    sget p2, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_useCompositionFrameRate:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_12

    .line 263
    sget p2, Lcom/airbnb/lottie/R$styleable;->LottieAnimationView_lottie_useCompositionFrameRate:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setUseCompositionFrameRate(Z)V

    .line 266
    :cond_12
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    iget-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 268
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/airbnb/lottie/utils/Utils;->getAnimationScale(Landroid/content/Context;)F

    move-result p0

    cmpl-float p0, p0, v4

    if-eqz p0, :cond_13

    move v2, v0

    :cond_13
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/LottieDrawable;->setSystemAnimationsAreEnabled(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic lambda$static$0(Ljava/lang/Throwable;)V
    .locals 2

    .line 70
    invoke-static {p0}, Lcom/airbnb/lottie/utils/Utils;->isNetworkException(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Unable to load composition."

    .line 71
    invoke-static {v0, p0}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 74
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to parse composition"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private setCompositionTask(Lcom/airbnb/lottie/LottieTask;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/LottieTask<",
            "Lcom/airbnb/lottie/LottieComposition;",
            ">;)V"
        }
    .end annotation

    .line 609
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieTask;->getResult()Lcom/airbnb/lottie/LottieResult;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 610
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieResult;->getValue()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->userActionsTaken:Ljava/util/Set;

    .line 613
    sget-object v1, Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;->SET_ANIMATION:Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 614
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->clearComposition()V

    .line 615
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelLoaderTask()V

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->loadedListener:Lcom/airbnb/lottie/LottieListener;

    .line 617
    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieTask;->addListener(Lcom/airbnb/lottie/LottieListener;)Lcom/airbnb/lottie/LottieTask;

    move-result-object p1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->wrappedFailureListener:Lcom/airbnb/lottie/LottieListener;

    .line 618
    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieTask;->addFailureListener(Lcom/airbnb/lottie/LottieListener;)Lcom/airbnb/lottie/LottieTask;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->compositionTask:Lcom/airbnb/lottie/LottieTask;

    return-void
.end method

.method private setLottieDrawable()V
    .locals 2

    .line 1266
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result v0

    const/4 v1, 0x0

    .line 1269
    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 1270
    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 1273
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->resumeAnimation()V

    :cond_0
    return-void
.end method

.method private setProgressInternal(FZ)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/airbnb/lottie/LottieAnimationView;->userActionsTaken:Ljava/util/Set;

    .line 1115
    sget-object v0, Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;->SET_PROGRESS:Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 1117
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setProgress(F)V

    return-void
.end method


# virtual methods
.method public addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 844
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public addAnimatorPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 857
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->addAnimatorPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    return-void
.end method

.method public addAnimatorUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 832
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->addAnimatorUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public addLottieOnCompositionLoadedListener(Lcom/airbnb/lottie/LottieOnCompositionLoadedListener;)Z
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-eqz v0, :cond_0

    .line 1252
    invoke-interface {p1, v0}, Lcom/airbnb/lottie/LottieOnCompositionLoadedListener;->onCompositionLoaded(Lcom/airbnb/lottie/LottieComposition;)V

    :cond_0
    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieOnCompositionLoadedListeners:Ljava/util/Set;

    .line 1254
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/airbnb/lottie/model/KeyPath;",
            "TT;",
            "Lcom/airbnb/lottie/value/LottieValueCallback<",
            "TT;>;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 1062
    invoke-virtual {p0, p1, p2, p3}, Lcom/airbnb/lottie/LottieDrawable;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    return-void
.end method

.method public addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/SimpleLottieValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/airbnb/lottie/model/KeyPath;",
            "TT;",
            "Lcom/airbnb/lottie/value/SimpleLottieValueCallback<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 1072
    new-instance v1, Lcom/airbnb/lottie/LottieAnimationView$1;

    invoke-direct {v1, p0, p3}, Lcom/airbnb/lottie/LottieAnimationView$1;-><init>(Lcom/airbnb/lottie/LottieAnimationView;Lcom/airbnb/lottie/value/SimpleLottieValueCallback;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/airbnb/lottie/LottieDrawable;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    return-void
.end method

.method public cancelAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->userActionsTaken:Ljava/util/Set;

    .line 1081
    sget-object v1, Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;->PLAY_OPTION:Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 1082
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->cancelAnimation()V

    return-void
.end method

.method public clearValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/airbnb/lottie/model/KeyPath;",
            "TT;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    const/4 v0, 0x0

    .line 1051
    move-object v1, v0

    check-cast v1, Lcom/airbnb/lottie/value/LottieValueCallback;

    invoke-virtual {p0, p1, p2, v0}, Lcom/airbnb/lottie/LottieDrawable;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    return-void
.end method

.method public disableExtraScaleModeInFitXY()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 1246
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->disableExtraScaleModeInFitXY()V

    return-void
.end method

.method public enableMergePathsForKitKatAndAbove(Z)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 404
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->enableMergePathsForKitKatAndAbove(Z)V

    return-void
.end method

.method public getAsyncUpdates()Lcom/airbnb/lottie/AsyncUpdates;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 1189
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getAsyncUpdates()Lcom/airbnb/lottie/AsyncUpdates;

    move-result-object p0

    return-object p0
.end method

.method public getAsyncUpdatesEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 1197
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getAsyncUpdatesEnabled()Z

    move-result p0

    return p0
.end method

.method public getClipTextToBoundingBox()Z
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 1229
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getClipTextToBoundingBox()Z

    move-result p0

    return p0
.end method

.method public getClipToCompositionBounds()Z
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 431
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getClipToCompositionBounds()Z

    move-result p0

    return p0
.end method

.method public getComposition()Lcom/airbnb/lottie/LottieComposition;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->composition:Lcom/airbnb/lottie/LottieComposition;

    return-object p0
.end method

.method public getDuration()J
    .locals 2

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->composition:Lcom/airbnb/lottie/LottieComposition;

    if-eqz p0, :cond_0

    .line 1125
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieComposition;->getDuration()F

    move-result p0

    float-to-long v0, p0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getFrame()I
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 1104
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getFrame()I

    move-result p0

    return p0
.end method

.method public getImageAssetsFolder()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 942
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getImageAssetsFolder()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMaintainOriginalImageBounds()Z
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 962
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getMaintainOriginalImageBounds()Z

    move-result p0

    return p0
.end method

.method public getMaxFrame()F
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 738
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getMaxFrame()F

    move-result p0

    return p0
.end method

.method public getMinFrame()F
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 714
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getMinFrame()F

    move-result p0

    return p0
.end method

.method public getPerformanceTracker()Lcom/airbnb/lottie/PerformanceTracker;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 1134
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getPerformanceTracker()Lcom/airbnb/lottie/PerformanceTracker;

    move-result-object p0

    return-object p0
.end method

.method public getProgress()F
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 1121
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getProgress()F

    move-result p0

    return p0
.end method

.method public getRenderMode()Lcom/airbnb/lottie/RenderMode;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 1182
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getRenderMode()Lcom/airbnb/lottie/RenderMode;

    move-result-object p0

    return-object p0
.end method

.method public getRepeatCount()I
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 915
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getRepeatCount()I

    move-result p0

    return p0
.end method

.method public getRepeatMode()I
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 892
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getRepeatMode()I

    move-result p0

    return p0
.end method

.method public getSpeed()F
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 828
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getSpeed()F

    move-result p0

    return p0
.end method

.method public hasMasks()Z
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 673
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->hasMasks()Z

    move-result p0

    return p0
.end method

.method public hasMatte()Z
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 680
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->hasMatte()Z

    move-result p0

    return p0
.end method

.method public invalidate()V
    .locals 2

    .line 296
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->invalidate()V

    .line 297
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 298
    instance-of v1, v0, Lcom/airbnb/lottie/LottieDrawable;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->getRenderMode()Lcom/airbnb/lottie/RenderMode;

    move-result-object v0

    sget-object v1, Lcom/airbnb/lottie/RenderMode;->SOFTWARE:Lcom/airbnb/lottie/RenderMode;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 304
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 309
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    if-ne v0, v1, :cond_0

    .line 312
    invoke-super {p0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 315
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public isAnimating()Z
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 919
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->isAnimating()Z

    move-result p0

    return p0
.end method

.method public isMergePathsEnabledForKitKatAndAbove()Z
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 411
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->isMergePathsEnabledForKitKatAndAbove()Z

    move-result p0

    return p0
.end method

.method synthetic lambda$fromAssets$2$com-airbnb-lottie-LottieAnimationView(Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 0
    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->cacheComposition:Z

    if-eqz v0, :cond_0

    .line 486
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromAssetSync(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromAssetSync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method synthetic lambda$fromRawRes$1$com-airbnb-lottie-LottieAnimationView(I)Lcom/airbnb/lottie/LottieResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 0
    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->cacheComposition:Z

    if-eqz v0, :cond_0

    .line 470
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromRawResSync(Landroid/content/Context;I)Lcom/airbnb/lottie/LottieResult;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromRawResSync(Landroid/content/Context;ILjava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public loop(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 870
    :goto_0
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setRepeatCount(I)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 366
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->onAttachedToWindow()V

    .line 367
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->autoPlay:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 368
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->playAnimation()V

    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 333
    instance-of v0, p1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;

    if-nez v0, :cond_0

    .line 334
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 338
    :cond_0
    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;

    .line 339
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/appcompat/widget/AppCompatImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 340
    iget-object v0, p1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->animationName:Ljava/lang/String;

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->animationName:Ljava/lang/String;

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->userActionsTaken:Ljava/util/Set;

    .line 341
    sget-object v1, Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;->SET_ANIMATION:Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->animationName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->animationName:Ljava/lang/String;

    .line 342
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 344
    :cond_1
    iget v0, p1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->animationResId:I

    iput v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->animationResId:I

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->userActionsTaken:Ljava/util/Set;

    .line 345
    sget-object v1, Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;->SET_ANIMATION:Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->animationResId:I

    if-eqz v0, :cond_2

    .line 346
    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    :cond_2
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->userActionsTaken:Ljava/util/Set;

    .line 348
    sget-object v1, Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;->SET_PROGRESS:Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 349
    iget v0, p1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->progress:F

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setProgressInternal(FZ)V

    :cond_3
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->userActionsTaken:Ljava/util/Set;

    .line 351
    sget-object v1, Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;->PLAY_OPTION:Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->isAnimating:Z

    if-eqz v0, :cond_4

    .line 352
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    :cond_4
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->userActionsTaken:Ljava/util/Set;

    .line 354
    sget-object v1, Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;->SET_IMAGE_ASSETS:Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 355
    iget-object v0, p1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->imageAssetsFolder:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setImageAssetsFolder(Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->userActionsTaken:Ljava/util/Set;

    .line 357
    sget-object v1, Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;->SET_REPEAT_MODE:Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 358
    iget v0, p1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->repeatMode:I

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatMode(I)V

    :cond_6
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->userActionsTaken:Ljava/util/Set;

    .line 360
    sget-object v1, Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;->SET_REPEAT_COUNT:Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 361
    iget p1, p1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->repeatCount:I

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    :cond_7
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 320
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 321
    new-instance v1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;

    invoke-direct {v1, v0}, Lcom/airbnb/lottie/LottieAnimationView$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->animationName:Ljava/lang/String;

    .line 322
    iput-object v0, v1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->animationName:Ljava/lang/String;

    iget v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->animationResId:I

    .line 323
    iput v0, v1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->animationResId:I

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 324
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->getProgress()F

    move-result v0

    iput v0, v1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->progress:F

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 325
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->isAnimatingOrWillAnimateOnVisible()Z

    move-result v0

    iput-boolean v0, v1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->isAnimating:Z

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 326
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->getImageAssetsFolder()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->imageAssetsFolder:Ljava/lang/String;

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 327
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->getRepeatMode()I

    move-result v0

    iput v0, v1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->repeatMode:I

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 328
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->getRepeatCount()I

    move-result p0

    iput p0, v1, Lcom/airbnb/lottie/LottieAnimationView$SavedState;->repeatCount:I

    return-object v1
.end method

.method public pauseAnimation()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->autoPlay:Z

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 1088
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->pauseAnimation()V

    return-void
.end method

.method public playAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->userActionsTaken:Ljava/util/Set;

    .line 689
    sget-object v1, Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;->PLAY_OPTION:Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 690
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->playAnimation()V

    return-void
.end method

.method public removeAllAnimatorListeners()V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 852
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->removeAllAnimatorListeners()V

    return-void
.end method

.method public removeAllLottieOnCompositionLoadedListener()V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieOnCompositionLoadedListeners:Ljava/util/Set;

    .line 1262
    invoke-interface {p0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public removeAllUpdateListeners()V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 840
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->removeAllUpdateListeners()V

    return-void
.end method

.method public removeAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 848
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->removeAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public removeAnimatorPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 862
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->removeAnimatorPauseListener(Landroid/animation/Animator$AnimatorPauseListener;)V

    return-void
.end method

.method public removeLottieOnCompositionLoadedListener(Lcom/airbnb/lottie/LottieOnCompositionLoadedListener;)Z
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieOnCompositionLoadedListeners:Ljava/util/Set;

    .line 1258
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 836
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->removeAnimatorUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/model/KeyPath;",
            ")",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/KeyPath;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 1044
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->resolveKeyPath(Lcom/airbnb/lottie/model/KeyPath;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public resumeAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->userActionsTaken:Ljava/util/Set;

    .line 699
    sget-object v1, Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;->PLAY_OPTION:Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 700
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->resumeAnimation()V

    return-void
.end method

.method public reverseAnimationSpeed()V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 814
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieDrawable;->reverseAnimationSpeed()V

    return-void
.end method

.method public setAnimation(I)V
    .locals 1

    iput p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->animationResId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->animationName:Ljava/lang/String;

    .line 463
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->fromRawRes(I)Lcom/airbnb/lottie/LottieTask;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setCompositionTask(Lcom/airbnb/lottie/LottieTask;)V

    return-void
.end method

.method public setAnimation(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 0

    .line 523
    invoke-static {p1, p2}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonInputStream(Ljava/io/InputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setCompositionTask(Lcom/airbnb/lottie/LottieTask;)V

    return-void
.end method

.method public setAnimation(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->animationName:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->animationResId:I

    .line 480
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->fromAssets(Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setCompositionTask(Lcom/airbnb/lottie/LottieTask;)V

    return-void
.end method

.method public setAnimation(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)V
    .locals 0

    .line 536
    invoke-static {p1, p2}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromZipStream(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setCompositionTask(Lcom/airbnb/lottie/LottieTask;)V

    return-void
.end method

.method public setAnimationFromJson(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 498
    invoke-virtual {p0, p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimationFromJson(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAnimationFromJson(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 507
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v0, p2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method public setAnimationFromUrl(Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->cacheComposition:Z

    if-eqz v0, :cond_0

    .line 555
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromUrl(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;

    move-result-object p1

    .line 556
    :goto_0
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setCompositionTask(Lcom/airbnb/lottie/LottieTask;)V

    return-void
.end method

.method public setAnimationFromUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 574
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;

    move-result-object p1

    .line 575
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setCompositionTask(Lcom/airbnb/lottie/LottieTask;)V

    return-void
.end method

.method public setApplyingOpacityToLayersEnabled(Z)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 1222
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setApplyingOpacityToLayersEnabled(Z)V

    return-void
.end method

.method public setAsyncUpdates(Lcom/airbnb/lottie/AsyncUpdates;)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 1206
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setAsyncUpdates(Lcom/airbnb/lottie/AsyncUpdates;)V

    return-void
.end method

.method public setCacheComposition(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->cacheComposition:Z

    return-void
.end method

.method public setClipTextToBoundingBox(Z)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 1237
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setClipTextToBoundingBox(Z)V

    return-void
.end method

.method public setClipToCompositionBounds(Z)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 422
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setClipToCompositionBounds(Z)V

    return-void
.end method

.method public setComposition(Lcom/airbnb/lottie/LottieComposition;)V
    .locals 3

    .line 634
    sget-boolean v0, Lcom/airbnb/lottie/L;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/airbnb/lottie/LottieAnimationView;->TAG:Ljava/lang/String;

    .line 635
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Set Composition \n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 637
    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/LottieDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->composition:Lcom/airbnb/lottie/LottieComposition;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->ignoreUnschedule:Z

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 641
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setComposition(Lcom/airbnb/lottie/LottieComposition;)Z

    move-result v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/airbnb/lottie/LottieAnimationView;->ignoreUnschedule:Z

    .line 643
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-nez v0, :cond_2

    .line 649
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->setLottieDrawable()V

    .line 655
    :cond_2
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->getVisibility()I

    move-result v0

    invoke-virtual {p0, p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 657
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->requestLayout()V

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieOnCompositionLoadedListeners:Ljava/util/Set;

    .line 659
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieOnCompositionLoadedListener;

    .line 660
    invoke-interface {v0, p1}, Lcom/airbnb/lottie/LottieOnCompositionLoadedListener;->onCompositionLoaded(Lcom/airbnb/lottie/LottieComposition;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public setDefaultFontFileExtension(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 1003
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setDefaultFontFileExtension(Ljava/lang/String;)V

    return-void
.end method

.method public setFailureListener(Lcom/airbnb/lottie/LottieListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/LottieListener<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->failureListener:Lcom/airbnb/lottie/LottieListener;

    return-void
.end method

.method public setFallbackResource(I)V
    .locals 0

    iput p1, p0, Lcom/airbnb/lottie/LottieAnimationView;->fallbackResource:I

    return-void
.end method

.method public setFontAssetDelegate(Lcom/airbnb/lottie/FontAssetDelegate;)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 1010
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setFontAssetDelegate(Lcom/airbnb/lottie/FontAssetDelegate;)V

    return-void
.end method

.method public setFontMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 1025
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setFontMap(Ljava/util/Map;)V

    return-void
.end method

.method public setFrame(I)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 1097
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setFrame(I)V

    return-void
.end method

.method public setIgnoreDisabledSystemAnimations(Z)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 380
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setIgnoreDisabledSystemAnimations(Z)V

    return-void
.end method

.method public setImageAssetDelegate(Lcom/airbnb/lottie/ImageAssetDelegate;)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 988
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setImageAssetDelegate(Lcom/airbnb/lottie/ImageAssetDelegate;)V

    return-void
.end method

.method public setImageAssetsFolder(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 937
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setImagesAssetsFolder(Ljava/lang/String;)V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 282
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelLoaderTask()V

    .line 283
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 277
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelLoaderTask()V

    .line 278
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    .line 272
    invoke-direct {p0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelLoaderTask()V

    .line 273
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    return-void
.end method

.method public setMaintainOriginalImageBounds(Z)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 952
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setMaintainOriginalImageBounds(Z)V

    return-void
.end method

.method public setMaxFrame(I)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 731
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setMaxFrame(I)V

    return-void
.end method

.method public setMaxFrame(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 763
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setMaxFrame(Ljava/lang/String;)V

    return-void
.end method

.method public setMaxProgress(F)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 745
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setMaxProgress(F)V

    return-void
.end method

.method public setMinAndMaxFrame(II)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 793
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/LottieDrawable;->setMinAndMaxFrame(II)V

    return-void
.end method

.method public setMinAndMaxFrame(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 773
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setMinAndMaxFrame(Ljava/lang/String;)V

    return-void
.end method

.method public setMinAndMaxFrame(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 785
    invoke-virtual {p0, p1, p2, p3}, Lcom/airbnb/lottie/LottieDrawable;->setMinAndMaxFrame(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public setMinAndMaxProgress(FF)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 803
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/LottieDrawable;->setMinAndMaxProgress(FF)V

    return-void
.end method

.method public setMinFrame(I)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 707
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setMinFrame(I)V

    return-void
.end method

.method public setMinFrame(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 754
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setMinFrame(Ljava/lang/String;)V

    return-void
.end method

.method public setMinProgress(F)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 721
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setMinProgress(F)V

    return-void
.end method

.method public setOutlineMasksAndMattes(Z)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 453
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setOutlineMasksAndMattes(Z)V

    return-void
.end method

.method public setPerformanceTrackingEnabled(Z)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 1129
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setPerformanceTrackingEnabled(Z)V

    return-void
.end method

.method public setProgress(F)V
    .locals 1

    const/4 v0, 0x1

    .line 1108
    invoke-direct {p0, p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setProgressInternal(FZ)V

    return-void
.end method

.method public setRenderMode(Lcom/airbnb/lottie/RenderMode;)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 1174
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setRenderMode(Lcom/airbnb/lottie/RenderMode;)V

    return-void
.end method

.method public setRepeatCount(I)V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->userActionsTaken:Ljava/util/Set;

    .line 904
    sget-object v1, Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;->SET_REPEAT_COUNT:Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 905
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setRepeatCount(I)V

    return-void
.end method

.method public setRepeatMode(I)V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->userActionsTaken:Ljava/util/Set;

    .line 881
    sget-object v1, Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;->SET_REPEAT_MODE:Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 882
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setRepeatMode(I)V

    return-void
.end method

.method public setSafeMode(Z)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 1154
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setSafeMode(Z)V

    return-void
.end method

.method public setSpeed(F)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 821
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setSpeed(F)V

    return-void
.end method

.method public setTextDelegate(Lcom/airbnb/lottie/TextDelegate;)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 1032
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setTextDelegate(Lcom/airbnb/lottie/TextDelegate;)V

    return-void
.end method

.method public setUseCompositionFrameRate(Z)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 393
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->setUseCompositionFrameRate(Z)V

    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->ignoreUnschedule:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    if-ne p1, v0, :cond_0

    .line 287
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieAnimationView;->ignoreUnschedule:Z

    if-nez v0, :cond_1

    .line 289
    instance-of v0, p1, Lcom/airbnb/lottie/LottieDrawable;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 290
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->pauseAnimation()V

    .line 292
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public updateBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    .line 973
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/LottieDrawable;->updateBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
