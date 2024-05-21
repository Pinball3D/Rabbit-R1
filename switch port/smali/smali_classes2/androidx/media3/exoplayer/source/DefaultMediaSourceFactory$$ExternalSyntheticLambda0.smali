.class public final synthetic Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/media3/extractor/ExtractorsFactory;


# instance fields
.field public final synthetic f$0:Landroidx/media3/common/Format;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/common/Format;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$$ExternalSyntheticLambda0;->f$0:Landroidx/media3/common/Format;

    return-void
.end method


# virtual methods
.method public final createExtractors()[Landroidx/media3/extractor/Extractor;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory$$ExternalSyntheticLambda0;->f$0:Landroidx/media3/common/Format;

    invoke-static {p0}, Landroidx/media3/exoplayer/source/DefaultMediaSourceFactory;->lambda$createMediaSource$0(Landroidx/media3/common/Format;)[Landroidx/media3/extractor/Extractor;

    move-result-object p0

    return-object p0
.end method
