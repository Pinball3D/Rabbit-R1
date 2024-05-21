.class public final Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdLoadException;
.super Ljava/io/IOException;
.source "AdsMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/ads/AdsMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AdLoadException"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdLoadException$Type;
    }
.end annotation


# static fields
.field public static final TYPE_AD:I = 0x0

.field public static final TYPE_AD_GROUP:I = 0x1

.field public static final TYPE_ALL_ADS:I = 0x2

.field public static final TYPE_UNEXPECTED:I = 0x3


# instance fields
.field public final type:I


# direct methods
.method private constructor <init>(ILjava/lang/Exception;)V
    .locals 0

    .line 116
    invoke-direct {p0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    iput p1, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdLoadException;->type:I

    return-void
.end method

.method public static createForAd(Ljava/lang/Exception;)Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdLoadException;
    .locals 2

    .line 93
    new-instance v0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdLoadException;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdLoadException;-><init>(ILjava/lang/Exception;)V

    return-object v0
.end method

.method public static createForAdGroup(Ljava/lang/Exception;I)Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdLoadException;
    .locals 4

    .line 98
    new-instance v0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdLoadException;

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to load ad group "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x1

    invoke-direct {v0, p0, v1}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdLoadException;-><init>(ILjava/lang/Exception;)V

    return-object v0
.end method

.method public static createForAllAds(Ljava/lang/Exception;)Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdLoadException;
    .locals 2

    .line 104
    new-instance v0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdLoadException;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdLoadException;-><init>(ILjava/lang/Exception;)V

    return-object v0
.end method

.method public static createForUnexpected(Ljava/lang/RuntimeException;)Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdLoadException;
    .locals 2

    .line 109
    new-instance v0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdLoadException;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdLoadException;-><init>(ILjava/lang/Exception;)V

    return-object v0
.end method


# virtual methods
.method public getRuntimeExceptionForUnexpected()Ljava/lang/RuntimeException;
    .locals 2

    iget v0, p0, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdLoadException;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 125
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 126
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/ads/AdsMediaSource$AdLoadException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/RuntimeException;

    return-object p0
.end method
