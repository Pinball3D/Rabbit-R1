.class public Landroidx/constraintlayout/utils/widget/ImageFilterView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "ImageFilterView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;
    }
.end annotation


# instance fields
.field private mCrossfade:F

.field private mImageMatrix:Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

.field mLayer:Landroid/graphics/drawable/LayerDrawable;

.field mLayers:[Landroid/graphics/drawable/Drawable;

.field private mOverlay:Z

.field private mPath:Landroid/graphics/Path;

.field mRect:Landroid/graphics/RectF;

.field private mRound:F

.field private mRoundPercent:F

.field mViewOutlineProvider:Landroid/view/ViewOutlineProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 297
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    .line 284
    new-instance v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    invoke-direct {v0}, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mImageMatrix:Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mOverlay:Z

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mCrossfade:F

    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRoundPercent:F

    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRound:F

    const/4 v0, 0x0

    .line 298
    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 302
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 284
    new-instance v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    invoke-direct {v0}, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mImageMatrix:Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mOverlay:Z

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mCrossfade:F

    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRoundPercent:F

    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRound:F

    .line 303
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 307
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 284
    new-instance p3, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    invoke-direct {p3}, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;-><init>()V

    iput-object p3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mImageMatrix:Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    const/4 p3, 0x1

    iput-boolean p3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mOverlay:Z

    const/4 p3, 0x0

    iput p3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mCrossfade:F

    iput p3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRoundPercent:F

    const/high16 p3, 0x7fc00000    # Float.NaN

    iput p3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRound:F

    .line 308
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Landroidx/constraintlayout/utils/widget/ImageFilterView;)F
    .locals 0

    .line 85
    iget p0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRoundPercent:F

    return p0
.end method

