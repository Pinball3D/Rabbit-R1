.class public interface abstract Landroidx/media3/exoplayer/metadata/MetadataDecoderFactory;
.super Ljava/lang/Object;
.source "MetadataDecoderFactory.java"


# static fields
.field public static final DEFAULT:Landroidx/media3/exoplayer/metadata/MetadataDecoderFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    new-instance v0, Landroidx/media3/exoplayer/metadata/MetadataDecoderFactory$1;

    invoke-direct {v0}, Landroidx/media3/exoplayer/metadata/MetadataDecoderFactory$1;-><init>()V

    sput-object v0, Landroidx/media3/exoplayer/metadata/MetadataDecoderFactory;->DEFAULT:Landroidx/media3/exoplayer/metadata/MetadataDecoderFactory;

    return-void
.end method


# virtual methods
.method public abstract createDecoder(Landroidx/media3/common/Format;)Landroidx/media3/extractor/metadata/MetadataDecoder;
.end method

.method public abstract supportsFormat(Landroidx/media3/common/Format;)Z
.end method
