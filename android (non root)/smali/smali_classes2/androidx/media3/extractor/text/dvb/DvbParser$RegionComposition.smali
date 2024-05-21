.class final Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;
.super Ljava/lang/Object;
.source "DvbParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/text/dvb/DvbParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RegionComposition"
.end annotation


# instance fields
.field public final clutId:I

.field public final depth:I

.field public final fillFlag:Z

.field public final height:I

.field public final id:I

.field public final levelOfCompatibility:I

.field public final pixelCode2Bit:I

.field public final pixelCode4Bit:I

.field public final pixelCode8Bit:I

.field public final regionObjects:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/media3/extractor/text/dvb/DvbParser$RegionObject;",
            ">;"
        }
    .end annotation
.end field

.field public final width:I


# direct methods
.method public constructor <init>(IZIIIIIIIILandroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZIIIIIIII",
            "Landroid/util/SparseArray<",
            "Landroidx/media3/extractor/text/dvb/DvbParser$RegionObject;",
            ">;)V"
        }
    .end annotation

    .line 1039
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;->id:I

    iput-boolean p2, p0, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;->fillFlag:Z

    iput p3, p0, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;->width:I

    iput p4, p0, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;->height:I

    iput p5, p0, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;->levelOfCompatibility:I

    iput p6, p0, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;->depth:I

    iput p7, p0, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;->clutId:I

    iput p8, p0, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;->pixelCode8Bit:I

    iput p9, p0, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;->pixelCode4Bit:I

    iput p10, p0, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;->pixelCode2Bit:I

    iput-object p11, p0, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;->regionObjects:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public mergeFrom(Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;)V
    .locals 4

    .line 1054
    iget-object p1, p1, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;->regionObjects:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 1055
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/media3/extractor/text/dvb/DvbParser$RegionComposition;->regionObjects:Landroid/util/SparseArray;

    .line 1056
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/extractor/text/dvb/DvbParser$RegionObject;

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
