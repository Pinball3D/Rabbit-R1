.class final Landroidx/media3/extractor/ogg/StreamReader$UnseekableOggSeeker;
.super Ljava/lang/Object;
.source "StreamReader.java"

# interfaces
.implements Landroidx/media3/extractor/ogg/OggSeeker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/ogg/StreamReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UnseekableOggSeeker"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/extractor/ogg/StreamReader$1;)V
    .locals 0

    .line 283
    invoke-direct {p0}, Landroidx/media3/extractor/ogg/StreamReader$UnseekableOggSeeker;-><init>()V

    return-void
.end method


# virtual methods
.method public createSeekMap()Landroidx/media3/extractor/SeekMap;
    .locals 2

    .line 297
    new-instance p0, Landroidx/media3/extractor/SeekMap$Unseekable;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p0, v0, v1}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(J)V

    return-object p0
.end method

.method public read(Landroidx/media3/extractor/ExtractorInput;)J
    .locals 0

    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public startSeek(J)V
    .locals 0

    return-void
.end method
