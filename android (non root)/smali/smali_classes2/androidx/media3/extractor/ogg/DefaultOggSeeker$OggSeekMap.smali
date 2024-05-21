.class final Landroidx/media3/extractor/ogg/DefaultOggSeeker$OggSeekMap;
.super Ljava/lang/Object;
.source "DefaultOggSeeker.java"

# interfaces
.implements Landroidx/media3/extractor/SeekMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/ogg/DefaultOggSeeker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OggSeekMap"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/extractor/ogg/DefaultOggSeeker;


# direct methods
.method private constructor <init>(Landroidx/media3/extractor/ogg/DefaultOggSeeker;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker$OggSeekMap;->this$0:Landroidx/media3/extractor/ogg/DefaultOggSeeker;

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/extractor/ogg/DefaultOggSeeker;Landroidx/media3/extractor/ogg/DefaultOggSeeker$1;)V
    .locals 0

    .line 252
    invoke-direct {p0, p1}, Landroidx/media3/extractor/ogg/DefaultOggSeeker$OggSeekMap;-><init>(Landroidx/media3/extractor/ogg/DefaultOggSeeker;)V

    return-void
.end method


# virtual methods
.method public getDurationUs()J
    .locals 3

    iget-object v0, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker$OggSeekMap;->this$0:Landroidx/media3/extractor/ogg/DefaultOggSeeker;

    .line 278
    invoke-static {v0}, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->access$100(Landroidx/media3/extractor/ogg/DefaultOggSeeker;)Landroidx/media3/extractor/ogg/StreamReader;

    move-result-object v0

    iget-object p0, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker$OggSeekMap;->this$0:Landroidx/media3/extractor/ogg/DefaultOggSeeker;

    invoke-static {p0}, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->access$300(Landroidx/media3/extractor/ogg/DefaultOggSeeker;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/media3/extractor/ogg/StreamReader;->convertGranuleToTime(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSeekPoints(J)Landroidx/media3/extractor/SeekMap$SeekPoints;
    .locals 10

    iget-object v0, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker$OggSeekMap;->this$0:Landroidx/media3/extractor/ogg/DefaultOggSeeker;

    .line 261
    invoke-static {v0}, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->access$100(Landroidx/media3/extractor/ogg/DefaultOggSeeker;)Landroidx/media3/extractor/ogg/StreamReader;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/media3/extractor/ogg/StreamReader;->convertTimeToGranule(J)J

    move-result-wide v0

    iget-object v2, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker$OggSeekMap;->this$0:Landroidx/media3/extractor/ogg/DefaultOggSeeker;

    .line 263
    invoke-static {v2}, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->access$200(Landroidx/media3/extractor/ogg/DefaultOggSeeker;)J

    move-result-wide v2

    .line 266
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker$OggSeekMap;->this$0:Landroidx/media3/extractor/ogg/DefaultOggSeeker;

    .line 267
    invoke-static {v1}, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->access$400(Landroidx/media3/extractor/ogg/DefaultOggSeeker;)J

    move-result-wide v4

    iget-object v1, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker$OggSeekMap;->this$0:Landroidx/media3/extractor/ogg/DefaultOggSeeker;

    invoke-static {v1}, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->access$200(Landroidx/media3/extractor/ogg/DefaultOggSeeker;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker$OggSeekMap;->this$0:Landroidx/media3/extractor/ogg/DefaultOggSeeker;

    .line 268
    invoke-static {v1}, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->access$300(Landroidx/media3/extractor/ogg/DefaultOggSeeker;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 269
    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    add-long/2addr v2, v0

    const-wide/16 v0, 0x7530

    sub-long v4, v2, v0

    iget-object v0, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker$OggSeekMap;->this$0:Landroidx/media3/extractor/ogg/DefaultOggSeeker;

    .line 272
    invoke-static {v0}, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->access$200(Landroidx/media3/extractor/ogg/DefaultOggSeeker;)J

    move-result-wide v6

    iget-object p0, p0, Landroidx/media3/extractor/ogg/DefaultOggSeeker$OggSeekMap;->this$0:Landroidx/media3/extractor/ogg/DefaultOggSeeker;

    invoke-static {p0}, Landroidx/media3/extractor/ogg/DefaultOggSeeker;->access$400(Landroidx/media3/extractor/ogg/DefaultOggSeeker;)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    sub-long v8, v0, v2

    invoke-static/range {v4 .. v9}, Landroidx/media3/common/util/Util;->constrainValue(JJJ)J

    move-result-wide v0

    .line 273
    new-instance p0, Landroidx/media3/extractor/SeekMap$SeekPoints;

    new-instance v2, Landroidx/media3/extractor/SeekPoint;

    invoke-direct {v2, p1, p2, v0, v1}, Landroidx/media3/extractor/SeekPoint;-><init>(JJ)V

    invoke-direct {p0, v2}, Landroidx/media3/extractor/SeekMap$SeekPoints;-><init>(Landroidx/media3/extractor/SeekPoint;)V

    return-object p0
.end method

.method public isSeekable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
