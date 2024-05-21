.class public final synthetic Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/Format;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/Format;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/exoplayer2/Format;

    return-void
.end method


# virtual methods
.method public final createExtractors()[Lcom/google/android/exoplayer2/extractor/Extractor;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/exoplayer2/Format;

    invoke-static {p0}, Lcom/google/android/exoplayer2/source/DefaultMediaSourceFactory;->lambda$createMediaSource$0(Lcom/google/android/exoplayer2/Format;)[Lcom/google/android/exoplayer2/extractor/Extractor;

    move-result-object p0

    return-object p0
.end method
