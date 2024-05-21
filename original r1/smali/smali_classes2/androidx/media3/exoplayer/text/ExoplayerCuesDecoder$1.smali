.class Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder$1;
.super Landroidx/media3/extractor/text/SubtitleOutputBuffer;
.source "ExoplayerCuesDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder;


# direct methods
.method constructor <init>(Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder$1;->this$0:Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder;

    .line 75
    invoke-direct {p0}, Landroidx/media3/extractor/text/SubtitleOutputBuffer;-><init>()V

    return-void
.end method


# virtual methods
.method public release()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder$1;->this$0:Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder;

    .line 78
    invoke-static {v0, p0}, Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder;->access$000(Landroidx/media3/exoplayer/text/ExoplayerCuesDecoder;Landroidx/media3/extractor/text/SubtitleOutputBuffer;)V

    return-void
.end method
