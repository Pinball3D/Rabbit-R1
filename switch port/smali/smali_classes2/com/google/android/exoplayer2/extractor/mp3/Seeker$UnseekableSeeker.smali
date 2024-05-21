.class public Lcom/google/android/exoplayer2/extractor/mp3/Seeker$UnseekableSeeker;
.super Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;
.source "Seeker.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/mp3/Seeker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/mp3/Seeker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnseekableSeeker"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 46
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;-><init>(J)V

    return-void
.end method


# virtual methods
.method public getDataEndPosition()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getTimeUs(J)J
    .locals 0

    const-wide/16 p0, 0x0

    return-wide p0
.end method
