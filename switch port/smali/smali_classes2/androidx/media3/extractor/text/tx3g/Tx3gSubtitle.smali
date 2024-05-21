.class final Landroidx/media3/extractor/text/tx3g/Tx3gSubtitle;
.super Ljava/lang/Object;
.source "Tx3gSubtitle.java"

# interfaces
.implements Landroidx/media3/extractor/text/Subtitle;


# static fields
.field public static final EMPTY:Landroidx/media3/extractor/text/tx3g/Tx3gSubtitle;


# instance fields
.field private final cues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/common/text/Cue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Landroidx/media3/extractor/text/tx3g/Tx3gSubtitle;

    invoke-direct {v0}, Landroidx/media3/extractor/text/tx3g/Tx3gSubtitle;-><init>()V

    sput-object v0, Landroidx/media3/extractor/text/tx3g/Tx3gSubtitle;->EMPTY:Landroidx/media3/extractor/text/tx3g/Tx3gSubtitle;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/text/tx3g/Tx3gSubtitle;->cues:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroidx/media3/common/text/Cue;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/extractor/text/tx3g/Tx3gSubtitle;->cues:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCues(J)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Landroidx/media3/common/text/Cue;",
            ">;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-ltz p1, :cond_0

    iget-object p0, p0, Landroidx/media3/extractor/text/tx3g/Tx3gSubtitle;->cues:Ljava/util/List;

    goto :goto_0

    .line 58
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getEventTime(I)J
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 52
    :goto_0
    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getEventTimeCount()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getNextEventTimeIndex(J)I
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p0, p1, v0

    if-gez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method
