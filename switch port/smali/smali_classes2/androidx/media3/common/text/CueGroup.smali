.class public final Landroidx/media3/common/text/CueGroup;
.super Ljava/lang/Object;
.source "CueGroup.java"

# interfaces
.implements Landroidx/media3/common/Bundleable;


# static fields
.field public static final CREATOR:Landroidx/media3/common/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/common/Bundleable$Creator<",
            "Landroidx/media3/common/text/CueGroup;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY_TIME_ZERO:Landroidx/media3/common/text/CueGroup;

.field private static final FIELD_CUES:Ljava/lang/String;

.field private static final FIELD_PRESENTATION_TIME_US:Ljava/lang/String;


# instance fields
.field public final cues:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/text/Cue;",
            ">;"
        }
    .end annotation
.end field

.field public final presentationTimeUs:J


# direct methods
.method public static synthetic $r8$lambda$Origctfy90sr8FmfUYUQlslcvXo(Landroid/os/Bundle;)Landroidx/media3/common/text/CueGroup;
    .locals 0

    invoke-static {p0}, Landroidx/media3/common/text/CueGroup;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/text/CueGroup;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 35
    new-instance v0, Landroidx/media3/common/text/CueGroup;

    .line 36
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/media3/common/text/CueGroup;-><init>(Ljava/util/List;J)V

    sput-object v0, Landroidx/media3/common/text/CueGroup;->EMPTY_TIME_ZERO:Landroidx/media3/common/text/CueGroup;

    const/4 v0, 0x0

    .line 63
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/CueGroup;->FIELD_CUES:Ljava/lang/String;

    const/4 v0, 0x1

    .line 64
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/CueGroup;->FIELD_PRESENTATION_TIME_US:Ljava/lang/String;

    .line 76
    new-instance v0, Landroidx/media3/common/text/CueGroup$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/media3/common/text/CueGroup$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroidx/media3/common/text/CueGroup;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/text/Cue;",
            ">;J)V"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/common/text/CueGroup;->cues:Lcom/google/common/collect/ImmutableList;

    iput-wide p2, p0, Landroidx/media3/common/text/CueGroup;->presentationTimeUs:J

    return-void
.end method

.method private static filterOutBitmapCues(Ljava/util/List;)Lcom/google/common/collect/ImmutableList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/text/Cue;",
            ">;)",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/text/Cue;",
            ">;"
        }
    .end annotation

    .line 93
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 94
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 95
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/text/Cue;

    iget-object v2, v2, Landroidx/media3/common/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    goto :goto_1

    .line 98
    :cond_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/text/Cue;

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 100
    :cond_1
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method private static final fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/text/CueGroup;
    .locals 3

    sget-object v0, Landroidx/media3/common/text/CueGroup;->FIELD_CUES:Ljava/lang/String;

    .line 79
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 82
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_0

    .line 83
    :cond_0
    sget-object v1, Landroidx/media3/common/text/Cue;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    invoke-static {v1, v0}, Landroidx/media3/common/util/BundleableUtil;->fromBundleList(Landroidx/media3/common/Bundleable$Creator;Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    :goto_0
    sget-object v1, Landroidx/media3/common/text/CueGroup;->FIELD_PRESENTATION_TIME_US:Ljava/lang/String;

    .line 84
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 85
    new-instance p0, Landroidx/media3/common/text/CueGroup;

    invoke-direct {p0, v0, v1, v2}, Landroidx/media3/common/text/CueGroup;-><init>(Ljava/util/List;J)V

    return-object p0
.end method


# virtual methods
.method public toBundle()Landroid/os/Bundle;
    .locals 4

    .line 69
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Landroidx/media3/common/text/CueGroup;->FIELD_CUES:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/common/text/CueGroup;->cues:Lcom/google/common/collect/ImmutableList;

    .line 71
    invoke-static {v2}, Landroidx/media3/common/text/CueGroup;->filterOutBitmapCues(Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-static {v2}, Landroidx/media3/common/util/BundleableUtil;->toBundleArrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v2

    .line 70
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    sget-object v1, Landroidx/media3/common/text/CueGroup;->FIELD_PRESENTATION_TIME_US:Ljava/lang/String;

    iget-wide v2, p0, Landroidx/media3/common/text/CueGroup;->presentationTimeUs:J

    .line 72
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object v0
.end method
