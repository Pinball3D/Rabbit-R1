.class public final Landroidx/media3/extractor/AacUtil$Config;
.super Ljava/lang/Object;
.source "AacUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/AacUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Config"
.end annotation


# instance fields
.field public final channelCount:I

.field public final codecs:Ljava/lang/String;

.field public final sampleRateHz:I


# direct methods
.method private constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/extractor/AacUtil$Config;->sampleRateHz:I

    iput p2, p0, Landroidx/media3/extractor/AacUtil$Config;->channelCount:I

    iput-object p3, p0, Landroidx/media3/extractor/AacUtil$Config;->codecs:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(IILjava/lang/String;Landroidx/media3/extractor/AacUtil$1;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/extractor/AacUtil$Config;-><init>(IILjava/lang/String;)V

    return-void
.end method
