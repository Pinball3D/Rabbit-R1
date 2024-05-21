.class public Lcom/google/android/material/motion/MotionUtils;
.super Ljava/lang/Object;
.source "MotionUtils.java"


# static fields
.field private static final EASING_TYPE_CUBIC_BEZIER:Ljava/lang/String; = "cubic-bezier"

.field private static final EASING_TYPE_FORMAT_END:Ljava/lang/String; = ")"

.field private static final EASING_TYPE_FORMAT_START:Ljava/lang/String; = "("

.field private static final EASING_TYPE_PATH:Ljava/lang/String; = "path"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getLegacyControlPoint([Ljava/lang/String;I)F
    .locals 2

    .line 129
    aget-object p0, p0, p1

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    const/4 p1, 0x0

    cmpg-float p1, p0, p1

    if-ltz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float p1, p0, p1

    if-gtz p1, :cond_0

    return p0

    .line 131
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Motion easing control point value must be between 0 and 1; instead got: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static getLegacyEasingContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 124
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 125
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 123
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getLegacyThemeInterpolator(Ljava/lang/String;)Landroid/animation/TimeInterpolator;
    .locals 4

    const-string v0, "cubic-bezier"

    .line 89
    invoke-static {p0, v0}, Lcom/google/android/material/motion/MotionUtils;->isLegacyEasingType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    invoke-static {p0, v0}, Lcom/google/android/material/motion/MotionUtils;->getLegacyEasingContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ","

    .line 91
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 92
    array-length v0, p0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 99
    invoke-static {p0, v0}, Lcom/google/android/material/motion/MotionUtils;->getLegacyControlPoint([Ljava/lang/String;I)F

    move-result v0

    const/4 v1, 0x1

    .line 100
    invoke-static {p0, v1}, Lcom/google/android/material/motion/MotionUtils;->getLegacyControlPoint([Ljava/lang/String;I)F

    move-result v1

    const/4 v2, 0x2

    .line 101
    invoke-static {p0, v2}, Lcom/google/android/material/motion/MotionUtils;->getLegacyControlPoint([Ljava/lang/String;I)F

    move-result v2

    const/4 v3, 0x3

    .line 102
    invoke-static {p0, v3}, Lcom/google/android/material/motion/MotionUtils;->getLegacyControlPoint([Ljava/lang/String;I)F

    move-result p0

    .line 103
    invoke-static {v0, v1, v2, p0}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object p0

    return-object p0

    .line 93
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Motion easing theme attribute must have 4 control points if using bezier curve format; instead got: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v0, "path"

    .line 104
    invoke-static {p0, v0}, Lcom/google/android/material/motion/MotionUtils;->isLegacyEasingType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 105
    invoke-static {p0, v0}, Lcom/google/android/material/motion/MotionUtils;->getLegacyEasingContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 106
    invoke-static {p0}, Landroidx/core/graphics/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/view/animation/PathInterpolatorCompat;->create(Landroid/graphics/Path;)Landroid/view/animation/Interpolator;

    move-result-object p0

    return-object p0

    .line 108
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid motion easing type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isLegacyEasingAttribute(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "cubic-bezier"

    .line 113
    invoke-static {p0, v0}, Lcom/google/android/material/motion/MotionUtils;->isLegacyEasingType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "path"

    .line 114
    invoke-static {p0, v0}, Lcom/google/android/material/motion/MotionUtils;->isLegacyEasingType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static isLegacyEasingType(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, ")"

    .line 119
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static resolveThemeDuration(Landroid/content/Context;II)I
    .locals 0

    .line 50
    invoke-static {p0, p1, p2}, Lcom/google/android/material/resources/MaterialAttributes;->resolveInteger(Landroid/content/Context;II)I

    move-result p0

    return p0
.end method

.method public static resolveThemeInterpolator(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;
    .locals 3

    .line 68
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p1

    if-nez p1, :cond_0

    return-object p2

    .line 73
    :cond_0
    iget p1, v0, Landroid/util/TypedValue;->type:I

    const/4 p2, 0x3

    if-ne p1, p2, :cond_2

    .line 80
    iget-object p1, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 81
    invoke-static {p1}, Lcom/google/android/material/motion/MotionUtils;->isLegacyEasingAttribute(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 82
    invoke-static {p1}, Lcom/google/android/material/motion/MotionUtils;->getLegacyThemeInterpolator(Ljava/lang/String;)Landroid/animation/TimeInterpolator;

    move-result-object p0

    return-object p0

    .line 85
    :cond_1
    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p0

    return-object p0

    .line 74
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Motion easing theme attribute must be an @interpolator resource for ?attr/motionEasing*Interpolator attributes or a string for ?attr/motionEasing* attributes."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
