.class public final Landroidx/media3/extractor/DefaultExtractorsFactory;
.super Ljava/lang/Object;
.source "DefaultExtractorsFactory.java"

# interfaces
.implements Landroidx/media3/extractor/ExtractorsFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;
    }
.end annotation


# static fields
.field private static final DEFAULT_EXTRACTOR_ORDER:[I

.field private static final FLAC_EXTENSION_LOADER:Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;

.field private static final MIDI_EXTENSION_LOADER:Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;


# instance fields
.field private adtsFlags:I

.field private amrFlags:I

.field private constantBitrateSeekingAlwaysEnabled:Z

.field private constantBitrateSeekingEnabled:Z

.field private flacFlags:I

.field private fragmentedMp4Flags:I

.field private matroskaFlags:I

.field private mp3Flags:I

.field private mp4Flags:I

.field private tsFlags:I

.field private tsMode:I

.field private tsSubtitleFormats:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/common/Format;",
            ">;"
        }
    .end annotation
.end field

.field private tsTimestampSearchBytes:I


# direct methods
.method public static synthetic $r8$lambda$6W2W1-5R-UwlVLNHyyNaCk7TSbw()Ljava/lang/reflect/Constructor;
    .locals 1

    invoke-static {}, Landroidx/media3/extractor/DefaultExtractorsFactory;->getFlacExtractorConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$OE87ByVhBFSLNnBVk3NnyEF73wY()Ljava/lang/reflect/Constructor;
    .locals 1

    invoke-static {}, Landroidx/media3/extractor/DefaultExtractorsFactory;->getMidiExtractorConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media3/extractor/DefaultExtractorsFactory;->DEFAULT_EXTRACTOR_ORDER:[I

    .line 117
    new-instance v0, Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;

    new-instance v1, Landroidx/media3/extractor/DefaultExtractorsFactory$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroidx/media3/extractor/DefaultExtractorsFactory$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1}, Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;-><init>(Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader$ConstructorSupplier;)V

    sput-object v0, Landroidx/media3/extractor/DefaultExtractorsFactory;->FLAC_EXTENSION_LOADER:Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;

    .line 119
    new-instance v0, Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;

    new-instance v1, Landroidx/media3/extractor/DefaultExtractorsFactory$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroidx/media3/extractor/DefaultExtractorsFactory$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {v0, v1}, Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;-><init>(Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader$ConstructorSupplier;)V

    sput-object v0, Landroidx/media3/extractor/DefaultExtractorsFactory;->MIDI_EXTENSION_LOADER:Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;

    return-void

    :array_0
    .array-data 4
        0x5
        0x4
        0xc
        0x8
        0x3
        0xa
        0x9
        0xb
        0x6
        0x2
        0x0
        0x1
        0x7
        0x10
        0xf
        0xe
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->tsMode:I

    const v0, 0x1b8a0

    iput v0, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->tsTimestampSearchBytes:I

    return-void
.end method

