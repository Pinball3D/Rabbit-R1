.class final Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$Cea708CueInfo;
.super Ljava/lang/Object;
.source "Cea708Decoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/text/cea/Cea708Decoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Cea708CueInfo"
.end annotation


# static fields
.field private static final LEAST_IMPORTANT_FIRST:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$Cea708CueInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final cue:Lcom/google/android/exoplayer2/text/Cue;

.field public final priority:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1405
    new-instance v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$Cea708CueInfo$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$Cea708CueInfo$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$Cea708CueInfo;->LEAST_IMPORTANT_FIRST:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIFZII)V
    .locals 1

    .line 1443
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1444
    new-instance v0, Lcom/google/android/exoplayer2/text/Cue$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/text/Cue$Builder;-><init>()V

    .line 1446
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setText(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object p1

    .line 1447
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setTextAlignment(Landroid/text/Layout$Alignment;)Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object p1

    .line 1448
    invoke-virtual {p1, p3, p4}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setLine(FI)Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object p1

    .line 1449
    invoke-virtual {p1, p5}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setLineAnchor(I)Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object p1

    .line 1450
    invoke-virtual {p1, p6}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setPosition(F)Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object p1

    .line 1451
    invoke-virtual {p1, p7}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setPositionAnchor(I)Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object p1

    .line 1452
    invoke-virtual {p1, p8}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setSize(F)Lcom/google/android/exoplayer2/text/Cue$Builder;

    move-result-object p1

    if-eqz p9, :cond_0

    .line 1454
    invoke-virtual {p1, p10}, Lcom/google/android/exoplayer2/text/Cue$Builder;->setWindowColor(I)Lcom/google/android/exoplayer2/text/Cue$Builder;

    .line 1456
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/Cue$Builder;->build()Lcom/google/android/exoplayer2/text/Cue;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$Cea708CueInfo;->cue:Lcom/google/android/exoplayer2/text/Cue;

    iput p11, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$Cea708CueInfo;->priority:I

    return-void
.end method

.method static synthetic access$000()Ljava/util/Comparator;
    .locals 1

    sget-object v0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$Cea708CueInfo;->LEAST_IMPORTANT_FIRST:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic lambda$static$0(Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$Cea708CueInfo;Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$Cea708CueInfo;)I
    .locals 0

    .line 1406
    iget p1, p1, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$Cea708CueInfo;->priority:I

    iget p0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Decoder$Cea708CueInfo;->priority:I

    invoke-static {p1, p0}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method
