.class final Landroidx/emoji2/text/EmojiProcessor;
.super Ljava/lang/Object;
.source "EmojiProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/emoji2/text/EmojiProcessor$CodepointIndexFinder;,
        Landroidx/emoji2/text/EmojiProcessor$MarkExclusionCallback;,
        Landroidx/emoji2/text/EmojiProcessor$EmojiProcessCallback;,
        Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;,
        Landroidx/emoji2/text/EmojiProcessor$EmojiProcessLookupCallback;,
        Landroidx/emoji2/text/EmojiProcessor$EmojiProcessAddSpanCallback;
    }
.end annotation


# static fields
.field private static final ACTION_ADVANCE_BOTH:I = 0x1

.field private static final ACTION_ADVANCE_END:I = 0x2

.field private static final ACTION_FLUSH:I = 0x3

.field private static final MAX_LOOK_AROUND_CHARACTER:I = 0x10


# instance fields
.field private final mEmojiAsDefaultStyleExceptions:[I

.field private mGlyphChecker:Landroidx/emoji2/text/EmojiCompat$GlyphChecker;

.field private final mMetadataRepo:Landroidx/emoji2/text/MetadataRepo;

.field private final mSpanFactory:Landroidx/emoji2/text/EmojiCompat$SpanFactory;

.field private final mUseEmojiAsDefaultStyle:Z


# direct methods
.method constructor <init>(Landroidx/emoji2/text/MetadataRepo;Landroidx/emoji2/text/EmojiCompat$SpanFactory;Landroidx/emoji2/text/EmojiCompat$GlyphChecker;Z[ILjava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/emoji2/text/MetadataRepo;",
            "Landroidx/emoji2/text/EmojiCompat$SpanFactory;",
            "Landroidx/emoji2/text/EmojiCompat$GlyphChecker;",
            "Z[I",
            "Ljava/util/Set<",
            "[I>;)V"
        }
    .end annotation

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/emoji2/text/EmojiProcessor;->mSpanFactory:Landroidx/emoji2/text/EmojiCompat$SpanFactory;

    iput-object p1, p0, Landroidx/emoji2/text/EmojiProcessor;->mMetadataRepo:Landroidx/emoji2/text/MetadataRepo;

    iput-object p3, p0, Landroidx/emoji2/text/EmojiProcessor;->mGlyphChecker:Landroidx/emoji2/text/EmojiCompat$GlyphChecker;

    iput-boolean p4, p0, Landroidx/emoji2/text/EmojiProcessor;->mUseEmojiAsDefaultStyle:Z

    iput-object p5, p0, Landroidx/emoji2/text/EmojiProcessor;->mEmojiAsDefaultStyleExceptions:[I

    .line 139
    invoke-direct {p0, p6}, Landroidx/emoji2/text/EmojiProcessor;->initExclusions(Ljava/util/Set;)V

    return-void
.end method

.method private static delete(Landroid/text/Editable;Landroid/view/KeyEvent;Z)Z
    .locals 6

    .line 461
    invoke-static {p1}, Landroidx/emoji2/text/EmojiProcessor;->hasModifiers(Landroid/view/KeyEvent;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    .line 465
    :cond_0
    invoke-static {p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result p1

    .line 466
    invoke-static {p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 467
    invoke-static {p1, v1}, Landroidx/emoji2/text/EmojiProcessor;->hasInvalidSelection(II)Z

    move-result v2

    if-eqz v2, :cond_1

    return v0

    .line 471
    :cond_1
    const-class v2, Landroidx/emoji2/text/EmojiSpan;

    invoke-interface {p0, p1, v1, v2}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/emoji2/text/EmojiSpan;

    if-eqz v1, :cond_6

    .line 472
    array-length v2, v1

    if-lez v2, :cond_6

    .line 473
    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_6

    .line 475
    aget-object v4, v1, v3

    .line 476
    invoke-interface {p0, v4}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 477
    invoke-interface {p0, v4}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    if-eqz p2, :cond_2

    if-eq v5, p1, :cond_4

    :cond_2
    if-nez p2, :cond_3

    if-eq v4, p1, :cond_4

    :cond_3
    if-le p1, v5, :cond_5

    if-ge p1, v4, :cond_5

    .line 481
    :cond_4
    invoke-interface {p0, v5, v4}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    const/4 p0, 0x1

    return p0

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    return v0
.end method

.method static handleDeleteSurroundingText(Landroid/view/inputmethod/InputConnection;Landroid/text/Editable;IIZ)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    if-nez p0, :cond_0

    goto/16 :goto_1

    :cond_0
    if-ltz p2, :cond_7

    if-gez p3, :cond_1

    goto/16 :goto_1

    .line 518
    :cond_1
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 519
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    .line 521
    invoke-static {v1, v2}, Landroidx/emoji2/text/EmojiProcessor;->hasInvalidSelection(II)Z

    move-result v3

    if-eqz v3, :cond_2

    return v0

    :cond_2
    if-eqz p4, :cond_4

    .line 530
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 529
    invoke-static {p1, v1, p2}, Landroidx/emoji2/text/EmojiProcessor$CodepointIndexFinder;->findIndexBackward(Ljava/lang/CharSequence;II)I

    move-result p2

    .line 532
    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 531
    invoke-static {p1, v2, p3}, Landroidx/emoji2/text/EmojiProcessor$CodepointIndexFinder;->findIndexForward(Ljava/lang/CharSequence;II)I

    move-result p3

    const/4 p4, -0x1

    if-eq p2, p4, :cond_3

    if-ne p3, p4, :cond_5

    :cond_3
    return v0

    :cond_4
    sub-int/2addr v1, p2

    .line 539
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    add-int/2addr v2, p3

    .line 540
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p3

    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 543
    :cond_5
    const-class p4, Landroidx/emoji2/text/EmojiSpan;

    invoke-interface {p1, p2, p3, p4}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [Landroidx/emoji2/text/EmojiSpan;

    if-eqz p4, :cond_7

    .line 544
    array-length v1, p4

    if-lez v1, :cond_7

    .line 545
    array-length v1, p4

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_6

    .line 547
    aget-object v3, p4, v2

    .line 548
    invoke-interface {p1, v3}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 549
    invoke-interface {p1, v3}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    .line 550
    invoke-static {v4, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 551
    invoke-static {v3, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 554
    :cond_6
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 555
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p4

    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 557
    invoke-interface {p0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 558
    invoke-interface {p1, p2, p3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 559
    invoke-interface {p0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    const/4 p0, 0x1

    return p0

    :cond_7
    :goto_1
    return v0
.end method

.method static handleOnKeyDown(Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/16 v0, 0x43

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1

    const/16 v0, 0x70

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 444
    :cond_0
    invoke-static {p0, p2, v1}, Landroidx/emoji2/text/EmojiProcessor;->delete(Landroid/text/Editable;Landroid/view/KeyEvent;Z)Z

    move-result p1

    goto :goto_0

    .line 441
    :cond_1
    invoke-static {p0, p2, v2}, Landroidx/emoji2/text/EmojiProcessor;->delete(Landroid/text/Editable;Landroid/view/KeyEvent;Z)Z

    move-result p1

    :goto_0
    if-eqz p1, :cond_2

    .line 452
    invoke-static {p0}, Landroid/text/method/MetaKeyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    return v1

    :cond_2
    :goto_1
    return v2
.end method

.method private hasGlyph(Ljava/lang/CharSequence;IILandroidx/emoji2/text/TypefaceEmojiRasterizer;)Z
    .locals 1

    .line 589
    invoke-virtual {p4}, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->getHasGlyph()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/emoji2/text/EmojiProcessor;->mGlyphChecker:Landroidx/emoji2/text/EmojiCompat$GlyphChecker;

    .line 591
    invoke-virtual {p4}, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->getSdkAdded()S

    move-result v0

    .line 590
    invoke-interface {p0, p1, p2, p3, v0}, Landroidx/emoji2/text/EmojiCompat$GlyphChecker;->hasGlyph(Ljava/lang/CharSequence;III)Z

    move-result p0

    .line 592
    invoke-virtual {p4, p0}, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->setHasGlyph(Z)V

    .line 595
    :cond_0
    invoke-virtual {p4}, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->getHasGlyph()I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static hasInvalidSelection(II)Z
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    if-eq p1, v0, :cond_1

    if-eq p0, p1, :cond_0

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

.method private static hasModifiers(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 571
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getMetaState()I

    move-result p0

    invoke-static {p0}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private initExclusions(Ljava/util/Set;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "[I>;)V"
        }
    .end annotation

    .line 143
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 146
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 147
    new-instance v2, Ljava/lang/String;

    const/4 v1, 0x0

    array-length v3, v0

    invoke-direct {v2, v0, v1, v3}, Ljava/lang/String;-><init>([III)V

    .line 148
    new-instance v7, Landroidx/emoji2/text/EmojiProcessor$MarkExclusionCallback;

    invoke-direct {v7, v2}, Landroidx/emoji2/text/EmojiProcessor$MarkExclusionCallback;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 149
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Landroidx/emoji2/text/EmojiProcessor;->process(Ljava/lang/CharSequence;IIIZLandroidx/emoji2/text/EmojiProcessor$EmojiProcessCallback;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private process(Ljava/lang/CharSequence;IIIZLandroidx/emoji2/text/EmojiProcessor$EmojiProcessCallback;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/CharSequence;",
            "IIIZ",
            "Landroidx/emoji2/text/EmojiProcessor$EmojiProcessCallback<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 366
    new-instance v0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;

    iget-object v1, p0, Landroidx/emoji2/text/EmojiProcessor;->mMetadataRepo:Landroidx/emoji2/text/MetadataRepo;

    invoke-virtual {v1}, Landroidx/emoji2/text/MetadataRepo;->getRootNode()Landroidx/emoji2/text/MetadataRepo$Node;

    move-result-object v1

    iget-boolean v2, p0, Landroidx/emoji2/text/EmojiProcessor;->mUseEmojiAsDefaultStyle:Z

    iget-object v3, p0, Landroidx/emoji2/text/EmojiProcessor;->mEmojiAsDefaultStyleExceptions:[I

    invoke-direct {v0, v1, v2, v3}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;-><init>(Landroidx/emoji2/text/MetadataRepo$Node;Z[I)V

    .line 370
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    move v4, v2

    move v5, v3

    move v2, v1

    :cond_0
    :goto_0
    move v1, p2

    :cond_1
    :goto_1
    if-ge p2, p3, :cond_7

    if-ge v4, p4, :cond_7

    if-eqz v5, :cond_7

    .line 374
    invoke-virtual {v0, v2}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->check(I)I

    move-result v6

    if-eq v6, v3, :cond_5

    const/4 v7, 0x2

    if-eq v6, v7, :cond_4

    const/4 v7, 0x3

    if-eq v6, v7, :cond_2

    goto :goto_1

    :cond_2
    if-nez p5, :cond_3

    .line 392
    invoke-virtual {v0}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->getFlushMetadata()Landroidx/emoji2/text/TypefaceEmojiRasterizer;

    move-result-object v6

    .line 391
    invoke-direct {p0, p1, v1, p2, v6}, Landroidx/emoji2/text/EmojiProcessor;->hasGlyph(Ljava/lang/CharSequence;IILandroidx/emoji2/text/TypefaceEmojiRasterizer;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 394
    :cond_3
    invoke-virtual {v0}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->getFlushMetadata()Landroidx/emoji2/text/TypefaceEmojiRasterizer;

    move-result-object v5

    .line 393
    invoke-interface {p6, p1, v1, p2, v5}, Landroidx/emoji2/text/EmojiProcessor$EmojiProcessCallback;->handleEmoji(Ljava/lang/CharSequence;IILandroidx/emoji2/text/TypefaceEmojiRasterizer;)Z

    move-result v1

    add-int/lit8 v4, v4, 0x1

    move v5, v1

    goto :goto_0

    .line 385
    :cond_4
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    add-int/2addr p2, v6

    if-ge p2, p3, :cond_1

    .line 387
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    goto :goto_1

    .line 378
    :cond_5
    invoke-static {p1, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Character;->charCount(I)I

    move-result p2

    add-int/2addr v1, p2

    if-ge v1, p3, :cond_6

    .line 381
    invoke-static {p1, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result p2

    move v2, p2

    :cond_6
    move p2, v1

    goto :goto_1

    .line 406
    :cond_7
    invoke-virtual {v0}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->isInFlushableState()Z

    move-result p3

    if-eqz p3, :cond_9

    if-ge v4, p4, :cond_9

    if-eqz v5, :cond_9

    if-nez p5, :cond_8

    .line 408
    invoke-virtual {v0}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->getCurrentMetadata()Landroidx/emoji2/text/TypefaceEmojiRasterizer;

    move-result-object p3

    .line 407
    invoke-direct {p0, p1, v1, p2, p3}, Landroidx/emoji2/text/EmojiProcessor;->hasGlyph(Ljava/lang/CharSequence;IILandroidx/emoji2/text/TypefaceEmojiRasterizer;)Z

    move-result p0

    if-nez p0, :cond_9

    .line 410
    :cond_8
    invoke-virtual {v0}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->getCurrentMetadata()Landroidx/emoji2/text/TypefaceEmojiRasterizer;

    move-result-object p0

    .line 409
    invoke-interface {p6, p1, v1, p2, p0}, Landroidx/emoji2/text/EmojiProcessor$EmojiProcessCallback;->handleEmoji(Ljava/lang/CharSequence;IILandroidx/emoji2/text/TypefaceEmojiRasterizer;)Z

    .line 415
    :cond_9
    invoke-interface {p6}, Landroidx/emoji2/text/EmojiProcessor$EmojiProcessCallback;->getResult()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method getEmojiEnd(Ljava/lang/CharSequence;I)I
    .locals 9

    if-ltz p2, :cond_2

    .line 247
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lt p2, v0, :cond_0

    goto :goto_0

    .line 251
    :cond_0
    instance-of v0, p1, Landroid/text/Spanned;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 252
    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    add-int/lit8 v2, p2, 0x1

    .line 253
    const-class v3, Landroidx/emoji2/text/EmojiSpan;

    invoke-interface {v0, p2, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroidx/emoji2/text/EmojiSpan;

    .line 254
    array-length v3, v2

    if-lez v3, :cond_1

    .line 255
    aget-object p0, v2, v1

    invoke-interface {v0, p0}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_1
    add-int/lit8 v0, p2, -0x10

    .line 260
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 261
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v1, p2, 0x10

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    const v6, 0x7fffffff

    const/4 v7, 0x1

    .line 262
    new-instance v8, Landroidx/emoji2/text/EmojiProcessor$EmojiProcessLookupCallback;

    invoke-direct {v8, p2}, Landroidx/emoji2/text/EmojiProcessor$EmojiProcessLookupCallback;-><init>(I)V

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v8}, Landroidx/emoji2/text/EmojiProcessor;->process(Ljava/lang/CharSequence;IIIZLandroidx/emoji2/text/EmojiProcessor$EmojiProcessCallback;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/emoji2/text/EmojiProcessor$EmojiProcessLookupCallback;

    iget p0, p0, Landroidx/emoji2/text/EmojiProcessor$EmojiProcessLookupCallback;->end:I

    return p0

    :cond_2
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method getEmojiMatch(Ljava/lang/CharSequence;)I
    .locals 1

    iget-object v0, p0, Landroidx/emoji2/text/EmojiProcessor;->mMetadataRepo:Landroidx/emoji2/text/MetadataRepo;

    .line 155
    invoke-virtual {v0}, Landroidx/emoji2/text/MetadataRepo;->getMetadataVersion()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroidx/emoji2/text/EmojiProcessor;->getEmojiMatch(Ljava/lang/CharSequence;I)I

    move-result p0

    return p0
.end method

.method getEmojiMatch(Ljava/lang/CharSequence;I)I
    .locals 10

    .line 161
    new-instance v0, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;

    iget-object v1, p0, Landroidx/emoji2/text/EmojiProcessor;->mMetadataRepo:Landroidx/emoji2/text/MetadataRepo;

    invoke-virtual {v1}, Landroidx/emoji2/text/MetadataRepo;->getRootNode()Landroidx/emoji2/text/MetadataRepo$Node;

    move-result-object v1

    iget-boolean v2, p0, Landroidx/emoji2/text/EmojiProcessor;->mUseEmojiAsDefaultStyle:Z

    iget-object p0, p0, Landroidx/emoji2/text/EmojiProcessor;->mEmojiAsDefaultStyleExceptions:[I

    invoke-direct {v0, v1, v2, p0}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;-><init>(Landroidx/emoji2/text/MetadataRepo$Node;Z[I)V

    .line 163
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :cond_0
    :goto_0
    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ge v2, p0, :cond_5

    .line 169
    invoke-static {p1, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v7

    .line 170
    invoke-virtual {v0, v7}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->check(I)I

    move-result v8

    .line 171
    invoke-virtual {v0}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->getCurrentMetadata()Landroidx/emoji2/text/TypefaceEmojiRasterizer;

    move-result-object v9

    if-eq v8, v6, :cond_3

    if-eq v8, v5, :cond_2

    const/4 v5, 0x3

    if-eq v8, v5, :cond_1

    goto :goto_1

    .line 176
    :cond_1
    invoke-virtual {v0}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->getFlushMetadata()Landroidx/emoji2/text/TypefaceEmojiRasterizer;

    move-result-object v9

    .line 177
    invoke-virtual {v9}, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->getCompatAdded()S

    move-result v5

    if-gt v5, p2, :cond_4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 188
    :cond_2
    invoke-static {v7}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v2, v5

    goto :goto_1

    .line 183
    :cond_3
    invoke-static {v7}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v2, v4

    move v4, v1

    :cond_4
    :goto_1
    if-eqz v9, :cond_0

    .line 192
    invoke-virtual {v9}, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->getCompatAdded()S

    move-result v5

    if-gt v5, p2, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    if-eqz v3, :cond_6

    return v5

    .line 203
    :cond_6
    invoke-virtual {v0}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->isInFlushableState()Z

    move-result p0

    if-eqz p0, :cond_7

    .line 206
    invoke-virtual {v0}, Landroidx/emoji2/text/EmojiProcessor$ProcessorSm;->getCurrentMetadata()Landroidx/emoji2/text/TypefaceEmojiRasterizer;

    move-result-object p0

    .line 207
    invoke-virtual {p0}, Landroidx/emoji2/text/TypefaceEmojiRasterizer;->getCompatAdded()S

    move-result p0

    if-gt p0, p2, :cond_7

    return v6

    :cond_7
    if-nez v4, :cond_8

    return v1

    :cond_8
    return v5
.end method

.method getEmojiStart(Ljava/lang/CharSequence;I)I
    .locals 9

    if-ltz p2, :cond_2

    .line 224
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lt p2, v0, :cond_0

    goto :goto_0

    .line 228
    :cond_0
    instance-of v0, p1, Landroid/text/Spanned;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 229
    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    add-int/lit8 v2, p2, 0x1

    .line 230
    const-class v3, Landroidx/emoji2/text/EmojiSpan;

    invoke-interface {v0, p2, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroidx/emoji2/text/EmojiSpan;

    .line 231
    array-length v3, v2

    if-lez v3, :cond_1

    .line 232
    aget-object p0, v2, v1

    invoke-interface {v0, p0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_1
    add-int/lit8 v0, p2, -0x10

    .line 237
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 238
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v1, p2, 0x10

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    const v6, 0x7fffffff

    const/4 v7, 0x1

    .line 239
    new-instance v8, Landroidx/emoji2/text/EmojiProcessor$EmojiProcessLookupCallback;

    invoke-direct {v8, p2}, Landroidx/emoji2/text/EmojiProcessor$EmojiProcessLookupCallback;-><init>(I)V

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v8}, Landroidx/emoji2/text/EmojiProcessor;->process(Ljava/lang/CharSequence;IIIZLandroidx/emoji2/text/EmojiProcessor$EmojiProcessCallback;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/emoji2/text/EmojiProcessor$EmojiProcessLookupCallback;

    iget p0, p0, Landroidx/emoji2/text/EmojiProcessor$EmojiProcessLookupCallback;->start:I

    return p0

    :cond_2
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method process(Ljava/lang/CharSequence;IIIZ)Ljava/lang/CharSequence;
    .locals 9

    .line 290
    instance-of v0, p1, Landroidx/emoji2/text/SpannableBuilder;

    if-eqz v0, :cond_0

    .line 292
    move-object v1, p1

    check-cast v1, Landroidx/emoji2/text/SpannableBuilder;

    invoke-virtual {v1}, Landroidx/emoji2/text/SpannableBuilder;->beginBatchEdit()V

    :cond_0
    if-nez v0, :cond_3

    .line 300
    :try_start_0
    instance-of v1, p1, Landroid/text/Spannable;

    if-eqz v1, :cond_1

    goto :goto_0

    .line 302
    :cond_1
    instance-of v1, p1, Landroid/text/Spanned;

    if-eqz v1, :cond_2

    .line 305
    move-object v1, p1

    check-cast v1, Landroid/text/Spanned;

    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v3, p3, 0x1

    const-class v4, Landroidx/emoji2/text/EmojiSpan;

    invoke-interface {v1, v2, v3, v4}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v1

    if-gt v1, p3, :cond_2

    .line 309
    new-instance v1, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;

    invoke-direct {v1, p1}, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 301
    :cond_3
    :goto_0
    new-instance v1, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;

    move-object v2, p1

    check-cast v2, Landroid/text/Spannable;

    invoke-direct {v1, v2}, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;-><init>(Landroid/text/Spannable;)V

    :goto_1
    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 314
    const-class v3, Landroidx/emoji2/text/EmojiSpan;

    invoke-virtual {v1, p2, p3, v3}, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroidx/emoji2/text/EmojiSpan;

    if-eqz v3, :cond_5

    .line 315
    array-length v4, v3

    if-lez v4, :cond_5

    .line 318
    array-length v4, v3

    move v5, v2

    :goto_2
    if-ge v5, v4, :cond_5

    .line 320
    aget-object v6, v3, v5

    .line 321
    invoke-virtual {v1, v6}, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    .line 322
    invoke-virtual {v1, v6}, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    if-eq v7, p3, :cond_4

    .line 328
    invoke-virtual {v1, v6}, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;->removeSpan(Ljava/lang/Object;)V

    .line 330
    :cond_4
    invoke-static {v7, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 331
    invoke-static {v8, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    move v3, p2

    move v4, p3

    if-eq v3, v4, :cond_b

    .line 336
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-lt v3, p2, :cond_6

    goto :goto_3

    :cond_6
    const p2, 0x7fffffff

    if-eq p4, p2, :cond_7

    if-eqz v1, :cond_7

    .line 343
    invoke-virtual {v1}, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;->length()I

    move-result p2

    const-class p3, Landroidx/emoji2/text/EmojiSpan;

    invoke-virtual {v1, v2, p2, p3}, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroidx/emoji2/text/EmojiSpan;

    array-length p2, p2

    sub-int/2addr p4, p2

    :cond_7
    move v5, p4

    .line 346
    new-instance v7, Landroidx/emoji2/text/EmojiProcessor$EmojiProcessAddSpanCallback;

    iget-object p2, p0, Landroidx/emoji2/text/EmojiProcessor;->mSpanFactory:Landroidx/emoji2/text/EmojiCompat$SpanFactory;

    invoke-direct {v7, v1, p2}, Landroidx/emoji2/text/EmojiProcessor$EmojiProcessAddSpanCallback;-><init>(Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;Landroidx/emoji2/text/EmojiCompat$SpanFactory;)V

    move-object v1, p0

    move-object v2, p1

    move v6, p5

    invoke-direct/range {v1 .. v7}, Landroidx/emoji2/text/EmojiProcessor;->process(Ljava/lang/CharSequence;IIIZLandroidx/emoji2/text/EmojiProcessor$EmojiProcessCallback;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;

    if-eqz p0, :cond_9

    .line 351
    invoke-virtual {p0}, Landroidx/emoji2/text/UnprecomputeTextOnModificationSpannable;->getUnwrappedSpannable()Landroid/text/Spannable;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_8

    .line 357
    check-cast p1, Landroidx/emoji2/text/SpannableBuilder;

    invoke-virtual {p1}, Landroidx/emoji2/text/SpannableBuilder;->endBatchEdit()V

    :cond_8
    return-object p0

    :cond_9
    if-eqz v0, :cond_a

    move-object p0, p1

    check-cast p0, Landroidx/emoji2/text/SpannableBuilder;

    invoke-virtual {p0}, Landroidx/emoji2/text/SpannableBuilder;->endBatchEdit()V

    :cond_a
    return-object p1

    :cond_b
    :goto_3
    if-eqz v0, :cond_c

    move-object p0, p1

    check-cast p0, Landroidx/emoji2/text/SpannableBuilder;

    invoke-virtual {p0}, Landroidx/emoji2/text/SpannableBuilder;->endBatchEdit()V

    :cond_c
    return-object p1

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_d

    check-cast p1, Landroidx/emoji2/text/SpannableBuilder;

    invoke-virtual {p1}, Landroidx/emoji2/text/SpannableBuilder;->endBatchEdit()V

    .line 359
    :cond_d
    throw p0
.end method
