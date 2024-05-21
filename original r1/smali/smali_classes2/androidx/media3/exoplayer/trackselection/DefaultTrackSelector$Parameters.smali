.class public final Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;
.super Landroidx/media3/common/TrackSelectionParameters;
.source "DefaultTrackSelector.java"

# interfaces
.implements Landroidx/media3/common/Bundleable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Parameters"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroidx/media3/common/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/common/Bundleable$Creator<",
            "Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEFAULT_WITHOUT_CONTEXT:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

.field private static final FIELD_ALLOW_AUDIO_MIXED_CHANNEL_COUNT_ADAPTIVENESS:Ljava/lang/String;

.field private static final FIELD_ALLOW_AUDIO_MIXED_DECODER_SUPPORT_ADAPTIVENESS:Ljava/lang/String;

.field private static final FIELD_ALLOW_AUDIO_MIXED_MIME_TYPE_ADAPTIVENESS:Ljava/lang/String;

.field private static final FIELD_ALLOW_AUDIO_MIXED_SAMPLE_RATE_ADAPTIVENESS:Ljava/lang/String;

.field private static final FIELD_ALLOW_INVALIDATE_SELECTIONS_ON_RENDERER_CAPABILITIES_CHANGE:Ljava/lang/String;

.field private static final FIELD_ALLOW_MULTIPLE_ADAPTIVE_SELECTIONS:Ljava/lang/String;

.field private static final FIELD_ALLOW_VIDEO_MIXED_DECODER_SUPPORT_ADAPTIVENESS:Ljava/lang/String;

.field private static final FIELD_ALLOW_VIDEO_MIXED_MIME_TYPE_ADAPTIVENESS:Ljava/lang/String;

.field private static final FIELD_ALLOW_VIDEO_NON_SEAMLESS_ADAPTIVENESS:Ljava/lang/String;

.field private static final FIELD_CONSTRAIN_AUDIO_CHANNEL_COUNT_TO_DEVICE_CAPABILITIES:Ljava/lang/String;

.field private static final FIELD_EXCEED_AUDIO_CONSTRAINTS_IF_NECESSARY:Ljava/lang/String;

.field private static final FIELD_EXCEED_RENDERER_CAPABILITIES_IF_NECESSARY:Ljava/lang/String;

.field private static final FIELD_EXCEED_VIDEO_CONSTRAINTS_IF_NECESSARY:Ljava/lang/String;

.field private static final FIELD_RENDERER_DISABLED_INDICES:Ljava/lang/String;

.field private static final FIELD_SELECTION_OVERRIDES:Ljava/lang/String;

.field private static final FIELD_SELECTION_OVERRIDES_RENDERER_INDICES:Ljava/lang/String;

.field private static final FIELD_SELECTION_OVERRIDES_TRACK_GROUP_ARRAYS:Ljava/lang/String;

.field private static final FIELD_TUNNELING_ENABLED:Ljava/lang/String;


# instance fields
.field public final allowAudioMixedChannelCountAdaptiveness:Z

.field public final allowAudioMixedDecoderSupportAdaptiveness:Z

.field public final allowAudioMixedMimeTypeAdaptiveness:Z

.field public final allowAudioMixedSampleRateAdaptiveness:Z

.field public final allowInvalidateSelectionsOnRendererCapabilitiesChange:Z

.field public final allowMultipleAdaptiveSelections:Z

.field public final allowVideoMixedDecoderSupportAdaptiveness:Z

.field public final allowVideoMixedMimeTypeAdaptiveness:Z

.field public final allowVideoNonSeamlessAdaptiveness:Z

.field public final constrainAudioChannelCountToDeviceCapabilities:Z

.field public final exceedAudioConstraintsIfNecessary:Z

.field public final exceedRendererCapabilitiesIfNecessary:Z

.field public final exceedVideoConstraintsIfNecessary:Z

.field private final rendererDisabledFlags:Landroid/util/SparseBooleanArray;

