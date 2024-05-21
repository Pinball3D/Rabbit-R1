.class public abstract Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
.super Ljava/lang/Object;
.source "Representation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/dash/manifest/Representation$MultiSegmentRepresentation;,
        Lcom/google/android/exoplayer2/source/dash/manifest/Representation$SingleSegmentRepresentation;
    }
.end annotation


# static fields
.field public static final REVISION_ID_DEFAULT:J = -0x1L


# instance fields
.field public final baseUrls:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;",
            ">;"
        }
    .end annotation
.end field

.field public final essentialProperties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;",
            ">;"
        }
    .end annotation
.end field

.field public final format:Lcom/google/android/exoplayer2/Format;

.field public final inbandEventStreams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final initializationUri:Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

.field public final presentationTimeOffsetUs:J

.field public final revisionId:J

.field public final supplementalProperties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(JLcom/google/android/exoplayer2/Format;Ljava/util/List;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/google/android/exoplayer2/Format;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;",
            ">;",
            "Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;",
            ">;)V"
        }
    .end annotation

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->revisionId:J

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->format:Lcom/google/android/exoplayer2/Format;

    .line 142
    invoke-static {p4}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->baseUrls:Lcom/google/common/collect/ImmutableList;

    if-nez p6, :cond_0

    .line 145
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 146
    :cond_0
    invoke-static {p6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->inbandEventStreams:Ljava/util/List;

    iput-object p7, p0, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->essentialProperties:Ljava/util/List;

    iput-object p8, p0, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->supplementalProperties:Ljava/util/List;

    .line 149
    invoke-virtual {p5, p0}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;->getInitialization(Lcom/google/android/exoplayer2/source/dash/manifest/Representation;)Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->initializationUri:Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    .line 150
    invoke-virtual {p5}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;->getPresentationTimeOffsetUs()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->presentationTimeOffsetUs:J

    return-void
.end method

.method synthetic constructor <init>(JLcom/google/android/exoplayer2/Format;Ljava/util/List;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/google/android/exoplayer2/source/dash/manifest/Representation$1;)V
    .locals 0

    .line 33
    invoke-direct/range {p0 .. p8}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;-><init>(JLcom/google/android/exoplayer2/Format;Ljava/util/List;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static newInstance(JLcom/google/android/exoplayer2/Format;Ljava/util/List;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;)Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/google/android/exoplayer2/Format;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;",
            ">;",
            "Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;",
            ")",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Representation;"
        }
    .end annotation

    const/4 v5, 0x0

    .line 77
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v6

    .line 78
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v7

    const/4 v8, 0x0

    move-wide v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 71
    invoke-static/range {v0 .. v8}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->newInstance(JLcom/google/android/exoplayer2/Format;Ljava/util/List;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/Representation;

    move-result-object p0

    return-object p0
.end method

.method public static newInstance(JLcom/google/android/exoplayer2/Format;Ljava/util/List;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/google/android/exoplayer2/Format;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;",
            ">;",
            "Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Representation;"
        }
    .end annotation

    move-object/from16 v0, p4

    .line 105
    instance-of v1, v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;

    if-eqz v1, :cond_0

    .line 106
    new-instance v1, Lcom/google/android/exoplayer2/source/dash/manifest/Representation$SingleSegmentRepresentation;

    move-object v7, v0

    check-cast v7, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;

    const-wide/16 v12, -0x1

    move-object v2, v1

    move-wide v3, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-direct/range {v2 .. v13}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation$SingleSegmentRepresentation;-><init>(JLcom/google/android/exoplayer2/Format;Ljava/util/List;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;J)V

    return-object v1

    .line 116
    :cond_0
    instance-of v1, v0, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;

    if-eqz v1, :cond_1

    .line 117
    new-instance v1, Lcom/google/android/exoplayer2/source/dash/manifest/Representation$MultiSegmentRepresentation;

    move-object v7, v0

    check-cast v7, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;

    move-object v2, v1

    move-wide v3, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v2 .. v10}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation$MultiSegmentRepresentation;-><init>(JLcom/google/android/exoplayer2/Format;Ljava/util/List;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$MultiSegmentBase;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v1

    .line 126
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "segmentBase must be of type SingleSegmentBase or MultiSegmentBase"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abstract getCacheKey()Ljava/lang/String;
.end method

.method public abstract getIndex()Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;
.end method

.method public abstract getIndexUri()Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
.end method

.method public getInitializationUri()Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;->initializationUri:Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    return-object p0
.end method
