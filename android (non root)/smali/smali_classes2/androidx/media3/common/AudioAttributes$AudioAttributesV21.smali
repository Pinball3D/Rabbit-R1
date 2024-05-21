.class public final Landroidx/media3/common/AudioAttributes$AudioAttributesV21;
.super Ljava/lang/Object;
.source "AudioAttributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/AudioAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AudioAttributesV21"
.end annotation


# instance fields
.field public final audioAttributes:Landroid/media/AudioAttributes;


# direct methods
.method private constructor <init>(Landroidx/media3/common/AudioAttributes;)V
    .locals 3

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    iget v1, p1, Landroidx/media3/common/AudioAttributes;->contentType:I

    .line 47
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    iget v1, p1, Landroidx/media3/common/AudioAttributes;->flags:I

    .line 48
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    iget v1, p1, Landroidx/media3/common/AudioAttributes;->usage:I

    .line 49
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 50
    sget v1, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_0

    .line 51
    iget v1, p1, Landroidx/media3/common/AudioAttributes;->allowedCapturePolicy:I

    invoke-static {v0, v1}, Landroidx/media3/common/AudioAttributes$Api29;->setAllowedCapturePolicy(Landroid/media/AudioAttributes$Builder;I)V

    .line 53
    :cond_0
    sget v1, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v2, 0x20

    if-lt v1, v2, :cond_1

    .line 54
    iget p1, p1, Landroidx/media3/common/AudioAttributes;->spatializationBehavior:I

    invoke-static {v0, p1}, Landroidx/media3/common/AudioAttributes$Api32;->setSpatializationBehavior(Landroid/media/AudioAttributes$Builder;I)V

    .line 56
    :cond_1
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/common/AudioAttributes$AudioAttributesV21;->audioAttributes:Landroid/media/AudioAttributes;

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/common/AudioAttributes;Landroidx/media3/common/AudioAttributes$1;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Landroidx/media3/common/AudioAttributes$AudioAttributesV21;-><init>(Landroidx/media3/common/AudioAttributes;)V

    return-void
.end method
