.class public final Lcom/google/android/exoplayer2/text/webvtt/WebvttDecoder;
.super Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;
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
.field private final cssParser:Lcom/google/android/exoplayer2/text/webvtt/WebvttCssParser;

.field private final parsableWebvttData:Lcom/google/android/exoplayer2/util/ParsableByteArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "WebvttDecoder"

    .line 48
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/SimpleSubtitleDecoder;-><init>(Ljava/lang/String;)V

    .line 49
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttDecoder;->parsableWebvttData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 50
    new-instance v0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssParser;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssParser;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttDecoder;->cssParser:Lcom/google/android/exoplayer2/text/webvtt/WebvttCssParser;

    return-void
.end method

.method private static getNextEvent(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I
    .locals 5

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v2, v0

    move v3, v1

    :goto_0
    if-ne v2, v0, :cond_3

    .line 99
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v3

    .line 100
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const-string v4, "STYLE"

    .line 103
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x2

    goto :goto_0

    :cond_1
    const-string v4, "NOTE"

    .line 105
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    goto :goto_0

    .line 111
    :cond_3
    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    return v2
.end method

.method private static skipComment(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    .locals 1

    .line 116
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected decode([BIZ)Lcom/google/android/exoplayer2/text/Subtitle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/text/SubtitleDecoderException;
        }
    .end annotation

    iget-object p3, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttDecoder;->parsableWebvttData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 56
    invoke-virtual {p3, p1, p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset([BI)V

    .line 57
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttDecoder;->parsableWebvttData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 61
    invoke-static {p2}, Lcom/google/android/exoplayer2/text/webvtt/WebvttParserUtil;->validateWebvttHeaderLine(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttDecoder;->parsableWebvttData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 65
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    :goto_1
    iget-object p3, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttDecoder;->parsableWebvttData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 69
    invoke-static {p3}, Lcom/google/android/exoplayer2/text/webvtt/WebvttDecoder;->getNextEvent(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I

    move-result p3

    if-eqz p3, :cond_5

    const/4 v0, 0x1

    if-ne p3, v0, :cond_2

    iget-object p3, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttDecoder;->parsableWebvttData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 71
    invoke-static {p3}, Lcom/google/android/exoplayer2/text/webvtt/WebvttDecoder;->skipComment(Lcom/google/android/exoplayer2/util/ParsableByteArray;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    if-ne p3, v0, :cond_4

    .line 73
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttDecoder;->parsableWebvttData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 76
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLine()Ljava/lang/String;

    iget-object p3, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttDecoder;->cssParser:Lcom/google/android/exoplayer2/text/webvtt/WebvttCssParser;

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttDecoder;->parsableWebvttData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 77
    invoke-virtual {p3, v0}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCssParser;->parseBlock(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 74
    :cond_3
    new-instance p0, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    const-string p1, "A style block was found after the first cue."

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    const/4 v0, 0x3

    if-ne p3, v0, :cond_1

    iget-object p3, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttDecoder;->parsableWebvttData:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 80
    invoke-static {p3, p1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;->parseCue(Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/util/List;)Lcom/google/android/exoplayer2/text/webvtt/WebvttCueInfo;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 82
    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 86
    :cond_5
    new-instance p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttSubtitle;

    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/text/webvtt/WebvttSubtitle;-><init>(Ljava/util/List;)V

    return-object p0

    :catch_0
    move-exception p0

    .line 63
    new-instance p1, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/text/SubtitleDecoderException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
