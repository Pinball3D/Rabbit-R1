.class public final Landroidx/media3/exoplayer/ExoPlaybackException;
.super Landroidx/media3/common/PlaybackException;
.source "ExoPlaybackException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/ExoPlaybackException$Type;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroidx/media3/common/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/common/Bundleable$Creator<",
            "Landroidx/media3/exoplayer/ExoPlaybackException;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_IS_RECOVERABLE:Ljava/lang/String;

.field private static final FIELD_RENDERER_FORMAT:Ljava/lang/String;

.field private static final FIELD_RENDERER_FORMAT_SUPPORT:Ljava/lang/String;

.field private static final FIELD_RENDERER_INDEX:Ljava/lang/String;

.field private static final FIELD_RENDERER_NAME:Ljava/lang/String;

.field private static final FIELD_TYPE:Ljava/lang/String;

.field public static final TYPE_REMOTE:I = 0x3

.field public static final TYPE_RENDERER:I = 0x1

.field public static final TYPE_SOURCE:I = 0x0

.field public static final TYPE_UNEXPECTED:I = 0x2


# instance fields
.field final isRecoverable:Z

.field public final mediaPeriodId:Landroidx/media3/common/MediaPeriodId;

.field public final rendererFormat:Landroidx/media3/common/Format;

.field public final rendererFormatSupport:I

.field public final rendererIndex:I

.field public final rendererName:Ljava/lang/String;

.field public final type:I


# direct methods
.method public static synthetic $r8$lambda$0EMQpi8Tl4d4KO99NckvC9cFZ2Y(Landroid/os/Bundle;)Landroidx/media3/exoplayer/ExoPlaybackException;
    .locals 1

    new-instance v0, Landroidx/media3/exoplayer/ExoPlaybackException;

    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/ExoPlaybackException;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 404
    new-instance v0, Landroidx/media3/exoplayer/ExoPlaybackException$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/media3/exoplayer/ExoPlaybackException$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroidx/media3/exoplayer/ExoPlaybackException;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    const/16 v0, 0x3e9

    .line 406
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/ExoPlaybackException;->FIELD_TYPE:Ljava/lang/String;

    const/16 v0, 0x3ea

    .line 408
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/ExoPlaybackException;->FIELD_RENDERER_NAME:Ljava/lang/String;

    const/16 v0, 0x3eb

    .line 410
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/ExoPlaybackException;->FIELD_RENDERER_INDEX:Ljava/lang/String;

    const/16 v0, 0x3ec

    .line 412
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/ExoPlaybackException;->FIELD_RENDERER_FORMAT:Ljava/lang/String;

    const/16 v0, 0x3ed

    .line 414
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/ExoPlaybackException;->FIELD_RENDERER_FORMAT_SUPPORT:Ljava/lang/String;

    const/16 v0, 0x3ee

    .line 416
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/ExoPlaybackException;->FIELD_IS_RECOVERABLE:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(ILjava/lang/Throwable;I)V
    .locals 10

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, p3

    .line 211
    invoke-direct/range {v0 .. v9}, Landroidx/media3/exoplayer/ExoPlaybackException;-><init>(ILjava/lang/Throwable;Ljava/lang/String;ILjava/lang/String;ILandroidx/media3/common/Format;IZ)V

    return-void
.end method

