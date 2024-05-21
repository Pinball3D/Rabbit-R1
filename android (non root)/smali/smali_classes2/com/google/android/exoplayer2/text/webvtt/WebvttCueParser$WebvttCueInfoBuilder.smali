.class final Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;
.super Ljava/lang/Object;
.source "WebvttCueParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WebvttCueInfoBuilder"
.end annotation


# instance fields
.field public endTimeUs:J

.field public line:F

.field public lineAnchor:I

.field public lineType:I

.field public position:F

.field public positionAnchor:I

.field public size:F

.field public startTimeUs:J

.field public text:Ljava/lang/CharSequence;

.field public textAlignment:I

.field public verticalType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 776
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->startTimeUs:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->endTimeUs:J

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->textAlignment:I

    const v0, -0x800001

    iput v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->line:F

    const/4 v1, 0x1

    iput v1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->lineType:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->lineAnchor:I

    iput v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->position:F

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->positionAnchor:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->size:F

    iput v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->verticalType:I

    return-void
.end method

.method private static computeLine(FI)F
    .locals 4

    const v0, -0x800001

    cmpl-float v1, p0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    const/4 v3, 0x0

    cmpg-float v3, p0, v3

    if-ltz v3, :cond_0

    cmpl-float v3, p0, v2

    if-lez v3, :cond_1

    :cond_0
    return v2

    :cond_1
    if-eqz v1, :cond_2

    return p0

    :cond_2
    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method private static convertTextAlignment(I)Landroid/text/Layout$Alignment;
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    .line 882
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown textAlignment: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WebvttCueParser"

    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 880
    :cond_0
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    return-object p0

    .line 877
    :cond_1
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    return-object p0

    .line 875
    :cond_2
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method private static deriveMaxSize(IF)F
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p0, :cond_3

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    return p1

    .line 902
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/high16 p0, 0x3f000000    # 0.5f

    cmpg-float p0, p1, p0

    const/high16 v1, 0x40000000    # 2.0f

    if-gtz p0, :cond_2

    mul-float/2addr p1, v1

    return p1

    :cond_2
    sub-float/2addr v0, p1

    mul-float/2addr v0, v1

    return v0

    :cond_3
    sub-float/2addr v0, p1

    return v0
.end method

.method private static derivePosition(I)F
    .locals 1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/high16 p0, 0x3f000000    # 0.5f

    return p0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static derivePositionAnchor(I)I
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x2

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public build()Lcom/google/android/exoplayer2/text/webvtt/WebvttCueInfo;
    .locals 7

    .line 794
    new-instance v6, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueInfo;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->toCueBuilder()Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/text/Cue$Builder;->build()Lcom/google/android/exoplayer2/text/Cue;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->startTimeUs:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->endTimeUs:J

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueInfo;-><init>(Lcom/google/android/exoplayer2/text/Cue;JJ)V

    return-object v6
.end method

.method public toCueBuilder()Lcom/google/android/exoplayer2/text/Cue$Builder;
    .locals 5

    iget v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->position:F

    const v1, -0x800001

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->textAlignment:I

    .line 799
    invoke-static {v0}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->derivePosition(I)F

    move-result v0

    :goto_0
    iget v1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->positionAnchor:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->textAlignment:I

    .line 804
    invoke-static {v1}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->derivePositionAnchor(I)I

    move-result v1

    .line 805
    :goto_1
    new-instance v2, Lcom/google/android/exoplayer2/text/Cue$Builder;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/text/Cue$Builder;-><init>()V

    iget v3, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->textAlignment:I

    .line 807
    invoke-static {v3}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->convertTextAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setTextAlignment(Landroid/text/Layout$Alignment;)Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->line:F

    iget v4, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->lineType:I

    .line 808
    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->computeLine(FI)F

    move-result v3

    iget v4, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->lineType:I

    invoke-virtual {v2, v3, v4}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setLine(FI)Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->lineAnchor:I

    .line 809
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setLineAnchor(I)Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v2

    .line 810
    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setPosition(F)Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v2

    .line 811
    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setPositionAnchor(I)Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->size:F

    .line 812
    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->deriveMaxSize(IF)F

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setSize(F)Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->verticalType:I

    .line 813
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setVerticalType(I)Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/exoplayer2/text/webvtt/WebvttCueParser$WebvttCueInfoBuilder;->text:Ljava/lang/CharSequence;

    if-eqz p0, :cond_2

    .line 816
    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setText(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/text/Cue$Builder;

    :cond_2
    return-object v0
.end method
