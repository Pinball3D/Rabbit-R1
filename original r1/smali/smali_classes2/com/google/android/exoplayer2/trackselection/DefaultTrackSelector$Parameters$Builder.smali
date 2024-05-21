.class public final Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;
.super Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
.source "DefaultTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private allowAudioMixedChannelCountAdaptiveness:Z

.field private allowAudioMixedDecoderSupportAdaptiveness:Z

.field private allowAudioMixedMimeTypeAdaptiveness:Z

.field private allowAudioMixedSampleRateAdaptiveness:Z

.field private allowMultipleAdaptiveSelections:Z

.field private allowVideoMixedDecoderSupportAdaptiveness:Z

.field private allowVideoMixedMimeTypeAdaptiveness:Z

.field private allowVideoNonSeamlessAdaptiveness:Z

.field private constrainAudioChannelCountToDeviceCapabilities:Z

.field private exceedAudioConstraintsIfNecessary:Z

.field private exceedRendererCapabilitiesIfNecessary:Z

.field private exceedVideoConstraintsIfNecessary:Z

.field private final rendererDisabledFlags:Landroid/util/SparseBooleanArray;

.field private final selectionOverrides:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Lcom/google/android/exoplayer2/source/TrackGroupArray;",
            "Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;",
            ">;>;"
        }
    .end annotation
.end field

