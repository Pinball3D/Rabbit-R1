.class public Lcom/google/android/material/internal/TextDrawableHelper;
.super Ljava/lang/Object;
.source "TextDrawableHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/internal/TextDrawableHelper$TextDrawableDelegate;
    }
.end annotation


# instance fields
.field private delegate:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/material/internal/TextDrawableHelper$TextDrawableDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final fontCallback:Lcom/google/android/material/resources/TextAppearanceFontCallback;

.field private textAppearance:Lcom/google/android/material/resources/TextAppearance;

.field private textHeight:F

.field private final textPaint:Landroid/text/TextPaint;

.field private textSizeDirty:Z

.field private textWidth:F


# direct methods
.method public constructor <init>(Lcom/google/android/material/internal/TextDrawableHelper$TextDrawableDelegate;)V
    .locals 2

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/internal/TextDrawableHelper;->textPaint:Landroid/text/TextPaint;

    .line 43
    new-instance v0, Lcom/google/android/material/internal/TextDrawableHelper$1;

    invoke-direct {v0, p0}, Lcom/google/android/material/internal/TextDrawableHelper$1;-><init>(Lcom/google/android/material/internal/TextDrawableHelper;)V

    iput-object v0, p0, Lcom/google/android/material/internal/TextDrawableHelper;->fontCallback:Lcom/google/android/material/resources/TextAppearanceFontCallback;

    iput-boolean v1, p0, Lcom/google/android/material/internal/TextDrawableHelper;->textSizeDirty:Z

    .line 71
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/material/internal/TextDrawableHelper;->delegate:Ljava/lang/ref/WeakReference;

    .line 78
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/TextDrawableHelper;->setDelegate(Lcom/google/android/material/internal/TextDrawableHelper$TextDrawableDelegate;)V

    return-void
.end method

.method static synthetic access$002(Lcom/google/android/material/internal/TextDrawableHelper;Z)Z
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/google/android/material/internal/TextDrawableHelper;->textSizeDirty:Z

    return p1
.end method

