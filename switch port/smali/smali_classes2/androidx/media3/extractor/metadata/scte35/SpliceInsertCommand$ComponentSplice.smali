.class public final Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand$ComponentSplice;
.super Ljava/lang/Object;
.source "SpliceInsertCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ComponentSplice"
.end annotation


# instance fields
.field public final componentSplicePlaybackPositionUs:J

.field public final componentSplicePts:J

.field public final componentTag:I


# direct methods
.method private constructor <init>(IJJ)V
    .locals 0

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand$ComponentSplice;->componentTag:I

    iput-wide p2, p0, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand$ComponentSplice;->componentSplicePts:J

    iput-wide p4, p0, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand$ComponentSplice;->componentSplicePlaybackPositionUs:J

    return-void
.end method

.method synthetic constructor <init>(IJJLandroidx/media3/extractor/metadata/scte35/SpliceInsertCommand$1;)V
    .locals 0

    .line 198
    invoke-direct/range {p0 .. p5}, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand$ComponentSplice;-><init>(IJJ)V

    return-void
.end method

.method public static createFromParcel(Landroid/os/Parcel;)Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand$ComponentSplice;
    .locals 7

    .line 218
    new-instance v6, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand$ComponentSplice;

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand$ComponentSplice;-><init>(IJJ)V

    return-object v6
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;)V
    .locals 2

    iget v0, p0, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand$ComponentSplice;->componentTag:I

    .line 212
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand$ComponentSplice;->componentSplicePts:J

    .line 213
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroidx/media3/extractor/metadata/scte35/SpliceInsertCommand$ComponentSplice;->componentSplicePlaybackPositionUs:J

    .line 214
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