.method private constructor <init>(ILjava/lang/Throwable;Ljava/lang/String;ILjava/lang/String;ILandroidx/media3/common/Format;IZ)V
    .locals 14

    move v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    move/from16 v3, p6

    move-object/from16 v4, p7

    move/from16 v5, p8

    .line 234
    invoke-static/range {v0 .. v5}, Landroidx/media3/exoplayer/ExoPlaybackException;->deriveMessage(ILjava/lang/String;Ljava/lang/String;ILandroidx/media3/common/Format;I)Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x0

    .line 249
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    move-object v1, p0

    move-object/from16 v3, p2

    move/from16 v4, p4

    move v5, p1

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v13, p9

    .line 233
    invoke-direct/range {v1 .. v13}, Landroidx/media3/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;IILjava/lang/String;ILandroidx/media3/common/Format;ILandroidx/media3/common/MediaPeriodId;JZ)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Bundle;)V
    .locals 3

    .line 254
    invoke-direct {p0, p1}, Landroidx/media3/common/PlaybackException;-><init>(Landroid/os/Bundle;)V

    sget-object v0, Landroidx/media3/exoplayer/ExoPlaybackException;->FIELD_TYPE:Ljava/lang/String;

    const/4 v1, 0x2

    .line 255
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/media3/exoplayer/ExoPlaybackException;->type:I

    sget-object v0, Landroidx/media3/exoplayer/ExoPlaybackException;->FIELD_RENDERER_NAME:Ljava/lang/String;

    .line 256
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlaybackException;->rendererName:Ljava/lang/String;

    sget-object v0, Landroidx/media3/exoplayer/ExoPlaybackException;->FIELD_RENDERER_INDEX:Ljava/lang/String;

    const/4 v1, -0x1

    .line 257
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/media3/exoplayer/ExoPlaybackException;->rendererIndex:I

    sget-object v0, Landroidx/media3/exoplayer/ExoPlaybackException;->FIELD_RENDERER_FORMAT:Ljava/lang/String;

    .line 258
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 260
    :cond_0
    sget-object v2, Landroidx/media3/common/Format;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    invoke-interface {v2, v0}, Landroidx/media3/common/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Bundleable;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/Format;

    :goto_0
    iput-object v0, p0, Landroidx/media3/exoplayer/ExoPlaybackException;->rendererFormat:Landroidx/media3/common/Format;

    sget-object v0, Landroidx/media3/exoplayer/ExoPlaybackException;->FIELD_RENDERER_FORMAT_SUPPORT:Ljava/lang/String;

    const/4 v2, 0x4

    .line 262
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/media3/exoplayer/ExoPlaybackException;->rendererFormatSupport:I

    sget-object v0, Landroidx/media3/exoplayer/ExoPlaybackException;->FIELD_IS_RECOVERABLE:Ljava/lang/String;

    const/4 v2, 0x0

    .line 263
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/ExoPlaybackException;->isRecoverable:Z

    iput-object v1, p0, Landroidx/media3/exoplayer/ExoPlaybackException;->mediaPeriodId:Landroidx/media3/common/MediaPeriodId;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;IILjava/lang/String;ILandroidx/media3/common/Format;ILandroidx/media3/common/MediaPeriodId;JZ)V
    .locals 9

    move-object v6, p0

    move v7, p4

    move/from16 v8, p12

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide/from16 v4, p10

    .line 279
    invoke-direct/range {v0 .. v5}, Landroidx/media3/common/PlaybackException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;IJ)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz v8, :cond_1

    if-ne v7, v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    .line 280
    :goto_1
    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    if-nez p2, :cond_2

    const/4 v2, 0x3

    if-ne v7, v2, :cond_3

    :cond_2
    move v0, v1

    .line 281
    :cond_3
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    iput v7, v6, Landroidx/media3/exoplayer/ExoPlaybackException;->type:I

    move-object v0, p5

    iput-object v0, v6, Landroidx/media3/exoplayer/ExoPlaybackException;->rendererName:Ljava/lang/String;

    move v0, p6

    iput v0, v6, Landroidx/media3/exoplayer/ExoPlaybackException;->rendererIndex:I

    move-object/from16 v0, p7

    iput-object v0, v6, Landroidx/media3/exoplayer/ExoPlaybackException;->rendererFormat:Landroidx/media3/common/Format;

    move/from16 v0, p8

    iput v0, v6, Landroidx/media3/exoplayer/ExoPlaybackException;->rendererFormatSupport:I

    move-object/from16 v0, p9

    iput-object v0, v6, Landroidx/media3/exoplayer/ExoPlaybackException;->mediaPeriodId:Landroidx/media3/common/MediaPeriodId;

    iput-boolean v8, v6, Landroidx/media3/exoplayer/ExoPlaybackException;->isRecoverable:Z

    return-void
.end method

.method public static createForRemote(Ljava/lang/String;)Landroidx/media3/exoplayer/ExoPlaybackException;
    .locals 11

    .line 198
    new-instance v10, Landroidx/media3/exoplayer/ExoPlaybackException;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/16 v4, 0x3e9

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v0, v10

    move-object v3, p0

    invoke-direct/range {v0 .. v9}, Landroidx/media3/exoplayer/ExoPlaybackException;-><init>(ILjava/lang/Throwable;Ljava/lang/String;ILjava/lang/String;ILandroidx/media3/common/Format;IZ)V

    return-object v10
.end method

