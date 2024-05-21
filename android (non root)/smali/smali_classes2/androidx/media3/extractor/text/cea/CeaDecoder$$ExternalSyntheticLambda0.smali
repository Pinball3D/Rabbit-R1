.class public final synthetic Landroidx/media3/extractor/text/cea/CeaDecoder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/media3/decoder/DecoderOutputBuffer$Owner;


# instance fields
.field public final synthetic f$0:Landroidx/media3/extractor/text/cea/CeaDecoder;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/extractor/text/cea/CeaDecoder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/text/cea/CeaDecoder$$ExternalSyntheticLambda0;->f$0:Landroidx/media3/extractor/text/cea/CeaDecoder;

    return-void
.end method


# virtual methods
.method public final releaseOutputBuffer(Landroidx/media3/decoder/DecoderOutputBuffer;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/extractor/text/cea/CeaDecoder$$ExternalSyntheticLambda0;->f$0:Landroidx/media3/extractor/text/cea/CeaDecoder;

    check-cast p1, Landroidx/media3/extractor/text/cea/CeaDecoder$CeaOutputBuffer;

    invoke-virtual {p0, p1}, Landroidx/media3/extractor/text/cea/CeaDecoder;->releaseOutputBuffer(Landroidx/media3/extractor/text/SubtitleOutputBuffer;)V

    return-void
.end method
