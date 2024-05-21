.class public final Landroidx/media3/extractor/text/webvtt/WebvttDecoder;
.super Landroidx/media3/extractor/text/SimpleSubtitleDecoder;
.source "WebvttDecoder.java"


# static fields
.field private static final COMMENT_START:Ljava/lang/String; = "NOTE"

.field private static final EVENT_COMMENT:I = 0x1

.field private static final EVENT_CUE:I = 0x3

.field private static final EVENT_END_OF_FILE:I = 0x0

.field private static final EVENT_NONE:I = -0x1

.field private static final EVENT_STYLE_BLOCK:I = 0x2

.field private static final STYLE_START:Ljava/lang/String; = "STYLE"


# instance fields
.field private final cssParser:Landroidx/media3/extractor/text/webvtt/WebvttCssParser;

.field private final parsableWebvttData:Landroidx/media3/common/util/ParsableByteArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "WebvttDecoder"

    .line 50
    invoke-direct {p0, v0}, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;-><init>(Ljava/lang/String;)V

    .line 51
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/text/webvtt/WebvttDecoder;->parsableWebvttData:Landroidx/media3/common/util/ParsableByteArray;

    .line 52
    new-instance v0, Landroidx/media3/extractor/text/webvtt/WebvttCssParser;

    invoke-direct {v0}, Landroidx/media3/extractor/text/webvtt/WebvttCssParser;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/text/webvtt/WebvttDecoder;->cssParser:Landroidx/media3/extractor/text/webvtt/WebvttCssParser;

    return-void
.end method

.method private static getNextEvent(Landroidx/media3/common/util/ParsableByteArray;)I
    .locals 5

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v2, v0

    move v3, v1

    :goto_0
    if-ne v2, v0, :cond_3

    .line 101
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v3

    .line 102
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const-string v4, "STYLE"

    .line 105
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x2

    goto :goto_0

    :cond_1
    const-string v4, "NOTE"

    .line 107
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    goto :goto_0

    .line 113
    :cond_3
    invoke-virtual {p0, v3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    return v2
.end method

.method private static skipComment(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 1

    .line 118
    :goto_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected decode([BIZ)Landroidx/media3/extractor/text/Subtitle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/extractor/text/SubtitleDecoderException;
        }
    .end annotation

    iget-object p3, p0, Landroidx/media3/extractor/text/webvtt/WebvttDecoder;->parsableWebvttData:Landroidx/media3/common/util/ParsableByteArray;

    .line 58
    invoke-virtual {p3, p1, p2}, Landroidx/media3/common/util/ParsableByteArray;->reset([BI)V

    .line 59
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object p2, p0, Landroidx/media3/extractor/text/webvtt/WebvttDecoder;->parsableWebvttData:Landroidx/media3/common/util/ParsableByteArray;

    .line 63
    invoke-static {p2}, Landroidx/media3/extractor/text/webvtt/WebvttParserUtil;->validateWebvttHeaderLine(Landroidx/media3/common/util/ParsableByteArray;)V
    :try_end_0
    .catch Landroidx/media3/common/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object p2, p0, Landroidx/media3/extractor/text/webvtt/WebvttDecoder;->parsableWebvttData:Landroidx/media3/common/util/ParsableByteArray;

    .line 67
    invoke-virtual {p2}, Landroidx/media3/common/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    :goto_1
    iget-object p3, p0, Landroidx/media3/extractor/text/webvtt/WebvttDecoder;->parsableWebvttData:Landroidx/media3/common/util/ParsableByteArray;

    .line 71
    invoke-static {p3}, Landroidx/media3/extractor/text/webvtt/WebvttDecoder;->getNextEvent(Landroidx/media3/common/util/ParsableByteArray;)I

    move-result p3

    if-eqz p3, :cond_5

    const/4 v0, 0x1

    if-ne p3, v0, :cond_2

    iget-object p3, p0, Landroidx/media3/extractor/text/webvtt/WebvttDecoder;->parsableWebvttData:Landroidx/media3/common/util/ParsableByteArray;

    .line 73
    invoke-static {p3}, Landroidx/media3/extractor/text/webvtt/WebvttDecoder;->skipComment(Landroidx/media3/common/util/ParsableByteArray;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    if-ne p3, v0, :cond_4

    .line 75
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_3

    iget-object p3, p0, Landroidx/media3/extractor/text/webvtt/WebvttDecoder;->parsableWebvttData:Landroidx/media3/common/util/ParsableByteArray;

    .line 78
    invoke-virtual {p3}, Landroidx/media3/common/util/ParsableByteArray;->readLine()Ljava/lang/String;

    iget-object p3, p0, Landroidx/media3/extractor/text/webvtt/WebvttDecoder;->cssParser:Landroidx/media3/extractor/text/webvtt/WebvttCssParser;

    iget-object v0, p0, Landroidx/media3/extractor/text/webvtt/WebvttDecoder;->parsableWebvttData:Landroidx/media3/common/util/ParsableByteArray;

    .line 79
    invoke-virtual {p3, v0}, Landroidx/media3/extractor/text/webvtt/WebvttCssParser;->parseBlock(Landroidx/media3/common/util/ParsableByteArray;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 76
    :cond_3
    new-instance p0, Landroidx/media3/extractor/text/SubtitleDecoderException;

    const-string p1, "A style block was found after the first cue."

    invoke-direct {p0, p1}, Landroidx/media3/extractor/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    const/4 v0, 0x3

    if-ne p3, v0, :cond_1

    iget-object p3, p0, Landroidx/media3/extractor/text/webvtt/WebvttDecoder;->parsableWebvttData:Landroidx/media3/common/util/ParsableByteArray;

    .line 82
    invoke-static {p3, p1}, Landroidx/media3/extractor/text/webvtt/WebvttCueParser;->parseCue(Landroidx/media3/common/util/ParsableByteArray;Ljava/util/List;)Landroidx/media3/extractor/text/webvtt/WebvttCueInfo;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 84
    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 88
    :cond_5
    new-instance p0, Landroidx/media3/extractor/text/webvtt/WebvttSubtitle;

    invoke-direct {p0, p2}, Landroidx/media3/extractor/text/webvtt/WebvttSubtitle;-><init>(Ljava/util/List;)V

    return-object p0

    :catch_0
    move-exception p0

    .line 65
    new-instance p1, Landroidx/media3/extractor/text/SubtitleDecoderException;

    invoke-direct {p1, p0}, Landroidx/media3/extractor/text/SubtitleDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
