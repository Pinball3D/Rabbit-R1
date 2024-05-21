.class public Lcom/google/android/material/progressindicator/CircularProgressIndicator;
.super Lcom/google/android/material/progressindicator/BaseProgressIndicator;
.source "CircularProgressIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/progressindicator/CircularProgressIndicator$IndicatorDirection;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/progressindicator/BaseProgressIndicator<",
        "Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEF_STYLE_RES:I

.field public static final INDICATOR_DIRECTION_CLOCKWISE:I = 0x0

.field public static final INDICATOR_DIRECTION_COUNTERCLOCKWISE:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    sget v0, Lcom/google/android/material/R$style;->Widget_MaterialComponents_CircularProgressIndicator:I

    sput v0, Lcom/google/android/material/progressindicator/CircularProgressIndicator;->DEF_STYLE_RES:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/progressindicator/CircularProgressIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 73
    sget v0, Lcom/google/android/material/R$attr;->circularProgressIndicatorStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/progressindicator/CircularProgressIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    sget v0, Lcom/google/android/material/progressindicator/CircularProgressIndicator;->DEF_STYLE_RES:I

    .line 78
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 80
    invoke-direct {p0}, Lcom/google/android/material/progressindicator/CircularProgressIndicator;->initializeDrawables()V

    return-void
.end method

.method private initializeDrawables()V
    .locals 2

    .line 93
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/CircularProgressIndicator;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/progressindicator/CircularProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    invoke-static {v0, v1}, Lcom/google/android/material/progressindicator/IndeterminateDrawable;->createCircularDrawable(Landroid/content/Context;Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;)Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/progressindicator/CircularProgressIndicator;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 94
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/CircularProgressIndicator;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/progressindicator/CircularProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    invoke-static {v0, v1}, Lcom/google/android/material/progressindicator/DeterminateDrawable;->createCircularDrawable(Landroid/content/Context;Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;)Lcom/google/android/material/progressindicator/DeterminateDrawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/progressindicator/CircularProgressIndicator;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method bridge synthetic createSpec(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;
    .locals 0

    .line 58
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/progressindicator/CircularProgressIndicator;->createSpec(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    move-result-object p0

    return-object p0
.end method

.method createSpec(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;
    .locals 0

    .line 87
    new-instance p0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object p0
.end method

.method public getIndicatorDirection()I
    .locals 0

    .line 179
    iget-object p0, p0, Lcom/google/android/material/progressindicator/CircularProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast p0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget p0, p0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->indicatorDirection:I

    return p0
.end method

.method public getIndicatorInset()I
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/google/android/material/progressindicator/CircularProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast p0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget p0, p0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->indicatorInset:I

    return p0
.end method

.method public getIndicatorSize()I
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/google/android/material/progressindicator/CircularProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast p0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget p0, p0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->indicatorSize:I

    return p0
.end method

.method public setIndicatorDirection(I)V
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/google/android/material/progressindicator/CircularProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iput p1, v0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->indicatorDirection:I

    .line 192
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/CircularProgressIndicator;->invalidate()V

    return-void
.end method

.method public setIndicatorInset(I)V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/google/android/material/progressindicator/CircularProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget v0, v0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->indicatorInset:I

    if-eq v0, p1, :cond_0

    .line 136
    iget-object v0, p0, Lcom/google/android/material/progressindicator/CircularProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iput p1, v0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->indicatorInset:I

    .line 137
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/CircularProgressIndicator;->invalidate()V

    :cond_0
    return-void
.end method

.method public setIndicatorSize(I)V
    .locals 1

    .line 162
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/CircularProgressIndicator;->getTrackThickness()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 163
    iget-object v0, p0, Lcom/google/android/material/progressindicator/CircularProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iget v0, v0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->indicatorSize:I

    if-eq v0, p1, :cond_0

    .line 164
    iget-object v0, p0, Lcom/google/android/material/progressindicator/CircularProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast v0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    iput p1, v0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->indicatorSize:I

    .line 165
    iget-object p1, p0, Lcom/google/android/material/progressindicator/CircularProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast p1, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    invoke-virtual {p1}, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->validateSpec()V

    .line 166
    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/CircularProgressIndicator;->invalidate()V

    :cond_0
    return-void
.end method

.method public setTrackThickness(I)V
    .locals 0

    .line 110
    invoke-super {p0, p1}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setTrackThickness(I)V

    .line 111
    iget-object p0, p0, Lcom/google/android/material/progressindicator/CircularProgressIndicator;->spec:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    check-cast p0, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;

    invoke-virtual {p0}, Lcom/google/android/material/progressindicator/CircularProgressIndicatorSpec;->validateSpec()V

    return-void
.end method
