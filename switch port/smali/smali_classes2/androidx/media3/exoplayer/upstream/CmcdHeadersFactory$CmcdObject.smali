.class final Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject;
.super Ljava/lang/Object;
.source "CmcdHeadersFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CmcdObject"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;
    }
.end annotation


# instance fields
.field public final bitrateKbps:I

.field public final customData:Ljava/lang/String;

.field public final objectDurationMs:J

.field public final objectType:Ljava/lang/String;

.field public final topBitrateKbps:I


# direct methods
.method private constructor <init>(Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;)V
    .locals 2

    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 372
    invoke-static {p1}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;->access$100(Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;)I

    move-result v0

    iput v0, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject;->bitrateKbps:I

    .line 373
    invoke-static {p1}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;->access$200(Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;)I

    move-result v0

    iput v0, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject;->topBitrateKbps:I

    .line 374
    invoke-static {p1}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;->access$300(Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject;->objectDurationMs:J

    .line 375
    invoke-static {p1}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;->access$400(Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject;->objectType:Ljava/lang/String;

    .line 376
    invoke-static {p1}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;->access$500(Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject;->customData:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$1;)V
    .locals 0

    .line 266
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject;-><init>(Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject$Builder;)V

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

    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject;->bitrateKbps:I

    const-string v2, "%s=%d,"

    const v3, -0x7fffffff

    if-eq v1, v3, :cond_0

    const-string v4, "br"

    .line 390
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v4, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 389
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget v1, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject;->topBitrateKbps:I

    if-eq v1, v3, :cond_1

    const-string v3, "tb"

    .line 394
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v3, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 393
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-wide v3, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject;->objectDurationMs:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    const-string v1, "d"

    .line 399
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    .line 398
    invoke-static {v2, v1}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 397
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject;->objectType:Ljava/lang/String;

    .line 401
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "ot"

    iget-object v2, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject;->objectType:Ljava/lang/String;

    .line 402
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%s=%s,"

    .line 403
    invoke-static {v2, v1}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 402
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject;->customData:Ljava/lang/String;

    .line 405
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object p0, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdObject;->customData:Ljava/lang/String;

    .line 406
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "%s,"

    invoke-static {v1, p0}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-nez p0, :cond_5

    return-void

    .line 413
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string p0, "CMCD-Object"

    .line 414
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    return-void
.end method
