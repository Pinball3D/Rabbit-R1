.class public final Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;
.super Ljava/lang/Object;
.source "BaseUrl.java"


# static fields
.field public static final DEFAULT_DVB_PRIORITY:I = 0x1

.field public static final DEFAULT_WEIGHT:I = 0x1

.field public static final PRIORITY_UNSET:I = -0x80000000


# instance fields
.field public final priority:I

.field public final serviceLocation:Ljava/lang/String;

.field public final url:Ljava/lang/String;

.field public final weight:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/high16 v0, -0x80000000

    const/4 v1, 0x1

    .line 45
    invoke-direct {p0, p1, p1, v0, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;->url:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;->serviceLocation:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;->priority:I

    iput p4, p0, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;->weight:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 61
    :cond_0
    instance-of v1, p1, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 64
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;

    iget v1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;->priority:I

    .line 65
    iget v3, p1, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;->priority:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;->weight:I

    iget v3, p1, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;->weight:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;->url:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;->url:Ljava/lang/String;

    .line 67
    invoke-static {v1, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;->serviceLocation:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;->serviceLocation:Ljava/lang/String;

    .line 68
    invoke-static {p0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;->url:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;->serviceLocation:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;->priority:I

    .line 73
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;->weight:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
