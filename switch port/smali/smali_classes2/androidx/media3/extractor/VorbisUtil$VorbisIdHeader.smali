.class public final Landroidx/media3/extractor/VorbisUtil$VorbisIdHeader;
.super Ljava/lang/Object;
.source "VorbisUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/VorbisUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VorbisIdHeader"
.end annotation


# instance fields
.field public final bitrateMaximum:I

.field public final bitrateMinimum:I

.field public final bitrateNominal:I

.field public final blockSize0:I

.field public final blockSize1:I

.field public final channels:I

.field public final data:[B

.field public final framingFlag:Z

.field public final sampleRate:I

.field public final version:I


# direct methods
.method public constructor <init>(IIIIIIIIZ[B)V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/extractor/VorbisUtil$VorbisIdHeader;->version:I

    iput p2, p0, Landroidx/media3/extractor/VorbisUtil$VorbisIdHeader;->channels:I

    iput p3, p0, Landroidx/media3/extractor/VorbisUtil$VorbisIdHeader;->sampleRate:I

    iput p4, p0, Landroidx/media3/extractor/VorbisUtil$VorbisIdHeader;->bitrateMaximum:I

    iput p5, p0, Landroidx/media3/extractor/VorbisUtil$VorbisIdHeader;->bitrateNominal:I

    iput p6, p0, Landroidx/media3/extractor/VorbisUtil$VorbisIdHeader;->bitrateMinimum:I

    iput p7, p0, Landroidx/media3/extractor/VorbisUtil$VorbisIdHeader;->blockSize0:I

    iput p8, p0, Landroidx/media3/extractor/VorbisUtil$VorbisIdHeader;->blockSize1:I

    iput-boolean p9, p0, Landroidx/media3/extractor/VorbisUtil$VorbisIdHeader;->framingFlag:Z

    iput-object p10, p0, Landroidx/media3/extractor/VorbisUtil$VorbisIdHeader;->data:[B

    return-void
.end method
