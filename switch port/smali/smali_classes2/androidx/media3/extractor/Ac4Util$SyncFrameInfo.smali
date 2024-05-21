.class public final Landroidx/media3/extractor/Ac4Util$SyncFrameInfo;
.super Ljava/lang/Object;
.source "Ac4Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/Ac4Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SyncFrameInfo"
.end annotation


# instance fields
.field public final bitstreamVersion:I

.field public final channelCount:I

.field public final frameSize:I

.field public final sampleCount:I

.field public final sampleRate:I


# direct methods
.method private constructor <init>(IIIII)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/extractor/Ac4Util$SyncFrameInfo;->bitstreamVersion:I

    iput p2, p0, Landroidx/media3/extractor/Ac4Util$SyncFrameInfo;->channelCount:I

    iput p3, p0, Landroidx/media3/extractor/Ac4Util$SyncFrameInfo;->sampleRate:I

    iput p4, p0, Landroidx/media3/extractor/Ac4Util$SyncFrameInfo;->frameSize:I

    iput p5, p0, Landroidx/media3/extractor/Ac4Util$SyncFrameInfo;->sampleCount:I

    return-void
.end method

.method synthetic constructor <init>(IIIIILandroidx/media3/extractor/Ac4Util$1;)V
    .locals 0

    .line 33
    invoke-direct/range {p0 .. p5}, Landroidx/media3/extractor/Ac4Util$SyncFrameInfo;-><init>(IIIII)V

    return-void
.end method
