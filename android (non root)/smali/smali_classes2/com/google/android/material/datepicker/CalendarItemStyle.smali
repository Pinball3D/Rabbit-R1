.class final Lcom/google/android/material/datepicker/CalendarItemStyle;
.super Ljava/lang/Object;
.source "CalendarItemStyle.java"


# instance fields
.field private final backgroundColor:Landroid/content/res/ColorStateList;

.field private final insets:Landroid/graphics/Rect;

.field private final itemShape:Lcom/google/android/material/shape/ShapeAppearanceModel;

.field private final strokeColor:Landroid/content/res/ColorStateList;

.field private final strokeWidth:I

.field private final textColor:Landroid/content/res/ColorStateList;


# direct methods
.method private constructor <init>(Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;ILcom/google/android/material/shape/ShapeAppearanceModel;Landroid/graphics/Rect;)V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iget v0, p6, Landroid/graphics/Rect;->left:I

    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 69
    iget v0, p6, Landroid/graphics/Rect;->top:I

    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 70
    iget v0, p6, Landroid/graphics/Rect;->right:I

    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 71
    iget v0, p6, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkArgumentNonnegative(I)I

    iput-object p6, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->insets:Landroid/graphics/Rect;

    iput-object p2, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->textColor:Landroid/content/res/ColorStateList;

    iput-object p1, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->backgroundColor:Landroid/content/res/ColorStateList;

    iput-object p3, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->strokeColor:Landroid/content/res/ColorStateList;

    iput p4, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->strokeWidth:I

    iput-object p5, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->itemShape:Lcom/google/android/material/shape/ShapeAppearanceModel;

    return-void
.end method

.method static create(Landroid/content/Context;I)Lcom/google/android/material/datepicker/CalendarItemStyle;
    .locals 12

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "Cannot create a CalendarItemStyle with a styleResId of 0"

    .line 88
    invoke-static {v1, v2}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 91
    sget-object v1, Lcom/google/android/material/R$styleable;->MaterialCalendarItem:[I

    .line 92
    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 93
    sget v1, Lcom/google/android/material/R$styleable;->MaterialCalendarItem_android_insetLeft:I

    .line 94
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    .line 96
    sget v2, Lcom/google/android/material/R$styleable;->MaterialCalendarItem_android_insetTop:I

    .line 97
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .line 99
    sget v3, Lcom/google/android/material/R$styleable;->MaterialCalendarItem_android_insetRight:I

    .line 100
    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    .line 102
    sget v4, Lcom/google/android/material/R$styleable;->MaterialCalendarItem_android_insetBottom:I

    .line 103
    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    .line 105
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 107
    sget v1, Lcom/google/android/material/R$styleable;->MaterialCalendarItem_itemFillColor:I

    .line 108
    invoke-static {p0, p1, v1}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v6

    .line 110
    sget v1, Lcom/google/android/material/R$styleable;->MaterialCalendarItem_itemTextColor:I

    .line 111
    invoke-static {p0, p1, v1}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v7

    .line 113
    sget v1, Lcom/google/android/material/R$styleable;->MaterialCalendarItem_itemStrokeColor:I

    .line 114
    invoke-static {p0, p1, v1}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v8

    .line 116
    sget v1, Lcom/google/android/material/R$styleable;->MaterialCalendarItem_itemStrokeWidth:I

    .line 117
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    .line 119
    sget v1, Lcom/google/android/material/R$styleable;->MaterialCalendarItem_itemShapeAppearance:I

    .line 120
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 121
    sget v2, Lcom/google/android/material/R$styleable;->MaterialCalendarItem_itemShapeAppearanceOverlay:I

    .line 122
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 126
    invoke-static {p0, v1, v0}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder(Landroid/content/Context;II)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object p0

    .line 127
    invoke-virtual {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v10

    .line 129
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 131
    new-instance p0, Lcom/google/android/material/datepicker/CalendarItemStyle;

    move-object v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/google/android/material/datepicker/CalendarItemStyle;-><init>(Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;ILcom/google/android/material/shape/ShapeAppearanceModel;Landroid/graphics/Rect;)V

    return-object p0
.end method


# virtual methods
.method getBottomInset()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->insets:Landroid/graphics/Rect;

    .line 182
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    return p0
.end method

.method getLeftInset()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->insets:Landroid/graphics/Rect;

    .line 170
    iget p0, p0, Landroid/graphics/Rect;->left:I

    return p0
.end method

.method getRightInset()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->insets:Landroid/graphics/Rect;

    .line 174
    iget p0, p0, Landroid/graphics/Rect;->right:I

    return p0
.end method

.method getTopInset()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->insets:Landroid/graphics/Rect;

    .line 178
    iget p0, p0, Landroid/graphics/Rect;->top:I

    return p0
.end method

.method styleItem(Landroid/widget/TextView;)V
    .locals 1

    const/4 v0, 0x0

    .line 140
    invoke-virtual {p0, p1, v0, v0}, Lcom/google/android/material/datepicker/CalendarItemStyle;->styleItem(Landroid/widget/TextView;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method styleItem(Landroid/widget/TextView;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V
    .locals 8

    .line 151
    new-instance v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>()V

    .line 152
    new-instance v1, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {v1}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>()V

    iget-object v2, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->itemShape:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 153
    invoke-virtual {v0, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    iget-object v2, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->itemShape:Lcom/google/android/material/shape/ShapeAppearanceModel;

    .line 154
    invoke-virtual {v1, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->backgroundColor:Landroid/content/res/ColorStateList;

    .line 155
    :goto_0
    invoke-virtual {v0, p2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    iget p2, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->strokeWidth:I

    int-to-float p2, p2

    iget-object v2, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->strokeColor:Landroid/content/res/ColorStateList;

    .line 157
    invoke-virtual {v0, p2, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setStroke(FLandroid/content/res/ColorStateList;)V

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    iget-object p3, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->textColor:Landroid/content/res/ColorStateList;

    .line 158
    :goto_1
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 161
    new-instance v3, Landroid/graphics/drawable/RippleDrawable;

    iget-object p2, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->textColor:Landroid/content/res/ColorStateList;

    const/16 p3, 0x1e

    invoke-virtual {p2, p3}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-direct {v3, p2, v0, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 165
    new-instance p2, Landroid/graphics/drawable/InsetDrawable;

    iget-object p3, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->insets:Landroid/graphics/Rect;

    iget v4, p3, Landroid/graphics/Rect;->left:I

    iget-object p3, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->insets:Landroid/graphics/Rect;

    iget v5, p3, Landroid/graphics/Rect;->top:I

    iget-object p3, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->insets:Landroid/graphics/Rect;

    iget v6, p3, Landroid/graphics/Rect;->right:I

    iget-object p0, p0, Lcom/google/android/material/datepicker/CalendarItemStyle;->insets:Landroid/graphics/Rect;

    iget v7, p0, Landroid/graphics/Rect;->bottom:I

    move-object v2, p2

    invoke-direct/range {v2 .. v7}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
