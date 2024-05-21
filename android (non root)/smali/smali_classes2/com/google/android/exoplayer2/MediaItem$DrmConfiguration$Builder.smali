.class public final Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;
.super Ljava/lang/Object;
.source "MediaItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private forceDefaultLicenseUri:Z

.field private forcedSessionTrackTypes:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private keySetId:[B

.field private licenseRequestHeaders:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private licenseUri:Landroid/net/Uri;

.field private multiSession:Z

.field private playClearContentWithoutKey:Z

.field private scheme:Ljava/util/UUID;


# direct methods
.method private constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 606
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 607
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->licenseRequestHeaders:Lcom/google/common/collect/ImmutableMap;

    .line 608
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->forcedSessionTrackTypes:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/MediaItem$1;)V
    .locals 0

    .line 578
    invoke-direct {p0}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;)V
    .locals 1

    .line 611
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 612
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->scheme:Ljava/util/UUID;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->scheme:Ljava/util/UUID;

    .line 613
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->licenseUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->licenseUri:Landroid/net/Uri;

    .line 614
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->licenseRequestHeaders:Lcom/google/common/collect/ImmutableMap;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->licenseRequestHeaders:Lcom/google/common/collect/ImmutableMap;

    .line 615
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->multiSession:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->multiSession:Z

    .line 616
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->playClearContentWithoutKey:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->playClearContentWithoutKey:Z

    .line 617
    iget-boolean v0, p1, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->forceDefaultLicenseUri:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->forceDefaultLicenseUri:Z

    .line 618
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->forcedSessionTrackTypes:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->forcedSessionTrackTypes:Lcom/google/common/collect/ImmutableList;

    .line 619
    invoke-static {p1}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;->access$600(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->keySetId:[B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;Lcom/google/android/exoplayer2/MediaItem$1;)V
    .locals 0

    .line 578
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;-><init>(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;)V
    .locals 0

    .line 595
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->scheme:Ljava/util/UUID;

    .line 597
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->licenseRequestHeaders:Lcom/google/common/collect/ImmutableMap;

    .line 598
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->forcedSessionTrackTypes:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;Ljava/util/UUID;)Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;
    .locals 0

    .line 578
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->setNullableScheme(Ljava/util/UUID;)Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;)Z
    .locals 0

    .line 578
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->multiSession:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;)Z
    .locals 0

    .line 578
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->playClearContentWithoutKey:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;)Lcom/google/common/collect/ImmutableList;
    .locals 0

    .line 578
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->forcedSessionTrackTypes:Lcom/google/common/collect/ImmutableList;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;)[B
    .locals 0

    .line 578
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->keySetId:[B

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;)Landroid/net/Uri;
    .locals 0

    .line 578
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->licenseUri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;)Ljava/util/UUID;
    .locals 0

    .line 578
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->scheme:Ljava/util/UUID;

    return-object p0
.end method

.method static synthetic access$800(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;)Z
    .locals 0

    .line 578
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->forceDefaultLicenseUri:Z

    return p0
.end method

.method static synthetic access$900(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;)Lcom/google/common/collect/ImmutableMap;
    .locals 0

    .line 578
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->licenseRequestHeaders:Lcom/google/common/collect/ImmutableMap;

    return-object p0
.end method

.method private setNullableScheme(Ljava/util/UUID;)Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->scheme:Ljava/util/UUID;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;
    .locals 2

    .line 750
    new-instance v0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration;-><init>(Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;Lcom/google/android/exoplayer2/MediaItem$1;)V

    return-object v0
.end method

.method public forceSessionsForAudioAndVideoTracks(Z)Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 698
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->setForceSessionsForAudioAndVideoTracks(Z)Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    move-result-object p0

    return-object p0
.end method

.method public setForceDefaultLicenseUri(Z)Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->forceDefaultLicenseUri:Z

    return-object p0
.end method

.method public setForceSessionsForAudioAndVideoTracks(Z)Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    .line 713
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    goto :goto_0

    .line 714
    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    .line 711
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->setForcedSessionTrackTypes(Ljava/util/List;)Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;

    return-object p0
.end method

.method public setForcedSessionTrackTypes(Ljava/util/List;)Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;"
        }
    .end annotation

    .line 731
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->forcedSessionTrackTypes:Lcom/google/common/collect/ImmutableList;

    return-object p0
.end method

.method public setKeySetId([B)Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 744
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->keySetId:[B

    return-object p0
.end method

.method public setLicenseRequestHeaders(Ljava/util/Map;)Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;"
        }
    .end annotation

    .line 657
    invoke-static {p1}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->licenseRequestHeaders:Lcom/google/common/collect/ImmutableMap;

    return-object p0
.end method

.method public setLicenseUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->licenseUri:Landroid/net/Uri;

    return-object p0
.end method

.method public setLicenseUri(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 650
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->licenseUri:Landroid/net/Uri;

    return-object p0
.end method

.method public setMultiSession(Z)Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->multiSession:Z

    return-object p0
.end method

.method public setPlayClearContentWithoutKey(Z)Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->playClearContentWithoutKey:Z

    return-object p0
.end method

.method public setScheme(Ljava/util/UUID;)Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$DrmConfiguration$Builder;->scheme:Ljava/util/UUID;

    return-object p0
.end method