.method static synthetic access$100(Landroidx/constraintlayout/utils/widget/ImageFilterView;)F
    .locals 0

    .line 85
    iget p0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRound:F

    return p0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    if-eqz p2, :cond_8

    .line 313
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->ImageFilterView:[I

    .line 314
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 315
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    .line 316
    sget v0, Landroidx/constraintlayout/widget/R$styleable;->ImageFilterView_altSrc:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p2, :cond_7

    .line 319
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 320
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ImageFilterView_crossfade:I

    const/4 v5, 0x0

    if-ne v3, v4, :cond_0

    .line 321
    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mCrossfade:F

    goto :goto_1

    .line 322
    :cond_0
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ImageFilterView_warmth:I

    if-ne v3, v4, :cond_1

    .line 323
    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-virtual {p0, v3}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->setWarmth(F)V

    goto :goto_1

    .line 324
    :cond_1
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ImageFilterView_saturation:I

    if-ne v3, v4, :cond_2

    .line 325
    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-virtual {p0, v3}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->setSaturation(F)V

    goto :goto_1

    .line 326
    :cond_2
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ImageFilterView_contrast:I

    if-ne v3, v4, :cond_3

    .line 327
    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-virtual {p0, v3}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->setContrast(F)V

    goto :goto_1

    .line 328
    :cond_3
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ImageFilterView_round:I

    if-ne v3, v4, :cond_4

    .line 329
    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    invoke-virtual {p0, v3}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->setRound(F)V

    goto :goto_1

    .line 330
    :cond_4
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ImageFilterView_roundPercent:I

    if-ne v3, v4, :cond_5

    .line 331
    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-virtual {p0, v3}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->setRoundPercent(F)V

    goto :goto_1

    .line 332
    :cond_5
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ImageFilterView_overlay:I

    if-ne v3, v4, :cond_6

    iget-boolean v4, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mOverlay:Z

    .line 333
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-direct {p0, v3}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->setOverlay(Z)V

    :cond_6
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 336
    :cond_7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v0, :cond_8

    const/4 p1, 0x2

    new-array p1, p1, [Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mLayers:[Landroid/graphics/drawable/Drawable;

    .line 340
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    aput-object p2, p1, v1

    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mLayers:[Landroid/graphics/drawable/Drawable;

    const/4 p2, 0x1

    .line 341
    aput-object v0, p1, p2

    .line 343
    new-instance p1, Landroid/graphics/drawable/LayerDrawable;

    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mLayers:[Landroid/graphics/drawable/Drawable;

    invoke-direct {p1, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mLayer:Landroid/graphics/drawable/LayerDrawable;

    .line 344
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/high16 p2, 0x437f0000    # 255.0f

    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mCrossfade:F

    mul-float/2addr v0, p2

    float-to-int p2, v0

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mLayer:Landroid/graphics/drawable/LayerDrawable;

    .line 345
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_8
    return-void
.end method

.method private setOverlay(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mOverlay:Z

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 601
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getBrightness()F
    .locals 0

    iget-object p0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mImageMatrix:Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    .line 462
    iget p0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mBrightness:F

    return p0
.end method

.method public getContrast()F
    .locals 0

    iget-object p0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mImageMatrix:Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    .line 397
    iget p0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mContrast:F

    return p0
.end method

.method public getCrossfade()F
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mCrossfade:F

    return p0
.end method

.method public getRound()F
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRound:F

    return p0
.end method

.method public getRoundPercent()F
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRoundPercent:F

    return p0
.end method

.method public getSaturation()F
    .locals 0

    iget-object p0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mImageMatrix:Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    .line 378
    iget p0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mSaturation:F

    return p0
.end method

.method public getWarmth()F
    .locals 0

    iget-object p0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mImageMatrix:Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    .line 416
    iget p0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mWarmth:F

    return p0
.end method

.method public setBrightness(F)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mImageMatrix:Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    .line 452
    iput p1, v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mBrightness:F

    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mImageMatrix:Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    .line 453
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->updateMatrix(Landroid/widget/ImageView;)V

    return-void
.end method

.method public setContrast(F)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mImageMatrix:Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    .line 387
    iput p1, v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mContrast:F

    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mImageMatrix:Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    .line 388
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->updateMatrix(Landroid/widget/ImageView;)V

    return-void
.end method

.method public setCrossfade(F)V
    .locals 3

    iput p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mCrossfade:F

    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mLayers:[Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mOverlay:Z

    const/high16 v0, 0x437f0000    # 255.0f

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mLayer:Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x0

    .line 428
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mCrossfade:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, v0

    float-to-int v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mLayer:Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x1

    .line 430
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mCrossfade:F

    mul-float/2addr v1, v0

    float-to-int v0, v1

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mLayer:Landroid/graphics/drawable/LayerDrawable;

    .line 431
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public setRound(F)V
    .locals 4

    .line 524
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRound:F

    iget p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRoundPercent:F

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRoundPercent:F

    .line 528
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->setRoundPercent(F)V

    return-void

    :cond_0
    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRound:F

    cmpl-float v0, v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iput p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRound:F

    const/4 v3, 0x0

    cmpl-float p1, p1, v3

    if-eqz p1, :cond_5

    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mPath:Landroid/graphics/Path;

    if-nez p1, :cond_2

    .line 536
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mPath:Landroid/graphics/Path;

    :cond_2
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRect:Landroid/graphics/RectF;

    if-nez p1, :cond_3

    .line 539
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRect:Landroid/graphics/RectF;

    :cond_3
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    if-nez p1, :cond_4

    .line 543
    new-instance p1, Landroidx/constraintlayout/utils/widget/ImageFilterView$2;

    invoke-direct {p1, p0}, Landroidx/constraintlayout/utils/widget/ImageFilterView$2;-><init>(Landroidx/constraintlayout/utils/widget/ImageFilterView;)V

    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    .line 551
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 553
    :cond_4
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->setClipToOutline(Z)V

    .line 555
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->getWidth()I

    move-result p1

    .line 556
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->getHeight()I

    move-result v1

    iget-object v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRect:Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float v1, v1

    .line 557
    invoke-virtual {v2, v3, v3, p1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mPath:Landroid/graphics/Path;

    .line 558
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRect:Landroid/graphics/RectF;

    iget v2, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRound:F

    .line 559
    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, v1, v2, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    goto :goto_1

    .line 562
    :cond_5
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->setClipToOutline(Z)V

    :goto_1
    if-eqz v0, :cond_6

    .line 567
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->invalidateOutline()V

    :cond_6
    return-void
.end method

.method public setRoundPercent(F)V
    .locals 5

    iget v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRoundPercent:F

    cmpl-float v0, v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRoundPercent:F

    const/4 v3, 0x0

    cmpl-float p1, p1, v3

    if-eqz p1, :cond_4

    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mPath:Landroid/graphics/Path;

    if-nez p1, :cond_1

    .line 477
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mPath:Landroid/graphics/Path;

    :cond_1
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRect:Landroid/graphics/RectF;

    if-nez p1, :cond_2

    .line 480
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRect:Landroid/graphics/RectF;

    :cond_2
    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    if-nez p1, :cond_3

    .line 484
    new-instance p1, Landroidx/constraintlayout/utils/widget/ImageFilterView$1;

    invoke-direct {p1, p0}, Landroidx/constraintlayout/utils/widget/ImageFilterView$1;-><init>(Landroidx/constraintlayout/utils/widget/ImageFilterView;)V

    iput-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    .line 493
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 495
    :cond_3
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->setClipToOutline(Z)V

    .line 498
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->getWidth()I

    move-result p1

    .line 499
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->getHeight()I

    move-result v1

    .line 500
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    iget v4, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRoundPercent:F

    mul-float/2addr v2, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    iget-object v4, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRect:Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float v1, v1

    .line 501
    invoke-virtual {v4, v3, v3, p1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mPath:Landroid/graphics/Path;

    .line 502
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mRect:Landroid/graphics/RectF;

    .line 503
    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, v1, v2, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    goto :goto_1

    .line 506
    :cond_4
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->setClipToOutline(Z)V

    :goto_1
    if-eqz v0, :cond_5

    .line 511
    invoke-virtual {p0}, Landroidx/constraintlayout/utils/widget/ImageFilterView;->invalidateOutline()V

    :cond_5
    return-void
.end method

.method public setSaturation(F)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mImageMatrix:Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    .line 368
    iput p1, v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mSaturation:F

    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mImageMatrix:Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    .line 369
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->updateMatrix(Landroid/widget/ImageView;)V

    return-void
.end method

.method public setWarmth(F)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mImageMatrix:Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    .line 406
    iput p1, v0, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->mWarmth:F

    iget-object p1, p0, Landroidx/constraintlayout/utils/widget/ImageFilterView;->mImageMatrix:Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;

    .line 407
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix;->updateMatrix(Landroid/widget/ImageView;)V

    return-void
.end method
