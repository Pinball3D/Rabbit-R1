.class final Landroidx/media3/extractor/text/ttml/TtmlDecoder$CellResolution;
.super Ljava/lang/Object;
.source "TtmlDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/text/ttml/TtmlDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CellResolution"
.end annotation


# instance fields
.field final columns:I

.field final rows:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 878
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/extractor/text/ttml/TtmlDecoder$CellResolution;->columns:I

    iput p2, p0, Landroidx/media3/extractor/text/ttml/TtmlDecoder$CellResolution;->rows:I

    return-void
.end method
