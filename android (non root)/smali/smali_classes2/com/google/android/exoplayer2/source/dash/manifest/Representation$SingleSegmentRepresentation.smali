.class public Lcom/google/android/exoplayer2/source/dash/manifest/Representation$SingleSegmentRepresentation;
.super Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
.source "Representation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/dash/manifest/Representation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingleSegmentRepresentation"
.end annotation


# instance fields
.field private final cacheKey:Ljava/lang/String;

.field public final contentLength:J

.field private final indexUri:Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

.field private final segmentIndex:Lcom/google/android/exoplayer2/source/dash/manifest/SingleSegmentIndex;

.field public final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(JLcom/google/android/exoplayer2/Format;Ljava/util/List;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;J)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/google/android/exoplayer2/Format;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;",
            ">;",
            "Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;",
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
            "J)V"
        }
    .end annotation

    move-object v10, p0

    const/4 v9, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 250
    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation;-><init>(JLcom/google/android/exoplayer2/Format;Ljava/util/List;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/google/android/exoplayer2/source/dash/manifest/Representation$1;)V

    const/4 v0, 0x0

    move-object v1, p4

    .line 258
    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v10, Lcom/google/android/exoplayer2/source/dash/manifest/Representation$SingleSegmentRepresentation;->uri:Landroid/net/Uri;

    .line 259
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;->getIndex()Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-result-object v0

    iput-object v0, v10, Lcom/google/android/exoplayer2/source/dash/manifest/Representation$SingleSegmentRepresentation;->indexUri:Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    move-object/from16 v1, p9

    iput-object v1, v10, Lcom/google/android/exoplayer2/source/dash/manifest/Representation$SingleSegmentRepresentation;->cacheKey:Ljava/lang/String;

    move-wide/from16 v1, p10

    iput-wide v1, v10, Lcom/google/android/exoplayer2/source/dash/manifest/Representation$SingleSegmentRepresentation;->contentLength:J

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 265
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/manifest/SingleSegmentIndex;

    new-instance v3, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object p1, v3

    move-object p2, v4

    move-wide p3, v5

    move-wide/from16 p5, p10

    invoke-direct/range {p1 .. p6}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;-><init>(Ljava/lang/String;JJ)V

    invoke-direct {v0, v3}, Lcom/google/android/exoplayer2/source/dash/manifest/SingleSegmentIndex;-><init>(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;)V

    :goto_0
    iput-object v0, v10, Lcom/google/android/exoplayer2/source/dash/manifest/Representation$SingleSegmentRepresentation;->segmentIndex:Lcom/google/android/exoplayer2/source/dash/manifest/SingleSegmentIndex;

    return-void
.end method

.method public static newInstance(JLcom/google/android/exoplayer2/Format;Ljava/lang/String;JJJJLjava/util/List;Ljava/lang/String;J)Lcom/google/android/exoplayer2/source/dash/manifest/Representation$SingleSegmentRepresentation;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/google/android/exoplayer2/Format;",
            "Ljava/lang/String;",
            "JJJJ",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Descriptor;",
            ">;",
            "Ljava/lang/String;",
            "J)",
            "Lcom/google/android/exoplayer2/source/dash/manifest/Representation$SingleSegmentRepresentation;"
        }
    .end annotation

    .line 212
    new-instance v6, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    const/4 v1, 0x0

    sub-long v2, p6, p4

    const-wide/16 v7, 0x1

    add-long v4, v2, v7

    move-object v0, v6

    move-wide/from16 v2, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;-><init>(Ljava/lang/String;JJ)V

    .line 214
    new-instance v14, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x0

    sub-long v0, p10, p8

    add-long v8, v0, v7

    move-object v0, v14

    move-object v1, v6

    move-wide/from16 v6, p8

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;-><init>(Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;JJJJ)V

    .line 216
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/source/dash/manifest/BaseUrl;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v13

    .line 217
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/manifest/Representation$SingleSegmentRepresentation;

    .line 223
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v16

    .line 224
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v17

    move-object v9, v0

    move-wide/from16 v10, p0

    move-object/from16 v12, p2

    move-object/from16 v15, p12

    move-object/from16 v18, p13

    move-wide/from16 v19, p14

    invoke-direct/range {v9 .. v20}, Lcom/google/android/exoplayer2/source/dash/manifest/Representation$SingleSegmentRepresentation;-><init>(JLcom/google/android/exoplayer2/Format;Ljava/util/List;Lcom/google/android/exoplayer2/source/dash/manifest/SegmentBase$SingleSegmentBase;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;J)V

    return-object v0
.end method


# virtual methods
.method public getCacheKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/Representation$SingleSegmentRepresentation;->cacheKey:Ljava/lang/String;

    return-object p0
.end method

.method public getIndex()Lcom/google/android/exoplayer2/source/dash/DashSegmentIndex;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/Representation$SingleSegmentRepresentation;->segmentIndex:Lcom/google/android/exoplayer2/source/dash/manifest/SingleSegmentIndex;

    return-object p0
.end method

.method public getIndexUri()Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/dash/manifest/Representation$SingleSegmentRepresentation;->indexUri:Lcom/google/android/exoplayer2/source/dash/manifest/RangedUri;

    return-object p0
.end method
