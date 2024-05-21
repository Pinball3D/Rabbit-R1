.class public interface abstract Landroidx/media3/extractor/ts/TsPayloadReader;
.super Ljava/lang/Object;
.source "TsPayloadReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/ts/TsPayloadReader$Flags;,
        Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;,
        Landroidx/media3/extractor/ts/TsPayloadReader$DvbSubtitleInfo;,
        Landroidx/media3/extractor/ts/TsPayloadReader$EsInfo;,
        Landroidx/media3/extractor/ts/TsPayloadReader$Factory;
    }
.end annotation


# static fields
.field public static final FLAG_DATA_ALIGNMENT_INDICATOR:I = 0x4

.field public static final FLAG_PAYLOAD_UNIT_START_INDICATOR:I = 0x1

.field public static final FLAG_RANDOM_ACCESS_INDICATOR:I = 0x2


# virtual methods
.method public abstract consume(Landroidx/media3/common/util/ParsableByteArray;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation
.end method

.method public abstract init(Landroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
.end method

.method public abstract seek()V
.end method
