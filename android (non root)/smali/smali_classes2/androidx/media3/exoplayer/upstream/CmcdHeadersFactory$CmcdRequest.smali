.class final Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdRequest;
.super Ljava/lang/Object;
.source "CmcdHeadersFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CmcdRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdRequest$Builder;
    }
.end annotation


# instance fields
.field public final bufferLengthMs:J

.field public final customData:Ljava/lang/String;

.field public final measuredThroughputInKbps:J


# direct methods
.method private constructor <init>(Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdRequest$Builder;)V
    .locals 2

    .line 504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 505
    invoke-static {p1}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdRequest$Builder;->access$700(Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdRequest$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdRequest;->bufferLengthMs:J

    .line 506
    invoke-static {p1}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdRequest$Builder;->access$800(Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdRequest$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdRequest;->measuredThroughputInKbps:J

    .line 507
    invoke-static {p1}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdRequest$Builder;->access$900(Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdRequest$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdRequest;->customData:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdRequest$Builder;Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$1;)V
    .locals 0

    .line 419
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdRequest;-><init>(Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdRequest$Builder;)V

    return-void
.end method


# virtual methods
.method public populateHttpRequestHeaders(Lcom/google/common/collect/ImmutableMap$Builder;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableMap$Builder<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 518
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdRequest;->bufferLengthMs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v1, v3

    const-string v4, "%s=%d,"

    if-eqz v3, :cond_0

    const-string v3, "bl"

    .line 521
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v3, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v4, v1}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 520
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-wide v1, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdRequest;->measuredThroughputInKbps:J

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v3, v1, v5

    if-eqz v3, :cond_1

    const-string v3, "mtp"

    .line 526
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v3, v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 525
    invoke-static {v4, v1}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 524
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdRequest;->customData:Ljava/lang/String;

    .line 528
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object p0, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdRequest;->customData:Ljava/lang/String;

    .line 529
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "%s,"

    invoke-static {v1, p0}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-nez p0, :cond_3

    return-void

    .line 536
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string p0, "CMCD-Request"

    .line 537
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    return-void
.end method
