.class final Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdSession;
.super Ljava/lang/Object;
.source "CmcdHeadersFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CmcdSession"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdSession$Builder;
    }
.end annotation


# static fields
.field public static final VERSION:I = 0x1


# instance fields
.field public final contentId:Ljava/lang/String;

.field public final customData:Ljava/lang/String;

.field public final sessionId:Ljava/lang/String;

.field public final streamType:Ljava/lang/String;

.field public final streamingFormat:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdSession$Builder;)V
    .locals 1

    .line 653
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 654
    invoke-static {p1}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdSession$Builder;->access$1100(Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdSession$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdSession;->contentId:Ljava/lang/String;

    .line 655
    invoke-static {p1}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdSession$Builder;->access$1200(Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdSession$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdSession;->sessionId:Ljava/lang/String;

    .line 656
    invoke-static {p1}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdSession$Builder;->access$1300(Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdSession$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdSession;->streamingFormat:Ljava/lang/String;

    .line 657
    invoke-static {p1}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdSession$Builder;->access$1400(Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdSession$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdSession;->streamType:Ljava/lang/String;

    .line 658
    invoke-static {p1}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdSession$Builder;->access$1500(Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdSession$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdSession;->customData:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdSession$Builder;Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$1;)V
    .locals 0

    .line 545
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdSession;-><init>(Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdSession$Builder;)V

    return-void
.end method


# virtual methods
.method public populateHttpRequestHeaders(Lcom/google/common/collect/ImmutableMap$Builder;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableMap$Builder<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 669
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdSession;->contentId:Ljava/lang/String;

    .line 670
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "%s=\"%s\","

    if-nez v1, :cond_0

    const-string v1, "cid"

    iget-object v3, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdSession;->contentId:Ljava/lang/String;

    .line 671
    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    .line 672
    invoke-static {v2, v1}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 671
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdSession;->sessionId:Ljava/lang/String;

    .line 674
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "sid"

    iget-object v3, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdSession;->sessionId:Ljava/lang/String;

    .line 675
    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    .line 676
    invoke-static {v2, v1}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 675
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdSession;->streamingFormat:Ljava/lang/String;

    .line 678
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "%s=%s,"

    if-nez v1, :cond_2

    const-string v1, "sf"

    iget-object v3, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdSession;->streamingFormat:Ljava/lang/String;

    .line 679
    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    .line 680
    invoke-static {v2, v1}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 679
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdSession;->streamType:Ljava/lang/String;

    .line 683
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "st"

    iget-object v3, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdSession;->streamType:Ljava/lang/String;

    .line 684
    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    .line 685
    invoke-static {v2, v1}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 684
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdSession;->customData:Ljava/lang/String;

    .line 690
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object p0, p0, Landroidx/media3/exoplayer/upstream/CmcdHeadersFactory$CmcdSession;->customData:Ljava/lang/String;

    .line 691
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "%s,"

    invoke-static {v1, p0}, Landroidx/media3/common/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 694
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-nez p0, :cond_5

    return-void

    .line 698
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string p0, "CMCD-Session"

    .line 699
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    return-void
.end method
