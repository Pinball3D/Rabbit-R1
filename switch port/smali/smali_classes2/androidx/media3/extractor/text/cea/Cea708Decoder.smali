.class public final Landroidx/media3/extractor/text/cea/Cea708Decoder;
.super Landroidx/media3/extractor/text/cea/CeaDecoder;
.source "Cea708Decoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;,
        Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;,
        Landroidx/media3/extractor/text/cea/Cea708Decoder$Cea708CueInfo;
    }
.end annotation


# static fields
.field private static final CC_VALID_FLAG:I = 0x4

.field private static final CHARACTER_BIG_CARONS:I = 0x2a

.field private static final CHARACTER_BIG_OE:I = 0x2c

.field private static final CHARACTER_BOLD_BULLET:I = 0x35

.field private static final CHARACTER_CLOSE_DOUBLE_QUOTE:I = 0x34

.field private static final CHARACTER_CLOSE_SINGLE_QUOTE:I = 0x32

.field private static final CHARACTER_DIAERESIS_Y:I = 0x3f

.field private static final CHARACTER_ELLIPSIS:I = 0x25

.field private static final CHARACTER_FIVE_EIGHTHS:I = 0x78

.field private static final CHARACTER_HORIZONTAL_BORDER:I = 0x7d

.field private static final CHARACTER_LOWER_LEFT_BORDER:I = 0x7c

.field private static final CHARACTER_LOWER_RIGHT_BORDER:I = 0x7e

.field private static final CHARACTER_MN:I = 0x7f

.field private static final CHARACTER_NBTSP:I = 0x21

.field private static final CHARACTER_ONE_EIGHTH:I = 0x76

.field private static final CHARACTER_OPEN_DOUBLE_QUOTE:I = 0x33

.field private static final CHARACTER_OPEN_SINGLE_QUOTE:I = 0x31

.field private static final CHARACTER_SEVEN_EIGHTHS:I = 0x79

.field private static final CHARACTER_SM:I = 0x3d

.field private static final CHARACTER_SMALL_CARONS:I = 0x3a

.field private static final CHARACTER_SMALL_OE:I = 0x3c

.field private static final CHARACTER_SOLID_BLOCK:I = 0x30

.field private static final CHARACTER_THREE_EIGHTHS:I = 0x77

.field private static final CHARACTER_TM:I = 0x39

.field private static final CHARACTER_TSP:I = 0x20

.field private static final CHARACTER_UPPER_LEFT_BORDER:I = 0x7f

.field private static final CHARACTER_UPPER_RIGHT_BORDER:I = 0x7b

.field private static final CHARACTER_VERTICAL_BORDER:I = 0x7a

.field private static final COMMAND_BS:I = 0x8

.field private static final COMMAND_CLW:I = 0x88

.field private static final COMMAND_CR:I = 0xd

.field private static final COMMAND_CW0:I = 0x80

.field private static final COMMAND_CW1:I = 0x81

.field private static final COMMAND_CW2:I = 0x82

.field private static final COMMAND_CW3:I = 0x83

.field private static final COMMAND_CW4:I = 0x84

.field private static final COMMAND_CW5:I = 0x85

.field private static final COMMAND_CW6:I = 0x86

.field private static final COMMAND_CW7:I = 0x87

.field private static final COMMAND_DF0:I = 0x98

.field private static final COMMAND_DF1:I = 0x99

.field private static final COMMAND_DF2:I = 0x9a

.field private static final COMMAND_DF3:I = 0x9b

.field private static final COMMAND_DF4:I = 0x9c

.field private static final COMMAND_DF5:I = 0x9d

.field private static final COMMAND_DF6:I = 0x9e

.field private static final COMMAND_DF7:I = 0x9f

.field private static final COMMAND_DLC:I = 0x8e

.field private static final COMMAND_DLW:I = 0x8c

.field private static final COMMAND_DLY:I = 0x8d

.field private static final COMMAND_DSW:I = 0x89

.field private static final COMMAND_ETX:I = 0x3

.field private static final COMMAND_EXT1:I = 0x10

.field private static final COMMAND_EXT1_END:I = 0x17

.field private static final COMMAND_EXT1_START:I = 0x11

.field private static final COMMAND_FF:I = 0xc

.field private static final COMMAND_HCR:I = 0xe

.field private static final COMMAND_HDW:I = 0x8a

.field private static final COMMAND_NUL:I = 0x0

.field private static final COMMAND_P16_END:I = 0x1f

.field private static final COMMAND_P16_START:I = 0x18

.field private static final COMMAND_RST:I = 0x8f

.field private static final COMMAND_SPA:I = 0x90

