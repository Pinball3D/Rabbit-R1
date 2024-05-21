.class final Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdStatus;
.super Ljava/lang/Object;
.source "CmcdHeadersFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CmcdStatus"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdStatus$Builder;
    }
.end annotation


# instance fields
.field public final customData:Ljava/lang/String;

.field public final maximumRequestedThroughputKbps:I


# direct methods
.method private constructor <init>(Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdStatus$Builder;)V
    .locals 1

    .line 766
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 767
    invoke-static {p1}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdStatus$Builder;->access$1700(Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdStatus$Builder;)I

    move-result v0

    iput v0, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdStatus;->maximumRequestedThroughputKbps:I

    .line 768
    invoke-static {p1}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdStatus$Builder;->access$1800(Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdStatus$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdStatus;->customData:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdStatus$Builder;Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$1;)V
    .locals 0

    .line 706
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdStatus;-><init>(Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdStatus$Builder;)V

    return-void
.end method


# virtual methods
.method public populateHttpRequestHeaders(Lcom/google/common/collect/ImmutableMap$Builder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableMap$Builder<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 779
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdStatus;->maximumRequestedThroughputKbps:I

    const v2, -0x7fffffff

    if-eq v1, v2, :cond_0

    const-string v2, "rtp"

    .line 784
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%s=%d,"

    .line 782
    invoke-static {v2, v1}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 781
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdStatus;->customData:Ljava/lang/String;

    .line 786
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p0, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdStatus;->customData:Ljava/lang/String;

    .line 787
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "%s,"

    invoke-static {v1, p0}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 790
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-nez p0, :cond_2

    return-void

    .line 794
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string p0, "CMCD-Status"

    .line 795
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    return-void
.end method
