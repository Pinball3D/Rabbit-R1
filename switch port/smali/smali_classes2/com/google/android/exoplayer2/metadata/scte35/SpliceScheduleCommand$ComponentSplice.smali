.class public final Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;
.super Ljava/lang/Object;
.source "SpliceScheduleCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ComponentSplice"
.end annotation


# instance fields
.field public final componentTag:I

.field public final utcSpliceTime:J


# direct methods
.method private constructor <init>(IJ)V
    .locals 0

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;->componentTag:I

    iput-wide p2, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;->utcSpliceTime:J

    return-void
.end method

.method synthetic constructor <init>(IJLcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$1;)V
    .locals 0

    .line 196
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;-><init>(IJ)V

    return-void
.end method

.method static synthetic access$000(Landroid/os/Parcel;)Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;
    .locals 0

    .line 196
    invoke-static {p0}, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;Landroid/os/Parcel;)V
    .locals 0

    .line 196
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;->writeToParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private static createFromParcel(Landroid/os/Parcel;)Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;
    .locals 4

    .line 207
    new-instance v0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;-><init>(IJ)V

    return-object v0
.end method

.method private writeToParcel(Landroid/os/Parcel;)V
    .locals 2

    iget v0, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;->componentTag:I

    .line 211
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/google/android/exoplayer2/metadata/scte35/SpliceScheduleCommand$ComponentSplice;->utcSpliceTime:J

    .line 212
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
