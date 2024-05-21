.class public Lcom/google/android/material/textview/MaterialTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "MaterialTextView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/textview/MaterialTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010084

    .line 87
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/textview/MaterialTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 92
    invoke-static {p1, p2, p3, v0}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 93
    invoke-direct {p0, p2, p3, v0}, Lcom/google/android/material/textview/MaterialTextView;->initialize(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 104
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 105
    invoke-direct {p0, p2, p3, p4}, Lcom/google/android/material/textview/MaterialTextView;->initialize(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private applyLineHeightFromViewAppearance(Landroid/content/res/Resources$Theme;I)V
    .locals 2

    .line 134
    sget-object v0, Lcom/google/android/material/R$styleable;->MaterialTextAppearance:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 137
    invoke-virtual {p0}, Lcom/google/android/material/textview/MaterialTextView;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/google/android/material/R$styleable;->MaterialTextAppearance_android_lineHeight:I

    sget v1, Lcom/google/android/material/R$styleable;->MaterialTextAppearance_lineHeight:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    .line 136
    invoke-static {p2, p1, v0}, Lcom/google/android/material/textview/MaterialTextView;->readFirstAvailableDimension(Landroid/content/Context;Landroid/content/res/TypedArray;[I)I

    move-result p2

    .line 141
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-ltz p2, :cond_0

    .line 144
    invoke-virtual {p0, p2}, Lcom/google/android/material/textview/MaterialTextView;->setLineHeight(I)V

    :cond_0
    return-void
.end method

.method private static canApplyTextAppearanceLineHeight(Landroid/content/Context;)Z
    .locals 2

    .line 149
    sget v0, Lcom/google/android/material/R$attr;->textAppearanceLineHeightEnabled:I

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/google/android/material/resources/MaterialAttributes;->resolveBoolean(Landroid/content/Context;IZ)Z

    move-result p0

    return p0
.end method

.method private static findViewAppearanceResourceId(Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;II)I
    .locals 1

    .line 187
    sget-object v0, Lcom/google/android/material/R$styleable;->MaterialTextView:[I

    .line 188
    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 190
    sget p1, Lcom/google/android/material/R$styleable;->MaterialTextView_android_textAppearance:I

    const/4 p2, -0x1

    .line 191
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    .line 192
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p1
.end method

.method private initialize(Landroid/util/AttributeSet;II)V
    .locals 2

    .line 119
    invoke-virtual {p0}, Lcom/google/android/material/textview/MaterialTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 121
    invoke-static {v0}, Lcom/google/android/material/textview/MaterialTextView;->canApplyTextAppearanceLineHeight(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 124
    invoke-static {v0, v1, p1, p2, p3}, Lcom/google/android/material/textview/MaterialTextView;->viewAttrsHasLineHeight(Landroid/content/Context;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    invoke-static {v1, p1, p2, p3}, Lcom/google/android/material/textview/MaterialTextView;->findViewAppearanceResourceId(Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;II)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    .line 127
    invoke-direct {p0, v1, p1}, Lcom/google/android/material/textview/MaterialTextView;->applyLineHeightFromViewAppearance(Landroid/content/res/Resources$Theme;I)V

    :cond_0
    return-void
.end method

.method private static varargs readFirstAvailableDimension(Landroid/content/Context;Landroid/content/res/TypedArray;[I)I
    .locals 4

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v2, v0

    .line 158
    :goto_0
    array-length v3, p2

    if-ge v1, v3, :cond_0

    if-gez v2, :cond_0

    .line 159
    aget v2, p2, v1

    invoke-static {p0, p1, v2, v0}, Lcom/google/android/material/resources/MaterialResources;->getDimensionPixelSize(Landroid/content/Context;Landroid/content/res/TypedArray;II)I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method private static viewAttrsHasLineHeight(Landroid/content/Context;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;II)Z
    .locals 1

    .line 171
    sget-object v0, Lcom/google/android/material/R$styleable;->MaterialTextView:[I

    .line 172
    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 174
    sget p2, Lcom/google/android/material/R$styleable;->MaterialTextView_android_lineHeight:I

    sget p3, Lcom/google/android/material/R$styleable;->MaterialTextView_lineHeight:I

    filled-new-array {p2, p3}, [I

    move-result-object p2

    .line 175
    invoke-static {p0, p1, p2}, Lcom/google/android/material/textview/MaterialTextView;->readFirstAvailableDimension(Landroid/content/Context;Landroid/content/res/TypedArray;[I)I

    move-result p0

    .line 180
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 1

    .line 110
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 112
    invoke-static {p1}, Lcom/google/android/material/textview/MaterialTextView;->canApplyTextAppearanceLineHeight(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/textview/MaterialTextView;->applyLineHeightFromViewAppearance(Landroid/content/res/Resources$Theme;I)V

    :cond_0
    return-void
.end method