.method private addExtractorsForFileType(ILjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroidx/media3/extractor/Extractor;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    .line 460
    :pswitch_1
    new-instance p0, Landroidx/media3/extractor/avi/AviExtractor;

    invoke-direct {p0}, Landroidx/media3/extractor/avi/AviExtractor;-><init>()V

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :pswitch_2
    sget-object p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->MIDI_EXTENSION_LOADER:Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;

    new-array p1, v1, [Ljava/lang/Object;

    .line 454
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;->getExtractor([Ljava/lang/Object;)Landroidx/media3/extractor/Extractor;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 456
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 451
    :pswitch_3
    new-instance p0, Landroidx/media3/extractor/jpeg/JpegExtractor;

    invoke-direct {p0}, Landroidx/media3/extractor/jpeg/JpegExtractor;-><init>()V

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 448
    :pswitch_4
    new-instance p0, Landroidx/media3/extractor/wav/WavExtractor;

    invoke-direct {p0}, Landroidx/media3/extractor/wav/WavExtractor;-><init>()V

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :pswitch_5
    iget-object p1, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->tsSubtitleFormats:Lcom/google/common/collect/ImmutableList;

    if-nez p1, :cond_0

    .line 438
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->tsSubtitleFormats:Lcom/google/common/collect/ImmutableList;

    .line 440
    :cond_0
    new-instance p1, Landroidx/media3/extractor/ts/TsExtractor;

    iget v0, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->tsMode:I

    new-instance v1, Landroidx/media3/common/util/TimestampAdjuster;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Landroidx/media3/common/util/TimestampAdjuster;-><init>(J)V

    new-instance v2, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;

    iget v3, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->tsFlags:I

    iget-object v4, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->tsSubtitleFormats:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v2, v3, v4}, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;-><init>(ILjava/util/List;)V

    iget p0, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->tsTimestampSearchBytes:I

    invoke-direct {p1, v0, v1, v2, p0}, Landroidx/media3/extractor/ts/TsExtractor;-><init>(ILandroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/ts/TsPayloadReader$Factory;I)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 434
    :pswitch_6
    new-instance p0, Landroidx/media3/extractor/ts/PsExtractor;

    invoke-direct {p0}, Landroidx/media3/extractor/ts/PsExtractor;-><init>()V

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 431
    :pswitch_7
    new-instance p0, Landroidx/media3/extractor/ogg/OggExtractor;

    invoke-direct {p0}, Landroidx/media3/extractor/ogg/OggExtractor;-><init>()V

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 427
    :pswitch_8
    new-instance p1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;

    iget v0, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->fragmentedMp4Flags:I

    invoke-direct {p1, v0}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;-><init>(I)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 428
    new-instance p1, Landroidx/media3/extractor/mp4/Mp4Extractor;

    iget p0, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->mp4Flags:I

    invoke-direct {p1, p0}, Landroidx/media3/extractor/mp4/Mp4Extractor;-><init>(I)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 416
    :pswitch_9
    new-instance p1, Landroidx/media3/extractor/mp3/Mp3Extractor;

    iget v2, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->mp3Flags:I

    iget-boolean v3, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->constantBitrateSeekingEnabled:Z

    or-int/2addr v2, v3

    iget-boolean p0, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->constantBitrateSeekingAlwaysEnabled:Z

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    or-int p0, v2, v0

    .line 424
    invoke-direct {p1, p0}, Landroidx/media3/extractor/mp3/Mp3Extractor;-><init>(I)V

    .line 416
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 413
    :pswitch_a
    new-instance p1, Landroidx/media3/extractor/mkv/MatroskaExtractor;

    iget p0, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->matroskaFlags:I

    invoke-direct {p1, p0}, Landroidx/media3/extractor/mkv/MatroskaExtractor;-><init>(I)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 410
    :pswitch_b
    new-instance p0, Landroidx/media3/extractor/flv/FlvExtractor;

    invoke-direct {p0}, Landroidx/media3/extractor/flv/FlvExtractor;-><init>()V

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :pswitch_c
    sget-object p1, Landroidx/media3/extractor/DefaultExtractorsFactory;->FLAC_EXTENSION_LOADER:Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;

    iget v0, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->flacFlags:I

    .line 402
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;->getExtractor([Ljava/lang/Object;)Landroidx/media3/extractor/Extractor;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 404
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 406
    :cond_2
    new-instance p1, Landroidx/media3/extractor/flac/FlacExtractor;

    iget p0, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->flacFlags:I

    invoke-direct {p1, p0}, Landroidx/media3/extractor/flac/FlacExtractor;-><init>(I)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 391
    :pswitch_d
    new-instance p1, Landroidx/media3/extractor/amr/AmrExtractor;

    iget v2, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->amrFlags:I

    iget-boolean v3, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->constantBitrateSeekingEnabled:Z

    or-int/2addr v2, v3

    iget-boolean p0, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->constantBitrateSeekingAlwaysEnabled:Z

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    or-int p0, v2, v0

    .line 399
    invoke-direct {p1, p0}, Landroidx/media3/extractor/amr/AmrExtractor;-><init>(I)V

    .line 391
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 380
    :pswitch_e
    new-instance p1, Landroidx/media3/extractor/ts/AdtsExtractor;

    iget v2, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->adtsFlags:I

    iget-boolean v3, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->constantBitrateSeekingEnabled:Z

    or-int/2addr v2, v3

    iget-boolean p0, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->constantBitrateSeekingAlwaysEnabled:Z

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    move v0, v1

    :goto_2
    or-int p0, v2, v0

    .line 388
    invoke-direct {p1, p0}, Landroidx/media3/extractor/ts/AdtsExtractor;-><init>(I)V

    .line 380
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 377
    :pswitch_f
    new-instance p0, Landroidx/media3/extractor/ts/Ac4Extractor;

    invoke-direct {p0}, Landroidx/media3/extractor/ts/Ac4Extractor;-><init>()V

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 374
    :pswitch_10
    new-instance p0, Landroidx/media3/extractor/ts/Ac3Extractor;

    invoke-direct {p0}, Landroidx/media3/extractor/ts/Ac3Extractor;-><init>()V

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static getFlacExtractorConstructor()Ljava/lang/reflect/Constructor;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Landroidx/media3/extractor/Extractor;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 483
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "androidx.media3.decoder.flac.FlacLibrary"

    .line 485
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    const-string v4, "isAvailable"

    .line 486
    invoke-virtual {v1, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 487
    invoke-virtual {v1, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 484
    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "androidx.media3.decoder.flac.FlacExtractor"

    .line 489
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroidx/media3/extractor/Extractor;

    .line 490
    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    .line 491
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v4
.end method

.method private static getMidiExtractorConstructor()Ljava/lang/reflect/Constructor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Landroidx/media3/extractor/Extractor;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    const-string v0, "androidx.media3.decoder.midi.MidiExtractor"

    .line 471
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroidx/media3/extractor/Extractor;

    .line 472
    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    .line 473
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized createExtractors()[Landroidx/media3/extractor/Extractor;
    .locals 2

    monitor-enter p0

    .line 341
    :try_start_0
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, v0, v1}, Landroidx/media3/extractor/DefaultExtractorsFactory;->createExtractors(Landroid/net/Uri;Ljava/util/Map;)[Landroidx/media3/extractor/Extractor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized createExtractors(Landroid/net/Uri;Ljava/util/Map;)[Landroidx/media3/extractor/Extractor;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)[",
            "Landroidx/media3/extractor/Extractor;"
        }
    .end annotation

    monitor-enter p0

    .line 347
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Landroidx/media3/extractor/DefaultExtractorsFactory;->DEFAULT_EXTRACTOR_ORDER:[I

    array-length v2, v1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 351
    invoke-static {p2}, Landroidx/media3/common/FileTypes;->inferFileTypeFromResponseHeaders(Ljava/util/Map;)I

    move-result p2

    const/4 v2, -0x1

    if-eq p2, v2, :cond_0

    .line 353
    invoke-direct {p0, p2, v0}, Landroidx/media3/extractor/DefaultExtractorsFactory;->addExtractorsForFileType(ILjava/util/List;)V

    .line 356
    :cond_0
    invoke-static {p1}, Landroidx/media3/common/FileTypes;->inferFileTypeFromUri(Landroid/net/Uri;)I

    move-result p1

    if-eq p1, v2, :cond_1

    if-eq p1, p2, :cond_1

    .line 359
    invoke-direct {p0, p1, v0}, Landroidx/media3/extractor/DefaultExtractorsFactory;->addExtractorsForFileType(ILjava/util/List;)V

    .line 362
    :cond_1
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget v4, v1, v3

    if-eq v4, p2, :cond_2

    if-eq v4, p1, :cond_2

    .line 364
    invoke-direct {p0, v4, v0}, Landroidx/media3/extractor/DefaultExtractorsFactory;->addExtractorsForFileType(ILjava/util/List;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 368
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Landroidx/media3/extractor/Extractor;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroidx/media3/extractor/Extractor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setAdtsExtractorFlags(I)Landroidx/media3/extractor/DefaultExtractorsFactory;
    .locals 0

    monitor-enter p0

    :try_start_0
    iput p1, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->adtsFlags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setAmrExtractorFlags(I)Landroidx/media3/extractor/DefaultExtractorsFactory;
    .locals 0

    monitor-enter p0

    :try_start_0
    iput p1, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->amrFlags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setConstantBitrateSeekingAlwaysEnabled(Z)Landroidx/media3/extractor/DefaultExtractorsFactory;
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->constantBitrateSeekingAlwaysEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setConstantBitrateSeekingEnabled(Z)Landroidx/media3/extractor/DefaultExtractorsFactory;
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->constantBitrateSeekingEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setFlacExtractorFlags(I)Landroidx/media3/extractor/DefaultExtractorsFactory;
    .locals 0

    monitor-enter p0

    :try_start_0
    iput p1, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->flacFlags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setFragmentedMp4ExtractorFlags(I)Landroidx/media3/extractor/DefaultExtractorsFactory;
    .locals 0

    monitor-enter p0

    :try_start_0
    iput p1, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->fragmentedMp4Flags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMatroskaExtractorFlags(I)Landroidx/media3/extractor/DefaultExtractorsFactory;
    .locals 0

    monitor-enter p0

    :try_start_0
    iput p1, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->matroskaFlags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMp3ExtractorFlags(I)Landroidx/media3/extractor/DefaultExtractorsFactory;
    .locals 0

    monitor-enter p0

    :try_start_0
    iput p1, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->mp3Flags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMp4ExtractorFlags(I)Landroidx/media3/extractor/DefaultExtractorsFactory;
    .locals 0

    monitor-enter p0

    :try_start_0
    iput p1, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->mp4Flags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setTsExtractorFlags(I)Landroidx/media3/extractor/DefaultExtractorsFactory;
    .locals 0

    monitor-enter p0

    :try_start_0
    iput p1, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->tsFlags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setTsExtractorMode(I)Landroidx/media3/extractor/DefaultExtractorsFactory;
    .locals 0

    monitor-enter p0

    :try_start_0
    iput p1, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->tsMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setTsExtractorTimestampSearchBytes(I)Landroidx/media3/extractor/DefaultExtractorsFactory;
    .locals 0

    monitor-enter p0

    :try_start_0
    iput p1, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->tsTimestampSearchBytes:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setTsSubtitleFormats(Ljava/util/List;)Landroidx/media3/extractor/DefaultExtractorsFactory;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/Format;",
            ">;)",
            "Landroidx/media3/extractor/DefaultExtractorsFactory;"
        }
    .end annotation

    monitor-enter p0

    .line 320
    :try_start_0
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->tsSubtitleFormats:Lcom/google/common/collect/ImmutableList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
