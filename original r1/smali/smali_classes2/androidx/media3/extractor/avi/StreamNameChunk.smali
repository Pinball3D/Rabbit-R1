.class final Landroidx/media3/extractor/avi/StreamNameChunk;
.super Ljava/lang/Object;
.source "StreamNameChunk.java"

# interfaces
.implements Landroidx/media3/extractor/avi/AviChunk;


# instance fields
.field public final name:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/avi/StreamNameChunk;->name:Ljava/lang/String;

    return-void
.end method

.method public static parseFrom(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/avi/StreamNameChunk;
    .locals 2

    .line 24
    new-instance v0, Landroidx/media3/extractor/avi/StreamNameChunk;

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/media3/extractor/avi/StreamNameChunk;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getType()I
    .locals 0

    const p0, 0x6e727473

    return p0
.end method
