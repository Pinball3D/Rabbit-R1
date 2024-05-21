.class final Landroidx/media3/extractor/text/cea/CeaSubtitle;
.super Ljava/lang/Object;
.source "CeaSubtitle.java"

# interfaces
.implements Landroidx/media3/extractor/text/Subtitle;


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
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/text/Cue;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/text/cea/CeaSubtitle;->cues:Ljava/util/List;

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

    iget-object p0, p0, Landroidx/media3/extractor/text/cea/CeaSubtitle;->cues:Ljava/util/List;

    goto :goto_0

    .line 55
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

    .line 49
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
