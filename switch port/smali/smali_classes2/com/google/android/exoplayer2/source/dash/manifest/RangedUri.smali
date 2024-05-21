.class public final Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
.super Ljava/lang/Object;
.source "RangedUri.java"


# instance fields
.field private hashCode:I

.field public final length:J

.field private final referenceUri:Ljava/lang/String;

.field public final start:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->referenceUri:Ljava/lang/String;

    iput-wide p2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->start:J

    iput-wide p4, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->length:J

    return-void
.end method


# virtual methods
.method public attemptMerge(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .locals 12

    .line 85
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->resolveUriString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 86
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->resolveUriString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->length:J

    const-wide/16 v4, -0x1

    cmp-long p2, v2, v4

    if-eqz p2, :cond_2

    iget-wide v6, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->start:J

    add-long v8, v6, v2

    .line 88
    iget-wide v10, p1, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->start:J

    cmp-long p2, v8, v10

    if-nez p2, :cond_2

    .line 89
    new-instance p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    .line 92
    iget-wide p1, p1, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->length:J

    cmp-long v0, p1, v4

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    add-long/2addr v2, p1

    move-wide v4, v2

    :goto_0
    move-object v0, p0

    move-wide v2, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;-><init>(Ljava/lang/String;JJ)V

    return-object p0

    .line 93
    :cond_2
    iget-wide v6, p1, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->length:J

    cmp-long p2, v6, v4

    if-eqz p2, :cond_4

    iget-wide p1, p1, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->start:J

    add-long v8, p1, v6

    iget-wide v10, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->start:J

    cmp-long p0, v8, v10

    if-nez p0, :cond_4

    .line 94
    new-instance p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    add-long/2addr v6, v2

    move-wide v4, v6

    :goto_1
    move-object v0, p0

    move-wide v2, p1

    .line 97
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;-><init>(Ljava/lang/String;JJ)V

    return-object p0

    :cond_4
    :goto_2
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 120
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 123
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->start:J

    .line 124
    iget-wide v4, p1, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->start:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->length:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->length:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->referenceUri:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->referenceUri:Ljava/lang/String;

    .line 126
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 4

    iget v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->hashCode:I

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->start:J

    long-to-int v0, v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->length:J

    long-to-int v0, v2

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->referenceUri:Ljava/lang/String;

    .line 109
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->hashCode:I

    :cond_0
    iget p0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->hashCode:I

    return p0
.end method

.method public resolveUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->referenceUri:Ljava/lang/String;

    .line 57
    invoke-static {p1, p0}, Lcom/google/android/exoplayer2/util/UriUtil;->resolveToUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public resolveUriString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->referenceUri:Ljava/lang/String;

    .line 67
    invoke-static {p1, p0}, Lcom/google/android/exoplayer2/util/UriUtil;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RangedUri(referenceUri="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->referenceUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->start:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;->length:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
