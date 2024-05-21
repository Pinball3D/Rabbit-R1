.class public abstract Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer;
.super Lcom/google/android/exoplayer2/decoder/Buffer;
.source "DecoderOutputBuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/decoder/DecoderOutputBuffer$Owner;
    }
.end annotation


# instance fields
.field public skippedOutputBufferCount:I

.field public timeUs:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/google/android/exoplayer2/decoder/Buffer;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract release()V
.end method
