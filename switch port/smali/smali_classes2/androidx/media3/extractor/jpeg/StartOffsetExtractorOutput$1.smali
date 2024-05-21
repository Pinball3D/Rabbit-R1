.class Landroidx/media3/extractor/jpeg/StartOffsetExtractorOutput$1;
.super Ljava/lang/Object;
.source "StartOffsetExtractorOutput.java"

# interfaces
.implements Landroidx/media3/extractor/SeekMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media3/extractor/jpeg/StartOffsetExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/extractor/jpeg/StartOffsetExtractorOutput;

.field final synthetic val$seekMap:Landroidx/media3/extractor/SeekMap;


# direct methods
.method constructor <init>(Landroidx/media3/extractor/jpeg/StartOffsetExtractorOutput;Landroidx/media3/extractor/SeekMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/media3/extractor/jpeg/StartOffsetExtractorOutput$1;->this$0:Landroidx/media3/extractor/jpeg/StartOffsetExtractorOutput;

    iput-object p2, p0, Landroidx/media3/extractor/jpeg/StartOffsetExtractorOutput$1;->val$seekMap:Landroidx/media3/extractor/SeekMap;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDurationUs()J
    .locals 2

    iget-object p0, p0, Landroidx/media3/extractor/jpeg/StartOffsetExtractorOutput$1;->val$seekMap:Landroidx/media3/extractor/SeekMap;

    .line 65
    invoke-interface {p0}, Landroidx/media3/extractor/SeekMap;->getDurationUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSeekPoints(J)Landroidx/media3/extractor/SeekMap$SeekPoints;
    .locals 7

    iget-object v0, p0, Landroidx/media3/extractor/jpeg/StartOffsetExtractorOutput$1;->val$seekMap:Landroidx/media3/extractor/SeekMap;

    .line 70
    invoke-interface {v0, p1, p2}, Landroidx/media3/extractor/SeekMap;->getSeekPoints(J)Landroidx/media3/extractor/SeekMap$SeekPoints;

    move-result-object p1

    .line 71
    new-instance p2, Landroidx/media3/extractor/SeekMap$SeekPoints;

    new-instance v0, Landroidx/media3/extractor/SeekPoint;

    iget-object v1, p1, Landroidx/media3/extractor/SeekMap$SeekPoints;->first:Landroidx/media3/extractor/SeekPoint;

    iget-wide v1, v1, Landroidx/media3/extractor/SeekPoint;->timeUs:J

    iget-object v3, p1, Landroidx/media3/extractor/SeekMap$SeekPoints;->first:Landroidx/media3/extractor/SeekPoint;

    iget-wide v3, v3, Landroidx/media3/extractor/SeekPoint;->position:J

    iget-object v5, p0, Landroidx/media3/extractor/jpeg/StartOffsetExtractorOutput$1;->this$0:Landroidx/media3/extractor/jpeg/StartOffsetExtractorOutput;

    .line 72
    invoke-static {v5}, Landroidx/media3/extractor/jpeg/StartOffsetExtractorOutput;->access$000(Landroidx/media3/extractor/jpeg/StartOffsetExtractorOutput;)J

    move-result-wide v5

    add-long/2addr v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    new-instance v1, Landroidx/media3/extractor/SeekPoint;

    iget-object v2, p1, Landroidx/media3/extractor/SeekMap$SeekPoints;->second:Landroidx/media3/extractor/SeekPoint;

    iget-wide v2, v2, Landroidx/media3/extractor/SeekPoint;->timeUs:J

    iget-object p1, p1, Landroidx/media3/extractor/SeekMap$SeekPoints;->second:Landroidx/media3/extractor/SeekPoint;

    iget-wide v4, p1, Landroidx/media3/extractor/SeekPoint;->position:J

    iget-object p0, p0, Landroidx/media3/extractor/jpeg/StartOffsetExtractorOutput$1;->this$0:Landroidx/media3/extractor/jpeg/StartOffsetExtractorOutput;

    .line 73
    invoke-static {p0}, Landroidx/media3/extractor/jpeg/StartOffsetExtractorOutput;->access$000(Landroidx/media3/extractor/jpeg/StartOffsetExtractorOutput;)J

    move-result-wide p0

    add-long/2addr v4, p0

    invoke-direct {v1, v2, v3, v4, v5}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    invoke-direct {p2, v0, v1}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;Landroidx/media3/extractor/SeekPoint;)V

    return-object p2
.end method

.method public isSeekable()Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/extractor/jpeg/StartOffsetExtractorOutput$1;->val$seekMap:Landroidx/media3/extractor/SeekMap;

    .line 60
    invoke-interface {p0}, Landroidx/media3/extractor/SeekMap;->isSeekable()Z

    move-result p0

    return p0
.end method
