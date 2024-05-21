.class public final Lcom/google/android/exoplayer2/Tracks$Group;
.super Ljava/lang/Object;
.source "Tracks.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Bundleable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/Tracks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Group"
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/Bundleable$Creator<",
            "Lcom/google/android/exoplayer2/Tracks$Group;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_ADAPTIVE_SUPPORTED:Ljava/lang/String;

.field private static final FIELD_TRACK_GROUP:Ljava/lang/String;

.field private static final FIELD_TRACK_SELECTED:Ljava/lang/String;

.field private static final FIELD_TRACK_SUPPORT:Ljava/lang/String;


# instance fields
.field private final adaptiveSupported:Z

.field public final length:I

.field private final mediaTrackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

.field private final trackSelected:[Z

.field private final trackSupport:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 229
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/Tracks$Group;->FIELD_TRACK_GROUP:Ljava/lang/String;

    const/4 v0, 0x1

    .line 230
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/Tracks$Group;->FIELD_TRACK_SUPPORT:Ljava/lang/String;

    const/4 v0, 0x3

    .line 231
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/Tracks$Group;->FIELD_TRACK_SELECTED:Ljava/lang/String;

    const/4 v0, 0x4

    .line 232
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/Tracks$Group;->FIELD_ADAPTIVE_SUPPORTED:Ljava/lang/String;

    .line 245
    new-instance v0, Lcom/google/android/exoplayer2/Tracks$Group$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Tracks$Group$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/Tracks$Group;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/source/TrackGroup;Z[I[Z)V
    .locals 4

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iget v0, p1, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    iput v0, p0, Lcom/google/android/exoplayer2/Tracks$Group;->length:I

    .line 66
    array-length v1, p3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    array-length v1, p4

    if-ne v0, v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/Tracks$Group;->mediaTrackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

    if-eqz p2, :cond_1

    if-le v0, v3, :cond_1

    move v2, v3

    :cond_1
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/Tracks$Group;->adaptiveSupported:Z

    .line 69
    invoke-virtual {p3}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Lcom/google/android/exoplayer2/Tracks$Group;->trackSupport:[I

    .line 70
    invoke-virtual {p4}, [Z->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Z

    iput-object p1, p0, Lcom/google/android/exoplayer2/Tracks$Group;->trackSelected:[Z

    return-void
.end method

.method static synthetic lambda$static$0(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Tracks$Group;
    .locals 5

    .line 248
    sget-object v0, Lcom/google/android/exoplayer2/source/TrackGroup;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    sget-object v1, Lcom/google/android/exoplayer2/Tracks$Group;->FIELD_TRACK_GROUP:Ljava/lang/String;

    .line 249
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/Bundleable;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/TrackGroup;

    sget-object v1, Lcom/google/android/exoplayer2/Tracks$Group;->FIELD_TRACK_SUPPORT:Ljava/lang/String;

    .line 252
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    iget v2, v0, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    new-array v2, v2, [I

    .line 251
    invoke-static {v1, v2}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    sget-object v2, Lcom/google/android/exoplayer2/Tracks$Group;->FIELD_TRACK_SELECTED:Ljava/lang/String;

    .line 255
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v2

    iget v3, v0, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    new-array v3, v3, [Z

    .line 254
    invoke-static {v2, v3}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Z

    sget-object v3, Lcom/google/android/exoplayer2/Tracks$Group;->FIELD_ADAPTIVE_SUPPORTED:Ljava/lang/String;

    const/4 v4, 0x0

    .line 256
    invoke-virtual {p0, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    .line 257
    new-instance v3, Lcom/google/android/exoplayer2/Tracks$Group;

    invoke-direct {v3, v0, p0, v1, v2}, Lcom/google/android/exoplayer2/Tracks$Group;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;Z[I[Z)V

    return-object v3
.end method


# virtual methods
.method public copyWithId(Ljava/lang/String;)Lcom/google/android/exoplayer2/Tracks$Group;
    .locals 3

    .line 199
    new-instance v0, Lcom/google/android/exoplayer2/Tracks$Group;

    iget-object v1, p0, Lcom/google/android/exoplayer2/Tracks$Group;->mediaTrackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

    .line 200
    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/source/TrackGroup;->copyWithId(Ljava/lang/String;)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object p1

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/Tracks$Group;->adaptiveSupported:Z

    iget-object v2, p0, Lcom/google/android/exoplayer2/Tracks$Group;->trackSupport:[I

    iget-object p0, p0, Lcom/google/android/exoplayer2/Tracks$Group;->trackSelected:[Z

    invoke-direct {v0, p1, v1, v2, p0}, Lcom/google/android/exoplayer2/Tracks$Group;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;Z[I[Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 208
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 211
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/Tracks$Group;

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/Tracks$Group;->adaptiveSupported:Z

    .line 212
    iget-boolean v3, p1, Lcom/google/android/exoplayer2/Tracks$Group;->adaptiveSupported:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/Tracks$Group;->mediaTrackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

    iget-object v3, p1, Lcom/google/android/exoplayer2/Tracks$Group;->mediaTrackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

    .line 213
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/source/TrackGroup;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/Tracks$Group;->trackSupport:[I

    iget-object v3, p1, Lcom/google/android/exoplayer2/Tracks$Group;->trackSupport:[I

    .line 214
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/google/android/exoplayer2/Tracks$Group;->trackSelected:[Z

    iget-object p1, p1, Lcom/google/android/exoplayer2/Tracks$Group;->trackSelected:[Z

    .line 215
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Z[Z)Z

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

.method public getMediaTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/Tracks$Group;->mediaTrackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

    return-object p0
.end method

.method public getTrackFormat(I)Lcom/google/android/exoplayer2/Format;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/Tracks$Group;->mediaTrackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

    .line 92
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object p0

    return-object p0
.end method

.method public getTrackSupport(I)I
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/Tracks$Group;->trackSupport:[I

    .line 102
    aget p0, p0, p1

    return p0
.end method

.method public getType()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/Tracks$Group;->mediaTrackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

    .line 189
    iget p0, p0, Lcom/google/android/exoplayer2/source/TrackGroup;->type:I

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/Tracks$Group;->mediaTrackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

    .line 220
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/TrackGroup;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/Tracks$Group;->adaptiveSupported:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/exoplayer2/Tracks$Group;->trackSupport:[I

    .line 222
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/google/android/exoplayer2/Tracks$Group;->trackSelected:[Z

    .line 223
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Z)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public isAdaptiveSupported()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/Tracks$Group;->adaptiveSupported:Z

    return p0
.end method

.method public isSelected()Z
    .locals 1

    iget-object p0, p0, Lcom/google/android/exoplayer2/Tracks$Group;->trackSelected:[Z

    const/4 v0, 0x1

    .line 135
    invoke-static {p0, v0}, Lcom/google/common/primitives/Booleans;->contains([ZZ)Z

    move-result p0

    return p0
.end method

.method public isSupported()Z
    .locals 1

    const/4 v0, 0x0

    .line 148
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/Tracks$Group;->isSupported(Z)Z

    move-result p0

    return p0
.end method

.method public isSupported(Z)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/Tracks$Group;->trackSupport:[I

    .line 161
    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 162
    invoke-virtual {p0, v1, p1}, Lcom/google/android/exoplayer2/Tracks$Group;->isTrackSupported(IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public isTrackSelected(I)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/Tracks$Group;->trackSelected:[Z

    .line 184
    aget-boolean p0, p0, p1

    return p0
.end method

.method public isTrackSupported(I)Z
    .locals 1

    const/4 v0, 0x0

    .line 113
    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/Tracks$Group;->isTrackSupported(IZ)Z

    move-result p0

    return p0
.end method

.method public isTrackSupported(IZ)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/Tracks$Group;->trackSupport:[I

    .line 128
    aget p0, p0, p1

    const/4 p1, 0x4

    if-eq p0, p1, :cond_1

    if-eqz p2, :cond_0

    const/4 p1, 0x3

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .line 236
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lcom/google/android/exoplayer2/Tracks$Group;->FIELD_TRACK_GROUP:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/exoplayer2/Tracks$Group;->mediaTrackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

    .line 237
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/TrackGroup;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v1, Lcom/google/android/exoplayer2/Tracks$Group;->FIELD_TRACK_SUPPORT:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/exoplayer2/Tracks$Group;->trackSupport:[I

    .line 238
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    sget-object v1, Lcom/google/android/exoplayer2/Tracks$Group;->FIELD_TRACK_SELECTED:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/exoplayer2/Tracks$Group;->trackSelected:[Z

    .line 239
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    sget-object v1, Lcom/google/android/exoplayer2/Tracks$Group;->FIELD_ADAPTIVE_SUPPORTED:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/Tracks$Group;->adaptiveSupported:Z

    .line 240
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method
