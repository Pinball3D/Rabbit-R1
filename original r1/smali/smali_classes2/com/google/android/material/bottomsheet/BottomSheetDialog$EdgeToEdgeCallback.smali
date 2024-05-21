.class Lcom/google/android/material/bottomsheet/BottomSheetDialog$EdgeToEdgeCallback;
.super Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;
.source "BottomSheetDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/bottomsheet/BottomSheetDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EdgeToEdgeCallback"
.end annotation


# instance fields
.field private final insetsCompat:Landroidx/core/view/WindowInsetsCompat;

.field private final lightBottomSheet:Ljava/lang/Boolean;

.field private lightStatusBar:Z

.field private window:Landroid/view/Window;


# direct methods
.method private constructor <init>(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)V
    .locals 0

    .line 454
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;-><init>()V

    iput-object p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog$EdgeToEdgeCallback;->insetsCompat:Landroidx/core/view/WindowInsetsCompat;

    .line 460
    invoke-static {p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->from(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getMaterialShapeDrawable()Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 462
    invoke-virtual {p2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getFillColor()Landroid/content/res/ColorStateList;

    move-result-object p2

    goto :goto_0

    .line 464
    :cond_0
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_1

    .line 469
    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/material/color/MaterialColors;->isColorLight(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog$EdgeToEdgeCallback;->lightBottomSheet:Ljava/lang/Boolean;

    goto :goto_1

    .line 471
    :cond_1
    invoke-static {p1}, Lcom/google/android/material/internal/ViewUtils;->getBackgroundColor(Landroid/view/View;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 474
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/material/color/MaterialColors;->isColorLight(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog$EdgeToEdgeCallback;->lightBottomSheet:Ljava/lang/Boolean;

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog$EdgeToEdgeCallback;->lightBottomSheet:Ljava/lang/Boolean;

    :goto_1
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;Lcom/google/android/material/bottomsheet/BottomSheetDialog$1;)V
    .locals 0

    .line 445
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/bottomsheet/BottomSheetDialog$EdgeToEdgeCallback;-><init>(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)V

    return-void
.end method

.method private setPaddingForPosition(Landroid/view/View;)V
    .locals 3

    .line 510
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog$EdgeToEdgeCallback;->insetsCompat:Landroidx/core/view/WindowInsetsCompat;

    invoke-virtual {v1}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog$EdgeToEdgeCallback;->window:Landroid/view/Window;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog$EdgeToEdgeCallback;->lightBottomSheet:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog$EdgeToEdgeCallback;->lightStatusBar:Z

    goto :goto_0

    .line 515
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 514
    :goto_0
    invoke-static {v0, v1}, Lcom/google/android/material/internal/EdgeToEdgeUtils;->setLightStatusBar(Landroid/view/Window;Z)V

    .line 519
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iget-object p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog$EdgeToEdgeCallback;->insetsCompat:Landroidx/core/view/WindowInsetsCompat;

    .line 520
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr p0, v1

    .line 521
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    .line 522
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    .line 518
    invoke-virtual {p1, v0, p0, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    .line 523
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog$EdgeToEdgeCallback;->window:Landroid/view/Window;

    if-eqz v0, :cond_3

    iget-boolean p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog$EdgeToEdgeCallback;->lightStatusBar:Z

    .line 527
    invoke-static {v0, p0}, Lcom/google/android/material/internal/EdgeToEdgeUtils;->setLightStatusBar(Landroid/view/Window;Z)V

    .line 530
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p0

    .line 532
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    .line 533
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    const/4 v2, 0x0

    .line 529
    invoke-virtual {p1, p0, v2, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method onLayout(Landroid/view/View;)V
    .locals 0

    .line 494
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog$EdgeToEdgeCallback;->setPaddingForPosition(Landroid/view/View;)V

    return-void
.end method

.method public onSlide(Landroid/view/View;F)V
    .locals 0

    .line 489
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog$EdgeToEdgeCallback;->setPaddingForPosition(Landroid/view/View;)V

    return-void
.end method

.method public onStateChanged(Landroid/view/View;I)V
    .locals 0

    .line 484
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog$EdgeToEdgeCallback;->setPaddingForPosition(Landroid/view/View;)V

    return-void
.end method

.method setWindow(Landroid/view/Window;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog$EdgeToEdgeCallback;->window:Landroid/view/Window;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog$EdgeToEdgeCallback;->window:Landroid/view/Window;

    if-eqz p1, :cond_1

    .line 504
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {p1, v0}, Landroidx/core/view/WindowCompat;->getInsetsController(Landroid/view/Window;Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;

    move-result-object p1

    .line 505
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsControllerCompat;->isAppearanceLightStatusBars()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetDialog$EdgeToEdgeCallback;->lightStatusBar:Z

    :cond_1
    return-void
.end method
