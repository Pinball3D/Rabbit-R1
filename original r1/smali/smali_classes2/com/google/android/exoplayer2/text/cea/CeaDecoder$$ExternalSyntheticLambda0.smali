.class public final synthetic Lcom/google/android/exoplayer2/text/cea/CeaDecoder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer$Owner;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplayer2/text/cea/CeaDecoder;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/text/cea/CeaDecoder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/cea/CeaDecoder$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/exoplayer2/text/cea/CeaDecoder;

    return-void
.end method


# virtual methods
.method public final releaseOutputBuffer(Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/text/cea/CeaDecoder$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/exoplayer2/text/cea/CeaDecoder;

    check-cast p1, Lcom/google/android/exoplayer2/text/cea/CeaDecoder$CeaOutputBuffer;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/text/cea/CeaDecoder;->releaseOutputBuffer(Lcom/google/android/exoplayer2/text/SubtitleOutputBuffer;)V

    return-void
.end method
