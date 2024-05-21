.class public final Landroidx/media3/extractor/GaplessInfoHolder;
.super Ljava/lang/Object;
.source "GaplessInfoHolder.java"


# static fields
.field private static final GAPLESS_COMMENT_PATTERN:Ljava/util/regex/Pattern;

.field private static final GAPLESS_DESCRIPTION:Ljava/lang/String; = "iTunSMPB"

.field private static final GAPLESS_DOMAIN:Ljava/lang/String; = "com.apple.iTunes"


# instance fields
.field public encoderDelay:I

.field public encoderPadding:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "^ [0-9a-fA-F]{8} ([0-9a-fA-F]{8}) ([0-9a-fA-F]{8})"

    .line 35
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/extractor/GaplessInfoHolder;->GAPLESS_COMMENT_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/media3/extractor/GaplessInfoHolder;->encoderDelay:I

    iput v0, p0, Landroidx/media3/extractor/GaplessInfoHolder;->encoderPadding:I

    return-void
.end method

.method private setFromComment(Ljava/lang/String;)Z
    .locals 4

    sget-object v0, Landroidx/media3/extractor/GaplessInfoHolder;->GAPLESS_COMMENT_PATTERN:Ljava/util/regex/Pattern;

    .line 107
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 108
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 110
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x2

    .line 111
    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    if-gtz v1, :cond_0

    if-lez p1, :cond_1

    :cond_0
    iput v1, p0, Landroidx/media3/extractor/GaplessInfoHolder;->encoderDelay:I

    iput p1, p0, Landroidx/media3/extractor/GaplessInfoHolder;->encoderPadding:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public hasGaplessInfo()Z
    .locals 2

    iget v0, p0, Landroidx/media3/extractor/GaplessInfoHolder;->encoderDelay:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget p0, p0, Landroidx/media3/extractor/GaplessInfoHolder;->encoderPadding:I

    if-eq p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setFromMetadata(Landroidx/media3/common/Metadata;)Z
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    .line 79
    :goto_0
    invoke-virtual {p1}, Landroidx/media3/common/Metadata;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 80
    invoke-virtual {p1, v1}, Landroidx/media3/common/Metadata;->get(I)Landroidx/media3/common/Metadata$Entry;

    move-result-object v2

    .line 81
    instance-of v3, v2, Landroidx/media3/extractor/metadata/id3/CommentFrame;

    const-string v4, "iTunSMPB"

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    .line 82
    check-cast v2, Landroidx/media3/extractor/metadata/id3/CommentFrame;

    .line 83
    iget-object v3, v2, Landroidx/media3/extractor/metadata/id3/CommentFrame;->description:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, v2, Landroidx/media3/extractor/metadata/id3/CommentFrame;->text:Ljava/lang/String;

    .line 84
    invoke-direct {p0, v2}, Landroidx/media3/extractor/GaplessInfoHolder;->setFromComment(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v5

    .line 87
    :cond_0
    instance-of v3, v2, Landroidx/media3/extractor/metadata/id3/InternalFrame;

    if-eqz v3, :cond_1

    .line 88
    check-cast v2, Landroidx/media3/extractor/metadata/id3/InternalFrame;

    const-string v3, "com.apple.iTunes"

    .line 89
    iget-object v6, v2, Landroidx/media3/extractor/metadata/id3/InternalFrame;->domain:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v2, Landroidx/media3/extractor/metadata/id3/InternalFrame;->description:Ljava/lang/String;

    .line 90
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, v2, Landroidx/media3/extractor/metadata/id3/InternalFrame;->text:Ljava/lang/String;

    .line 91
    invoke-direct {p0, v2}, Landroidx/media3/extractor/GaplessInfoHolder;->setFromComment(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v5

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public setFromXingHeaderValue(I)Z
    .locals 1

    shr-int/lit8 v0, p1, 0xc

    and-int/lit16 p1, p1, 0xfff

    if-gtz v0, :cond_1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    iput v0, p0, Landroidx/media3/extractor/GaplessInfoHolder;->encoderDelay:I

    iput p1, p0, Landroidx/media3/extractor/GaplessInfoHolder;->encoderPadding:I

    const/4 p0, 0x1

    return p0
.end method
