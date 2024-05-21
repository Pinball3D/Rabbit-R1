.class public final Landroidx/media3/common/MediaItem$ClippingProperties;
.super Landroidx/media3/common/MediaItem$ClippingConfiguration;
.source "MediaItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/MediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClippingProperties"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final UNSET:Landroidx/media3/common/MediaItem$ClippingProperties;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2010
    new-instance v0, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;

    invoke-direct {v0}, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;-><init>()V

    .line 2011
    invoke-virtual {v0}, Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;->buildClippingProperties()Landroidx/media3/common/MediaItem$ClippingProperties;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaItem$ClippingProperties;->UNSET:Landroidx/media3/common/MediaItem$ClippingProperties;

    return-void
.end method

.method private constructor <init>(Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;)V
    .locals 1

    const/4 v0, 0x0

    .line 2014
    invoke-direct {p0, p1, v0}, Landroidx/media3/common/MediaItem$ClippingConfiguration;-><init>(Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;Landroidx/media3/common/MediaItem$1;)V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;Landroidx/media3/common/MediaItem$1;)V
    .locals 0

    .line 2009
    invoke-direct {p0, p1}, Landroidx/media3/common/MediaItem$ClippingProperties;-><init>(Landroidx/media3/common/MediaItem$ClippingConfiguration$Builder;)V

    return-void
.end method
