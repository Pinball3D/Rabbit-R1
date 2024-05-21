.class public final Landroidx/media3/extractor/Ac3Util$SyncFrameInfo;
.super Ljava/lang/Object;
.source "Ac3Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/Ac3Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SyncFrameInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/Ac3Util$SyncFrameInfo$StreamType;
    }
.end annotation


# static fields
.field public static final STREAM_TYPE_TYPE0:I = 0x0

.field public static final STREAM_TYPE_TYPE1:I = 0x1

.field public static final STREAM_TYPE_TYPE2:I = 0x2

.field public static final STREAM_TYPE_UNDEFINED:I = -0x1


# instance fields
.field public final bitrate:I

.field public final channelCount:I

.field public final frameSize:I

.field public final mimeType:Ljava/lang/String;

.field public final sampleCount:I

.field public final sampleRate:I

.field public final streamType:I


# direct methods
.method private constructor <init>(Ljava/lang/String;IIIIII)V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/Ac3Util$SyncFrameInfo;->mimeType:Ljava/lang/String;

    iput p2, p0, Landroidx/media3/extractor/Ac3Util$SyncFrameInfo;->streamType:I

    iput p3, p0, Landroidx/media3/extractor/Ac3Util$SyncFrameInfo;->channelCount:I

    iput p4, p0, Landroidx/media3/extractor/Ac3Util$SyncFrameInfo;->sampleRate:I

    iput p5, p0, Landroidx/media3/extractor/Ac3Util$SyncFrameInfo;->frameSize:I

    iput p6, p0, Landroidx/media3/extractor/Ac3Util$SyncFrameInfo;->sampleCount:I

    iput p7, p0, Landroidx/media3/extractor/Ac3Util$SyncFrameInfo;->bitrate:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIIIIILandroidx/media3/extractor/Ac3Util$1;)V
    .locals 0

    .line 45
    invoke-direct/range {p0 .. p7}, Landroidx/media3/extractor/Ac3Util$SyncFrameInfo;-><init>(Ljava/lang/String;IIIIII)V

    return-void
.end method
