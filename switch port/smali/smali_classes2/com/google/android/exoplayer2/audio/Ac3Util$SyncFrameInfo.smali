.class public final Lcom/google/android/exoplayer2/audio/Ac3Util$SyncFrameInfo;
.super Ljava/lang/Object;
.source "Ac3Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/audio/Ac3Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SyncFrameInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/audio/Ac3Util$SyncFrameInfo$StreamType;
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

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/Ac3Util$SyncFrameInfo;->mimeType:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/exoplayer2/audio/Ac3Util$SyncFrameInfo;->streamType:I

    iput p3, p0, Lcom/google/android/exoplayer2/audio/Ac3Util$SyncFrameInfo;->channelCount:I

    iput p4, p0, Lcom/google/android/exoplayer2/audio/Ac3Util$SyncFrameInfo;->sampleRate:I

    iput p5, p0, Lcom/google/android/exoplayer2/audio/Ac3Util$SyncFrameInfo;->frameSize:I

    iput p6, p0, Lcom/google/android/exoplayer2/audio/Ac3Util$SyncFrameInfo;->sampleCount:I

    iput p7, p0, Lcom/google/android/exoplayer2/audio/Ac3Util$SyncFrameInfo;->bitrate:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIIIIILcom/google/android/exoplayer2/audio/Ac3Util$1;)V
    .locals 0

    .line 43
    invoke-direct/range {p0 .. p7}, Lcom/google/android/exoplayer2/audio/Ac3Util$SyncFrameInfo;-><init>(Ljava/lang/String;IIIIII)V

    return-void
.end method
