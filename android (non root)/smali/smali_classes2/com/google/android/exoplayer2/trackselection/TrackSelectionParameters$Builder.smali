.class public Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
.super Ljava/lang/Object;
.source "TrackSelectionParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private disabledTrackTypes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private forceHighestSupportedBitrate:Z

.field private forceLowestBitrate:Z

.field private ignoredTextSelectionFlags:I

.field private maxAudioBitrate:I

.field private maxAudioChannelCount:I

.field private maxVideoBitrate:I

.field private maxVideoFrameRate:I

.field private maxVideoHeight:I

.field private maxVideoWidth:I

.field private minVideoBitrate:I

.field private minVideoFrameRate:I

.field private minVideoHeight:I

.field private minVideoWidth:I

.field private overrides:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/google/android/exoplayer2/source/TrackGroup;",
            "Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;",
            ">;"
        }
    .end annotation
.end field

.field private preferredAudioLanguages:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private preferredAudioMimeTypes:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private preferredAudioRoleFlags:I

.field private preferredTextLanguages:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private preferredTextRoleFlags:I

.field private preferredVideoMimeTypes:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private preferredVideoRoleFlags:I

.field private selectUndeterminedTextLanguage:Z

.field private viewportHeight:I

.field private viewportOrientationMayChange:Z

.field private viewportWidth:I