.field private static final COMMAND_SPC:I = 0x91

.field private static final COMMAND_SPL:I = 0x92

.field private static final COMMAND_SWA:I = 0x97

.field private static final COMMAND_TGW:I = 0x8b

.field private static final DTVCC_PACKET_DATA:I = 0x2

.field private static final DTVCC_PACKET_START:I = 0x3

.field private static final GROUP_C0_END:I = 0x1f

.field private static final GROUP_C1_END:I = 0x9f

.field private static final GROUP_C2_END:I = 0x1f

.field private static final GROUP_C3_END:I = 0x9f

.field private static final GROUP_G0_END:I = 0x7f

.field private static final GROUP_G1_END:I = 0xff

.field private static final GROUP_G2_END:I = 0x7f

.field private static final GROUP_G3_END:I = 0xff

.field private static final NUM_WINDOWS:I = 0x8

.field private static final TAG:Ljava/lang/String; = "Cea708Decoder"


# instance fields
.field private final captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

.field private final ccData:Landroidx/media3/common/util/ParsableByteArray;

.field private final cueInfoBuilders:[Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

.field private cues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/common/text/Cue;",
            ">;"
        }
    .end annotation
.end field

.field private currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

.field private currentDtvCcPacket:Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;

.field private currentWindow:I

.field private final isWideAspectRatio:Z

.field private lastCues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/common/text/Cue;",
            ">;"
        }
    .end annotation
.end field

.field private previousSequenceNumber:I

