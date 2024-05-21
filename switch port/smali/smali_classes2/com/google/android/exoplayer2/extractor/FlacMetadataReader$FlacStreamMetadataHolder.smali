.class public final Lcom/google/android/exoplayer2/extractor/FlacMetadataReader$FlacStreamMetadataHolder;
.super Ljava/lang/Object;
.source "FlacMetadataReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/FlacMetadataReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FlacStreamMetadataHolder"
.end annotation


# instance fields
.field public flacStreamMetadata:Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/FlacMetadataReader$FlacStreamMetadataHolder;->flacStreamMetadata:Lcom/google/android/exoplayer2/extractor/FlacStreamMetadata;

    return-void
.end method
