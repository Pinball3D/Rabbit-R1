.class final Landroidx/media3/extractor/text/ttml/TtmlRegion;
.super Ljava/lang/Object;
.source "TtmlRegion.java"


# instance fields
.field public final height:F

.field public final id:Ljava/lang/String;

.field public final line:F

.field public final lineAnchor:I

.field public final lineType:I

.field public final position:F

.field public final textSize:F

.field public final textSizeType:I

.field public final verticalType:I

.field public final width:F


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 11

    const v2, -0x800001

    const v3, -0x800001

    const/high16 v4, -0x80000000

    const/high16 v5, -0x80000000

    const v6, -0x800001

    const v7, -0x800001

    const/high16 v8, -0x80000000

    const v9, -0x800001

    const/high16 v10, -0x80000000

    move-object v0, p0

    move-object v1, p1

    .line 35
    invoke-direct/range {v0 .. v10}, Landroidx/media3/extractor/text/ttml/TtmlRegion;-><init>(Ljava/lang/String;FFIIFFIFI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;FFIIFFIFI)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/text/ttml/TtmlRegion;->id:Ljava/lang/String;

    iput p2, p0, Landroidx/media3/extractor/text/ttml/TtmlRegion;->position:F

    iput p3, p0, Landroidx/media3/extractor/text/ttml/TtmlRegion;->line:F

    iput p4, p0, Landroidx/media3/extractor/text/ttml/TtmlRegion;->lineType:I

    iput p5, p0, Landroidx/media3/extractor/text/ttml/TtmlRegion;->lineAnchor:I

    iput p6, p0, Landroidx/media3/extractor/text/ttml/TtmlRegion;->width:F

    iput p7, p0, Landroidx/media3/extractor/text/ttml/TtmlRegion;->height:F

    iput p8, p0, Landroidx/media3/extractor/text/ttml/TtmlRegion;->textSizeType:I

    iput p9, p0, Landroidx/media3/extractor/text/ttml/TtmlRegion;->textSize:F

    iput p10, p0, Landroidx/media3/extractor/text/ttml/TtmlRegion;->verticalType:I

    return-void
.end method
