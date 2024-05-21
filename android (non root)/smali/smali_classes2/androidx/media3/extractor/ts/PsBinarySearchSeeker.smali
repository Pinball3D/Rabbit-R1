.class final Landroidx/media3/extractor/ts/PsBinarySearchSeeker;
.super Landroidx/media3/extractor/BinarySearchSeeker;
.source "PsBinarySearchSeeker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/ts/PsBinarySearchSeeker$PsScrSeeker;
    }
.end annotation


# static fields
.field private static final MINIMUM_SEARCH_RANGE_BYTES:I = 0x3e8

.field private static final SEEK_TOLERANCE_US:J = 0x186a0L

.field private static final TIMESTAMP_SEARCH_BYTES:I = 0x4e20


# direct methods
.method public constructor <init>(Landroidx/media3/common/util/TimestampAdjuster;JJ)V
    .locals 16

    .line 44
    new-instance v1, Landroidx/media3/extractor/BinarySearchSeeker$DefaultSeekTimestampConverter;

    invoke-direct {v1}, Landroidx/media3/extractor/BinarySearchSeeker$DefaultSeekTimestampConverter;-><init>()V

    new-instance v2, Landroidx/media3/extractor/ts/PsBinarySearchSeeker$PsScrSeeker;

    const/4 v0, 0x0

    move-object/from16 v3, p1

    invoke-direct {v2, v3, v0}, Landroidx/media3/extractor/ts/PsBinarySearchSeeker$PsScrSeeker;-><init>(Landroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/ts/PsBinarySearchSeeker$1;)V

    const-wide/16 v5, 0x0

    const-wide/16 v3, 0x1

    add-long v7, p2, v3

    const-wide/16 v9, 0x0

    const-wide/16 v13, 0xbc

    const/16 v15, 0x3e8

    move-object/from16 v0, p0

    move-wide/from16 v3, p2

    move-wide/from16 v11, p4

    invoke-direct/range {v0 .. v15}, Landroidx/media3/extractor/BinarySearchSeeker;-><init>(Landroidx/media3/extractor/BinarySearchSeeker$SeekTimestampConverter;Landroidx/media3/extractor/BinarySearchSeeker$TimestampSeeker;JJJJJJI)V

    return-void
.end method

.method static synthetic access$100([BI)I
    .locals 0

    .line 36
    invoke-static {p0, p1}, Landroidx/media3/extractor/ts/PsBinarySearchSeeker;->peekIntAtPosition([BI)I

    move-result p0

    return p0
.end method

.method private static peekIntAtPosition([BI)I
    .locals 2

    .line 206
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method
