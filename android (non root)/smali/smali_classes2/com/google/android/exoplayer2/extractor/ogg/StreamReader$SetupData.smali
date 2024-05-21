.class Lcom/google/android/exoplayer2/extractor/ogg/StreamReader$SetupData;
.super Ljava/lang/Object;
.source "StreamReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/ogg/StreamReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SetupData"
.end annotation


# instance fields
.field format:Lcom/google/android/exoplayer2/Format;

.field oggSeeker:Lcom/google/android/exoplayer2/extractor/ogg/OggSeeker;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
