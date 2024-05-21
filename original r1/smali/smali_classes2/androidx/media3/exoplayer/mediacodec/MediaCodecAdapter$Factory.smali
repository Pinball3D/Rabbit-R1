.class public interface abstract Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;
.super Ljava/lang/Object;
.source "MediaCodecAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation


# static fields
.field public static final DEFAULT:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 119
    new-instance v0, Landroidx/media3/exoplayer/mediacodec/DefaultMediaCodecAdapterFactory;

    invoke-direct {v0}, Landroidx/media3/exoplayer/mediacodec/DefaultMediaCodecAdapterFactory;-><init>()V

    sput-object v0, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;->DEFAULT:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Factory;

    return-void
.end method


# virtual methods
.method public abstract createAdapter(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;)Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
