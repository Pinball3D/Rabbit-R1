.class Landroidx/constraintlayout/motion/widget/TouchResponse;
.super Ljava/lang/Object;
.source "TouchResponse.java"


# static fields
.field private static final DEBUG:Z = false

.field static final FLAG_DISABLE_POST_SCROLL:I = 0x1

.field static final FLAG_DISABLE_SCROLL:I = 0x2

.field private static final SIDE_BOTTOM:I = 0x3

.field private static final SIDE_END:I = 0x6

.field private static final SIDE_LEFT:I = 0x1

.field private static final SIDE_MIDDLE:I = 0x4

.field private static final SIDE_RIGHT:I = 0x2

.field private static final SIDE_START:I = 0x5

.field private static final SIDE_TOP:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TouchResponse"

.field private static final TOUCH_DIRECTION:[[F

.field private static final TOUCH_DOWN:I = 0x1

.field private static final TOUCH_END:I = 0x5

.field private static final TOUCH_LEFT:I = 0x2

.field private static final TOUCH_RIGHT:I = 0x3

.field private static final TOUCH_SIDES:[[F

.field private static final TOUCH_START:I = 0x4

.field private static final TOUCH_UP:I


# instance fields
.field private mAnchorDpDt:[F

.field private mDragScale:F

.field private mDragStarted:Z

.field private mDragThreshold:F

.field private mFlags:I

.field private mLastTouchX:F

.field private mLastTouchY:F

.field private mLimitBoundsTo:I

.field private mMaxAcceleration:F

.field private mMaxVelocity:F

.field private final mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

.field private mMoveWhenScrollAtTop:Z

.field private mOnTouchUp:I

.field private mTouchAnchorId:I

.field private mTouchAnchorSide:I

.field private mTouchAnchorX:F

.field private mTouchAnchorY:F

.field private mTouchDirectionX:F

.field private mTouchDirectionY:F

.field private mTouchRegionId:I

.field private mTouchSide:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v0, 0x7

    new-array v0, v0, [[F

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_1

    const/4 v4, 0x1

    aput-object v2, v0, v4

    new-array v2, v1, [F

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v2, v1, [F

    fill-array-data v2, :array_3

    const/4 v5, 0x3

    aput-object v2, v0, v5

    new-array v2, v1, [F

    fill-array-data v2, :array_4

    const/4 v6, 0x4

    aput-object v2, v0, v6

    new-array v2, v1, [F

    fill-array-data v2, :array_5

    const/4 v7, 0x5

    aput-object v2, v0, v7

    new-array v2, v1, [F

    fill-array-data v2, :array_6

    const/4 v8, 0x6

    aput-object v2, v0, v8

    sput-object v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->TOUCH_SIDES:[[F

    new-array v0, v8, [[F

    new-array v2, v1, [F

    fill-array-data v2, :array_7

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_8

    aput-object v2, v0, v4

    new-array v2, v1, [F

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    new-array v2, v1, [F

    fill-array-data v2, :array_a

    aput-object v2, v0, v5

    new-array v2, v1, [F

    fill-array-data v2, :array_b

    aput-object v2, v0, v6

    new-array v1, v1, [F

    fill-array-data v1, :array_c

    aput-object v1, v0, v7

    sput-object v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->TOUCH_DIRECTION:[[F

    return-void

    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f000000    # 0.5f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    :array_3
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x3f000000    # 0.5f
    .end array-data

    :array_6
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    :array_7
    .array-data 4
        0x0
        -0x40800000    # -1.0f
    .end array-data

    :array_8
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_9
    .array-data 4
        -0x40800000    # -1.0f
        0x0
    .end array-data

    :array_a
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_b
    .array-data 4
        -0x40800000    # -1.0f
        0x0
    .end array-data

    :array_c
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Landroidx/constraintlayout/motion/widget/MotionLayout;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorSide:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchSide:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mOnTouchUp:I

    const/4 v1, -0x1

    iput v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchRegionId:I

    iput v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLimitBoundsTo:I

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorY:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorX:F

    const/4 v1, 0x0

    iput v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    const/4 v2, 0x2

    new-array v2, v2, [F

    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    const/high16 v2, 0x40800000    # 4.0f

    iput v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMaxVelocity:F

    const v2, 0x3f99999a    # 1.2f

    iput v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMaxAcceleration:F

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMoveWhenScrollAtTop:Z

    iput v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragScale:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mFlags:I

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragThreshold:F

    iput-object p2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 103
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/motion/widget/TouchResponse;->fillFromAttributeList(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private fill(Landroid/content/res/TypedArray;)V
    .locals 6

    .line 130
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_c

    .line 132
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 133
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_touchAnchorId:I

    if-ne v3, v4, :cond_0

    iget v4, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    .line 134
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    goto/16 :goto_1

    .line 135
    :cond_0
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_touchAnchorSide:I

    const/4 v5, 0x1

    if-ne v3, v4, :cond_1

    iget v4, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorSide:I

    .line 136
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorSide:I

    sget-object v4, Landroidx/constraintlayout/motion/widget/TouchResponse;->TOUCH_SIDES:[[F

    .line 137
    aget-object v3, v4, v3

    aget v4, v3, v1

    iput v4, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorX:F

    .line 138
    aget v3, v3, v5

    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorY:F

    goto/16 :goto_1

    .line 139
    :cond_1
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_dragDirection:I

    if-ne v3, v4, :cond_2

    iget v4, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchSide:I

    .line 140
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchSide:I

    sget-object v4, Landroidx/constraintlayout/motion/widget/TouchResponse;->TOUCH_DIRECTION:[[F

    .line 141
    aget-object v3, v4, v3

    aget v4, v3, v1

    iput v4, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    .line 142
    aget v3, v3, v5

    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    goto/16 :goto_1

    .line 143
    :cond_2
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_maxVelocity:I

    if-ne v3, v4, :cond_3

    iget v4, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMaxVelocity:F

    .line 144
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMaxVelocity:F

    goto :goto_1

    .line 145
    :cond_3
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_maxAcceleration:I

    if-ne v3, v4, :cond_4

    iget v4, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMaxAcceleration:F

    .line 146
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMaxAcceleration:F

    goto :goto_1

    .line 147
    :cond_4
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_moveWhenScrollAtTop:I

    if-ne v3, v4, :cond_5

    iget-boolean v4, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMoveWhenScrollAtTop:Z

    .line 148
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMoveWhenScrollAtTop:Z

    goto :goto_1

    .line 149
    :cond_5
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_dragScale:I

    if-ne v3, v4, :cond_6

    iget v4, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragScale:F

    .line 150
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragScale:F

    goto :goto_1

    .line 151
    :cond_6
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_dragThreshold:I

    if-ne v3, v4, :cond_7

    iget v4, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragThreshold:F

    .line 152
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragThreshold:F

    goto :goto_1

    .line 153
    :cond_7
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_touchRegionId:I

    if-ne v3, v4, :cond_8

    iget v4, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchRegionId:I

    .line 154
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchRegionId:I

    goto :goto_1

    .line 155
    :cond_8
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_onTouchUp:I

    if-ne v3, v4, :cond_9

    iget v4, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mOnTouchUp:I

    .line 156
    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mOnTouchUp:I

    goto :goto_1

    .line 157
    :cond_9
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_nestedScrollFlags:I

    if-ne v3, v4, :cond_a

    .line 158
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mFlags:I

    goto :goto_1

    .line 159
    :cond_a
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe_limitBoundsTo:I

    if-ne v3, v4, :cond_b

    .line 160
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLimitBoundsTo:I

    :cond_b
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_c
    return-void
.end method

.method private fillFromAttributeList(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 124
    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->OnSwipe:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 125
    invoke-direct {p0, p1}, Landroidx/constraintlayout/motion/widget/TouchResponse;->fill(Landroid/content/res/TypedArray;)V

    .line 126
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method dot(FF)F
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    mul-float/2addr p1, v0

    iget p0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    mul-float/2addr p2, p0

    add-float/2addr p1, p2

    return p1
.end method

.method public getAnchorId()I
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    return p0
.end method

.method public getFlags()I
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mFlags:I

    return p0
.end method

.method getLimitBoundsTo(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 2

    iget p0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLimitBoundsTo:I

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    return-object v1

    .line 525
    :cond_0
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v1

    .line 529
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p2, p1, v0, v1, p0}, Landroid/graphics/RectF;->set(FFFF)V

    return-object p2
.end method

.method getLimitBoundsToId()I
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLimitBoundsTo:I

    return p0
.end method

.method getMaxAcceleration()F
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMaxAcceleration:F

    return p0
.end method

.method public getMaxVelocity()F
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMaxVelocity:F

    return p0
.end method

.method getMoveWhenScrollAtTop()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMoveWhenScrollAtTop:Z

    return p0
.end method

.method getProgressDirection(FF)F
    .locals 7

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 327
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v3

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    iget v4, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorX:F

    iget v5, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorY:F

    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    .line 328
    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getAnchorDpDt(IFFF[F)V

    iget v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    const v3, 0x33d6bf95    # 1.0E-7f

    if-eqz v2, :cond_1

    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    const/4 p2, 0x0

    .line 331
    aget v2, p0, p2

    cmpl-float v1, v2, v1

    if-nez v1, :cond_0

    .line 332
    aput v3, p0, p2

    :cond_0
    mul-float/2addr p1, v0

    .line 334
    aget p0, p0, p2

    div-float/2addr p1, p0

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    const/4 v0, 0x1

    .line 336
    aget v2, p1, v0

    cmpl-float v1, v2, v1

    if-nez v1, :cond_2

    .line 337
    aput v3, p1, v0

    :cond_2
    iget p0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    mul-float/2addr p2, p0

    .line 339
    aget p0, p1, v0

    div-float p1, p2, p0

    :goto_0
    return p1
.end method

.method getTouchRegion(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 2

    iget p0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchRegionId:I

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    return-object v1

    .line 504
    :cond_0
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v1

    .line 508
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p2, p1, v0, v1, p0}, Landroid/graphics/RectF;->set(FFFF)V

    return-object p2
.end method

.method getTouchRegionId()I
    .locals 0

    iget p0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchRegionId:I

    return p0
.end method

.method processTouchEvent(Landroid/view/MotionEvent;Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;ILandroidx/constraintlayout/motion/widget/MotionScene;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    .line 183
    invoke-interface {v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 184
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_10

    const/4 v5, -0x1

    const/16 v6, 0x3e8

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq v3, v9, :cond_8

    const/4 v10, 0x2

    if-eq v3, v10, :cond_0

    goto/16 :goto_8

    .line 191
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget v10, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchY:F

    sub-float/2addr v3, v10

    .line 192
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v10

    iget v11, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchX:F

    sub-float/2addr v10, v11

    iget v11, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    mul-float/2addr v11, v10

    iget v12, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    mul-float/2addr v12, v3

    add-float/2addr v11, v12

    .line 198
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    iget v12, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragThreshold:F

    cmpl-float v11, v11, v12

    if-gtz v11, :cond_1

    iget-boolean v11, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    if-eqz v11, :cond_11

    :cond_1
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 202
    invoke-virtual {v11}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v11

    iget-boolean v12, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    if-nez v12, :cond_2

    iput-boolean v9, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 205
    invoke-virtual {v12, v11}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    :cond_2
    iget v13, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    if-eq v13, v5, :cond_3

    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v15, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorX:F

    iget v5, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorY:F

    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    move-object/from16 v17, v14

    move v14, v11

    move/from16 v16, v5

    .line 212
    invoke-virtual/range {v12 .. v17}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getAnchorDpDt(IFFF[F)V

    goto :goto_0

    :cond_3
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 220
    invoke-virtual {v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getWidth()I

    move-result v5

    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v12}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getHeight()I

    move-result v12

    invoke-static {v5, v12}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    iget v13, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    mul-float/2addr v13, v5

    .line 221
    aput v13, v12, v9

    iget v13, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    mul-float/2addr v5, v13

    .line 222
    aput v5, v12, v4

    :goto_0
    iget v5, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    .line 225
    aget v13, v12, v4

    mul-float/2addr v5, v13

    iget v13, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    aget v12, v12, v9

    mul-float/2addr v13, v12

    add-float/2addr v5, v13

    iget v12, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragScale:F

    mul-float/2addr v5, v12

    .line 235
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v12, v5

    const-wide v14, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v5, v12, v14

    if-gez v5, :cond_4

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    const v12, 0x3c23d70a    # 0.01f

    .line 236
    aput v12, v5, v4

    .line 237
    aput v12, v5, v9

    :cond_4
    iget v5, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    cmpl-float v5, v5, v8

    if-eqz v5, :cond_5

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    .line 242
    aget v3, v3, v4

    div-float/2addr v10, v3

    goto :goto_1

    :cond_5
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    .line 244
    aget v5, v5, v9

    div-float v10, v3, v5

    :goto_1
    add-float/2addr v11, v10

    .line 249
    invoke-static {v11, v7}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v3, v8}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 251
    invoke-virtual {v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v5

    cmpl-float v5, v3, v5

    if-eqz v5, :cond_7

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 252
    invoke-virtual {v5, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    .line 256
    invoke-interface {v1, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;->computeCurrentVelocity(I)V

    .line 257
    invoke-interface/range {p2 .. p2}, Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;->getXVelocity()F

    move-result v3

    .line 258
    invoke-interface/range {p2 .. p2}, Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;->getYVelocity()F

    move-result v1

    iget v5, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    cmpl-float v5, v5, v8

    if-eqz v5, :cond_6

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    .line 259
    aget v1, v1, v4

    div-float/2addr v3, v1

    goto :goto_2

    :cond_6
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    aget v3, v3, v9

    div-float v3, v1, v3

    :goto_2
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 260
    iput v3, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    goto :goto_3

    :cond_7
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 262
    iput v8, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->mLastVelocity:F

    .line 264
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchX:F

    .line 265
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchY:F

    goto/16 :goto_8

    :cond_8
    iput-boolean v4, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    .line 270
    invoke-interface {v1, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;->computeCurrentVelocity(I)V

    .line 271
    invoke-interface/range {p2 .. p2}, Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;->getXVelocity()F

    move-result v2

    .line 272
    invoke-interface/range {p2 .. p2}, Landroidx/constraintlayout/motion/widget/MotionLayout$MotionTracker;->getYVelocity()F

    move-result v1

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 273
    invoke-virtual {v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v3

    iget v11, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    if-eq v11, v5, :cond_9

    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v13, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorX:F

    iget v14, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorY:F

    iget-object v15, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    move v12, v3

    .line 280
    invoke-virtual/range {v10 .. v15}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getAnchorDpDt(IFFF[F)V

    goto :goto_4

    :cond_9
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 282
    invoke-virtual {v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getWidth()I

    move-result v5

    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    iget v10, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    mul-float/2addr v10, v5

    .line 283
    aput v10, v6, v9

    iget v10, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    mul-float/2addr v5, v10

    .line 284
    aput v5, v6, v4

    :goto_4
    iget v5, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    .line 286
    aget v4, v6, v4

    aget v6, v6, v9

    cmpl-float v5, v5, v8

    if-eqz v5, :cond_a

    div-float/2addr v2, v4

    goto :goto_5

    :cond_a
    div-float v2, v1, v6

    .line 299
    :goto_5
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_b

    const/high16 v1, 0x40400000    # 3.0f

    div-float v1, v2, v1

    add-float/2addr v1, v3

    goto :goto_6

    :cond_b
    move v1, v3

    :goto_6
    cmpl-float v4, v1, v8

    if-eqz v4, :cond_e

    cmpl-float v4, v1, v7

    if-eqz v4, :cond_e

    iget v4, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mOnTouchUp:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_e

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    float-to-double v9, v1

    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    cmpg-double v1, v9, v11

    if-gez v1, :cond_c

    move v1, v8

    goto :goto_7

    :cond_c
    move v1, v7

    .line 303
    :goto_7
    invoke-virtual {v5, v4, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->touchAnimateTo(IFF)V

    cmpl-float v1, v8, v3

    if-gez v1, :cond_d

    cmpg-float v1, v7, v3

    if-gtz v1, :cond_11

    :cond_d
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 305
    sget-object v1, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    goto :goto_8

    :cond_e
    cmpl-float v2, v8, v1

    if-gez v2, :cond_f

    cmpg-float v1, v7, v1

    if-gtz v1, :cond_11

    :cond_f
    iget-object v0, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 308
    sget-object v1, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;)V

    goto :goto_8

    .line 186
    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchX:F

    .line 187
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchY:F

    iput-boolean v4, v0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    :cond_11
    :goto_8
    return-void
.end method

.method scrollMove(FF)V
    .locals 8

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 368
    invoke-virtual {v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v0

    iget-boolean v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    const/4 v7, 0x1

    if-nez v1, :cond_0

    iput-boolean v7, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 371
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    iget v4, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorX:F

    iget v5, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorY:F

    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    move v3, v0

    .line 373
    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getAnchorDpDt(IFFF[F)V

    iget v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    const/4 v3, 0x0

    .line 374
    aget v4, v2, v3

    mul-float/2addr v1, v4

    iget v4, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    aget v2, v2, v7

    mul-float/2addr v4, v2

    add-float/2addr v1, v4

    .line 376
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v1, v1, v4

    if-gez v1, :cond_1

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    const v2, 0x3c23d70a    # 0.01f

    .line 377
    aput v2, v1, v3

    .line 378
    aput v2, v1, v7

    :cond_1
    iget v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    const/4 v2, 0x0

    cmpl-float v4, v1, v2

    if-eqz v4, :cond_2

    mul-float/2addr p1, v1

    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    .line 383
    aget p2, p2, v3

    div-float/2addr p1, p2

    goto :goto_0

    :cond_2
    iget p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    mul-float/2addr p2, p1

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    .line 385
    aget p1, p1, v7

    div-float p1, p2, p1

    :goto_0
    add-float/2addr v0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    .line 387
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {p1, v2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget-object p2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 389
    invoke-virtual {p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result p2

    cmpl-float p2, p1, p2

    if-eqz p2, :cond_3

    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 390
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setProgress(F)V

    :cond_3
    return-void
.end method

.method scrollUp(FF)V
    .locals 9

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 347
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getProgress()F

    move-result v1

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    iget v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    iget v5, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorX:F

    iget v6, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorY:F

    iget-object v7, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    move v4, v1

    .line 348
    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getAnchorDpDt(IFFF[F)V

    iget v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mAnchorDpDt:[F

    .line 349
    aget v4, v3, v0

    iget v5, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    const/4 v6, 0x1

    aget v3, v3, v6

    const/4 v7, 0x0

    cmpl-float v8, v2, v7

    if-eqz v8, :cond_0

    mul-float/2addr p1, v2

    div-float/2addr p1, v4

    goto :goto_0

    :cond_0
    mul-float/2addr p2, v5

    div-float p1, p2, v3

    .line 356
    :goto_0
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p2

    if-nez p2, :cond_1

    const/high16 p2, 0x40400000    # 3.0f

    div-float p2, p1, p2

    add-float/2addr v1, p2

    :cond_1
    cmpl-float p2, v1, v7

    if-eqz p2, :cond_5

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float v2, v1, p2

    if-eqz v2, :cond_2

    move v2, v6

    goto :goto_1

    :cond_2
    move v2, v0

    :goto_1
    iget v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mOnTouchUp:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    move v0, v6

    :cond_3
    and-int/2addr v0, v2

    if-eqz v0, :cond_5

    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    float-to-double v0, v1

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v0, v4

    if-gez v0, :cond_4

    goto :goto_2

    :cond_4
    move v7, p2

    .line 360
    :goto_2
    invoke-virtual {p0, v3, v7, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->touchAnimateTo(IFF)V

    :cond_5
    return-void
.end method

.method public setAnchorId(I)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    return-void
.end method

.method setDown(FF)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchX:F

    iput p2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchY:F

    return-void
.end method

.method public setMaxAcceleration(F)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMaxAcceleration:F

    return-void
.end method

.method public setMaxVelocity(F)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMaxVelocity:F

    return-void
.end method

.method public setRTL(Z)V
    .locals 7

    const/4 v0, 0x6

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x5

    const/4 v5, 0x2

    if-eqz p1, :cond_0

    sget-object p1, Landroidx/constraintlayout/motion/widget/TouchResponse;->TOUCH_DIRECTION:[[F

    .line 108
    aget-object v1, p1, v1

    aput-object v1, p1, v2

    .line 109
    aget-object v1, p1, v5

    aput-object v1, p1, v4

    sget-object p1, Landroidx/constraintlayout/motion/widget/TouchResponse;->TOUCH_SIDES:[[F

    .line 110
    aget-object v1, p1, v5

    aput-object v1, p1, v4

    .line 111
    aget-object v1, p1, v3

    aput-object v1, p1, v0

    goto :goto_0

    :cond_0
    sget-object p1, Landroidx/constraintlayout/motion/widget/TouchResponse;->TOUCH_DIRECTION:[[F

    .line 113
    aget-object v6, p1, v5

    aput-object v6, p1, v2

    .line 114
    aget-object v1, p1, v1

    aput-object v1, p1, v4

    sget-object p1, Landroidx/constraintlayout/motion/widget/TouchResponse;->TOUCH_SIDES:[[F

    .line 115
    aget-object v1, p1, v3

    aput-object v1, p1, v4

    .line 116
    aget-object v1, p1, v5

    aput-object v1, p1, v0

    :goto_0
    sget-object p1, Landroidx/constraintlayout/motion/widget/TouchResponse;->TOUCH_SIDES:[[F

    iget v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorSide:I

    .line 118
    aget-object p1, p1, v0

    const/4 v0, 0x0

    aget v1, p1, v0

    iput v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorX:F

    .line 119
    aget p1, p1, v3

    iput p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorY:F

    sget-object p1, Landroidx/constraintlayout/motion/widget/TouchResponse;->TOUCH_DIRECTION:[[F

    iget v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchSide:I

    .line 120
    aget-object p1, p1, v1

    aget v0, p1, v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    .line 121
    aget p1, p1, v3

    iput p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    return-void
.end method

.method public setTouchAnchorLocation(FF)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorX:F

    iput p2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorY:F

    return-void
.end method

.method setUpTouchEvent(FF)V
    .locals 0

    iput p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchX:F

    iput p2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mLastTouchY:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mDragStarted:Z

    return-void
.end method

.method setupTouch()V
    .locals 4

    iget v0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    .line 403
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 405
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cannot find TouchAnchorId @id/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mMotionLayout:Landroidx/constraintlayout/motion/widget/MotionLayout;

    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchAnchorId:I

    invoke-static {v2, v3}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TouchResponse"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 408
    :cond_1
    :goto_0
    instance-of v1, v0, Landroidx/core/widget/NestedScrollView;

    if-eqz v1, :cond_2

    .line 409
    check-cast v0, Landroidx/core/widget/NestedScrollView;

    .line 410
    new-instance v1, Landroidx/constraintlayout/motion/widget/TouchResponse$1;

    invoke-direct {v1, p0}, Landroidx/constraintlayout/motion/widget/TouchResponse$1;-><init>(Landroidx/constraintlayout/motion/widget/TouchResponse;)V

    invoke-virtual {v0, v1}, Landroidx/core/widget/NestedScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 416
    new-instance v1, Landroidx/constraintlayout/motion/widget/TouchResponse$2;

    invoke-direct {v1, p0}, Landroidx/constraintlayout/motion/widget/TouchResponse$2;-><init>(Landroidx/constraintlayout/motion/widget/TouchResponse;)V

    invoke-virtual {v0, v1}, Landroidx/core/widget/NestedScrollView;->setOnScrollChangeListener(Landroidx/core/widget/NestedScrollView$OnScrollChangeListener;)V

    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Landroidx/constraintlayout/motion/widget/TouchResponse;->mTouchDirectionY:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