# direct methods
.method public constructor <init>()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->maxVideoWidth:I

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->maxVideoHeight:I

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->maxVideoFrameRate:I

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->maxVideoBitrate:I

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->viewportWidth:I

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->viewportHeight:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->viewportOrientationMayChange:Z

    .line 121
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->preferredVideoMimeTypes:Lcom/google/common/collect/ImmutableList;

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->preferredVideoRoleFlags:I

    .line 124
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->preferredAudioLanguages:Lcom/google/common/collect/ImmutableList;

    iput v1, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->preferredAudioRoleFlags:I

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->maxAudioChannelCount:I

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->maxAudioBitrate:I

    .line 128
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->preferredAudioMimeTypes:Lcom/google/common/collect/ImmutableList;

    .line 130
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->preferredTextLanguages:Lcom/google/common/collect/ImmutableList;

    iput v1, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->preferredTextRoleFlags:I

    iput v1, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->ignoredTextSelectionFlags:I

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->selectUndeterminedTextLanguage:Z

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->forceLowestBitrate:Z

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->forceHighestSupportedBitrate:Z

    .line 137
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->overrides:Ljava/util/HashMap;

    .line 138
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->disabledTrackTypes:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 148
    invoke-direct {p0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;-><init>()V

    .line 149
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->setPreferredTextLanguageAndRoleFlagsToCaptioningManagerSettings(Landroid/content/Context;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    const/4 v0, 0x1

    .line 150
    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->setViewportSizeToPhysicalDisplaySize(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Bundle;)V
    .locals 6

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    invoke-static {}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->access$000()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->DEFAULT_WITHOUT_CONTEXT:Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    iget v1, v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->maxVideoWidth:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->maxVideoWidth:I

    .line 163
    invoke-static {}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->access$100()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->DEFAULT_WITHOUT_CONTEXT:Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    iget v1, v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->maxVideoHeight:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->maxVideoHeight:I

    .line 165
    invoke-static {}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->access$200()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->DEFAULT_WITHOUT_CONTEXT:Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    iget v1, v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->maxVideoFrameRate:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->maxVideoFrameRate:I

    .line 167
    invoke-static {}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->access$300()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->DEFAULT_WITHOUT_CONTEXT:Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    iget v1, v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->maxVideoBitrate:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->maxVideoBitrate:I

    .line 168
    invoke-static {}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->access$400()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->DEFAULT_WITHOUT_CONTEXT:Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    iget v1, v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->minVideoWidth:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->minVideoWidth:I

    .line 170
    invoke-static {}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->access$500()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->DEFAULT_WITHOUT_CONTEXT:Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    iget v1, v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->minVideoHeight:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->minVideoHeight:I

    .line 172
    invoke-static {}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->access$600()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->DEFAULT_WITHOUT_CONTEXT:Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    iget v1, v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->minVideoFrameRate:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->minVideoFrameRate:I

    .line 174
    invoke-static {}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->access$700()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->DEFAULT_WITHOUT_CONTEXT:Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    iget v1, v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->minVideoBitrate:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->minVideoBitrate:I

    .line 175
    invoke-static {}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->access$800()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->DEFAULT_WITHOUT_CONTEXT:Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    iget v1, v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->viewportWidth:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->viewportWidth:I

    .line 176
    invoke-static {}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->access$900()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->DEFAULT_WITHOUT_CONTEXT:Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    iget v1, v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->viewportHeight:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->viewportHeight:I

    .line 179
    invoke-static {}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->access$1000()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->DEFAULT_WITHOUT_CONTEXT:Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    iget-boolean v1, v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->viewportOrientationMayChange:Z

    .line 178
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->viewportOrientationMayChange:Z

    .line 183
    invoke-static {}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->access$1100()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 182
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->preferredVideoMimeTypes:Lcom/google/common/collect/ImmutableList;

    .line 186
    invoke-static {}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->access$1200()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->DEFAULT_WITHOUT_CONTEXT:Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    iget v2, v2, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->preferredVideoRoleFlags:I

    .line 185
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->preferredVideoRoleFlags:I

    .line 189
    invoke-static {}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->access$1300()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 190
    invoke-static {v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->normalizeLanguageCodes([Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->preferredAudioLanguages:Lcom/google/common/collect/ImmutableList;

    .line 193
    invoke-static {}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->access$1400()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->DEFAULT_WITHOUT_CONTEXT:Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    iget v2, v2, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->preferredAudioRoleFlags:I

    .line 192
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->preferredAudioRoleFlags:I

    .line 196
    invoke-static {}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->access$1500()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->DEFAULT_WITHOUT_CONTEXT:Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    iget v2, v2, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->maxAudioChannelCount:I

    .line 195
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->maxAudioChannelCount:I

    .line 198
    invoke-static {}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->access$1600()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->DEFAULT_WITHOUT_CONTEXT:Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    iget v2, v2, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->maxAudioBitrate:I

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->maxAudioBitrate:I

    .line 201
    invoke-static {}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->access$1700()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 200
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->preferredAudioMimeTypes:Lcom/google/common/collect/ImmutableList;

    .line 205
    invoke-static {}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->access$1800()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 204
    invoke-static {v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->normalizeLanguageCodes([Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->preferredTextLanguages:Lcom/google/common/collect/ImmutableList;

    .line 208
    invoke-static {}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->access$1900()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->DEFAULT_WITHOUT_CONTEXT:Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    iget v2, v2, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->preferredTextRoleFlags:I

    .line 207
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->preferredTextRoleFlags:I

    .line 211
    invoke-static {}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->access$2000()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->DEFAULT_WITHOUT_CONTEXT:Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    iget v2, v2, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->ignoredTextSelectionFlags:I

    .line 210
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->ignoredTextSelectionFlags:I

    .line 215
    invoke-static {}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->access$2100()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->DEFAULT_WITHOUT_CONTEXT:Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    iget-boolean v2, v2, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->selectUndeterminedTextLanguage:Z

    .line 214
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->selectUndeterminedTextLanguage:Z

    .line 219
    invoke-static {}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->access$2200()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->DEFAULT_WITHOUT_CONTEXT:Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    iget-boolean v2, v2, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->forceLowestBitrate:Z

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->forceLowestBitrate:Z

    .line 222
    invoke-static {}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->access$2300()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->DEFAULT_WITHOUT_CONTEXT:Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    iget-boolean v2, v2, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->forceHighestSupportedBitrate:Z

    .line 221
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->forceHighestSupportedBitrate:Z

    .line 225
    invoke-static {}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->access$2400()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 228
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_0

    .line 229
    :cond_0
    sget-object v2, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    invoke-static {v2, v0}, Lcom/google/android/exoplayer2/util/BundleableUtil;->fromBundleList(Lcom/google/android/exoplayer2/Bundleable$Creator;Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 230
    :goto_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->overrides:Ljava/util/HashMap;

    move v2, v1

    .line 231
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 232
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;

    iget-object v4, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->overrides:Ljava/util/HashMap;

    .line 233
    iget-object v5, v3, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;->mediaTrackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 236
    :cond_1
    invoke-static {}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->access$2500()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p1

    new-array v0, v1, [I

    invoke-static {p1, v0}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    .line 237
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->disabledTrackTypes:Ljava/util/HashSet;

    .line 238
    array-length v0, p1

    :goto_2
    if-ge v1, v0, :cond_2

    aget v2, p1, v1

    iget-object v3, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->disabledTrackTypes:Ljava/util/HashSet;

    .line 239
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method protected constructor <init>(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V
    .locals 0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->init(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;)I
    .locals 0

    .line 75
    iget p0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->maxVideoWidth:I

    return p0
.end method

.method static synthetic access$2700(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;)I
    .locals 0

    .line 75
    iget p0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->maxVideoHeight:I

    return p0
.end method

.method static synthetic access$2800(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;)I
    .locals 0

    .line 75
    iget p0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->maxVideoFrameRate:I

    return p0
.end method

.method static synthetic access$2900(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;)I
    .locals 0

    .line 75
    iget p0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->maxVideoBitrate:I

    return p0
.end method

.method static synthetic access$3000(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;)I
    .locals 0

    .line 75
    iget p0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->minVideoWidth:I

    return p0
.end method

.method static synthetic access$3100(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;)I
    .locals 0

    .line 75
    iget p0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->minVideoHeight:I

    return p0
.end method

.method static synthetic access$3200(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;)I
    .locals 0

    .line 75
    iget p0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->minVideoFrameRate:I

    return p0
.end method

.method static synthetic access$3300(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;)I
    .locals 0

    .line 75
    iget p0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->minVideoBitrate:I

    return p0
.end method

.method static synthetic access$3400(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;)I
    .locals 0

    .line 75
    iget p0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->viewportWidth:I

    return p0
.end method

.method static synthetic access$3500(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;)I
    .locals 0

    .line 75
    iget p0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->viewportHeight:I

    return p0
.end method

.method static synthetic access$3600(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;)Z
    .locals 0

    .line 75
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->viewportOrientationMayChange:Z

    return p0
.end method

.method static synthetic access$3700(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;)Lcom/google/common/collect/ImmutableList;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->preferredVideoMimeTypes:Lcom/google/common/collect/ImmutableList;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;)I
    .locals 0

    .line 75
    iget p0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->preferredVideoRoleFlags:I

    return p0
.end method

.method static synthetic access$3900(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;)Lcom/google/common/collect/ImmutableList;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->preferredAudioLanguages:Lcom/google/common/collect/ImmutableList;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;)I
    .locals 0

    .line 75
    iget p0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->preferredAudioRoleFlags:I

    return p0
.end method

.method static synthetic access$4100(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;)I
    .locals 0

    .line 75
    iget p0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->maxAudioChannelCount:I

    return p0
.end method

.method static synthetic access$4200(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;)I
    .locals 0

    .line 75
    iget p0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->maxAudioBitrate:I

    return p0
.end method

.method static synthetic access$4300(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;)Lcom/google/common/collect/ImmutableList;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->preferredAudioMimeTypes:Lcom/google/common/collect/ImmutableList;

    return-object p0
.end method

.method static synthetic access$4400(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;)Lcom/google/common/collect/ImmutableList;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->preferredTextLanguages:Lcom/google/common/collect/ImmutableList;

    return-object p0
.end method

.method static synthetic access$4500(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;)I
    .locals 0

    .line 75
    iget p0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->preferredTextRoleFlags:I

    return p0
.end method

.method static synthetic access$4600(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;)I
    .locals 0

    .line 75
    iget p0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->ignoredTextSelectionFlags:I

    return p0
.end method

.method static synthetic access$4700(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;)Z
    .locals 0

    .line 75
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->selectUndeterminedTextLanguage:Z

    return p0
.end method

.method static synthetic access$4800(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;)Z
    .locals 0

    .line 75
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->forceLowestBitrate:Z

    return p0
.end method

.method static synthetic access$4900(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;)Z
    .locals 0

    .line 75
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->forceHighestSupportedBitrate:Z

    return p0
.end method

.method static synthetic access$5000(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;)Ljava/util/HashMap;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->overrides:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$5100(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;)Ljava/util/HashSet;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->disabledTrackTypes:Ljava/util/HashSet;

    return-object p0
.end method

.method private init(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V
    .locals 2
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "preferredVideoMimeTypes",
            "preferredAudioLanguages",
            "preferredAudioMimeTypes",
            "preferredTextLanguages",
            "overrides",
            "disabledTrackTypes"
        }
    .end annotation

    .line 254
    iget v0, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->maxVideoWidth:I

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->maxVideoWidth:I

    .line 255
    iget v0, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->maxVideoHeight:I

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->maxVideoHeight:I

    .line 256
    iget v0, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->maxVideoFrameRate:I

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->maxVideoFrameRate:I

    .line 257
    iget v0, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->maxVideoBitrate:I

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->maxVideoBitrate:I

    .line 258
    iget v0, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->minVideoWidth:I

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->minVideoWidth:I

    .line 259
    iget v0, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->minVideoHeight:I

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->minVideoHeight:I

    .line 260
    iget v0, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->minVideoFrameRate:I

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->minVideoFrameRate:I

    .line 261
    iget v0, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->minVideoBitrate:I

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->minVideoBitrate:I

    .line 262
    iget v0, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->viewportWidth:I

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->viewportWidth:I

    .line 263
    iget v0, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->viewportHeight:I

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->viewportHeight:I

    .line 264
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->viewportOrientationMayChange:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->viewportOrientationMayChange:Z

    .line 265
    iget-object v0, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->preferredVideoMimeTypes:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->preferredVideoMimeTypes:Lcom/google/common/collect/ImmutableList;

    .line 266
    iget v0, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->preferredVideoRoleFlags:I

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->preferredVideoRoleFlags:I

    .line 268
    iget-object v0, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->preferredAudioLanguages:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->preferredAudioLanguages:Lcom/google/common/collect/ImmutableList;

    .line 269
    iget v0, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->preferredAudioRoleFlags:I

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->preferredAudioRoleFlags:I

    .line 270
    iget v0, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->maxAudioChannelCount:I

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->maxAudioChannelCount:I

    .line 271
    iget v0, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->maxAudioBitrate:I

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->maxAudioBitrate:I

    .line 272
    iget-object v0, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->preferredAudioMimeTypes:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->preferredAudioMimeTypes:Lcom/google/common/collect/ImmutableList;

    .line 274
    iget-object v0, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->preferredTextLanguages:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->preferredTextLanguages:Lcom/google/common/collect/ImmutableList;

    .line 275
    iget v0, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->preferredTextRoleFlags:I

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->preferredTextRoleFlags:I

    .line 276
    iget v0, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->ignoredTextSelectionFlags:I

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->ignoredTextSelectionFlags:I

    .line 277
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->selectUndeterminedTextLanguage:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->selectUndeterminedTextLanguage:Z

    .line 279
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->forceLowestBitrate:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->forceLowestBitrate:Z

    .line 280
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->forceHighestSupportedBitrate:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->forceHighestSupportedBitrate:Z

    .line 281
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->disabledTrackTypes:Lcom/google/common/collect/ImmutableSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->disabledTrackTypes:Ljava/util/HashSet;

    .line 282
    new-instance v0, Ljava/util/HashMap;

    iget-object p1, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;->overrides:Lcom/google/common/collect/ImmutableMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->overrides:Ljava/util/HashMap;

    return-void
.end method

.method private static normalizeLanguageCodes([Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 781
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 782
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 783
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Util;->normalizeLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 785
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method private setPreferredTextLanguageAndRoleFlagsToCaptioningManagerSettingsV19(Landroid/content/Context;)V
    .locals 2

    .line 763
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "captioning"

    .line 769
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/CaptioningManager;

    if-eqz p1, :cond_2

    .line 770
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x440

    iput v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->preferredTextRoleFlags:I

    .line 774
    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 776
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Util;->getLocaleLanguageTag(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->preferredTextLanguages:Lcom/google/common/collect/ImmutableList;

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public addOverride(Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->overrides:Ljava/util/HashMap;

    .line 682
    iget-object v1, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;->mediaTrackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public build()Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;
    .locals 1

    .line 757
    new-instance v0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;-><init>(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;)V

    return-object v0
.end method

.method public clearOverride(Lcom/google/android/exoplayer2/source/TrackGroup;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->overrides:Ljava/util/HashMap;

    .line 697
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public clearOverrides()Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->overrides:Ljava/util/HashMap;

    .line 717
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-object p0
.end method

.method public clearOverridesOfType(I)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->overrides:Ljava/util/HashMap;

    .line 704
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 705
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 706
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;

    .line 707
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;->getType()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 708
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public clearVideoSizeConstraints()Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 1

    const v0, 0x7fffffff

    .line 311
    invoke-virtual {p0, v0, v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->setMaxVideoSize(II)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clearViewportSizeConstraints()Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 2

    const v0, 0x7fffffff

    const/4 v1, 0x1

    .line 415
    invoke-virtual {p0, v0, v0, v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->setViewportSize(IIZ)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    move-result-object p0

    return-object p0
.end method

.method protected set(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 288
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->init(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V

    return-object p0
.end method

.method public setDisabledTrackTypes(Ljava/util/Set;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->disabledTrackTypes:Ljava/util/HashSet;

    .line 732
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->disabledTrackTypes:Ljava/util/HashSet;

    .line 733
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public setForceHighestSupportedBitrate(Z)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->forceHighestSupportedBitrate:Z

    return-object p0
.end method

.method public setForceLowestBitrate(Z)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->forceLowestBitrate:Z

    return-object p0
.end method

.method public setIgnoredTextSelectionFlags(I)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->ignoredTextSelectionFlags:I

    return-object p0
.end method

.method public setMaxAudioBitrate(I)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->maxAudioBitrate:I

    return-object p0
.end method

.method public setMaxAudioChannelCount(I)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->maxAudioChannelCount:I

    return-object p0
.end method

.method public setMaxVideoBitrate(I)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->maxVideoBitrate:I

    return-object p0
.end method

.method public setMaxVideoFrameRate(I)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->maxVideoFrameRate:I

    return-object p0
.end method

.method public setMaxVideoSize(II)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->maxVideoWidth:I

    iput p2, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->maxVideoHeight:I

    return-object p0
.end method

.method public setMaxVideoSizeSd()Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 2

    const/16 v0, 0x4ff

    const/16 v1, 0x2cf

    .line 301
    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->setMaxVideoSize(II)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setMinVideoBitrate(I)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->minVideoBitrate:I

    return-object p0
.end method

.method public setMinVideoFrameRate(I)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->minVideoFrameRate:I

    return-object p0
.end method

.method public setMinVideoSize(II)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->minVideoWidth:I

    iput p2, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->minVideoHeight:I

    return-object p0
.end method

.method public setOverrideForType(Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 2

    .line 689
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;->getType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->clearOverridesOfType(I)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->overrides:Ljava/util/HashMap;

    .line 690
    iget-object v1, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;->mediaTrackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setPreferredAudioLanguage(Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    .line 484
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->setPreferredAudioLanguages([Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    move-result-object p0

    goto :goto_0

    .line 485
    :cond_0
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->setPreferredAudioLanguages([Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public varargs setPreferredAudioLanguages([Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 498
    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->normalizeLanguageCodes([Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->preferredAudioLanguages:Lcom/google/common/collect/ImmutableList;

    return-object p0
.end method

.method public setPreferredAudioMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    .line 546
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->setPreferredAudioMimeTypes([Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    move-result-object p0

    goto :goto_0

    :cond_0
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->setPreferredAudioMimeTypes([Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public varargs setPreferredAudioMimeTypes([Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 558
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->preferredAudioMimeTypes:Lcom/google/common/collect/ImmutableList;

    return-object p0
.end method

.method public setPreferredAudioRoleFlags(I)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->preferredAudioRoleFlags:I

    return-object p0
.end method

.method public setPreferredTextLanguage(Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    .line 591
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->setPreferredTextLanguages([Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    move-result-object p0

    goto :goto_0

    .line 592
    :cond_0
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->setPreferredTextLanguages([Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public setPreferredTextLanguageAndRoleFlagsToCaptioningManagerSettings(Landroid/content/Context;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 2

    .line 576
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 577
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->setPreferredTextLanguageAndRoleFlagsToCaptioningManagerSettingsV19(Landroid/content/Context;)V

    :cond_0
    return-object p0
.end method

.method public varargs setPreferredTextLanguages([Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 605
    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->normalizeLanguageCodes([Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->preferredTextLanguages:Lcom/google/common/collect/ImmutableList;

    return-object p0
.end method

.method public setPreferredTextRoleFlags(I)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->preferredTextRoleFlags:I

    return-object p0
.end method

.method public setPreferredVideoMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    .line 445
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->setPreferredVideoMimeTypes([Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    move-result-object p0

    goto :goto_0

    :cond_0
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->setPreferredVideoMimeTypes([Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public varargs setPreferredVideoMimeTypes([Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 457
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->preferredVideoMimeTypes:Lcom/google/common/collect/ImmutableList;

    return-object p0
.end method

.method public setPreferredVideoRoleFlags(I)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->preferredVideoRoleFlags:I

    return-object p0
.end method

.method public setSelectUndeterminedTextLanguage(Z)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->selectUndeterminedTextLanguage:Z

    return-object p0
.end method

.method public setTrackTypeDisabled(IZ)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->disabledTrackTypes:Ljava/util/HashSet;

    .line 748
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->disabledTrackTypes:Ljava/util/HashSet;

    .line 750
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :goto_0
    return-object p0
.end method

.method public setViewportSize(IIZ)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->viewportWidth:I

    iput p2, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->viewportHeight:I

    iput-boolean p3, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->viewportOrientationMayChange:Z

    return-object p0
.end method

.method public setViewportSizeToPhysicalDisplaySize(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 1

    .line 403
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Util;->getCurrentDisplayModeSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p1

    .line 404
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->setViewportSize(IIZ)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    move-result-object p0

    return-object p0
.end method
