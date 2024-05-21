.class public final Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;
.super Ljava/lang/Object;
.source "SpliceScheduleCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Event"
.end annotation


# instance fields
.field public final autoReturn:Z

.field public final availNum:I

.field public final availsExpected:I

.field public final breakDurationUs:J

.field public final componentSpliceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$ComponentSplice;",
            ">;"
        }
    .end annotation
.end field

.field public final outOfNetworkIndicator:Z

.field public final programSpliceFlag:Z

.field public final spliceEventCancelIndicator:Z

.field public final spliceEventId:J

.field public final uniqueProgramId:I

.field public final utcSpliceTime:J


# direct methods
.method private constructor <init>(JZZZLjava/util/List;JZJIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZZZ",
            "Ljava/util/List<",
            "Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$ComponentSplice;",
            ">;JZJIII)V"
        }
    .end annotation

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->spliceEventId:J

    iput-boolean p3, p0, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->spliceEventCancelIndicator:Z

    iput-boolean p4, p0, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->outOfNetworkIndicator:Z

    iput-boolean p5, p0, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->programSpliceFlag:Z

    .line 92
    invoke-static {p6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->componentSpliceList:Ljava/util/List;

    iput-wide p7, p0, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->utcSpliceTime:J

    iput-boolean p9, p0, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->autoReturn:Z

    iput-wide p10, p0, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->breakDurationUs:J

    iput p12, p0, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->uniqueProgramId:I

    iput p13, p0, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->availNum:I

    iput p14, p0, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->availsExpected:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->spliceEventId:J

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->spliceEventCancelIndicator:Z

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->outOfNetworkIndicator:Z

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    iput-boolean v0, p0, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->programSpliceFlag:Z

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 107
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v4, v1

    :goto_3
    if-ge v4, v0, :cond_3

    .line 109
    invoke-static {p1}, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$ComponentSplice;->access$000(Landroid/os/Parcel;)Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$ComponentSplice;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 111
    :cond_3
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->componentSpliceList:Ljava/util/List;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->utcSpliceTime:J

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_4

    move v1, v2

    :cond_4
    iput-boolean v1, p0, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->autoReturn:Z

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->breakDurationUs:J

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->uniqueProgramId:I

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->availNum:I

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->availsExpected:I

    return-void
.end method

.method static synthetic access$300(Landroid/os/Parcel;)Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;
    .locals 0

    .line 32
    invoke-static {p0}, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->createFromParcel(Landroid/os/Parcel;)Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;
    .locals 0

    .line 32
    invoke-static {p0}, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->parseFromSection(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;Landroid/os/Parcel;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->writeToParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private static createFromParcel(Landroid/os/Parcel;)Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;
    .locals 1

    .line 193
    new-instance v0, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;

    invoke-direct {v0, p0}, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method private static parseFromSection(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;
    .locals 21

    .line 121
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v1

    .line 123
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 127
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez v5, :cond_9

    .line 134
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v8

    and-int/lit16 v9, v8, 0x80

    if-eqz v9, :cond_1

    const/4 v9, 0x1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    :goto_1
    and-int/lit8 v10, v8, 0x40

    if-eqz v10, :cond_2

    const/4 v10, 0x1

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    :goto_2
    const/16 v11, 0x20

    and-int/2addr v8, v11

    if-eqz v8, :cond_3

    const/4 v8, 0x1

    goto :goto_3

    :cond_3
    const/4 v8, 0x0

    :goto_3
    if-eqz v10, :cond_4

    .line 139
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v12

    goto :goto_4

    :cond_4
    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    :goto_4
    if-nez v10, :cond_6

    .line 142
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 143
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v15, 0x0

    :goto_5
    if-ge v15, v0, :cond_5

    .line 145
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    .line 146
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v6

    .line 147
    new-instance v4, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$ComponentSplice;

    const/4 v11, 0x0

    invoke-direct {v4, v3, v6, v7, v11}, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$ComponentSplice;-><init>(IJLandroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$1;)V

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    const/16 v11, 0x20

    goto :goto_5

    :cond_5
    move-object v0, v14

    :cond_6
    if-eqz v8, :cond_8

    .line 151
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    int-to-long v3, v3

    const-wide/16 v6, 0x80

    and-long/2addr v6, v3

    const-wide/16 v14, 0x0

    cmp-long v6, v6, v14

    if-eqz v6, :cond_7

    const/16 v16, 0x1

    goto :goto_6

    :cond_7
    const/16 v16, 0x0

    :goto_6
    const-wide/16 v6, 0x1

    and-long/2addr v3, v6

    const/16 v6, 0x20

    shl-long/2addr v3, v6

    .line 153
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v6

    or-long/2addr v3, v6

    const-wide/16 v6, 0x3e8

    mul-long/2addr v3, v6

    const-wide/16 v6, 0x5a

    .line 154
    div-long v6, v3, v6

    move/from16 v4, v16

    goto :goto_7

    :cond_8
    const/4 v4, 0x0

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 156
    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v3

    .line 157
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v8

    .line 158
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v11

    move/from16 v17, v10

    move v14, v11

    move-wide v10, v6

    move-object v6, v0

    move-wide/from16 v18, v12

    move v12, v3

    move v13, v8

    move-wide/from16 v7, v18

    move/from16 v20, v9

    move v9, v4

    move/from16 v4, v20

    goto :goto_8

    :cond_9
    move-object v6, v0

    const/4 v4, 0x0

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v9, 0x0

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x0

    .line 160
    :goto_8
    new-instance v15, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;

    move-object v0, v15

    move v3, v5

    move/from16 v5, v17

    invoke-direct/range {v0 .. v14}, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;-><init>(JZZZLjava/util/List;JZJIII)V

    return-object v15
.end method

.method private writeToParcel(Landroid/os/Parcel;)V
    .locals 3

    iget-wide v0, p0, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->spliceEventId:J

    .line 175
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->spliceEventCancelIndicator:Z

    int-to-byte v0, v0

    .line 176
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->outOfNetworkIndicator:Z

    int-to-byte v0, v0

    .line 177
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->programSpliceFlag:Z

    int-to-byte v0, v0

    .line 178
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->componentSpliceList:Ljava/util/List;

    .line 179
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 180
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->componentSpliceList:Ljava/util/List;

    .line 182
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$ComponentSplice;

    invoke-static {v2, p1}, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$ComponentSplice;->access$200(Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$ComponentSplice;Landroid/os/Parcel;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->utcSpliceTime:J

    .line 184
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->autoReturn:Z

    int-to-byte v0, v0

    .line 185
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-wide v0, p0, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->breakDurationUs:J

    .line 186
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->uniqueProgramId:I

    .line 187
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->availNum:I

    .line 188
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->availsExpected:I

    .line 189
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
