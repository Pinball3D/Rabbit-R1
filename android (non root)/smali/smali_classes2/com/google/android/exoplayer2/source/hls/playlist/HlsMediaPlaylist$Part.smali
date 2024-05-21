.class public final Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;
.super Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$SegmentBase;
.source "HlsMediaPlaylist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Part"
.end annotation


# instance fields
.field public final isIndependent:Z

.field public final isPreload:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;JIJLcom/google/android/exoplayer2/drm/DrmInitData;Ljava/lang/String;Ljava/lang/String;JJZZZ)V
    .locals 17

    move-object/from16 v15, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move/from16 v5, p5

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-wide/from16 v11, p11

    move-wide/from16 v13, p13

    move/from16 v15, p15

    const/16 v16, 0x0

    .line 241
    invoke-direct/range {v0 .. v16}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$SegmentBase;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;JIJLcom/google/android/exoplayer2/drm/DrmInitData;Ljava/lang/String;Ljava/lang/String;JJZLcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$1;)V

    move/from16 v1, p16

    iput-boolean v1, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;->isIndependent:Z

    move/from16 v1, p17

    iput-boolean v1, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;->isPreload:Z

    return-void
.end method


# virtual methods
.method public copyWith(JI)Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;
    .locals 20

    move-object/from16 v0, p0

    move-wide/from16 v7, p1

    move/from16 v6, p3

    .line 258
    new-instance v19, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;

    move-object/from16 v1, v19

    iget-object v2, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;->url:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;->initializationSegment:Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    iget-wide v4, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;->durationUs:J

    iget-object v9, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    iget-object v10, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;->fullSegmentEncryptionKeyUri:Ljava/lang/String;

    iget-object v11, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;->encryptionIV:Ljava/lang/String;

    iget-wide v12, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;->byteRangeOffset:J

    iget-wide v14, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;->byteRangeLength:J

    move-object/from16 p1, v1

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;->hasGapTag:Z

    move/from16 v16, v1

    iget-boolean v1, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;->isIndependent:Z

    move/from16 v17, v1

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;->isPreload:Z

    move/from16 v18, v0

    move-object/from16 v1, p1

    invoke-direct/range {v1 .. v18}, Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Part;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;JIJLcom/google/android/exoplayer2/drm/DrmInitData;Ljava/lang/String;Ljava/lang/String;JJZZZ)V

    return-object v19
.end method