.method public static createForRenderer(Ljava/lang/Throwable;Ljava/lang/String;ILandroidx/media3/common/Format;IZI)Landroidx/media3/exoplayer/ExoPlaybackException;
    .locals 11

    .line 155
    new-instance v10, Landroidx/media3/exoplayer/ExoPlaybackException;

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-nez p3, :cond_0

    const/4 v0, 0x4

    move v8, v0

    goto :goto_0

    :cond_0
    move v8, p4

    :goto_0
    move-object v0, v10

    move-object v2, p0

    move/from16 v4, p6

    move-object v5, p1

    move v6, p2

    move-object v7, p3

    move/from16 v9, p5

    .line 163
    invoke-direct/range {v0 .. v9}, Landroidx/media3/exoplayer/ExoPlaybackException;-><init>(ILjava/lang/Throwable;Ljava/lang/String;ILjava/lang/String;ILandroidx/media3/common/Format;IZ)V

    return-object v10
.end method

.method public static createForSource(Ljava/io/IOException;I)Landroidx/media3/exoplayer/ExoPlaybackException;
    .locals 2

    .line 127
    new-instance v0, Landroidx/media3/exoplayer/ExoPlaybackException;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Landroidx/media3/exoplayer/ExoPlaybackException;-><init>(ILjava/lang/Throwable;I)V

    return-object v0
.end method

.method public static createForUnexpected(Ljava/lang/RuntimeException;)Landroidx/media3/exoplayer/ExoPlaybackException;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x3e8

    .line 174
    invoke-static {p0, v0}, Landroidx/media3/exoplayer/ExoPlaybackException;->createForUnexpected(Ljava/lang/RuntimeException;I)Landroidx/media3/exoplayer/ExoPlaybackException;

    move-result-object p0

    return-object p0
.end method

.method public static createForUnexpected(Ljava/lang/RuntimeException;I)Landroidx/media3/exoplayer/ExoPlaybackException;
    .locals 2

    .line 187
    new-instance v0, Landroidx/media3/exoplayer/ExoPlaybackException;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0, p1}, Landroidx/media3/exoplayer/ExoPlaybackException;-><init>(ILjava/lang/Throwable;I)V

    return-object v0
.end method

.method private static deriveMessage(ILjava/lang/String;Ljava/lang/String;ILandroidx/media3/common/Format;I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 p2, 0x3

    if-eq p0, p2, :cond_0

    const-string p0, "Unexpected runtime error"

    goto :goto_0

    :cond_0
    const-string p0, "Remote error"

    goto :goto_0

    .line 376
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " error, index="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, ", format="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, ", format_supported="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 384
    invoke-static {p5}, Landroidx/media3/common/util/Util;->getFormatSupportString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const-string p0, "Source error"

    .line 394
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 395
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, ": "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_3
    return-object p0
.end method


# virtual methods
.method copyWithMediaPeriodId(Landroidx/media3/common/MediaPeriodId;)Landroidx/media3/exoplayer/ExoPlaybackException;
    .locals 14

    .line 349
    new-instance v13, Landroidx/media3/exoplayer/ExoPlaybackException;

    .line 350
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlaybackException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 351
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlaybackException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    iget v3, p0, Landroidx/media3/exoplayer/ExoPlaybackException;->errorCode:I

    iget v4, p0, Landroidx/media3/exoplayer/ExoPlaybackException;->type:I

    iget-object v5, p0, Landroidx/media3/exoplayer/ExoPlaybackException;->rendererName:Ljava/lang/String;

    iget v6, p0, Landroidx/media3/exoplayer/ExoPlaybackException;->rendererIndex:I

    iget-object v7, p0, Landroidx/media3/exoplayer/ExoPlaybackException;->rendererFormat:Landroidx/media3/common/Format;

    iget v8, p0, Landroidx/media3/exoplayer/ExoPlaybackException;->rendererFormatSupport:I

    iget-wide v10, p0, Landroidx/media3/exoplayer/ExoPlaybackException;->timestampMs:J

    iget-boolean v12, p0, Landroidx/media3/exoplayer/ExoPlaybackException;->isRecoverable:Z

    move-object v0, v13

    move-object v9, p1

    invoke-direct/range {v0 .. v12}, Landroidx/media3/exoplayer/ExoPlaybackException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;IILjava/lang/String;ILandroidx/media3/common/Format;ILandroidx/media3/common/MediaPeriodId;JZ)V

    return-object v13
.end method

