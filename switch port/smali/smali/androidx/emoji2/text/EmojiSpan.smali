.class public abstract Landroidx/emoji2/text/EmojiSpan;
.super Landroid/text/style/ReplacementSpan;
.source "EmojiSpan.java"


# instance fields
.field private mHeight:S

.field private final mRasterizer:Landroidx/emoji2/text/TypefaceEmojiRasterizer;

.field private mRatio:F

.field private final mTmpFontMetrics:Landroid/graphics/Paint$FontMetricsInt;

.field private mWidth:S


# direct methods
.method constructor <init>(Landroidx/emoji2/text/TypefaceEmojiRasterizer;)V
    .locals 1

    .line 73
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 41
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v0, p0, Landroidx/emoji2/text/EmojiSpan;->mTmpFontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    const/4 v0, -0x1

    iput-short v0, p0, Landroidx/emoji2/text/EmojiSpan;->mWidth:S

    iput-short v0, p0, Landroidx/emoji2/text/EmojiSpan;->mHeight:S

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/emoji2/text/EmojiSpan;->mRatio:F

    const-string v0, "rasterizer cannot be null"

    .line 74
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroidx/emoji2/text/EmojiSpan;->mRasterizer:Landroidx/emoji2/text/TypefaceEmojiRasterizer;

    return-void
.end method


# virtual methods
.method public final getHeight()I
    .locals 0

    iget-short p0, p0, Landroidx/emoji2/text/EmojiSpan;->mHeight:S

    return p0
.end method

.method public final getId()I
    .locals 0

    .line 145
    invoke-virtual {p0}, Landroidx/emoji2/text/EmojiSpan;->getTypefaceRasterizer()Landroidx/emoji2/text/TypefaceEmojiRasterizer;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->getId()I

    move-result p0

    return p0
.end method

.method final getRatio()F
    .locals 0

    iget p0, p0, Landroidx/emoji2/text/EmojiSpan;->mRatio:F

    return p0
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 0

    iget-object p2, p0, Landroidx/emoji2/text/EmojiSpan;->mTmpFontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 85
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    iget-object p1, p0, Landroidx/emoji2/text/EmojiSpan;->mTmpFontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 86
    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget-object p2, p0, Landroidx/emoji2/text/EmojiSpan;->mTmpFontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget p2, p2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x3f800000    # 1.0f

    mul-float/2addr p1, p2

    iget-object p2, p0, Landroidx/emoji2/text/EmojiSpan;->mRasterizer:Landroidx/emoji2/text/TypefaceEmojiRasterizer;

    .line 88
    invoke-virtual {p2}, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->getHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, p0, Landroidx/emoji2/text/EmojiSpan;->mRatio:F

    iget-object p1, p0, Landroidx/emoji2/text/EmojiSpan;->mRasterizer:Landroidx/emoji2/text/TypefaceEmojiRasterizer;

    .line 89
    invoke-virtual {p1}, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iget p2, p0, Landroidx/emoji2/text/EmojiSpan;->mRatio:F

    mul-float/2addr p1, p2

    float-to-int p1, p1

    int-to-short p1, p1

    iput-short p1, p0, Landroidx/emoji2/text/EmojiSpan;->mHeight:S

    iget-object p1, p0, Landroidx/emoji2/text/EmojiSpan;->mRasterizer:Landroidx/emoji2/text/TypefaceEmojiRasterizer;

    .line 90
    invoke-virtual {p1}, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->getWidth()I

    move-result p1

    int-to-float p1, p1

    iget p2, p0, Landroidx/emoji2/text/EmojiSpan;->mRatio:F

    mul-float/2addr p1, p2

    float-to-int p1, p1

    int-to-short p1, p1

    iput-short p1, p0, Landroidx/emoji2/text/EmojiSpan;->mWidth:S

    if-eqz p5, :cond_0

    iget-object p1, p0, Landroidx/emoji2/text/EmojiSpan;->mTmpFontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 93
    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget-object p1, p0, Landroidx/emoji2/text/EmojiSpan;->mTmpFontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 94
    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget-object p1, p0, Landroidx/emoji2/text/EmojiSpan;->mTmpFontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 95
    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget-object p1, p0, Landroidx/emoji2/text/EmojiSpan;->mTmpFontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 96
    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    :cond_0
    iget-short p0, p0, Landroidx/emoji2/text/EmojiSpan;->mWidth:S

    return p0
.end method

.method public final getTypefaceRasterizer()Landroidx/emoji2/text/TypefaceEmojiRasterizer;
    .locals 0

    iget-object p0, p0, Landroidx/emoji2/text/EmojiSpan;->mRasterizer:Landroidx/emoji2/text/TypefaceEmojiRasterizer;

    return-object p0
.end method

.method final getWidth()I
    .locals 0

    iget-short p0, p0, Landroidx/emoji2/text/EmojiSpan;->mWidth:S

    return p0
.end method
