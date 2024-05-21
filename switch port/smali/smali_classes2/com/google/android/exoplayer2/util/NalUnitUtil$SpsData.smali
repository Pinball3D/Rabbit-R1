.class public final Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;
.super Ljava/lang/Object;
.source "NalUnitUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/util/NalUnitUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SpsData"
.end annotation


# instance fields
.field public final constraintsFlagsAndReservedZero2Bits:I

.field public final deltaPicOrderAlwaysZeroFlag:Z

.field public final frameMbsOnlyFlag:Z

.field public final frameNumLength:I

.field public final height:I

.field public final levelIdc:I

.field public final maxNumRefFrames:I

.field public final picOrderCntLsbLength:I

.field public final picOrderCountType:I

.field public final pixelWidthHeightRatio:F

.field public final profileIdc:I

.field public final separateColorPlaneFlag:Z

.field public final seqParameterSetId:I

.field public final width:I


# direct methods
.method public constructor <init>(IIIIIIIFZZIIIZ)V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->profileIdc:I

    iput p2, p0, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->constraintsFlagsAndReservedZero2Bits:I

    iput p3, p0, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->levelIdc:I

    iput p4, p0, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->seqParameterSetId:I

    iput p5, p0, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->maxNumRefFrames:I

    iput p6, p0, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->width:I

    iput p7, p0, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->height:I

    iput p8, p0, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->pixelWidthHeightRatio:F

    iput-boolean p9, p0, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->separateColorPlaneFlag:Z

    iput-boolean p10, p0, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->frameMbsOnlyFlag:Z

    iput p11, p0, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->frameNumLength:I

    iput p12, p0, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->picOrderCountType:I

    iput p13, p0, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->picOrderCntLsbLength:I

    iput-boolean p14, p0, Lcom/google/android/exoplayer2/util/NalUnitUtil$SpsData;->deltaPicOrderAlwaysZeroFlag:Z

    return-void
.end method