.method public errorInfoEquals(Landroidx/media3/common/PlaybackException;)Z
    .locals 3

    .line 326
    invoke-super {p0, p1}, Landroidx/media3/common/PlaybackException;->errorInfoEquals(Landroidx/media3/common/PlaybackException;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 331
    :cond_0
    invoke-static {p1}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/ExoPlaybackException;

    iget v0, p0, Landroidx/media3/exoplayer/ExoPlaybackException;->type:I

    .line 332
    iget v2, p1, Landroidx/media3/exoplayer/ExoPlaybackException;->type:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlaybackException;->rendererName:Ljava/lang/String;

    iget-object v2, p1, Landroidx/media3/exoplayer/ExoPlaybackException;->rendererName:Ljava/lang/String;

    .line 333
    invoke-static {v0, v2}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/media3/exoplayer/ExoPlaybackException;->rendererIndex:I

    iget v2, p1, Landroidx/media3/exoplayer/ExoPlaybackException;->rendererIndex:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlaybackException;->rendererFormat:Landroidx/media3/common/Format;

    iget-object v2, p1, Landroidx/media3/exoplayer/ExoPlaybackException;->rendererFormat:Landroidx/media3/common/Format;

    .line 335
    invoke-static {v0, v2}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/media3/exoplayer/ExoPlaybackException;->rendererFormatSupport:I

    iget v2, p1, Landroidx/media3/exoplayer/ExoPlaybackException;->rendererFormatSupport:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlaybackException;->mediaPeriodId:Landroidx/media3/common/MediaPeriodId;

    iget-object v2, p1, Landroidx/media3/exoplayer/ExoPlaybackException;->mediaPeriodId:Landroidx/media3/common/MediaPeriodId;

    .line 337
    invoke-static {v0, v2}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Landroidx/media3/exoplayer/ExoPlaybackException;->isRecoverable:Z

    iget-boolean p1, p1, Landroidx/media3/exoplayer/ExoPlaybackException;->isRecoverable:Z

    if-ne p0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getRendererException()Ljava/lang/Exception;
    .locals 2

    iget v0, p0, Landroidx/media3/exoplayer/ExoPlaybackException;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 309
    :goto_0
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 310
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlaybackException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Exception;

    return-object p0
.end method

.method public getSourceException()Ljava/io/IOException;
    .locals 1

    iget v0, p0, Landroidx/media3/exoplayer/ExoPlaybackException;->type:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 298
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 299
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlaybackException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/IOException;

    return-object p0
.end method

.method public getUnexpectedException()Ljava/lang/RuntimeException;
    .locals 2

    iget v0, p0, Landroidx/media3/exoplayer/ExoPlaybackException;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 320
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 321
    invoke-virtual {p0}, Landroidx/media3/exoplayer/ExoPlaybackException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/RuntimeException;

    return-object p0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .line 427
    invoke-super {p0}, Landroidx/media3/common/PlaybackException;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Landroidx/media3/exoplayer/ExoPlaybackException;->FIELD_TYPE:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/exoplayer/ExoPlaybackException;->type:I

    .line 428
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Landroidx/media3/exoplayer/ExoPlaybackException;->FIELD_RENDERER_NAME:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/exoplayer/ExoPlaybackException;->rendererName:Ljava/lang/String;

    .line 429
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Landroidx/media3/exoplayer/ExoPlaybackException;->FIELD_RENDERER_INDEX:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/exoplayer/ExoPlaybackException;->rendererIndex:I

    .line 430
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Landroidx/media3/exoplayer/ExoPlaybackException;->rendererFormat:Landroidx/media3/common/Format;

    if-eqz v1, :cond_0

    sget-object v2, Landroidx/media3/exoplayer/ExoPlaybackException;->FIELD_RENDERER_FORMAT:Ljava/lang/String;

    .line 432
    invoke-virtual {v1}, Landroidx/media3/common/Format;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    sget-object v1, Landroidx/media3/exoplayer/ExoPlaybackException;->FIELD_RENDERER_FORMAT_SUPPORT:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/exoplayer/ExoPlaybackException;->rendererFormatSupport:I

    .line 434
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Landroidx/media3/exoplayer/ExoPlaybackException;->FIELD_IS_RECOVERABLE:Ljava/lang/String;

    iget-boolean p0, p0, Landroidx/media3/exoplayer/ExoPlaybackException;->isRecoverable:Z

    .line 435
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method