.field private final selectionOverrides:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Landroidx/media3/exoplayer/source/TrackGroupArray;",
            "Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;",
            ">;>;"
        }
    .end annotation
.end field

.field public final tunnelingEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1648
    new-instance v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-direct {v0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;-><init>()V

    invoke-virtual {v0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->build()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->DEFAULT_WITHOUT_CONTEXT:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    sput-object v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->DEFAULT:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    const/16 v0, 0x3e8

    .line 1903
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->FIELD_EXCEED_VIDEO_CONSTRAINTS_IF_NECESSARY:Ljava/lang/String;

    const/16 v0, 0x3e9

    .line 1905
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->FIELD_ALLOW_VIDEO_MIXED_MIME_TYPE_ADAPTIVENESS:Ljava/lang/String;

    const/16 v0, 0x3ea

    .line 1907
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->FIELD_ALLOW_VIDEO_NON_SEAMLESS_ADAPTIVENESS:Ljava/lang/String;

    const/16 v0, 0x3eb

    .line 1909
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->FIELD_EXCEED_AUDIO_CONSTRAINTS_IF_NECESSARY:Ljava/lang/String;

    const/16 v0, 0x3ec

    .line 1911
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->FIELD_ALLOW_AUDIO_MIXED_MIME_TYPE_ADAPTIVENESS:Ljava/lang/String;

    const/16 v0, 0x3ed

    .line 1913
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->FIELD_ALLOW_AUDIO_MIXED_SAMPLE_RATE_ADAPTIVENESS:Ljava/lang/String;

    const/16 v0, 0x3ee

    .line 1915
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->FIELD_ALLOW_AUDIO_MIXED_CHANNEL_COUNT_ADAPTIVENESS:Ljava/lang/String;

    const/16 v0, 0x3ef

    .line 1917
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->FIELD_EXCEED_RENDERER_CAPABILITIES_IF_NECESSARY:Ljava/lang/String;

    const/16 v0, 0x3f0

    .line 1919
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->FIELD_TUNNELING_ENABLED:Ljava/lang/String;

    const/16 v0, 0x3f1

    .line 1921
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->FIELD_ALLOW_MULTIPLE_ADAPTIVE_SELECTIONS:Ljava/lang/String;

    const/16 v0, 0x3f2

    .line 1923
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->FIELD_SELECTION_OVERRIDES_RENDERER_INDICES:Ljava/lang/String;

    const/16 v0, 0x3f3

    .line 1925
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->FIELD_SELECTION_OVERRIDES_TRACK_GROUP_ARRAYS:Ljava/lang/String;

    const/16 v0, 0x3f4

    .line 1927
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->FIELD_SELECTION_OVERRIDES:Ljava/lang/String;

    const/16 v0, 0x3f5

    .line 1929
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->FIELD_RENDERER_DISABLED_INDICES:Ljava/lang/String;

    const/16 v0, 0x3f6

    .line 1931
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->FIELD_ALLOW_VIDEO_MIXED_DECODER_SUPPORT_ADAPTIVENESS:Ljava/lang/String;

    const/16 v0, 0x3f7

    .line 1933
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->FIELD_ALLOW_AUDIO_MIXED_DECODER_SUPPORT_ADAPTIVENESS:Ljava/lang/String;

    const/16 v0, 0x3f8

    .line 1935
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->FIELD_CONSTRAIN_AUDIO_CHANNEL_COUNT_TO_DEVICE_CAPABILITIES:Ljava/lang/String;

    const/16 v0, 0x3f9

    .line 1937
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->FIELD_ALLOW_INVALIDATE_SELECTIONS_ON_RENDERER_CAPABILITIES_CHANGE:Ljava/lang/String;

    .line 1987
    new-instance v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    return-void
.end method

.method private constructor <init>(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;)V
    .locals 1

    .line 1758
    invoke-direct {p0, p1}, Landroidx/media3/common/TrackSelectionParameters;-><init>(Landroidx/media3/common/TrackSelectionParameters$Builder;)V

    .line 1760
    invoke-static {p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->access$2100(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->exceedVideoConstraintsIfNecessary:Z

    .line 1761
    invoke-static {p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->access$2200(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowVideoMixedMimeTypeAdaptiveness:Z

    .line 1762
    invoke-static {p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->access$2300(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowVideoNonSeamlessAdaptiveness:Z

    .line 1763
    invoke-static {p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->access$2400(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowVideoMixedDecoderSupportAdaptiveness:Z

    .line 1765
    invoke-static {p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->access$2500(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->exceedAudioConstraintsIfNecessary:Z

    .line 1766
    invoke-static {p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->access$2600(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedMimeTypeAdaptiveness:Z

    .line 1767
    invoke-static {p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->access$2700(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedSampleRateAdaptiveness:Z

    .line 1768
    invoke-static {p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->access$2800(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedChannelCountAdaptiveness:Z

    .line 1769
    invoke-static {p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->access$2900(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedDecoderSupportAdaptiveness:Z

    .line 1771
    invoke-static {p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->access$3000(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->constrainAudioChannelCountToDeviceCapabilities:Z

    .line 1773
    invoke-static {p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->access$3100(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    .line 1774
    invoke-static {p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->access$3200(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->tunnelingEnabled:Z

    .line 1775
    invoke-static {p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->access$3300(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowMultipleAdaptiveSelections:Z

    .line 1777
    invoke-static {p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->access$3400(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowInvalidateSelectionsOnRendererCapabilitiesChange:Z

    .line 1779
    invoke-static {p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->access$3500(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->selectionOverrides:Landroid/util/SparseArray;

    .line 1780
    invoke-static {p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->access$3600(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;)Landroid/util/SparseBooleanArray;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$1;)V
    .locals 0

    .line 738
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;-><init>(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;)V

    return-void
.end method

.method static synthetic access$000(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)Landroid/util/SparseArray;
    .locals 0

    .line 738
    iget-object p0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->selectionOverrides:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$100(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;)Landroid/util/SparseBooleanArray;
    .locals 0

    .line 738
    iget-object p0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->FIELD_ALLOW_AUDIO_MIXED_DECODER_SUPPORT_ADAPTIVENESS:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->FIELD_CONSTRAIN_AUDIO_CHANNEL_COUNT_TO_DEVICE_CAPABILITIES:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->FIELD_EXCEED_RENDERER_CAPABILITIES_IF_NECESSARY:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->FIELD_TUNNELING_ENABLED:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->FIELD_ALLOW_MULTIPLE_ADAPTIVE_SELECTIONS:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->FIELD_ALLOW_INVALIDATE_SELECTIONS_ON_RENDERER_CAPABILITIES_CHANGE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->FIELD_RENDERER_DISABLED_INDICES:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->FIELD_SELECTION_OVERRIDES_RENDERER_INDICES:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->FIELD_SELECTION_OVERRIDES_TRACK_GROUP_ARRAYS:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->FIELD_EXCEED_VIDEO_CONSTRAINTS_IF_NECESSARY:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->FIELD_SELECTION_OVERRIDES:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->FIELD_ALLOW_VIDEO_MIXED_MIME_TYPE_ADAPTIVENESS:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->FIELD_ALLOW_VIDEO_NON_SEAMLESS_ADAPTIVENESS:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->FIELD_ALLOW_VIDEO_MIXED_DECODER_SUPPORT_ADAPTIVENESS:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->FIELD_EXCEED_AUDIO_CONSTRAINTS_IF_NECESSARY:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->FIELD_ALLOW_AUDIO_MIXED_MIME_TYPE_ADAPTIVENESS:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->FIELD_ALLOW_AUDIO_MIXED_SAMPLE_RATE_ADAPTIVENESS:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->FIELD_ALLOW_AUDIO_MIXED_CHANNEL_COUNT_ADAPTIVENESS:Ljava/lang/String;

    return-object v0
.end method

.method private static areRendererDisabledFlagsEqual(Landroid/util/SparseBooleanArray;Landroid/util/SparseBooleanArray;)Z
    .locals 4

    .line 2033
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    .line 2034
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v1, v0, :cond_0

    return v2

    :cond_0
    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_2

    .line 2039
    invoke-virtual {p0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v3

    if-gez v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private static areSelectionOverridesEqual(Landroid/util/SparseArray;Landroid/util/SparseArray;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Landroidx/media3/exoplayer/source/TrackGroupArray;",
            "Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;",
            ">;>;",
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Landroidx/media3/exoplayer/source/TrackGroupArray;",
            "Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;",
            ">;>;)Z"
        }
    .end annotation

    .line 2049
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 2050
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v1, v0, :cond_0

    return v2

    :cond_0
    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_3

    .line 2054
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_2

    .line 2057
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 2056
    invoke-static {v4, v3}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->areSelectionOverridesEqual(Ljava/util/Map;Ljava/util/Map;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v2

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method private static areSelectionOverridesEqual(Ljava/util/Map;Ljava/util/Map;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroidx/media3/exoplayer/source/TrackGroupArray;",
            "Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;",
            ">;",
            "Ljava/util/Map<",
            "Landroidx/media3/exoplayer/source/TrackGroupArray;",
            "Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;",
            ">;)Z"
        }
    .end annotation

    .line 2067
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    .line 2068
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v1, v0, :cond_0

    return v2

    .line 2072
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2073
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/source/TrackGroupArray;

    .line 2074
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_2
    return v2

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public static getDefaults(Landroid/content/Context;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;
    .locals 1

    .line 1657
    new-instance v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->build()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    move-result-object p0

    return-object p0
.end method

.method private static getKeysFromSparseBooleanArray(Landroid/util/SparseBooleanArray;)[I
    .locals 3

    .line 2024
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 2025
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2026
    invoke-virtual {p0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static synthetic lambda$static$0(Landroid/os/Bundle;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;
    .locals 2

    .line 1988
    new-instance v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;-><init>(Landroid/os/Bundle;Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$1;)V

    invoke-virtual {v0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->build()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    move-result-object p0

    return-object p0
.end method

.method private static putSelectionOverridesToBundle(Landroid/os/Bundle;Landroid/util/SparseArray;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Landroidx/media3/exoplayer/source/TrackGroupArray;",
            "Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;",
            ">;>;)V"
        }
    .end annotation

    .line 1998
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1999
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2000
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    const/4 v3, 0x0

    .line 2002
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 2003
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 2005
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 2006
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;

    if-eqz v7, :cond_0

    .line 2008
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v2, v8, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2010
    :cond_0
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/exoplayer/source/TrackGroupArray;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2011
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    sget-object v4, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->FIELD_SELECTION_OVERRIDES_RENDERER_INDICES:Ljava/lang/String;

    .line 2014
    invoke-static {v0}, Lcom/google/common/primitives/Ints;->toArray(Ljava/util/Collection;)[I

    move-result-object v5

    .line 2013
    invoke-virtual {p0, v4, v5}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    sget-object v4, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->FIELD_SELECTION_OVERRIDES_TRACK_GROUP_ARRAYS:Ljava/lang/String;

    .line 2017
    invoke-static {v1}, Landroidx/media3/common/util/BundleableUtil;->toBundleArrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v5

    .line 2015
    invoke-virtual {p0, v4, v5}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    sget-object v4, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->FIELD_SELECTION_OVERRIDES:Ljava/lang/String;

    .line 2019
    invoke-static {v2}, Landroidx/media3/common/util/BundleableUtil;->toBundleSparseArray(Landroid/util/SparseArray;)Landroid/util/SparseArray;

    move-result-object v5

    .line 2018
    invoke-virtual {p0, v4, v5}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public bridge synthetic buildUpon()Landroidx/media3/common/TrackSelectionParameters$Builder;
    .locals 0

    .line 738
    invoke-virtual {p0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->buildUpon()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object p0

    return-object p0
.end method

.method public buildUpon()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;
    .locals 2

    .line 1833
    new-instance v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;-><init>(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$1;)V

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

    .line 1843
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_1

    .line 1846
    :cond_1
    check-cast p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    .line 1847
    invoke-super {p0, p1}, Landroidx/media3/common/TrackSelectionParameters;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->exceedVideoConstraintsIfNecessary:Z

    iget-boolean v3, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->exceedVideoConstraintsIfNecessary:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowVideoMixedMimeTypeAdaptiveness:Z

    iget-boolean v3, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowVideoMixedMimeTypeAdaptiveness:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowVideoNonSeamlessAdaptiveness:Z

    iget-boolean v3, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowVideoNonSeamlessAdaptiveness:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowVideoMixedDecoderSupportAdaptiveness:Z

    iget-boolean v3, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowVideoMixedDecoderSupportAdaptiveness:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->exceedAudioConstraintsIfNecessary:Z

    iget-boolean v3, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->exceedAudioConstraintsIfNecessary:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedMimeTypeAdaptiveness:Z

    iget-boolean v3, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedMimeTypeAdaptiveness:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedSampleRateAdaptiveness:Z

    iget-boolean v3, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedSampleRateAdaptiveness:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedChannelCountAdaptiveness:Z

    iget-boolean v3, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedChannelCountAdaptiveness:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedDecoderSupportAdaptiveness:Z

    iget-boolean v3, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedDecoderSupportAdaptiveness:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->constrainAudioChannelCountToDeviceCapabilities:Z

    iget-boolean v3, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->constrainAudioChannelCountToDeviceCapabilities:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    iget-boolean v3, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->tunnelingEnabled:Z

    iget-boolean v3, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->tunnelingEnabled:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowMultipleAdaptiveSelections:Z

    iget-boolean v3, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowMultipleAdaptiveSelections:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowInvalidateSelectionsOnRendererCapabilitiesChange:Z

    iget-boolean v3, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowInvalidateSelectionsOnRendererCapabilitiesChange:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    iget-object v3, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    .line 1871
    invoke-static {v2, v3}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->areRendererDisabledFlagsEqual(Landroid/util/SparseBooleanArray;Landroid/util/SparseBooleanArray;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->selectionOverrides:Landroid/util/SparseArray;

    iget-object p1, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->selectionOverrides:Landroid/util/SparseArray;

    .line 1872
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->areSelectionOverridesEqual(Landroid/util/SparseArray;Landroid/util/SparseArray;)Z

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

.method public getRendererDisabled(I)Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    .line 1790
    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    return p0
.end method

.method public getSelectionOverride(ILandroidx/media3/exoplayer/source/TrackGroupArray;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->selectionOverrides:Landroid/util/SparseArray;

    .line 1826
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-eqz p0, :cond_0

    .line 1827
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public hasSelectionOverride(ILandroidx/media3/exoplayer/source/TrackGroupArray;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->selectionOverrides:Landroid/util/SparseArray;

    .line 1807
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-eqz p0, :cond_0

    .line 1808
    invoke-interface {p0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hashCode()I
    .locals 3

    .line 1878
    invoke-super {p0}, Landroidx/media3/common/TrackSelectionParameters;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->exceedVideoConstraintsIfNecessary:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowVideoMixedMimeTypeAdaptiveness:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowVideoNonSeamlessAdaptiveness:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowVideoMixedDecoderSupportAdaptiveness:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->exceedAudioConstraintsIfNecessary:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedMimeTypeAdaptiveness:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedSampleRateAdaptiveness:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedChannelCountAdaptiveness:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedDecoderSupportAdaptiveness:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->constrainAudioChannelCountToDeviceCapabilities:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->tunnelingEnabled:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowMultipleAdaptiveSelections:Z

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean p0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowInvalidateSelectionsOnRendererCapabilitiesChange:Z

    add-int/2addr v0, p0

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .line 1941
    invoke-super {p0}, Landroidx/media3/common/TrackSelectionParameters;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->FIELD_EXCEED_VIDEO_CONSTRAINTS_IF_NECESSARY:Ljava/lang/String;

    iget-boolean v2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->exceedVideoConstraintsIfNecessary:Z

    .line 1944
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->FIELD_ALLOW_VIDEO_MIXED_MIME_TYPE_ADAPTIVENESS:Ljava/lang/String;

    iget-boolean v2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowVideoMixedMimeTypeAdaptiveness:Z

    .line 1946
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->FIELD_ALLOW_VIDEO_NON_SEAMLESS_ADAPTIVENESS:Ljava/lang/String;

    iget-boolean v2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowVideoNonSeamlessAdaptiveness:Z

    .line 1948
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->FIELD_ALLOW_VIDEO_MIXED_DECODER_SUPPORT_ADAPTIVENESS:Ljava/lang/String;

    iget-boolean v2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowVideoMixedDecoderSupportAdaptiveness:Z

    .line 1950
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->FIELD_EXCEED_AUDIO_CONSTRAINTS_IF_NECESSARY:Ljava/lang/String;

    iget-boolean v2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->exceedAudioConstraintsIfNecessary:Z

    .line 1954
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->FIELD_ALLOW_AUDIO_MIXED_MIME_TYPE_ADAPTIVENESS:Ljava/lang/String;

    iget-boolean v2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedMimeTypeAdaptiveness:Z

    .line 1956
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->FIELD_ALLOW_AUDIO_MIXED_SAMPLE_RATE_ADAPTIVENESS:Ljava/lang/String;

    iget-boolean v2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedSampleRateAdaptiveness:Z

    .line 1958
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->FIELD_ALLOW_AUDIO_MIXED_CHANNEL_COUNT_ADAPTIVENESS:Ljava/lang/String;

    iget-boolean v2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedChannelCountAdaptiveness:Z

    .line 1960
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->FIELD_ALLOW_AUDIO_MIXED_DECODER_SUPPORT_ADAPTIVENESS:Ljava/lang/String;

    iget-boolean v2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedDecoderSupportAdaptiveness:Z

    .line 1963
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->FIELD_CONSTRAIN_AUDIO_CHANNEL_COUNT_TO_DEVICE_CAPABILITIES:Ljava/lang/String;

    iget-boolean v2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->constrainAudioChannelCountToDeviceCapabilities:Z

    .line 1966
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->FIELD_EXCEED_RENDERER_CAPABILITIES_IF_NECESSARY:Ljava/lang/String;

    iget-boolean v2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    .line 1970
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->FIELD_TUNNELING_ENABLED:Ljava/lang/String;

    iget-boolean v2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->tunnelingEnabled:Z

    .line 1972
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->FIELD_ALLOW_MULTIPLE_ADAPTIVE_SELECTIONS:Ljava/lang/String;

    iget-boolean v2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowMultipleAdaptiveSelections:Z

    .line 1973
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->FIELD_ALLOW_INVALIDATE_SELECTIONS_ON_RENDERER_CAPABILITIES_CHANGE:Ljava/lang/String;

    iget-boolean v2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowInvalidateSelectionsOnRendererCapabilitiesChange:Z

    .line 1974
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->selectionOverrides:Landroid/util/SparseArray;

    .line 1978
    invoke-static {v0, v1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->putSelectionOverridesToBundle(Landroid/os/Bundle;Landroid/util/SparseArray;)V

    sget-object v1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->FIELD_RENDERER_DISABLED_INDICES:Ljava/lang/String;

    iget-object p0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    .line 1981
    invoke-static {p0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->getKeysFromSparseBooleanArray(Landroid/util/SparseBooleanArray;)[I

    move-result-object p0

    .line 1980
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    return-object v0
.end method
