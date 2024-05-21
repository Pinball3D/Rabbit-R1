.class public final Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;
.super Ljava/lang/Object;
.source "DefaultBandwidthMeter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private clock:Lcom/google/android/exoplayer2/util/Clock;

.field private final context:Landroid/content/Context;

.field private initialBitrateEstimates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private resetOnNetworkTypeChange:Z

.field private slidingWindowMaxWeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 127
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->context:Landroid/content/Context;

    .line 128
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Util;->getCountryCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->getInitialBitrateEstimatesForCountry(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->initialBitrateEstimates:Ljava/util/Map;

    const/16 p1, 0x7d0

    iput p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->slidingWindowMaxWeight:I

    .line 130
    sget-object p1, Lcom/google/android/exoplayer2/util/Clock;->DEFAULT:Lcom/google/android/exoplayer2/util/Clock;

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->clock:Lcom/google/android/exoplayer2/util/Clock;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->resetOnNetworkTypeChange:Z

    return-void
.end method

.method private static getInitialBitrateEstimatesForCountry(Ljava/lang/String;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 231
    invoke-static {p0}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->access$100(Ljava/lang/String;)[I

    move-result-object p0

    .line 232
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const/4 v1, 0x0

    .line 233
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-wide/32 v3, 0xf4240

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x2

    .line 235
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->DEFAULT_INITIAL_BITRATE_ESTIMATES_WIFI:Lcom/google/common/collect/ImmutableList;

    aget v5, p0, v1

    .line 236
    invoke-virtual {v4, v5}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 234
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x3

    .line 238
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->DEFAULT_INITIAL_BITRATE_ESTIMATES_2G:Lcom/google/common/collect/ImmutableList;

    const/4 v6, 0x1

    aget v6, p0, v6

    .line 239
    invoke-virtual {v5, v6}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 237
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x4

    .line 241
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->DEFAULT_INITIAL_BITRATE_ESTIMATES_3G:Lcom/google/common/collect/ImmutableList;

    aget v2, p0, v2

    .line 242
    invoke-virtual {v6, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 240
    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x5

    .line 244
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->DEFAULT_INITIAL_BITRATE_ESTIMATES_4G:Lcom/google/common/collect/ImmutableList;

    aget v3, p0, v3

    .line 245
    invoke-virtual {v6, v3}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 243
    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0xa

    .line 247
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v5, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->DEFAULT_INITIAL_BITRATE_ESTIMATES_5G_NSA:Lcom/google/common/collect/ImmutableList;

    aget v4, p0, v4

    .line 248
    invoke-virtual {v5, v4}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 246
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x9

    .line 250
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->DEFAULT_INITIAL_BITRATE_ESTIMATES_5G_SA:Lcom/google/common/collect/ImmutableList;

    aget v2, p0, v2

    .line 251
    invoke-virtual {v4, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 249
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x7

    .line 254
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;->DEFAULT_INITIAL_BITRATE_ESTIMATES_WIFI:Lcom/google/common/collect/ImmutableList;

    aget p0, p0, v1

    .line 255
    invoke-virtual {v3, p0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    .line 253
    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;
    .locals 8

    .line 222
    new-instance v7, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->initialBitrateEstimates:Ljava/util/Map;

    iget v3, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->slidingWindowMaxWeight:I

    iget-object v4, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->clock:Lcom/google/android/exoplayer2/util/Clock;

    iget-boolean v5, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->resetOnNetworkTypeChange:Z

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;-><init>(Landroid/content/Context;Ljava/util/Map;ILcom/google/android/exoplayer2/util/Clock;ZLcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$1;)V

    return-object v7
.end method

.method public setClock(Lcom/google/android/exoplayer2/util/Clock;)Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->clock:Lcom/google/android/exoplayer2/util/Clock;

    return-object p0
.end method

.method public setInitialBitrateEstimate(IJ)Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->initialBitrateEstimates:Ljava/util/Map;

    .line 172
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setInitialBitrateEstimate(J)Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->initialBitrateEstimates:Ljava/util/Map;

    .line 155
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 156
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1, p1, p2}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->setInitialBitrateEstimate(IJ)Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public setInitialBitrateEstimate(Ljava/lang/String;)Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;
    .locals 0

    .line 187
    invoke-static {p1}, Lcom/google/common/base/Ascii;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->getInitialBitrateEstimatesForCountry(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->initialBitrateEstimates:Ljava/util/Map;

    return-object p0
.end method

.method public setResetOnNetworkTypeChange(Z)Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->resetOnNetworkTypeChange:Z

    return-object p0
.end method

.method public setSlidingWindowMaxWeight(I)Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->slidingWindowMaxWeight:I

    return-object p0
.end method