.field private tunnelingEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 769
    invoke-direct {p0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;-><init>()V

    .line 770
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->selectionOverrides:Landroid/util/SparseArray;

    .line 771
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    .line 772
    invoke-direct {p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 781
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;-><init>(Landroid/content/Context;)V

    .line 782
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->selectionOverrides:Landroid/util/SparseArray;

    .line 783
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    .line 784
    invoke-direct {p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->init()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Bundle;)V
    .locals 3

    .line 820
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;-><init>(Landroid/os/Bundle;)V

    .line 821
    invoke-direct {p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->init()V

    .line 822
    sget-object v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->DEFAULT_WITHOUT_CONTEXT:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    .line 826
    invoke-static {}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->access$200()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedVideoConstraintsIfNecessary:Z

    .line 825
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 824
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->setExceedVideoConstraintsIfNecessary(Z)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 830
    invoke-static {}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->access$300()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowVideoMixedMimeTypeAdaptiveness:Z

    .line 829
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 828
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->setAllowVideoMixedMimeTypeAdaptiveness(Z)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 834
    invoke-static {}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->access$400()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowVideoNonSeamlessAdaptiveness:Z

    .line 833
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 832
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->setAllowVideoNonSeamlessAdaptiveness(Z)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 838
    invoke-static {}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->access$500()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowVideoMixedDecoderSupportAdaptiveness:Z

    .line 837
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 836
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->setAllowVideoMixedDecoderSupportAdaptiveness(Z)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 843
    invoke-static {}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->access$600()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedAudioConstraintsIfNecessary:Z

    .line 842
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 841
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->setExceedAudioConstraintsIfNecessary(Z)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 847
    invoke-static {}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->access$700()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedMimeTypeAdaptiveness:Z

    .line 846
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 845
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->setAllowAudioMixedMimeTypeAdaptiveness(Z)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 851
    invoke-static {}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->access$800()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedSampleRateAdaptiveness:Z

    .line 850
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 849
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->setAllowAudioMixedSampleRateAdaptiveness(Z)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 855
    invoke-static {}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->access$900()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedChannelCountAdaptiveness:Z

    .line 854
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 853
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->setAllowAudioMixedChannelCountAdaptiveness(Z)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 859
    invoke-static {}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->access$1000()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedDecoderSupportAdaptiveness:Z

    .line 858
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 857
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->setAllowAudioMixedDecoderSupportAdaptiveness(Z)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 863
    invoke-static {}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->access$1100()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->constrainAudioChannelCountToDeviceCapabilities:Z

    .line 862
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 861
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->setConstrainAudioChannelCountToDeviceCapabilities(Z)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 868
    invoke-static {}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->access$1200()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    .line 867
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 866
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->setExceedRendererCapabilitiesIfNecessary(Z)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 871
    invoke-static {}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->access$1300()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->tunnelingEnabled:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 870
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->setTunnelingEnabled(Z)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 874
    invoke-static {}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->access$1400()Ljava/lang/String;

    move-result-object v1

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowMultipleAdaptiveSelections:Z

    .line 873
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 872
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->setAllowMultipleAdaptiveSelections(Z)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 877
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->selectionOverrides:Landroid/util/SparseArray;

    .line 878
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->setSelectionOverridesFromBundle(Landroid/os/Bundle;)V

    .line 881
    invoke-static {}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->access$1500()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p1

    .line 880
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->makeSparseBooleanArrayFromTrueKeys([I)Landroid/util/SparseBooleanArray;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Bundle;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$1;)V
    .locals 0

    .line 739
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;-><init>(Landroid/os/Bundle;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)V
    .locals 1

    .line 792
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;-><init>(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V

    .line 794
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedVideoConstraintsIfNecessary:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->exceedVideoConstraintsIfNecessary:Z

    .line 795
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowVideoMixedMimeTypeAdaptiveness:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->allowVideoMixedMimeTypeAdaptiveness:Z

    .line 796
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowVideoNonSeamlessAdaptiveness:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->allowVideoNonSeamlessAdaptiveness:Z

    .line 797
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowVideoMixedDecoderSupportAdaptiveness:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->allowVideoMixedDecoderSupportAdaptiveness:Z

    .line 800
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedAudioConstraintsIfNecessary:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->exceedAudioConstraintsIfNecessary:Z

    .line 801
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedMimeTypeAdaptiveness:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->allowAudioMixedMimeTypeAdaptiveness:Z

    .line 802
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedSampleRateAdaptiveness:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->allowAudioMixedSampleRateAdaptiveness:Z

    .line 803
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedChannelCountAdaptiveness:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->allowAudioMixedChannelCountAdaptiveness:Z

    .line 805
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedDecoderSupportAdaptiveness:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->allowAudioMixedDecoderSupportAdaptiveness:Z

    .line 807
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->constrainAudioChannelCountToDeviceCapabilities:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->constrainAudioChannelCountToDeviceCapabilities:Z

    .line 810
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->exceedRendererCapabilitiesIfNecessary:Z

    .line 811
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->tunnelingEnabled:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->tunnelingEnabled:Z

    .line 812
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowMultipleAdaptiveSelections:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->allowMultipleAdaptiveSelections:Z

    .line 814
    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->access$000(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->cloneSelectionOverrides(Landroid/util/SparseArray;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->selectionOverrides:Landroid/util/SparseArray;

    .line 815
    invoke-static {p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->access$100(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)Landroid/util/SparseBooleanArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$1;)V
    .locals 0

    .line 739
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;-><init>(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;)Z
    .locals 0

    .line 739
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->exceedVideoConstraintsIfNecessary:Z

    return p0
.end method

.method static synthetic access$2100(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;)Z
    .locals 0

    .line 739
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->allowVideoMixedMimeTypeAdaptiveness:Z

    return p0
.end method

.method static synthetic access$2200(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;)Z
    .locals 0

    .line 739
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->allowVideoNonSeamlessAdaptiveness:Z

    return p0
.end method

.method static synthetic access$2300(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;)Z
    .locals 0

    .line 739
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->allowVideoMixedDecoderSupportAdaptiveness:Z

    return p0
.end method

.method static synthetic access$2400(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;)Z
    .locals 0

    .line 739
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->exceedAudioConstraintsIfNecessary:Z

    return p0
.end method

.method static synthetic access$2500(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;)Z
    .locals 0

    .line 739
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->allowAudioMixedMimeTypeAdaptiveness:Z

    return p0
.end method

.method static synthetic access$2600(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;)Z
    .locals 0

    .line 739
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->allowAudioMixedSampleRateAdaptiveness:Z

    return p0
.end method

.method static synthetic access$2700(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;)Z
    .locals 0

    .line 739
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->allowAudioMixedChannelCountAdaptiveness:Z

    return p0
.end method

.method static synthetic access$2800(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;)Z
    .locals 0

    .line 739
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->allowAudioMixedDecoderSupportAdaptiveness:Z

    return p0
.end method

.method static synthetic access$2900(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;)Z
    .locals 0

    .line 739
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->constrainAudioChannelCountToDeviceCapabilities:Z

    return p0
.end method

.method static synthetic access$3000(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;)Z
    .locals 0

    .line 739
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->exceedRendererCapabilitiesIfNecessary:Z

    return p0
.end method

.method static synthetic access$3100(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;)Z
    .locals 0

    .line 739
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->tunnelingEnabled:Z

    return p0
.end method

.method static synthetic access$3200(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;)Z
    .locals 0

    .line 739
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->allowMultipleAdaptiveSelections:Z

    return p0
.end method

.method static synthetic access$3300(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;)Landroid/util/SparseArray;
    .locals 0

    .line 739
    iget-object p0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->selectionOverrides:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;)Landroid/util/SparseBooleanArray;
    .locals 0

    .line 739
    iget-object p0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method private static cloneSelectionOverrides(Landroid/util/SparseArray;)Landroid/util/SparseArray;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Lcom/google/android/exoplayer2/source/TrackGroupArray;",
            "Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;",
            ">;>;)",
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Lcom/google/android/exoplayer2/source/TrackGroupArray;",
            "Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;",
            ">;>;"
        }
    .end annotation

    .line 1552
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x0

    .line 1554
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1555
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    new-instance v3, Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private init()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->exceedVideoConstraintsIfNecessary:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->allowVideoMixedMimeTypeAdaptiveness:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->allowVideoNonSeamlessAdaptiveness:Z

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->allowVideoMixedDecoderSupportAdaptiveness:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->exceedAudioConstraintsIfNecessary:Z

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->allowAudioMixedMimeTypeAdaptiveness:Z

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->allowAudioMixedSampleRateAdaptiveness:Z

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->allowAudioMixedChannelCountAdaptiveness:Z

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->allowAudioMixedDecoderSupportAdaptiveness:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->constrainAudioChannelCountToDeviceCapabilities:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->exceedRendererCapabilitiesIfNecessary:Z

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->tunnelingEnabled:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->allowMultipleAdaptiveSelections:Z

    return-void
.end method

.method private makeSparseBooleanArrayFromTrueKeys([I)Landroid/util/SparseBooleanArray;
    .locals 4

    if-nez p1, :cond_0

    .line 1593
    new-instance p0, Landroid/util/SparseBooleanArray;

    invoke-direct {p0}, Landroid/util/SparseBooleanArray;-><init>()V

    return-object p0

    .line 1595
    :cond_0
    new-instance p0, Landroid/util/SparseBooleanArray;

    array-length v0, p1

    invoke-direct {p0, v0}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 1596
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p1, v1

    const/4 v3, 0x1

    .line 1597
    invoke-virtual {p0, v2, v3}, Landroid/util/SparseBooleanArray;->append(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method private setSelectionOverridesFromBundle(Landroid/os/Bundle;)V
    .locals 6

    .line 1563
    invoke-static {}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->access$1700()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 1566
    invoke-static {}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->access$1800()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1569
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    goto :goto_0

    .line 1570
    :cond_0
    sget-object v2, Lcom/google/android/exoplayer2/source/TrackGroupArray;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    invoke-static {v2, v1}, Lcom/google/android/exoplayer2/util/BundleableUtil;->fromBundleList(Lcom/google/android/exoplayer2/Bundleable$Creator;Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 1573
    :goto_0
    invoke-static {}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->access$1900()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p1

    if-nez p1, :cond_1

    .line 1576
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    goto :goto_1

    .line 1577
    :cond_1
    sget-object v2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    invoke-static {v2, p1}, Lcom/google/android/exoplayer2/util/BundleableUtil;->fromBundleSparseArray(Lcom/google/android/exoplayer2/Bundleable$Creator;Landroid/util/SparseArray;)Landroid/util/SparseArray;

    move-result-object p1

    :goto_1
    if-eqz v0, :cond_3

    .line 1580
    array-length v2, v0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_2

    goto :goto_3

    :cond_2
    const/4 v2, 0x0

    .line 1583
    :goto_2
    array-length v3, v0

    if-ge v2, v3, :cond_3

    .line 1584
    aget v3, v0, v2

    .line 1585
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplayer2/source/TrackGroupArray;

    .line 1586
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;

    .line 1587
    invoke-virtual {p0, v3, v4, v5}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->setSelectionOverride(ILcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    return-void
.end method


# virtual methods
.method public addOverride(Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;
    .locals 0

    .line 1292
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->addOverride(Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public bridge synthetic addOverride(Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 739
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->addOverride(Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object p0

    return-object p0
.end method

.method public build()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .locals 2

    .line 1526
    new-instance v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;-><init>(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;
    .locals 0

    .line 739
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->build()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object p0

    return-object p0
.end method

.method public clearOverride(Lcom/google/android/exoplayer2/source/TrackGroup;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;
    .locals 0

    .line 1299
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->clearOverride(Lcom/google/android/exoplayer2/source/TrackGroup;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public bridge synthetic clearOverride(Lcom/google/android/exoplayer2/source/TrackGroup;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 739
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->clearOverride(Lcom/google/android/exoplayer2/source/TrackGroup;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clearOverrides()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;
    .locals 0

    .line 1320
    invoke-super {p0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->clearOverrides()Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public bridge synthetic clearOverrides()Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 739
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->clearOverrides()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clearOverridesOfType(I)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;
    .locals 0

    .line 1313
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->clearOverridesOfType(I)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public bridge synthetic clearOverridesOfType(I)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 739
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->clearOverridesOfType(I)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clearSelectionOverride(ILcom/google/android/exoplayer2/source/TrackGroupArray;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->selectionOverrides:Landroid/util/SparseArray;

    .line 1474
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 1475
    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1479
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1480
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->selectionOverrides:Landroid/util/SparseArray;

    .line 1481
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_1
    :goto_0
    return-object p0
.end method

.method public clearSelectionOverrides()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->selectionOverrides:Landroid/util/SparseArray;

    .line 1515
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->selectionOverrides:Landroid/util/SparseArray;

    .line 1519
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-object p0
.end method

.method public clearSelectionOverrides(I)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->selectionOverrides:Landroid/util/SparseArray;

    .line 1497
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 1498
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->selectionOverrides:Landroid/util/SparseArray;

    .line 1502
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_1
    :goto_0
    return-object p0
.end method

.method public clearVideoSizeConstraints()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;
    .locals 0

    .line 903
    invoke-super {p0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->clearVideoSizeConstraints()Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public bridge synthetic clearVideoSizeConstraints()Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 739
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->clearVideoSizeConstraints()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object p0

    return-object p0
.end method

.method public clearViewportSizeConstraints()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;
    .locals 0

    .line 1024
    invoke-super {p0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->clearViewportSizeConstraints()Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public bridge synthetic clearViewportSizeConstraints()Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 739
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->clearViewportSizeConstraints()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object p0

    return-object p0
.end method

.method protected set(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;
    .locals 0

    .line 887
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->set(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method protected bridge synthetic set(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 739
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->set(Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setAllowAudioMixedChannelCountAdaptiveness(Z)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->allowAudioMixedChannelCountAdaptiveness:Z

    return-object p0
.end method

.method public setAllowAudioMixedDecoderSupportAdaptiveness(Z)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->allowAudioMixedDecoderSupportAdaptiveness:Z

    return-object p0
.end method

.method public setAllowAudioMixedMimeTypeAdaptiveness(Z)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->allowAudioMixedMimeTypeAdaptiveness:Z

    return-object p0
.end method

.method public setAllowAudioMixedSampleRateAdaptiveness(Z)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->allowAudioMixedSampleRateAdaptiveness:Z

    return-object p0
.end method

.method public setAllowMultipleAdaptiveSelections(Z)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->allowMultipleAdaptiveSelections:Z

    return-object p0
.end method

.method public setAllowVideoMixedDecoderSupportAdaptiveness(Z)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->allowVideoMixedDecoderSupportAdaptiveness:Z

    return-object p0
.end method

.method public setAllowVideoMixedMimeTypeAdaptiveness(Z)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->allowVideoMixedMimeTypeAdaptiveness:Z

    return-object p0
.end method

.method public setAllowVideoNonSeamlessAdaptiveness(Z)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->allowVideoNonSeamlessAdaptiveness:Z

    return-object p0
.end method

.method public setConstrainAudioChannelCountToDeviceCapabilities(Z)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->constrainAudioChannelCountToDeviceCapabilities:Z

    return-object p0
.end method

.method public setDisabledTextTrackSelectionFlags(I)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1270
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->setIgnoredTextSelectionFlags(I)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setDisabledTrackTypes(Ljava/util/Set;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1332
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->setDisabledTrackTypes(Ljava/util/Set;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setDisabledTrackTypes(Ljava/util/Set;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 739
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->setDisabledTrackTypes(Ljava/util/Set;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setExceedAudioConstraintsIfNecessary(Z)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->exceedAudioConstraintsIfNecessary:Z

    return-object p0
.end method

.method public setExceedRendererCapabilitiesIfNecessary(Z)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->exceedRendererCapabilitiesIfNecessary:Z

    return-object p0
.end method

.method public setExceedVideoConstraintsIfNecessary(Z)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->exceedVideoConstraintsIfNecessary:Z

    return-object p0
.end method

.method public setForceHighestSupportedBitrate(Z)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;
    .locals 0

    .line 1285
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->setForceHighestSupportedBitrate(Z)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setForceHighestSupportedBitrate(Z)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 739
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->setForceHighestSupportedBitrate(Z)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setForceLowestBitrate(Z)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;
    .locals 0

    .line 1278
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->setForceLowestBitrate(Z)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setForceLowestBitrate(Z)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 739
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->setForceLowestBitrate(Z)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setIgnoredTextSelectionFlags(I)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;
    .locals 0

    .line 1252
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->setIgnoredTextSelectionFlags(I)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setIgnoredTextSelectionFlags(I)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 739
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->setIgnoredTextSelectionFlags(I)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setMaxAudioBitrate(I)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;
    .locals 0

    .line 1090
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->setMaxAudioBitrate(I)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setMaxAudioBitrate(I)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 739
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->setMaxAudioBitrate(I)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setMaxAudioChannelCount(I)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;
    .locals 0

    .line 1083
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->setMaxAudioChannelCount(I)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setMaxAudioChannelCount(I)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 739
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->setMaxAudioChannelCount(I)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setMaxVideoBitrate(I)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;
    .locals 0

    .line 924
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->setMaxVideoBitrate(I)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setMaxVideoBitrate(I)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 739
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->setMaxVideoBitrate(I)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setMaxVideoFrameRate(I)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;
    .locals 0

    .line 917
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->setMaxVideoFrameRate(I)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setMaxVideoFrameRate(I)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 739
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->setMaxVideoFrameRate(I)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setMaxVideoSize(II)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;
    .locals 0

    .line 910
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->setMaxVideoSize(II)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setMaxVideoSize(II)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 739
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->setMaxVideoSize(II)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setMaxVideoSizeSd()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;
    .locals 0

    .line 896
    invoke-super {p0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->setMaxVideoSizeSd()Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setMaxVideoSizeSd()Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 739
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->setMaxVideoSizeSd()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setMinVideoBitrate(I)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;
    .locals 0

    .line 945
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->setMinVideoBitrate(I)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setMinVideoBitrate(I)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 739
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->setMinVideoBitrate(I)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setMinVideoFrameRate(I)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;
    .locals 0

    .line 938
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->setMinVideoFrameRate(I)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setMinVideoFrameRate(I)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 739
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->setMinVideoFrameRate(I)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setMinVideoSize(II)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;
    .locals 0

    .line 931
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->setMinVideoSize(II)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setMinVideoSize(II)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 739
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->setMinVideoSize(II)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setOverrideForType(Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;
    .locals 0

    .line 1306
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->setOverrideForType(Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setOverrideForType(Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 739
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->setOverrideForType(Lcom/google/android/exoplayer2/trackselection/TrackSelectionOverride;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setPreferredAudioLanguage(Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;
    .locals 0

    .line 1062
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->setPreferredAudioLanguage(Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setPreferredAudioLanguage(Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 739
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->setPreferredAudioLanguage(Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object p0

    return-object p0
.end method

.method public varargs setPreferredAudioLanguages([Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;
    .locals 0

    .line 1069
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->setPreferredAudioLanguages([Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setPreferredAudioLanguages([Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 739
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->setPreferredAudioLanguages([Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setPreferredAudioMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;
    .locals 0

    .line 1176
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->setPreferredAudioMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setPreferredAudioMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 739
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->setPreferredAudioMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object p0

    return-object p0
.end method

.method public varargs setPreferredAudioMimeTypes([Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;
    .locals 0

    .line 1183
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->setPreferredAudioMimeTypes([Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setPreferredAudioMimeTypes([Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 739
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->setPreferredAudioMimeTypes([Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setPreferredAudioRoleFlags(I)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;
    .locals 0

    .line 1076
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->setPreferredAudioRoleFlags(I)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setPreferredAudioRoleFlags(I)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 739
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->setPreferredAudioRoleFlags(I)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setPreferredTextLanguage(Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;
    .locals 0

    .line 1231
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->setPreferredTextLanguage(Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setPreferredTextLanguage(Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 739
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->setPreferredTextLanguage(Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setPreferredTextLanguageAndRoleFlagsToCaptioningManagerSettings(Landroid/content/Context;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;
    .locals 0

    .line 1224
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->setPreferredTextLanguageAndRoleFlagsToCaptioningManagerSettings(Landroid/content/Context;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setPreferredTextLanguageAndRoleFlagsToCaptioningManagerSettings(Landroid/content/Context;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 739
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->setPreferredTextLanguageAndRoleFlagsToCaptioningManagerSettings(Landroid/content/Context;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object p0

    return-object p0
.end method

.method public varargs setPreferredTextLanguages([Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;
    .locals 0

    .line 1238
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->setPreferredTextLanguages([Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setPreferredTextLanguages([Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 739
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->setPreferredTextLanguages([Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setPreferredTextRoleFlags(I)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;
    .locals 0

    .line 1245
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->setPreferredTextRoleFlags(I)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setPreferredTextRoleFlags(I)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 739
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->setPreferredTextRoleFlags(I)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setPreferredVideoMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;
    .locals 0

    .line 1039
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->setPreferredVideoMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setPreferredVideoMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 739
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->setPreferredVideoMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object p0

    return-object p0
.end method

.method public varargs setPreferredVideoMimeTypes([Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;
    .locals 0

    .line 1046
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->setPreferredVideoMimeTypes([Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setPreferredVideoMimeTypes([Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 739
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->setPreferredVideoMimeTypes([Ljava/lang/String;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setPreferredVideoRoleFlags(I)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;
    .locals 0

    .line 1053
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->setPreferredVideoRoleFlags(I)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setPreferredVideoRoleFlags(I)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 739
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->setPreferredVideoRoleFlags(I)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setRendererDisabled(IZ)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    .line 1406
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-ne v0, p2, :cond_0

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x1

    .line 1412
    invoke-virtual {p2, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->rendererDisabledFlags:Landroid/util/SparseBooleanArray;

    .line 1414
    invoke-virtual {p2, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    :goto_0
    return-object p0
.end method

.method public setSelectUndeterminedTextLanguage(Z)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;
    .locals 0

    .line 1259
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->setSelectUndeterminedTextLanguage(Z)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setSelectUndeterminedTextLanguage(Z)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 739
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->setSelectUndeterminedTextLanguage(Z)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setSelectionOverride(ILcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->selectionOverrides:Landroid/util/SparseArray;

    .line 1449
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    .line 1451
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->selectionOverrides:Landroid/util/SparseArray;

    .line 1452
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1454
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p0

    .line 1458
    :cond_1
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setTrackTypeDisabled(IZ)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;
    .locals 0

    .line 1339
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->setTrackTypeDisabled(IZ)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setTrackTypeDisabled(IZ)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 739
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->setTrackTypeDisabled(IZ)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setTunnelingEnabled(Z)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->tunnelingEnabled:Z

    return-object p0
.end method

.method public setViewportSize(IIZ)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;
    .locals 0

    .line 1032
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->setViewportSize(IIZ)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setViewportSize(IIZ)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 739
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->setViewportSize(IIZ)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setViewportSizeToPhysicalDisplaySize(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;
    .locals 0

    .line 1017
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;->setViewportSizeToPhysicalDisplaySize(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;

    return-object p0
.end method

.method public bridge synthetic setViewportSizeToPhysicalDisplaySize(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/trackselection/TrackSelectionParameters$Builder;
    .locals 0

    .line 739
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->setViewportSizeToPhysicalDisplaySize(Landroid/content/Context;Z)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object p0

    return-object p0
.end method
