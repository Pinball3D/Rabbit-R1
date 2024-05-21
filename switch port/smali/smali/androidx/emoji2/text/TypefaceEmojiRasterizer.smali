.class public Landroidx/emoji2/text/TypefaceEmojiRasterizer;
.super Ljava/lang/Object;
.source "TypefaceEmojiRasterizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/emoji2/text/TypefaceEmojiRasterizer$HasGlyph;
    }
.end annotation


# static fields
.field static final HAS_GLYPH_ABSENT:I = 0x1

.field static final HAS_GLYPH_EXISTS:I = 0x2

.field static final HAS_GLYPH_UNKNOWN:I

.field private static final sMetadataItem:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroidx/emoji2/text/flatbuffer/MetadataItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile mCache:I

.field private final mIndex:I

.field private final mMetadataRepo:Landroidx/emoji2/text/MetadataRepo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 85
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->sMetadataItem:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>(Landroidx/emoji2/text/MetadataRepo;I)V
    .locals 1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->mCache:I

    iput-object p1, p0, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->mMetadataRepo:Landroidx/emoji2/text/MetadataRepo;

    iput p2, p0, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->mIndex:I

    return-void
.end method

.method private getMetadataItem()Landroidx/emoji2/text/flatbuffer/MetadataItem;
    .locals 2

    sget-object v0, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->sMetadataItem:Ljava/lang/ThreadLocal;

    .line 149
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/emoji2/text/flatbuffer/MetadataItem;

    if-nez v1, :cond_0

    .line 151
    new-instance v1, Landroidx/emoji2/text/flatbuffer/MetadataItem;

    invoke-direct {v1}, Landroidx/emoji2/text/flatbuffer/MetadataItem;-><init>()V

    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->mMetadataRepo:Landroidx/emoji2/text/MetadataRepo;

    .line 162
    invoke-virtual {v0}, Landroidx/emoji2/text/MetadataRepo;->getMetadataList()Landroidx/emoji2/text/flatbuffer/MetadataList;

    move-result-object v0

    iget p0, p0, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->mIndex:I

    invoke-virtual {v0, v1, p0}, Landroidx/emoji2/text/flatbuffer/MetadataList;->list(Landroidx/emoji2/text/flatbuffer/MetadataItem;I)Landroidx/emoji2/text/flatbuffer/MetadataItem;

    return-object v1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;)V
    .locals 9

    iget-object v0, p0, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->mMetadataRepo:Landroidx/emoji2/text/MetadataRepo;

    .line 125
    invoke-virtual {v0}, Landroidx/emoji2/text/MetadataRepo;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    .line 126
    invoke-virtual {p4}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    .line 127
    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget v0, p0, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->mIndex:I

    mul-int/lit8 v4, v0, 0x2

    iget-object p0, p0, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->mMetadataRepo:Landroidx/emoji2/text/MetadataRepo;

    .line 133
    invoke-virtual {p0}, Landroidx/emoji2/text/MetadataRepo;->getEmojiCharArray()[C

    move-result-object v3

    const/4 v5, 0x2

    move-object v2, p1

    move v6, p2

    move v7, p3

    move-object v8, p4

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 134
    invoke-virtual {p4, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method

.method public getCodepointAt(I)I
    .locals 0

    .line 295
    invoke-direct {p0}, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->getMetadataItem()Landroidx/emoji2/text/flatbuffer/MetadataItem;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->codepoints(I)I

    move-result p0

    return p0
.end method

.method public getCodepointsLength()I
    .locals 0

    .line 302
    invoke-direct {p0}, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->getMetadataItem()Landroidx/emoji2/text/flatbuffer/MetadataItem;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->codepointsLength()I

    move-result p0

    return p0
.end method

.method public getCompatAdded()S
    .locals 0

    .line 195
    invoke-direct {p0}, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->getMetadataItem()Landroidx/emoji2/text/flatbuffer/MetadataItem;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->compatAdded()S

    move-result p0

    return p0
.end method

.method public getHasGlyph()I
    .locals 0

    iget p0, p0, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->mCache:I

    and-int/lit8 p0, p0, 0x3

    return p0
.end method

.method public getHeight()I
    .locals 0

    .line 187
    invoke-direct {p0}, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->getMetadataItem()Landroidx/emoji2/text/flatbuffer/MetadataItem;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->height()S

    move-result p0

    return p0
.end method

.method public getId()I
    .locals 0

    .line 173
    invoke-direct {p0}, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->getMetadataItem()Landroidx/emoji2/text/flatbuffer/MetadataItem;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->id()I

    move-result p0

    return p0
.end method

.method public getSdkAdded()S
    .locals 0

    .line 203
    invoke-direct {p0}, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->getMetadataItem()Landroidx/emoji2/text/flatbuffer/MetadataItem;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->sdkAdded()S

    move-result p0

    return p0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 0

    iget-object p0, p0, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->mMetadataRepo:Landroidx/emoji2/text/MetadataRepo;

    .line 142
    invoke-virtual {p0}, Landroidx/emoji2/text/MetadataRepo;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method public getWidth()I
    .locals 0

    .line 180
    invoke-direct {p0}, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->getMetadataItem()Landroidx/emoji2/text/flatbuffer/MetadataItem;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->width()S

    move-result p0

    return p0
.end method

.method public isDefaultEmoji()Z
    .locals 0

    .line 286
    invoke-direct {p0}, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->getMetadataItem()Landroidx/emoji2/text/flatbuffer/MetadataItem;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/emoji2/text/flatbuffer/MetadataItem;->emojiStyle()Z

    move-result p0

    return p0
.end method

.method public isPreferredSystemRender()Z
    .locals 0

    iget p0, p0, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->mCache:I

    and-int/lit8 p0, p0, 0x4

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public resetHasGlyphCache()V
    .locals 1

    .line 231
    invoke-virtual {p0}, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->isPreferredSystemRender()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    iput v0, p0, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->mCache:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->mCache:I

    :goto_0
    return-void
.end method

.method public setExclusion(Z)V
    .locals 1

    .line 264
    invoke-virtual {p0}, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->getHasGlyph()I

    move-result v0

    if-eqz p1, :cond_0

    or-int/lit8 p1, v0, 0x4

    iput p1, p0, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->mCache:I

    goto :goto_0

    :cond_0
    iput v0, p0, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->mCache:I

    :goto_0
    return-void
.end method

.method public setHasGlyph(Z)V
    .locals 1

    iget v0, p0, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->mCache:I

    and-int/lit8 v0, v0, 0x4

    if-eqz p1, :cond_0

    or-int/lit8 p1, v0, 0x2

    goto :goto_0

    :cond_0
    or-int/lit8 p1, v0, 0x1

    :goto_0
    iput p1, p0, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->mCache:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 309
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", id:"

    .line 310
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    invoke-virtual {p0}, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", codepoints:"

    .line 312
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    invoke-virtual {p0}, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->getCodepointsLength()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 315
    invoke-virtual {p0, v2}, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->getCodepointAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    .line 316
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 318
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
