.class public abstract Landroidx/media3/decoder/DecoderOutputBuffer;
.super Landroidx/media3/decoder/Buffer;
.source "DecoderOutputBuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/decoder/DecoderOutputBuffer$Owner;
    }
.end annotation


# instance fields
.field public skippedOutputBufferCount:I

.field public timeUs:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroidx/media3/decoder/Buffer;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract release()V
.end method
