.class public final Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;
.super Ljava/lang/Object;
.source "Descriptor.java"


# instance fields
.field public final id:Ljava/lang/String;

.field public final schemeIdUri:Ljava/lang/String;

.field public final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->schemeIdUri:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->value:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 50
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->schemeIdUri:Ljava/lang/String;

    .line 51
    iget-object v3, p1, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->schemeIdUri:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->value:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->value:Ljava/lang/String;

    .line 52
    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->id:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->id:Ljava/lang/String;

    .line 53
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

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
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->schemeIdUri:Ljava/lang/String;

    .line 58
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->value:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 59
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;->id:Ljava/lang/String;

    if-eqz p0, :cond_1

    .line 60
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    return v0
.end method
