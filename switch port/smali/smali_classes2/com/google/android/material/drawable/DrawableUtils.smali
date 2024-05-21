.class public final Lcom/google/android/material/drawable/DrawableUtils;
.super Ljava/lang/Object;
.source "DrawableUtils.java"


# static fields
.field public static final INTRINSIC_SIZE:I = -0x1

.field private static final UNSPECIFIED_HEIGHT:I = -0x1

.field private static final UNSPECIFIED_WIDTH:I = -0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compositeTwoLayeredDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, -0x1

    .line 225
    invoke-static {p0, p1, v0, v0}, Lcom/google/android/material/drawable/DrawableUtils;->compositeTwoLayeredDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static compositeTwoLayeredDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;
    .locals 4

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    return-object p0

    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 260
    invoke-static {p0, p1}, Lcom/google/android/material/drawable/DrawableUtils;->getTopLayerIntrinsicWidth(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)I

    move-result p2

    :cond_2
    if-ne p3, v0, :cond_3

    .line 263
    invoke-static {p0, p1}, Lcom/google/android/material/drawable/DrawableUtils;->getTopLayerIntrinsicHeight(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)I

    move-result p3

    .line 268
    :cond_3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    if-gt p2, v0, :cond_4

    .line 269
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-gt p3, v0, :cond_4

    goto :goto_0

    :cond_4
    int-to-float p2, p2

    int-to-float p3, p3

    div-float/2addr p2, p3

    .line 277
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p3

    int-to-float p3, p3

    .line 278
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p3, v0

    cmpl-float p3, p2, p3

    if-ltz p3, :cond_5

    .line 282
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p3

    int-to-float v0, p3

    div-float/2addr v0, p2

    float-to-int p2, v0

    move v3, p3

    move p3, p2

    move p2, v3

    goto :goto_0

    .line 287
    :cond_5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p3

    int-to-float v0, p3

    mul-float/2addr p2, v0

    float-to-int p2, p2

    .line 294
    :goto_0
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 296
    invoke-virtual {v0, p0, p2, p3}, Landroid/graphics/drawable/LayerDrawable;->setLayerSize(III)V

    const/16 p1, 0x11

    .line 297
    invoke-virtual {v0, p0, p1}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    return-object v0
.end method

.method public static createTintableDrawableIfNeeded(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    .line 172
    invoke-static {p0, p1, p2, v0}, Lcom/google/android/material/drawable/DrawableUtils;->createTintableMutatedDrawableIfNeeded(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static createTintableMutatedDrawableIfNeeded(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    .line 188
    invoke-static {p0, p1, p2, v0}, Lcom/google/android/material/drawable/DrawableUtils;->createTintableMutatedDrawableIfNeeded(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private static createTintableMutatedDrawableIfNeeded(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Z)Landroid/graphics/drawable/Drawable;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    .line 202
    invoke-static {p0}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p2, :cond_2

    .line 204
    invoke-static {p0, p2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    .line 207
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    :cond_2
    :goto_0
    return-object p0
.end method

.method public static getCheckedState([I)[I
    .locals 3

    const/4 v0, 0x0

    .line 332
    :goto_0
    array-length v1, p0

    const v2, 0x10100a0

    if-ge v0, v1, :cond_2

    .line 333
    aget v1, p0, v0

    if-ne v1, v2, :cond_0

    return-object p0

    :cond_0
    if-nez v1, :cond_1

    .line 336
    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    .line 337
    aput v2, p0, v0

    return-object p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 341
    :cond_2
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    .line 342
    array-length p0, p0

    aput v2, v0, p0

    return-object v0
.end method

.method public static getColorStateListOrNull(Landroid/graphics/drawable/Drawable;)Landroid/content/res/ColorStateList;
    .locals 1

    .line 392
    instance-of v0, p0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_0

    .line 393
    check-cast p0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result p0

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    .line 397
    :cond_0
    instance-of v0, p0, Landroid/graphics/drawable/ColorStateListDrawable;

    if-eqz v0, :cond_1

    .line 398
    check-cast p0, Landroid/graphics/drawable/ColorStateListDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/ColorStateListDrawable;->getColorStateList()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getTopLayerIntrinsicHeight(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)I
    .locals 1

    .line 324
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 326
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    :goto_0
    return p1
.end method

.method private static getTopLayerIntrinsicWidth(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)I
    .locals 1

    .line 317
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 319
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    :goto_0
    return p1
.end method

.method public static getUncheckedState([I)[I
    .locals 6

    .line 349
    array-length v0, p0

    new-array v0, v0, [I

    .line 351
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    aget v4, p0, v2

    const v5, 0x10100a0

    if-eq v4, v5, :cond_0

    add-int/lit8 v5, v3, 0x1

    .line 353
    aput v4, v0, v3

    move v3, v5

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static parseDrawableXml(Landroid/content/Context;ILjava/lang/CharSequence;)Landroid/util/AttributeSet;
    .locals 3

    .line 124
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p0

    .line 128
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    :cond_1
    if-ne v0, v1, :cond_3

    .line 134
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 138
    invoke-static {p0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p0

    return-object p0

    .line 135
    :cond_2
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Must have a <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "> start tag"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 131
    :cond_3
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p2, "No start tag found"

    invoke-direct {p0, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 142
    new-instance p2, Landroid/content/res/Resources$NotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Can\'t load badge resource ID #0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2, p0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 145
    throw p2
.end method

.method public static setOutlineToPath(Landroid/graphics/Outline;Landroid/graphics/Path;)V
    .locals 0

    .line 362
    invoke-virtual {p0, p1}, Landroid/graphics/Outline;->setPath(Landroid/graphics/Path;)V

    return-void
.end method

.method public static setRippleDrawableRadius(Landroid/graphics/drawable/RippleDrawable;I)V
    .locals 0

    .line 152
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/RippleDrawable;->setRadius(I)V

    return-void
.end method

.method public static setTint(Landroid/graphics/drawable/Drawable;I)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 99
    invoke-static {p0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 101
    invoke-static {p0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :goto_1
    return-void
.end method

.method public static updateTintFilter(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    .line 117
    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {p1, p0, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object p1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
