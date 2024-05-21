.class final Landroidx/media3/extractor/ts/TsBinarySearchSeeker;
.super Landroidx/media3/extractor/BinarySearchSeeker;
.source "TsBinarySearchSeeker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker;
    }
.end annotation


# static fields
.field private static final MINIMUM_SEARCH_RANGE_BYTES:I = 0x3ac

.field private static final SEEK_TOLERANCE_US:J = 0x186a0L


# direct methods
.method public constructor <init>(Landroidx/media3/common/util/TimestampAdjuster;JJII)V
    .locals 16

    .line 47
    new-instance v1, Landroidx/media3/extractor/BinarySearchSeeker$DefaultSeekTimestampConverter;

    invoke-direct {v1}, Landroidx/media3/extractor/BinarySearchSeeker$DefaultSeekTimestampConverter;-><init>()V

    new-instance v2, Landroidx/media3/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker;

    move-object/from16 v0, p1

    move/from16 v3, p6

    move/from16 v4, p7

    invoke-direct {v2, v3, v0, v4}, Landroidx/media3/extractor/ts/TsBinarySearchSeeker$TsPcrSeeker;-><init>(ILandroidx/media3/common/util/TimestampAdjuster;I)V

    const-wide/16 v5, 0x0

    const-wide/16 v3, 0x1

    add-long v7, p2, v3

    const-wide/16 v9, 0x0

    const-wide/16 v13, 0xbc

    const/16 v15, 0x3ac

    move-object/from16 v0, p0

    move-wide/from16 v3, p2

    move-wide/from16 v11, p4

    invoke-direct/range {v0 .. v15}, Landroidx/media3/extractor/BinarySearchSeeker;-><init>(Landroidx/media3/extractor/BinarySearchSeeker$SeekTimestampConverter;Landroidx/media3/extractor/BinarySearchSeeker$TimestampSeeker;JJJJJJI)V

    return-void
.end method