.method static synthetic access$100(Lcom/google/android/material/internal/TextDrawableHelper;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/google/android/material/internal/TextDrawableHelper;->delegate:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private calculateTextHeight(Ljava/lang/String;)F
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/google/android/material/internal/TextDrawableHelper;->textPaint:Landroid/text/TextPaint;

    .line 138
    invoke-virtual {p0}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    return p0
.end method

.method private calculateTextWidth(Ljava/lang/CharSequence;)F
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/google/android/material/internal/TextDrawableHelper;->textPaint:Landroid/text/TextPaint;

    const/4 v0, 0x0

    .line 122
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result p0

    return p0
.end method

.method private refreshTextDimens(Ljava/lang/String;)V
    .locals 1

    .line 104
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/TextDrawableHelper;->calculateTextWidth(Ljava/lang/CharSequence;)F

    move-result v0

    iput v0, p0, Lcom/google/android/material/internal/TextDrawableHelper;->textWidth:F

    .line 105
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/TextDrawableHelper;->calculateTextHeight(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/google/android/material/internal/TextDrawableHelper;->textHeight:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/material/internal/TextDrawableHelper;->textSizeDirty:Z

    return-void
.end method


# virtual methods
.method public getTextAppearance()Lcom/google/android/material/resources/TextAppearance;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/internal/TextDrawableHelper;->textAppearance:Lcom/google/android/material/resources/TextAppearance;

    return-object p0
.end method

.method public getTextHeight(Ljava/lang/String;)F
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/internal/TextDrawableHelper;->textSizeDirty:Z

    if-nez v0, :cond_0

    iget p0, p0, Lcom/google/android/material/internal/TextDrawableHelper;->textHeight:F

    return p0

    .line 130
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/TextDrawableHelper;->refreshTextDimens(Ljava/lang/String;)V

    iget p0, p0, Lcom/google/android/material/internal/TextDrawableHelper;->textHeight:F

    return p0
.end method

.method public getTextPaint()Landroid/text/TextPaint;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/internal/TextDrawableHelper;->textPaint:Landroid/text/TextPaint;

    return-object p0
.end method

.method public getTextWidth(Ljava/lang/String;)F
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/material/internal/TextDrawableHelper;->textSizeDirty:Z

    if-nez v0, :cond_0

    iget p0, p0, Lcom/google/android/material/internal/TextDrawableHelper;->textWidth:F

    return p0

    .line 114
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/TextDrawableHelper;->refreshTextDimens(Ljava/lang/String;)V

    iget p0, p0, Lcom/google/android/material/internal/TextDrawableHelper;->textWidth:F

    return p0
.end method

.method public isTextWidthDirty()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/material/internal/TextDrawableHelper;->textSizeDirty:Z

    return p0
.end method

.method public setDelegate(Lcom/google/android/material/internal/TextDrawableHelper$TextDrawableDelegate;)V
    .locals 1

    .line 83
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/material/internal/TextDrawableHelper;->delegate:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setTextAppearance(Lcom/google/android/material/resources/TextAppearance;Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/internal/TextDrawableHelper;->textAppearance:Lcom/google/android/material/resources/TextAppearance;

    if-eq v0, p1, :cond_2

    iput-object p1, p0, Lcom/google/android/material/internal/TextDrawableHelper;->textAppearance:Lcom/google/android/material/resources/TextAppearance;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/material/internal/TextDrawableHelper;->textPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/google/android/material/internal/TextDrawableHelper;->fontCallback:Lcom/google/android/material/resources/TextAppearanceFontCallback;

    .line 162
    invoke-virtual {p1, p2, v0, v1}, Lcom/google/android/material/resources/TextAppearance;->updateMeasureState(Landroid/content/Context;Landroid/text/TextPaint;Lcom/google/android/material/resources/TextAppearanceFontCallback;)V

    iget-object v0, p0, Lcom/google/android/material/internal/TextDrawableHelper;->delegate:Ljava/lang/ref/WeakReference;

    .line 164
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/internal/TextDrawableHelper$TextDrawableDelegate;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/material/internal/TextDrawableHelper;->textPaint:Landroid/text/TextPaint;

    .line 166
    invoke-interface {v0}, Lcom/google/android/material/internal/TextDrawableHelper$TextDrawableDelegate;->getState()[I

    move-result-object v0

    iput-object v0, v1, Landroid/text/TextPaint;->drawableState:[I

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/TextDrawableHelper;->textPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/google/android/material/internal/TextDrawableHelper;->fontCallback:Lcom/google/android/material/resources/TextAppearanceFontCallback;

    .line 168
    invoke-virtual {p1, p2, v0, v1}, Lcom/google/android/material/resources/TextAppearance;->updateDrawState(Landroid/content/Context;Landroid/text/TextPaint;Lcom/google/android/material/resources/TextAppearanceFontCallback;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/material/internal/TextDrawableHelper;->textSizeDirty:Z

    :cond_1
    iget-object p0, p0, Lcom/google/android/material/internal/TextDrawableHelper;->delegate:Ljava/lang/ref/WeakReference;

    .line 172
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/internal/TextDrawableHelper$TextDrawableDelegate;

    if-eqz p0, :cond_2

    .line 174
    invoke-interface {p0}, Lcom/google/android/material/internal/TextDrawableHelper$TextDrawableDelegate;->onTextSizeChange()V

    .line 175
    invoke-interface {p0}, Lcom/google/android/material/internal/TextDrawableHelper$TextDrawableDelegate;->getState()[I

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/material/internal/TextDrawableHelper$TextDrawableDelegate;->onStateChange([I)Z

    :cond_2
    return-void
.end method

.method public setTextSizeDirty(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/internal/TextDrawableHelper;->textSizeDirty:Z

    return-void
.end method

.method public setTextWidthDirty(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/internal/TextDrawableHelper;->textSizeDirty:Z

    return-void
.end method

.method public updateTextPaintDrawState(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/internal/TextDrawableHelper;->textAppearance:Lcom/google/android/material/resources/TextAppearance;

    iget-object v1, p0, Lcom/google/android/material/internal/TextDrawableHelper;->textPaint:Landroid/text/TextPaint;

    iget-object p0, p0, Lcom/google/android/material/internal/TextDrawableHelper;->fontCallback:Lcom/google/android/material/resources/TextAppearanceFontCallback;

    .line 181
    invoke-virtual {v0, p1, v1, p0}, Lcom/google/android/material/resources/TextAppearance;->updateDrawState(Landroid/content/Context;Landroid/text/TextPaint;Lcom/google/android/material/resources/TextAppearanceFontCallback;)V

    return-void
.end method
