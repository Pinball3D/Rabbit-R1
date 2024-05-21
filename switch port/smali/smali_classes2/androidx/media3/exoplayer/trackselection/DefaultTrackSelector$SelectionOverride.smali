.class public final Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;
.super Ljava/lang/Object;
.source "DefaultTrackSelector.java"

# interfaces
.implements Landroidx/media3/common/Bundleable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SelectionOverride"
.end annotation


# static fields
.field public static final CREATOR:Landroidx/media3/common/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/common/Bundleable$Creator<",
            "Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_GROUP_INDEX:Ljava/lang/String;

.field private static final FIELD_TRACKS:Ljava/lang/String;

.field private static final FIELD_TRACK_TYPE:Ljava/lang/String;


# instance fields
.field public final groupIndex:I

.field public final length:I

.field public final tracks:[I

.field public final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 2148
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;->FIELD_GROUP_INDEX:Ljava/lang/String;

    const/4 v0, 0x1

    .line 2149
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;->FIELD_TRACKS:Ljava/lang/String;

    const/4 v0, 0x2

    .line 2150
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;->FIELD_TRACK_TYPE:Ljava/lang/String;

    .line 2164
    new-instance v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    return-void
.end method

.method public varargs constructor <init>(I[I)V
    .locals 1

    const/4 v0, 0x0

    .line 2097
    invoke-direct {p0, p1, p2, v0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;-><init>(I[II)V

    return-void
.end method

.method public constructor <init>(I[II)V
    .locals 0

    .line 2108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;->groupIndex:I

    .line 2110
    array-length p1, p2

    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;->tracks:[I

    .line 2111
    array-length p2, p2

    iput p2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;->length:I

    iput p3, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;->type:I

    .line 2113
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    return-void
.end method

.method static synthetic lambda$static$0(Landroid/os/Bundle;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;
    .locals 4

    sget-object v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;->FIELD_GROUP_INDEX:Ljava/lang/String;

    const/4 v1, -0x1

    .line 2166
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    sget-object v2, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;->FIELD_TRACKS:Ljava/lang/String;

    .line 2167
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    sget-object v3, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;->FIELD_TRACK_TYPE:Ljava/lang/String;

    .line 2168
    invoke-virtual {p0, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-ltz v0, :cond_0

    if-ltz p0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2169
    :goto_0
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 2170
    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2171
    new-instance v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;

    invoke-direct {v1, v0, v2, p0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;-><init>(I[II)V

    return-object v1
.end method


# virtual methods
.method public containsTrack(I)Z
    .locals 4

    iget-object p0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;->tracks:[I

    .line 2118
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p0, v2

    if-ne v3, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 2137
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2140
    :cond_1
    check-cast p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;

    iget v2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;->groupIndex:I

    .line 2141
    iget v3, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;->groupIndex:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;->tracks:[I

    iget-object v3, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;->tracks:[I

    .line 2142
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget p0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;->type:I

    iget p1, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;->type:I

    if-ne p0, p1, :cond_2

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
    .locals 2

    iget v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;->groupIndex:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;->tracks:[I

    .line 2128
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;->type:I

    add-int/2addr v0, p0

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .line 2155
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;->FIELD_GROUP_INDEX:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;->groupIndex:I

    .line 2156
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;->FIELD_TRACKS:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;->tracks:[I

    .line 2157
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    sget-object v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;->FIELD_TRACK_TYPE:Ljava/lang/String;

    iget p0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;->type:I

    .line 2158
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method
