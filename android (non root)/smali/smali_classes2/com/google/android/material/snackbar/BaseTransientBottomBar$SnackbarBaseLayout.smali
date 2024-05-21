.class public Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;
.super Landroid/widget/FrameLayout;
.source "BaseTransientBottomBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/snackbar/BaseTransientBottomBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SnackbarBaseLayout"
.end annotation


# static fields
.field private static final consumeAllTouchListener:Landroid/view/View$OnTouchListener;


# instance fields
.field private final actionTextColorAlpha:F

.field private addingToTargetParent:Z

.field private animationMode:I

.field private final backgroundOverlayColorAlpha:F

.field private backgroundTint:Landroid/content/res/ColorStateList;

.field private backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

.field private baseTransientBottomBar:Lcom/google/android/material/snackbar/BaseTransientBottomBar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/snackbar/BaseTransientBottomBar<",
            "*>;"
        }
    .end annotation
.end field

.field private final maxInlineActionWidth:I

.field private final maxWidth:I

.field private originalMargins:Landroid/graphics/Rect;

.field shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1155
    new-instance v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout$1;

    invoke-direct {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout$1;-><init>()V

    sput-object v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->consumeAllTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1179
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v0, 0x0

    .line 1183
    invoke-static {p1, p2, v0, v0}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1186
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 1187
    sget-object v1, Lcom/google/android/material/R$styleable;->SnackbarLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1188
    sget v2, Lcom/google/android/material/R$styleable;->SnackbarLayout_elevation:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1189
    sget v2, Lcom/google/android/material/R$styleable;->SnackbarLayout_elevation:I

    .line 1190
    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v2, v2

    .line 1189
    invoke-static {p0, v2}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 1192
    :cond_0
    sget v2, Lcom/google/android/material/R$styleable;->SnackbarLayout_animationMode:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->animationMode:I

    .line 1193
    sget v2, Lcom/google/android/material/R$styleable;->SnackbarLayout_shapeAppearance:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-nez v2, :cond_1

    sget v2, Lcom/google/android/material/R$styleable;->SnackbarLayout_shapeAppearanceOverlay:I

    .line 1194
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1196
    :cond_1
    invoke-static {p1, p2, v0, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object p2

    .line 1198
    invoke-virtual {p2}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 1200
    :cond_2
    sget p2, Lcom/google/android/material/R$styleable;->SnackbarLayout_backgroundOverlayColorAlpha:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1201
    invoke-virtual {v1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->backgroundOverlayColorAlpha:F

    .line 1202
    sget p2, Lcom/google/android/material/R$styleable;->SnackbarLayout_backgroundTint:I

    .line 1203
    invoke-static {p1, v1, p2}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 1202
    invoke-virtual {p0, p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 1205
    sget p1, Lcom/google/android/material/R$styleable;->SnackbarLayout_backgroundTintMode:I

    const/4 p2, -0x1

    .line 1207
    invoke-virtual {v1, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 1206
    invoke-static {p1, v2}, Lcom/google/android/material/internal/ViewUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    .line 1205
    invoke-virtual {p0, p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 1208
    sget p1, Lcom/google/android/material/R$styleable;->SnackbarLayout_actionTextColorAlpha:I

    invoke-virtual {v1, p1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    iput p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->actionTextColorAlpha:F

    .line 1209
    sget p1, Lcom/google/android/material/R$styleable;->SnackbarLayout_android_maxWidth:I

    invoke-virtual {v1, p1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->maxWidth:I

    .line 1210
    sget p1, Lcom/google/android/material/R$styleable;->SnackbarLayout_maxActionInlineWidth:I

    .line 1211
    invoke-virtual {v1, p1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->maxInlineActionWidth:I

    .line 1212
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    sget-object p1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->consumeAllTouchListener:Landroid/view/View$OnTouchListener;

    .line 1214
    invoke-virtual {p0, p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 p1, 0x1

    .line 1215
    invoke-virtual {p0, p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->setFocusable(Z)V

    .line 1217
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_3

    .line 1218
    invoke-direct {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->createThemedBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;)Landroid/graphics/Rect;
    .locals 0

    .line 1154
    iget-object p0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->originalMargins:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$500(Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V
    .locals 0

    .line 1154
    invoke-direct {p0, p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->setBaseTransientBottomBar(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    return-void
.end method

.method private createThemedBackground()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1359
    sget v0, Lcom/google/android/material/R$attr;->colorSurface:I

    sget v1, Lcom/google/android/material/R$attr;->colorOnSurface:I

    .line 1361
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getBackgroundOverlayColorAlpha()F

    move-result v2

    .line 1360
    invoke-static {p0, v0, v1, v2}, Lcom/google/android/material/color/MaterialColors;->layer(Landroid/view/View;IIF)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    if-eqz v1, :cond_0

    .line 1366
    invoke-static {v0, v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->access$1900(ILcom/google/android/material/shape/ShapeAppearanceModel;)Lcom/google/android/material/shape/MaterialShapeDrawable;

    move-result-object v0

    goto :goto_0

    .line 1367
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->access$2000(ILandroid/content/res/Resources;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->backgroundTint:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_1

    .line 1369
    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->backgroundTint:Landroid/content/res/ColorStateList;

    .line 1370
    invoke-static {v0, p0}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    return-object v0

    .line 1373
    :cond_1
    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private setBaseTransientBottomBar(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/snackbar/BaseTransientBottomBar<",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->baseTransientBottomBar:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    return-void
.end method

.method private updateOriginalMargins(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 4

    .line 1353
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-direct {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->originalMargins:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method addToTargetParent(Landroid/view/ViewGroup;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->addingToTargetParent:Z

    .line 1344
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->addingToTargetParent:Z

    return-void
.end method

.method getActionTextColorAlpha()F
    .locals 0

    iget p0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->actionTextColorAlpha:F

    return p0
.end method

.method getAnimationMode()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->animationMode:I

    return p0
.end method

.method getBackgroundOverlayColorAlpha()F
    .locals 0

    iget p0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->backgroundOverlayColorAlpha:F

    return p0
.end method

.method getMaxInlineActionWidth()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->maxInlineActionWidth:I

    return p0
.end method

.method getMaxWidth()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->maxWidth:I

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1288
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->baseTransientBottomBar:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    if-eqz v0, :cond_0

    .line 1290
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->onAttachedToWindow()V

    .line 1292
    :cond_0
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 1297
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object p0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->baseTransientBottomBar:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    if-eqz p0, :cond_0

    .line 1299
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->onDetachedFromWindow()V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1280
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-object p0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->baseTransientBottomBar:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    if-eqz p0, :cond_0

    .line 1282
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->onLayoutChange()V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 1271
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    iget p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->maxWidth:I

    if-lez p1, :cond_0

    .line 1272
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getMeasuredWidth()I

    move-result p1

    iget v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->maxWidth:I

    if-le p1, v0, :cond_0

    const/high16 p1, 0x40000000    # 2.0f

    .line 1273
    invoke-static {v0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 1274
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :cond_0
    return-void
.end method

.method setAnimationMode(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->animationMode:I

    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1224
    invoke-virtual {p0, p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->backgroundTint:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    .line 1230
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->backgroundTint:Landroid/content/res/ColorStateList;

    .line 1231
    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 1232
    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 1234
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->backgroundTint:Landroid/content/res/ColorStateList;

    .line 1240
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1241
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1242
    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    iget-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 1243
    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 1244
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eq v0, p1, :cond_0

    .line 1245
    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->backgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 1253
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1254
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1255
    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 1256
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eq v0, p1, :cond_0

    .line 1257
    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 1305
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->addingToTargetParent:Z

    if-nez v0, :cond_0

    .line 1306
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    .line 1310
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->updateOriginalMargins(Landroid/view/ViewGroup$MarginLayoutParams;)V

    iget-object p0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->baseTransientBottomBar:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    if-eqz p0, :cond_0

    .line 1312
    invoke-static {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->access$900(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->consumeAllTouchListener:Landroid/view/View$OnTouchListener;

    .line 1265
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1266
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