.field private final selectedServiceNumber:I


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .line 164
    invoke-direct {p0}, Landroidx/media3/extractor/text/cea/CeaDecoder;-><init>()V

    .line 165
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->ccData:Landroidx/media3/common/util/ParsableByteArray;

    .line 166
    new-instance v0, Landroidx/media3/common/util/ParsableBitArray;

    invoke-direct {v0}, Landroidx/media3/common/util/ParsableBitArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->previousSequenceNumber:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    move p1, v1

    :cond_0
    iput p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->selectedServiceNumber:I

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    .line 171
    invoke-static {p2}, Landroidx/media3/common/util/CodecSpecificDataUtil;->parseCea708InitializationData(Ljava/util/List;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    move v1, p1

    :goto_0
    iput-boolean v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->isWideAspectRatio:Z

    const/16 p2, 0x8

    new-array v0, p2, [Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    iput-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->cueInfoBuilders:[Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    move v0, p1

    :goto_1
    if-ge v0, p2, :cond_2

    iget-object v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->cueInfoBuilders:[Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    .line 175
    new-instance v2, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    invoke-direct {v2}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object p2, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->cueInfoBuilders:[Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    .line 178
    aget-object p1, p2, p1

    iput-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    return-void
.end method

.method private finalizeCurrentPacket()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentDtvCcPacket:Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;

    if-nez v0, :cond_0

    return-void

    .line 281
    :cond_0
    invoke-direct {p0}, Landroidx/media3/extractor/text/cea/Cea708Decoder;->processCurrentPacket()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentDtvCcPacket:Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;

    return-void
.end method

.method private getDisplayCues()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media3/common/text/Cue;",
            ">;"
        }
    .end annotation

    .line 807
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x8

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->cueInfoBuilders:[Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    .line 809
    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->cueInfoBuilders:[Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->cueInfoBuilders:[Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    .line 810
    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->build()Landroidx/media3/extractor/text/cea/Cea708Decoder$Cea708CueInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 812
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 816
    :cond_1
    invoke-static {}, Landroidx/media3/extractor/text/cea/Cea708Decoder$Cea708CueInfo;->access$000()Ljava/util/Comparator;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 817
    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {p0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 818
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 819
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/extractor/text/cea/Cea708Decoder$Cea708CueInfo;

    iget-object v2, v2, Landroidx/media3/extractor/text/cea/Cea708Decoder$Cea708CueInfo;->cue:Landroidx/media3/common/text/Cue;

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 821
    :cond_2
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private handleC0Command(I)V
    .locals 4

    if-eqz p1, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    const/16 v1, 0x11

    const-string v2, "Cea708Decoder"

    if-lt p1, v1, :cond_0

    const/16 v1, 0x17

    if-gt p1, v1, :cond_0

    .line 410
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Currently unsupported COMMAND_EXT1 Command: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    .line 411
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x18

    if-lt p1, v0, :cond_1

    const/16 v0, 0x1f

    if-gt p1, v0, :cond_1

    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Currently unsupported COMMAND_P16 Command: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    const/16 p1, 0x10

    .line 414
    invoke-virtual {p0, p1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    goto :goto_0

    .line 416
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Invalid C0 command: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 p1, 0xa

    .line 403
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto :goto_0

    .line 400
    :pswitch_1
    invoke-direct {p0}, Landroidx/media3/extractor/text/cea/Cea708Decoder;->resetCueBuilders()V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    .line 397
    invoke-virtual {p0}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->backspace()V

    goto :goto_0

    .line 394
    :cond_3
    invoke-direct {p0}, Landroidx/media3/extractor/text/cea/Cea708Decoder;->getDisplayCues()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->cues:Ljava/util/List;

    :cond_4
    :goto_0
    :pswitch_2
    return-void

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private handleC1Command(I)V
    .locals 4

    const/16 v0, 0x10

    const/16 v1, 0x8

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 533
    :pswitch_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Invalid C1 command: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Cea708Decoder"

    invoke-static {p1, p0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :pswitch_1
    add-int/lit16 p1, p1, -0x98

    .line 525
    invoke-direct {p0, p1}, Landroidx/media3/extractor/text/cea/Cea708Decoder;->handleDefineWindow(I)V

    iget v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentWindow:I

    if-eq v0, p1, :cond_9

    iput p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentWindow:I

    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->cueInfoBuilders:[Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    .line 529
    aget-object p1, v0, p1

    iput-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    goto/16 :goto_5

    :pswitch_2
    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    .line 509
    invoke-virtual {p1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->isDefined()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    const/16 p1, 0x20

    .line 511
    invoke-virtual {p0, p1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    goto/16 :goto_5

    .line 513
    :cond_0
    invoke-direct {p0}, Landroidx/media3/extractor/text/cea/Cea708Decoder;->handleSetWindowAttributes()V

    goto/16 :goto_5

    :pswitch_3
    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    .line 501
    invoke-virtual {p1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->isDefined()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    .line 503
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    goto/16 :goto_5

    .line 505
    :cond_1
    invoke-direct {p0}, Landroidx/media3/extractor/text/cea/Cea708Decoder;->handleSetPenLocation()V

    goto/16 :goto_5

    :pswitch_4
    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    .line 493
    invoke-virtual {p1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->isDefined()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    const/16 p1, 0x18

    .line 495
    invoke-virtual {p0, p1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    goto/16 :goto_5

    .line 497
    :cond_2
    invoke-direct {p0}, Landroidx/media3/extractor/text/cea/Cea708Decoder;->handleSetPenColor()V

    goto/16 :goto_5

    :pswitch_5
    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    .line 485
    invoke-virtual {p1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->isDefined()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    .line 487
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    goto/16 :goto_5

    .line 489
    :cond_3
    invoke-direct {p0}, Landroidx/media3/extractor/text/cea/Cea708Decoder;->handleSetPenAttributes()V

    goto/16 :goto_5

    .line 482
    :pswitch_6
    invoke-direct {p0}, Landroidx/media3/extractor/text/cea/Cea708Decoder;->resetCueBuilders()V

    goto/16 :goto_5

    :pswitch_7
    iget-object p0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    .line 476
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    goto/16 :goto_5

    :goto_0
    :pswitch_8
    if-gt v2, v1, :cond_9

    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    .line 469
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->cueInfoBuilders:[Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    rsub-int/lit8 v0, v2, 0x8

    .line 470
    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->reset()V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :pswitch_9
    move p1, v2

    :goto_1
    if-gt p1, v1, :cond_9

    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    .line 461
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->cueInfoBuilders:[Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    rsub-int/lit8 v3, p1, 0x8

    .line 462
    aget-object v0, v0, v3

    .line 463
    invoke-virtual {v0}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->isVisible()Z

    move-result v3

    xor-int/2addr v3, v2

    invoke-virtual {v0, v3}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->setVisibility(Z)V

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :goto_2
    :pswitch_a
    if-gt v2, v1, :cond_9

    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    .line 454
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->cueInfoBuilders:[Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    rsub-int/lit8 v0, v2, 0x8

    .line 455
    aget-object p1, p1, v0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->setVisibility(Z)V

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :pswitch_b
    move p1, v2

    :goto_3
    if-gt p1, v1, :cond_9

    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    .line 447
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->cueInfoBuilders:[Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    rsub-int/lit8 v3, p1, 0x8

    .line 448
    aget-object v0, v0, v3

    invoke-virtual {v0, v2}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->setVisibility(Z)V

    :cond_7
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :goto_4
    :pswitch_c
    if-gt v2, v1, :cond_9

    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    .line 440
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->cueInfoBuilders:[Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    rsub-int/lit8 v0, v2, 0x8

    .line 441
    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->clear()V

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :pswitch_d
    add-int/lit8 p1, p1, -0x80

    iget v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentWindow:I

    if-eq v0, p1, :cond_9

    iput p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentWindow:I

    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->cueInfoBuilders:[Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    .line 435
    aget-object p1, v0, p1

    iput-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    :cond_9
    :goto_5
    :pswitch_e
    return-void

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_e
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private handleC2Command(I)V
    .locals 1

    const/4 v0, 0x7

    if-gt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0xf

    if-gt p1, v0, :cond_1

    iget-object p0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    const/16 p1, 0x8

    .line 542
    invoke-virtual {p0, p1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x17

    if-gt p1, v0, :cond_2

    iget-object p0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    const/16 p1, 0x10

    .line 544
    invoke-virtual {p0, p1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x1f

    if-gt p1, v0, :cond_3

    iget-object p0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    const/16 p1, 0x18

    .line 546
    invoke-virtual {p0, p1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private handleC3Command(I)V
    .locals 1

    const/16 v0, 0x87

    if-gt p1, v0, :cond_0

    iget-object p0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    const/16 p1, 0x20

    .line 553
    invoke-virtual {p0, p1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x8f

    if-gt p1, v0, :cond_1

    iget-object p0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    const/16 p1, 0x28

    .line 555
    invoke-virtual {p0, p1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x9f

    if-gt p1, v0, :cond_2

    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v0, 0x2

    .line 560
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v0, 0x6

    .line 561
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result p1

    iget-object p0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    mul-int/lit8 p1, p1, 0x8

    .line 562
    invoke-virtual {p0, p1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private handleDefineWindow(I)V
    .locals 14

    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->cueInfoBuilders:[Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    .line 766
    aget-object v1, v0, p1

    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v0, 0x2

    .line 770
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    .line 771
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v2

    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    .line 772
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v3

    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    .line 773
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v4

    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v5, 0x3

    .line 774
    invoke-virtual {p1, v5}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result p1

    iget-object v6, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    .line 776
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v6

    iget-object v7, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v8, 0x7

    .line 777
    invoke-virtual {v7, v8}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v7

    iget-object v8, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    const/16 v9, 0x8

    .line 779
    invoke-virtual {v8, v9}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v8

    iget-object v9, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v10, 0x4

    .line 781
    invoke-virtual {v9, v10}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v11

    iget-object v9, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    .line 782
    invoke-virtual {v9, v10}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v9

    iget-object v10, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    .line 784
    invoke-virtual {v10, v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    iget-object v10, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v12, 0x6

    .line 785
    invoke-virtual {v10, v12}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v10

    iget-object v12, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    .line 787
    invoke-virtual {v12, v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    .line 788
    invoke-virtual {v0, v5}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v12

    iget-object p0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    .line 789
    invoke-virtual {p0, v5}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v13

    move v5, p1

    .line 791
    invoke-virtual/range {v1 .. v13}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->defineWindow(ZZZIZIIIIIII)V

    return-void
.end method

.method private handleG0Character(I)V
    .locals 1

    const/16 v0, 0x7f

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 p1, 0x266b

    .line 568
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    and-int/lit16 p1, p1, 0xff

    int-to-char p1, p1

    .line 570
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    :goto_0
    return-void
.end method

.method private handleG1Character(I)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    and-int/lit16 p1, p1, 0xff

    int-to-char p1, p1

    .line 575
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    return-void
.end method

.method private handleG2Character(I)V
    .locals 1

    const/16 v0, 0x20

    if-eq p1, v0, :cond_9

    const/16 v0, 0x21

    if-eq p1, v0, :cond_8

    const/16 v0, 0x25

    if-eq p1, v0, :cond_7

    const/16 v0, 0x2a

    if-eq p1, v0, :cond_6

    const/16 v0, 0x2c

    if-eq p1, v0, :cond_5

    const/16 v0, 0x3f

    if-eq p1, v0, :cond_4

    const/16 v0, 0x39

    if-eq p1, v0, :cond_3

    const/16 v0, 0x3a

    if-eq p1, v0, :cond_2

    const/16 v0, 0x3c

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3d

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    .line 659
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Invalid G2 character: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Cea708Decoder"

    invoke-static {p1, p0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_0
    iget-object p0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 p1, 0x250c

    .line 656
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto/16 :goto_0

    :pswitch_1
    iget-object p0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 p1, 0x2518

    .line 653
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto/16 :goto_0

    :pswitch_2
    iget-object p0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 p1, 0x2500

    .line 650
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto/16 :goto_0

    :pswitch_3
    iget-object p0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 p1, 0x2514

    .line 647
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto/16 :goto_0

    :pswitch_4
    iget-object p0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 p1, 0x2510

    .line 644
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto/16 :goto_0

    :pswitch_5
    iget-object p0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 p1, 0x2502

    .line 641
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto/16 :goto_0

    :pswitch_6
    iget-object p0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 p1, 0x215e

    .line 638
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto/16 :goto_0

    :pswitch_7
    iget-object p0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 p1, 0x215d

    .line 635
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto/16 :goto_0

    :pswitch_8
    iget-object p0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 p1, 0x215c

    .line 632
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto/16 :goto_0

    :pswitch_9
    iget-object p0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 p1, 0x215b

    .line 629
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto/16 :goto_0

    :pswitch_a
    iget-object p0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 p1, 0x2022

    .line 611
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto/16 :goto_0

    :pswitch_b
    iget-object p0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 p1, 0x201d

    .line 608
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto/16 :goto_0

    :pswitch_c
    iget-object p0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 p1, 0x201c

    .line 605
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto/16 :goto_0

    :pswitch_d
    iget-object p0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 p1, 0x2019

    .line 602
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto :goto_0

    :pswitch_e
    iget-object p0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 p1, 0x2018

    .line 599
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto :goto_0

    :pswitch_f
    iget-object p0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 p1, 0x2588

    .line 596
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 p1, 0x2120

    .line 623
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 p1, 0x153

    .line 620
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 p1, 0x161

    .line 617
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 p1, 0x2122

    .line 614
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto :goto_0

    :cond_4
    iget-object p0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 p1, 0x178

    .line 626
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto :goto_0

    :cond_5
    iget-object p0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 p1, 0x152

    .line 593
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto :goto_0

    :cond_6
    iget-object p0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 p1, 0x160

    .line 590
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto :goto_0

    :cond_7
    iget-object p0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 p1, 0x2026

    .line 587
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto :goto_0

    :cond_8
    iget-object p0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 p1, 0xa0

    .line 584
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto :goto_0

    :cond_9
    iget-object p0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    .line 581
    invoke-virtual {p0, v0}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x76
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleG3Character(I)V
    .locals 2

    const/16 v0, 0xa0

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 p1, 0x33c4

    .line 667
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    goto :goto_0

    .line 669
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid G3 character: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Cea708Decoder"

    invoke-static {v0, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    const/16 p1, 0x5f

    .line 671
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->append(C)V

    :goto_0
    return-void
.end method

.method private handleSetPenAttributes()V
    .locals 10

    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v1, 0x4

    .line 678
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v3

    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v1, 0x2

    .line 679
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    .line 680
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v5

    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    .line 682
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v6

    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    .line 683
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v7

    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v1, 0x3

    .line 684
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v8

    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    .line 685
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v9

    iget-object v2, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    .line 687
    invoke-virtual/range {v2 .. v9}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->setPenAttributes(IIIZZII)V

    return-void
.end method

.method private handleSetPenColor()V
    .locals 6

    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v1, 0x2

    .line 694
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v0

    iget-object v2, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    .line 695
    invoke-virtual {v2, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    iget-object v3, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    .line 696
    invoke-virtual {v3, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v3

    iget-object v4, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    .line 697
    invoke-virtual {v4, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 699
    invoke-static {v2, v3, v4, v0}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->getArgbColorFromCeaColor(IIII)I

    move-result v0

    iget-object v2, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    .line 701
    invoke-virtual {v2, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    iget-object v3, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    .line 702
    invoke-virtual {v3, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v3

    iget-object v4, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    .line 703
    invoke-virtual {v4, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    iget-object v5, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    .line 704
    invoke-virtual {v5, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v5

    .line 706
    invoke-static {v3, v4, v5, v2}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->getArgbColorFromCeaColor(IIII)I

    move-result v2

    iget-object v3, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    .line 708
    invoke-virtual {v3, v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    iget-object v3, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    .line 709
    invoke-virtual {v3, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v3

    iget-object v4, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    .line 710
    invoke-virtual {v4, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    iget-object v5, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    .line 711
    invoke-virtual {v5, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    .line 712
    invoke-static {v3, v4, v1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->getArgbColorFromCeaColor(III)I

    move-result v1

    iget-object p0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    .line 714
    invoke-virtual {p0, v0, v2, v1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->setPenColor(III)V

    return-void
.end method

.method private handleSetPenLocation()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v1, 0x4

    .line 720
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    .line 721
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v0

    iget-object v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v2, 0x2

    .line 723
    invoke-virtual {v1, v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    iget-object v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v2, 0x6

    .line 724
    invoke-virtual {v1, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    iget-object p0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    .line 726
    invoke-virtual {p0, v0, v1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->setPenLocation(II)V

    return-void
.end method

.method private handleSetWindowAttributes()V
    .locals 13

    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v1, 0x2

    .line 732
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v0

    iget-object v2, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    .line 733
    invoke-virtual {v2, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    iget-object v3, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    .line 734
    invoke-virtual {v3, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v3

    iget-object v4, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    .line 735
    invoke-virtual {v4, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 736
    invoke-static {v2, v3, v4, v0}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->getArgbColorFromCeaColor(IIII)I

    move-result v6

    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    .line 738
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v0

    iget-object v2, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    .line 739
    invoke-virtual {v2, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v2

    iget-object v3, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    .line 740
    invoke-virtual {v3, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v3

    iget-object v4, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    .line 741
    invoke-virtual {v4, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v4

    .line 742
    invoke-static {v2, v3, v4}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->getArgbColorFromCeaColor(III)I

    move-result v7

    iget-object v2, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    .line 744
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_0

    or-int/lit8 v0, v0, 0x4

    :cond_0
    move v9, v0

    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    .line 747
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v8

    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    .line 748
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v10

    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    .line 749
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v11

    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    .line 750
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v12

    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    const/16 v1, 0x8

    .line 753
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    iget-object v5, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    .line 755
    invoke-virtual/range {v5 .. v12}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->setWindowAttributes(IIZIIII)V

    return-void
.end method

.method private processCurrentPacket()V
    .locals 12
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "currentDtvCcPacket"
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentDtvCcPacket:Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;

    .line 287
    iget v0, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    iget-object v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentDtvCcPacket:Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;

    iget v1, v1, Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;->packetSize:I

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    const-string v4, "Cea708Decoder"

    if-eq v0, v1, :cond_0

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DtvCcPacket ended prematurely; size is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentDtvCcPacket:Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;

    iget v1, v1, Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;->packetSize:I

    mul-int/2addr v1, v2

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", but current index is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentDtvCcPacket:Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;

    iget v1, v1, Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (sequence number "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentDtvCcPacket:Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;

    iget v1, v1, Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;->sequenceNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    iget-object v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentDtvCcPacket:Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;

    .line 315
    iget-object v1, v1, Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;->packetData:[B

    iget-object v5, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentDtvCcPacket:Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;

    iget v5, v5, Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    invoke-virtual {v0, v1, v5}, Landroidx/media3/common/util/ParsableBitArray;->reset([BI)V

    const/4 v0, 0x0

    :cond_1
    :goto_0
    iget-object v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    .line 316
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->bitsLeft()I

    move-result v1

    if-lez v1, :cond_e

    iget-object v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v5, 0x3

    .line 318
    invoke-virtual {v1, v5}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    iget-object v5, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v6, 0x5

    .line 319
    invoke-virtual {v5, v6}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v5

    const/4 v6, 0x7

    if-ne v1, v6, :cond_2

    iget-object v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    .line 322
    invoke-virtual {v1, v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    iget-object v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    const/4 v7, 0x6

    .line 323
    invoke-virtual {v1, v7}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v1

    if-ge v1, v6, :cond_2

    .line 325
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Invalid extended service number: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-nez v5, :cond_3

    if-eqz v1, :cond_e

    .line 332
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "serviceNumber is non-zero ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") when blockSize is 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_3
    iget v6, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->selectedServiceNumber:I

    if-eq v1, v6, :cond_4

    iget-object v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    .line 338
    invoke-virtual {v1, v5}, Landroidx/media3/common/util/ParsableBitArray;->skipBytes(I)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    .line 344
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableBitArray;->getPosition()I

    move-result v1

    mul-int/lit8 v5, v5, 0x8

    add-int/2addr v1, v5

    :goto_1
    iget-object v5, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    .line 345
    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableBitArray;->getPosition()I

    move-result v5

    if-ge v5, v1, :cond_1

    iget-object v5, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    const/16 v6, 0x8

    .line 346
    invoke-virtual {v5, v6}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v5

    const/16 v7, 0x10

    const/16 v8, 0xff

    const/16 v9, 0x9f

    const/16 v10, 0x7f

    const/16 v11, 0x1f

    if-eq v5, v7, :cond_9

    if-gt v5, v11, :cond_5

    .line 349
    invoke-direct {p0, v5}, Landroidx/media3/extractor/text/cea/Cea708Decoder;->handleC0Command(I)V

    goto :goto_1

    :cond_5
    if-gt v5, v10, :cond_6

    .line 352
    invoke-direct {p0, v5}, Landroidx/media3/extractor/text/cea/Cea708Decoder;->handleG0Character(I)V

    goto :goto_2

    :cond_6
    if-gt v5, v9, :cond_7

    .line 355
    invoke-direct {p0, v5}, Landroidx/media3/extractor/text/cea/Cea708Decoder;->handleC1Command(I)V

    goto :goto_2

    :cond_7
    if-gt v5, v8, :cond_8

    .line 358
    invoke-direct {p0, v5}, Landroidx/media3/extractor/text/cea/Cea708Decoder;->handleG1Character(I)V

    goto :goto_2

    .line 361
    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Invalid base command: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    iget-object v5, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->captionChannelPacketData:Landroidx/media3/common/util/ParsableBitArray;

    .line 365
    invoke-virtual {v5, v6}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v5

    if-gt v5, v11, :cond_a

    .line 367
    invoke-direct {p0, v5}, Landroidx/media3/extractor/text/cea/Cea708Decoder;->handleC2Command(I)V

    goto :goto_1

    :cond_a
    if-gt v5, v10, :cond_b

    .line 369
    invoke-direct {p0, v5}, Landroidx/media3/extractor/text/cea/Cea708Decoder;->handleG2Character(I)V

    :goto_2
    move v0, v3

    goto :goto_1

    :cond_b
    if-gt v5, v9, :cond_c

    .line 372
    invoke-direct {p0, v5}, Landroidx/media3/extractor/text/cea/Cea708Decoder;->handleC3Command(I)V

    goto :goto_1

    :cond_c
    if-gt v5, v8, :cond_d

    .line 374
    invoke-direct {p0, v5}, Landroidx/media3/extractor/text/cea/Cea708Decoder;->handleG3Character(I)V

    goto :goto_2

    .line 377
    :cond_d
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Invalid extended command: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_e
    :goto_3
    if-eqz v0, :cond_f

    .line 384
    invoke-direct {p0}, Landroidx/media3/extractor/text/cea/Cea708Decoder;->getDisplayCues()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->cues:Ljava/util/List;

    :cond_f
    return-void
.end method

.method private resetCueBuilders()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->cueInfoBuilders:[Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    .line 826
    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;->reset()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected createSubtitle()Landroidx/media3/extractor/text/Subtitle;
    .locals 1

    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->cues:Ljava/util/List;

    iput-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->lastCues:Ljava/util/List;

    .line 205
    new-instance v0, Landroidx/media3/extractor/text/cea/CeaSubtitle;

    iget-object p0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->cues:Ljava/util/List;

    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-direct {v0, p0}, Landroidx/media3/extractor/text/cea/CeaSubtitle;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method protected decode(Landroidx/media3/extractor/text/SubtitleInputBuffer;)V
    .locals 8

    .line 211
    iget-object p1, p1, Landroidx/media3/extractor/text/SubtitleInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    .line 213
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->ccData:Landroidx/media3/common/util/ParsableByteArray;

    .line 214
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    invoke-virtual {v1, v0, p1}, Landroidx/media3/common/util/ParsableByteArray;->reset([BI)V

    :cond_0
    :goto_0
    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->ccData:Landroidx/media3/common/util/ParsableByteArray;

    .line 215
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result p1

    const/4 v0, 0x3

    if-lt p1, v0, :cond_9

    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->ccData:Landroidx/media3/common/util/ParsableByteArray;

    .line 216
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result p1

    and-int/lit8 v1, p1, 0x3

    const/4 v2, 0x4

    and-int/2addr p1, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p1, v2, :cond_1

    move p1, v4

    goto :goto_1

    :cond_1
    move p1, v3

    :goto_1
    iget-object v5, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->ccData:Landroidx/media3/common/util/ParsableByteArray;

    .line 220
    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    int-to-byte v5, v5

    iget-object v6, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->ccData:Landroidx/media3/common/util/ParsableByteArray;

    .line 221
    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v6

    int-to-byte v6, v6

    const/4 v7, 0x2

    if-eq v1, v7, :cond_2

    if-eq v1, v0, :cond_2

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const-string p1, "Cea708Decoder"

    if-ne v1, v0, :cond_6

    .line 234
    invoke-direct {p0}, Landroidx/media3/extractor/text/cea/Cea708Decoder;->finalizeCurrentPacket()V

    and-int/lit16 v0, v5, 0xc0

    shr-int/lit8 v0, v0, 0x6

    iget v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->previousSequenceNumber:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_4

    add-int/lit8 v1, v1, 0x1

    .line 237
    rem-int/2addr v1, v2

    if-eq v0, v1, :cond_4

    .line 239
    invoke-direct {p0}, Landroidx/media3/extractor/text/cea/Cea708Decoder;->resetCueBuilders()V

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sequence number discontinuity. previous="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->previousSequenceNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " current="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iput v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->previousSequenceNumber:I

    and-int/lit8 p1, v5, 0x3f

    if-nez p1, :cond_5

    const/16 p1, 0x40

    .line 254
    :cond_5
    new-instance v1, Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;

    invoke-direct {v1, v0, p1}, Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;-><init>(II)V

    iput-object v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentDtvCcPacket:Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;

    .line 255
    iget-object p1, v1, Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;->packetData:[B

    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentDtvCcPacket:Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;

    iget v1, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    aput-byte v6, p1, v1

    goto :goto_2

    :cond_6
    if-ne v1, v7, :cond_7

    move v3, v4

    .line 258
    :cond_7
    invoke-static {v3}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentDtvCcPacket:Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;

    if-nez v0, :cond_8

    const-string v0, "Encountered DTVCC_PACKET_DATA before DTVCC_PACKET_START"

    .line 261
    invoke-static {p1, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 265
    :cond_8
    iget-object p1, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;->packetData:[B

    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentDtvCcPacket:Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;

    iget v1, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    aput-byte v5, p1, v1

    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentDtvCcPacket:Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;

    .line 266
    iget-object p1, p1, Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;->packetData:[B

    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentDtvCcPacket:Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;

    iget v1, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    aput-byte v6, p1, v1

    :goto_2
    iget-object p1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentDtvCcPacket:Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;

    .line 269
    iget p1, p1, Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;->currentIndex:I

    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentDtvCcPacket:Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;

    iget v0, v0, Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;->packetSize:I

    mul-int/2addr v0, v7

    sub-int/2addr v0, v4

    if-ne p1, v0, :cond_0

    .line 270
    invoke-direct {p0}, Landroidx/media3/extractor/text/cea/Cea708Decoder;->finalizeCurrentPacket()V

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method public bridge synthetic dequeueInputBuffer()Landroidx/media3/extractor/text/SubtitleInputBuffer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/extractor/text/SubtitleDecoderException;
        }
    .end annotation

    .line 50
    invoke-super {p0}, Landroidx/media3/extractor/text/cea/CeaDecoder;->dequeueInputBuffer()Landroidx/media3/extractor/text/SubtitleInputBuffer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic dequeueOutputBuffer()Landroidx/media3/extractor/text/SubtitleOutputBuffer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/extractor/text/SubtitleDecoderException;
        }
    .end annotation

    .line 50
    invoke-super {p0}, Landroidx/media3/extractor/text/cea/CeaDecoder;->dequeueOutputBuffer()Landroidx/media3/extractor/text/SubtitleOutputBuffer;

    move-result-object p0

    return-object p0
.end method

.method public flush()V
    .locals 3

    .line 188
    invoke-super {p0}, Landroidx/media3/extractor/text/cea/CeaDecoder;->flush()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->cues:Ljava/util/List;

    iput-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->lastCues:Ljava/util/List;

    const/4 v1, 0x0

    iput v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentWindow:I

    iget-object v2, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->cueInfoBuilders:[Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    .line 192
    aget-object v1, v2, v1

    iput-object v1, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentCueInfoBuilder:Landroidx/media3/extractor/text/cea/Cea708Decoder$CueInfoBuilder;

    .line 193
    invoke-direct {p0}, Landroidx/media3/extractor/text/cea/Cea708Decoder;->resetCueBuilders()V

    iput-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->currentDtvCcPacket:Landroidx/media3/extractor/text/cea/Cea708Decoder$DtvCcPacket;

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    const-string p0, "Cea708Decoder"

    return-object p0
.end method

.method protected isNewSubtitleDataAvailable()Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->cues:Ljava/util/List;

    iget-object p0, p0, Landroidx/media3/extractor/text/cea/Cea708Decoder;->lastCues:Ljava/util/List;

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic queueInputBuffer(Landroidx/media3/extractor/text/SubtitleInputBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/extractor/text/SubtitleDecoderException;
        }
    .end annotation

    .line 50
    invoke-super {p0, p1}, Landroidx/media3/extractor/text/cea/CeaDecoder;->queueInputBuffer(Landroidx/media3/extractor/text/SubtitleInputBuffer;)V

    return-void
.end method

.method public bridge synthetic release()V
    .locals 0

    .line 50
    invoke-super {p0}, Landroidx/media3/extractor/text/cea/CeaDecoder;->release()V

    return-void
.end method

.method public bridge synthetic setPositionUs(J)V
    .locals 0

    .line 50
    invoke-super {p0, p1, p2}, Landroidx/media3/extractor/text/cea/CeaDecoder;->setPositionUs(J)V

    return-void
.end method
