.class public final Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand;
.super Landroidx/media3/extractor/metadata/scte35/SpliceCommand;
.source "SpliceScheduleCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;,
        Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$ComponentSplice;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final events:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 254
    new-instance v0, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$1;

    invoke-direct {v0}, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$1;-><init>()V

    sput-object v0, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 225
    invoke-direct {p0}, Landroidx/media3/extractor/metadata/scte35/SpliceCommand;-><init>()V

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 227
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 229
    invoke-static {p1}, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->access$300(Landroid/os/Parcel;)Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 231
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand;->events:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$1;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;",
            ">;)V"
        }
    .end annotation

    .line 221
    invoke-direct {p0}, Landroidx/media3/extractor/metadata/scte35/SpliceCommand;-><init>()V

    .line 222
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand;->events:Ljava/util/List;

    return-void
.end method

.method static parseFromSection(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand;
    .locals 4

    .line 235
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 236
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 238
    invoke-static {p0}, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->access$400(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 240
    :cond_0
    new-instance p0, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand;

    invoke-direct {p0, v1}, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand;-><init>(Ljava/util/List;)V

    return-object p0
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object p2, p0, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand;->events:Ljava/util/List;

    .line 247
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    .line 248
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    iget-object v1, p0, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand;->events:Ljava/util/List;

    .line 250
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;

    invoke-static {v1, p1}, Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;->access$500(Landroidx/media3/extractor/metadata/scte35/SpliceScheduleCommand$Event;Landroid/os/Parcel;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
