.class Landroidx/media3/extractor/text/SimpleSubtitleDecoder$1;
.super Landroidx/media3/extractor/text/SubtitleOutputBuffer;
.source "SimpleSubtitleDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media3/extractor/text/SimpleSubtitleDecoder;->createOutputBuffer()Landroidx/media3/extractor/text/SubtitleOutputBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/extractor/text/SimpleSubtitleDecoder;


# direct methods
.method constructor <init>(Landroidx/media3/extractor/text/SimpleSubtitleDecoder;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder$1;->this$0:Landroidx/media3/extractor/text/SimpleSubtitleDecoder;

    .line 60
    invoke-direct {p0}, Landroidx/media3/extractor/text/SubtitleOutputBuffer;-><init>()V

    return-void
.end method


# virtual methods
.method public release()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/extractor/text/SimpleSubtitleDecoder$1;->this$0:Landroidx/media3/extractor/text/SimpleSubtitleDecoder;

    .line 63
    invoke-static {v0, p0}, Landroidx/media3/extractor/text/SimpleSubtitleDecoder;->access$000(Landroidx/media3/extractor/text/SimpleSubtitleDecoder;Landroidx/media3/decoder/DecoderOutputBuffer;)V

    return-void
.end method
