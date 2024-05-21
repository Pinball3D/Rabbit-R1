.class public Lcom/google/android/material/internal/ViewUtils;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/internal/ViewUtils$RelativePadding;,
        Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;
    }
.end annotation


# static fields
.field public static final EDGE_TO_EDGE_FLAGS:I = 0x300


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addOnGlobalLayoutListener(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 421
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method public static calculateOffsetRectFromBounds(Landroid/view/View;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 140
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    aget v1, v1, v4

    new-array v0, v0, [I

    .line 145
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    aget p0, v0, v2

    aget v0, v0, v4

    sub-int/2addr v3, p0

    sub-int/2addr v1, v0

    .line 151
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    add-int/2addr p0, v3

    .line 152
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr p1, v1

    .line 154
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v3, v1, p0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public static calculateRectFromBounds(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 1

    const/4 v0, 0x0

    .line 128
    invoke-static {p0, v0}, Lcom/google/android/material/internal/ViewUtils;->calculateRectFromBounds(Landroid/view/View;I)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static calculateRectFromBounds(Landroid/view/View;I)Landroid/graphics/Rect;
    .locals 4

    .line 133
    new-instance v0, Landroid/graphics/Rect;

    .line 134
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    add-int/2addr v2, p1

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    add-int/2addr p0, p1

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public static doOnApplyWindowInsets(Landroid/view/View;Landroid/util/AttributeSet;II)V
    .locals 1

    const/4 v0, 0x0

    .line 248
    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/android/material/internal/ViewUtils;->doOnApplyWindowInsets(Landroid/view/View;Landroid/util/AttributeSet;IILcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;)V

    return-void
.end method

.method public static doOnApplyWindowInsets(Landroid/view/View;Landroid/util/AttributeSet;IILcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;)V
    .locals 2

    .line 262
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/google/android/material/R$styleable;->Insets:[I

    .line 263
    invoke-virtual {v0, p1, v1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 265
    sget p2, Lcom/google/android/material/R$styleable;->Insets_paddingBottomSystemWindowInsets:I

    const/4 p3, 0x0

    .line 266
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 267
    sget v0, Lcom/google/android/material/R$styleable;->Insets_paddingLeftSystemWindowInsets:I

    .line 268
    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 269
    sget v1, Lcom/google/android/material/R$styleable;->Insets_paddingRightSystemWindowInsets:I

    .line 270
    invoke-virtual {p1, v1, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    .line 272
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 274
    new-instance p1, Lcom/google/android/material/internal/ViewUtils$1;

    invoke-direct {p1, p2, v0, p3, p4}, Lcom/google/android/material/internal/ViewUtils$1;-><init>(ZZZLcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;)V

    invoke-static {p0, p1}, Lcom/google/android/material/internal/ViewUtils;->doOnApplyWindowInsets(Landroid/view/View;Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;)V

    return-void
.end method

.method public static doOnApplyWindowInsets(Landroid/view/View;Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;)V
    .locals 5

    .line 316
    new-instance v0, Lcom/google/android/material/internal/ViewUtils$RelativePadding;

    .line 318
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v1

    .line 319
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    .line 320
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    move-result v3

    .line 321
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/material/internal/ViewUtils$RelativePadding;-><init>(IIII)V

    .line 324
    new-instance v1, Lcom/google/android/material/internal/ViewUtils$2;

    invoke-direct {v1, p1, v0}, Lcom/google/android/material/internal/ViewUtils$2;-><init>(Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;Lcom/google/android/material/internal/ViewUtils$RelativePadding;)V

    invoke-static {p0, v1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 333
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->requestApplyInsetsWhenAttached(Landroid/view/View;)V

    return-void
.end method

.method public static dpToPx(Landroid/content/Context;I)F
    .locals 1

    .line 193
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    int-to-float p1, p1

    .line 194
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method public static getBackgroundColor(Landroid/view/View;)Ljava/lang/Integer;
    .locals 0

    .line 457
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/material/drawable/DrawableUtils;->getColorStateListOrNull(Landroid/graphics/drawable/Drawable;)Landroid/content/res/ColorStateList;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 458
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getChildren(Landroid/view/View;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 160
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 161
    check-cast p0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 162
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 163
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getContentView(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 393
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020002

    .line 394
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    if-eq v1, p0, :cond_2

    .line 403
    instance-of p0, v1, Landroid/view/ViewGroup;

    if-eqz p0, :cond_2

    .line 404
    check-cast v1, Landroid/view/ViewGroup;

    return-object v1

    :cond_2
    return-object v0
.end method

.method public static getContentViewOverlay(Landroid/view/View;)Lcom/google/android/material/internal/ViewOverlayImpl;
    .locals 0

    .line 415
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->getContentView(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->getOverlay(Landroid/view/View;)Lcom/google/android/material/internal/ViewOverlayImpl;

    move-result-object p0

    return-object p0
.end method

.method private static getInputMethodManager(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    .line 116
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    return-object p0
.end method

.method public static getOverlay(Landroid/view/View;)Lcom/google/android/material/internal/ViewOverlayImpl;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 381
    :cond_0
    new-instance v0, Lcom/google/android/material/internal/ViewOverlayApi18;

    invoke-direct {v0, p0}, Lcom/google/android/material/internal/ViewOverlayApi18;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public static getParentAbsoluteElevation(Landroid/view/View;)F
    .locals 2

    .line 363
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    const/4 v0, 0x0

    .line 364
    :goto_0
    instance-of v1, p0, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 365
    move-object v1, p0

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result v1

    add-float/2addr v0, v1

    .line 366
    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static hideKeyboard(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    .line 97
    invoke-static {p0, v0}, Lcom/google/android/material/internal/ViewUtils;->hideKeyboard(Landroid/view/View;Z)V

    return-void
.end method

.method public static hideKeyboard(Landroid/view/View;Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 102
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getWindowInsetsController(Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 104
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/core/view/WindowInsetsControllerCompat;->hide(I)V

    return-void

    .line 108
    :cond_0
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->getInputMethodManager(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 110
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_1
    return-void
.end method

.method public static isLayoutRtl(Landroid/view/View;)Z
    .locals 1

    .line 189
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$requestFocusAndShowKeyboard$0(Landroid/view/View;Z)V
    .locals 0

    .line 93
    invoke-static {p0, p1}, Lcom/google/android/material/internal/ViewUtils;->showKeyboard(Landroid/view/View;Z)V

    return-void
.end method

.method public static parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;
    .locals 1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    return-object p1

    .line 182
    :pswitch_0
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    .line 180
    :pswitch_1
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    .line 178
    :pswitch_2
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    .line 176
    :cond_0
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    .line 174
    :cond_1
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    .line 172
    :cond_2
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static removeOnGlobalLayoutListener(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 428
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/google/android/material/internal/ViewUtils;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method public static removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 0

    .line 435
    invoke-virtual {p0, p1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public static requestApplyInsetsWhenAttached(Landroid/view/View;)V
    .locals 1

    .line 338
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    goto :goto_0

    .line 343
    :cond_0
    new-instance v0, Lcom/google/android/material/internal/ViewUtils$3;

    invoke-direct {v0}, Lcom/google/android/material/internal/ViewUtils$3;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :goto_0
    return-void
.end method

.method public static requestFocusAndShowKeyboard(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    .line 87
    invoke-static {p0, v0}, Lcom/google/android/material/internal/ViewUtils;->requestFocusAndShowKeyboard(Landroid/view/View;Z)V

    return-void
.end method

.method public static requestFocusAndShowKeyboard(Landroid/view/View;Z)V
    .locals 1

    .line 92
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 93
    new-instance v0, Lcom/google/android/material/internal/ViewUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/google/android/material/internal/ViewUtils$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static setBoundsFromRect(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1

    .line 120
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setLeft(I)V

    .line 121
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setTop(I)V

    .line 122
    iget v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setRight(I)V

    .line 123
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, p1}, Landroid/view/View;->setBottom(I)V

    return-void
.end method

.method public static showKeyboard(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    .line 72
    invoke-static {p0, v0}, Lcom/google/android/material/internal/ViewUtils;->showKeyboard(Landroid/view/View;Z)V

    return-void
.end method

.method public static showKeyboard(Landroid/view/View;Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 77
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getWindowInsetsController(Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 79
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/core/view/WindowInsetsControllerCompat;->show(I)V

    return-void

    .line 83
    :cond_0
    invoke-static {p0}, Lcom/google/android/material/internal/ViewUtils;->getInputMethodManager(Landroid/view/View;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
