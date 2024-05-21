.class public final Landroidx/media3/extractor/mp4/FixedSampleSizeRechunker$Results;
.super Ljava/lang/Object;
.source "FixedSampleSizeRechunker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/mp4/FixedSampleSizeRechunker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Results"
.end annotation


# instance fields
.field public final duration:J

.field public final flags:[I

.field public final maximumSize:I

.field public final offsets:[J

.field public final sizes:[I

.field public final timestamps:[J


# direct methods
.method private constructor <init>([J[II[J[IJ)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/mp4/FixedSampleSizeRechunker$Results;->offsets:[J

    iput-object p2, p0, Landroidx/media3/extractor/mp4/FixedSampleSizeRechunker$Results;->sizes:[I

    iput p3, p0, Landroidx/media3/extractor/mp4/FixedSampleSizeRechunker$Results;->maximumSize:I

    iput-object p4, p0, Landroidx/media3/extractor/mp4/FixedSampleSizeRechunker$Results;->timestamps:[J

    iput-object p5, p0, Landroidx/media3/extractor/mp4/FixedSampleSizeRechunker$Results;->flags:[I

    iput-wide p6, p0, Landroidx/media3/extractor/mp4/FixedSampleSizeRechunker$Results;->duration:J

    return-void
.end method

.method synthetic constructor <init>([J[II[J[IJLandroidx/media3/extractor/mp4/FixedSampleSizeRechunker$1;)V
    .locals 0

    .line 30
    invoke-direct/range {p0 .. p7}, Landroidx/media3/extractor/mp4/FixedSampleSizeRechunker$Results;-><init>([J[II[J[IJ)V

    return-void
.end method
