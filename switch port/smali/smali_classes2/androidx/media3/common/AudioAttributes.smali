.class public final Landroidx/media3/common/AudioAttributes;
.super Ljava/lang/Object;
.source "AudioAttributes.java"

# interfaces
.implements Landroidx/media3/common/Bundleable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/AudioAttributes$AudioAttributesV21;,
        Landroidx/media3/common/AudioAttributes$Builder;,
        Landroidx/media3/common/AudioAttributes$Api32;,
        Landroidx/media3/common/AudioAttributes$Api29;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroidx/media3/common/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/common/Bundleable$Creator<",
            "Landroidx/media3/common/AudioAttributes;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT:Landroidx/media3/common/AudioAttributes;

.field private static final FIELD_ALLOWED_CAPTURE_POLICY:Ljava/lang/String;

.field private static final FIELD_CONTENT_TYPE:Ljava/lang/String;

.field private static final FIELD_FLAGS:Ljava/lang/String;

.field private static final FIELD_SPATIALIZATION_BEHAVIOR:Ljava/lang/String;

.field private static final FIELD_USAGE:Ljava/lang/String;


# instance fields
.field public final allowedCapturePolicy:I

.field private audioAttributesV21:Landroidx/media3/common/AudioAttributes$AudioAttributesV21;

.field public final contentType:I

.field public final flags:I

.field public final spatializationBehavior:I

.field public final usage:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    new-instance v0, Landroidx/media3/common/AudioAttributes$Builder;

    invoke-direct {v0}, Landroidx/media3/common/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0}, Landroidx/media3/common/AudioAttributes$Builder;->build()Landroidx/media3/common/AudioAttributes;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/AudioAttributes;->DEFAULT:Landroidx/media3/common/AudioAttributes;

    const/4 v0, 0x0

    .line 201
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/AudioAttributes;->FIELD_CONTENT_TYPE:Ljava/lang/String;

    const/4 v0, 0x1

    .line 202
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/AudioAttributes;->FIELD_FLAGS:Ljava/lang/String;

    const/4 v0, 0x2

    .line 203
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/AudioAttributes;->FIELD_USAGE:Ljava/lang/String;

    const/4 v0, 0x3

    .line 204
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/AudioAttributes;->FIELD_ALLOWED_CAPTURE_POLICY:Ljava/lang/String;

    const/4 v0, 0x4

    .line 205
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/AudioAttributes;->FIELD_SPATIALIZATION_BEHAVIOR:Ljava/lang/String;

    .line 221
    new-instance v0, Landroidx/media3/common/AudioAttributes$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/media3/common/AudioAttributes$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroidx/media3/common/AudioAttributes;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    return-void
.end method

.method private constructor <init>(IIIII)V
    .locals 0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/common/AudioAttributes;->contentType:I

    iput p2, p0, Landroidx/media3/common/AudioAttributes;->flags:I

    iput p3, p0, Landroidx/media3/common/AudioAttributes;->usage:I

    iput p4, p0, Landroidx/media3/common/AudioAttributes;->allowedCapturePolicy:I

    iput p5, p0, Landroidx/media3/common/AudioAttributes;->spatializationBehavior:I

    return-void
.end method

.method synthetic constructor <init>(IIIIILandroidx/media3/common/AudioAttributes$1;)V
    .locals 0

    .line 37
    invoke-direct/range {p0 .. p5}, Landroidx/media3/common/AudioAttributes;-><init>(IIIII)V

    return-void
.end method

.method static synthetic lambda$static$0(Landroid/os/Bundle;)Landroidx/media3/common/AudioAttributes;
    .locals 3

    .line 223
    new-instance v0, Landroidx/media3/common/AudioAttributes$Builder;

    invoke-direct {v0}, Landroidx/media3/common/AudioAttributes$Builder;-><init>()V

    sget-object v1, Landroidx/media3/common/AudioAttributes;->FIELD_CONTENT_TYPE:Ljava/lang/String;

    .line 224
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 225
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/AudioAttributes$Builder;->setContentType(I)Landroidx/media3/common/AudioAttributes$Builder;

    :cond_0
    sget-object v1, Landroidx/media3/common/AudioAttributes;->FIELD_FLAGS:Ljava/lang/String;

    .line 227
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 228
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/AudioAttributes$Builder;->setFlags(I)Landroidx/media3/common/AudioAttributes$Builder;

    :cond_1
    sget-object v1, Landroidx/media3/common/AudioAttributes;->FIELD_USAGE:Ljava/lang/String;

    .line 230
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 231
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/AudioAttributes$Builder;->setUsage(I)Landroidx/media3/common/AudioAttributes$Builder;

    :cond_2
    sget-object v1, Landroidx/media3/common/AudioAttributes;->FIELD_ALLOWED_CAPTURE_POLICY:Ljava/lang/String;

    .line 233
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 234
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/AudioAttributes$Builder;->setAllowedCapturePolicy(I)Landroidx/media3/common/AudioAttributes$Builder;

    :cond_3
    sget-object v1, Landroidx/media3/common/AudioAttributes;->FIELD_SPATIALIZATION_BEHAVIOR:Ljava/lang/String;

    .line 236
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 237
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/media3/common/AudioAttributes$Builder;->setSpatializationBehavior(I)Landroidx/media3/common/AudioAttributes$Builder;

    .line 239
    :cond_4
    invoke-virtual {v0}, Landroidx/media3/common/AudioAttributes$Builder;->build()Landroidx/media3/common/AudioAttributes;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 177
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 180
    :cond_1
    check-cast p1, Landroidx/media3/common/AudioAttributes;

    iget v2, p0, Landroidx/media3/common/AudioAttributes;->contentType:I

    .line 181
    iget v3, p1, Landroidx/media3/common/AudioAttributes;->contentType:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroidx/media3/common/AudioAttributes;->flags:I

    iget v3, p1, Landroidx/media3/common/AudioAttributes;->flags:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroidx/media3/common/AudioAttributes;->usage:I

    iget v3, p1, Landroidx/media3/common/AudioAttributes;->usage:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroidx/media3/common/AudioAttributes;->allowedCapturePolicy:I

    iget v3, p1, Landroidx/media3/common/AudioAttributes;->allowedCapturePolicy:I

    if-ne v2, v3, :cond_2

    iget p0, p0, Landroidx/media3/common/AudioAttributes;->spatializationBehavior:I

    iget p1, p1, Landroidx/media3/common/AudioAttributes;->spatializationBehavior:I

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getAudioAttributesV21()Landroidx/media3/common/AudioAttributes$AudioAttributesV21;
    .locals 2

    iget-object v0, p0, Landroidx/media3/common/AudioAttributes;->audioAttributesV21:Landroidx/media3/common/AudioAttributes$AudioAttributesV21;

    if-nez v0, :cond_0

    .line 167
    new-instance v0, Landroidx/media3/common/AudioAttributes$AudioAttributesV21;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/common/AudioAttributes$AudioAttributesV21;-><init>(Landroidx/media3/common/AudioAttributes;Landroidx/media3/common/AudioAttributes$1;)V

    iput-object v0, p0, Landroidx/media3/common/AudioAttributes;->audioAttributesV21:Landroidx/media3/common/AudioAttributes$AudioAttributesV21;

    :cond_0
    iget-object p0, p0, Landroidx/media3/common/AudioAttributes;->audioAttributesV21:Landroidx/media3/common/AudioAttributes$AudioAttributesV21;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    const/16 v0, 0x20f

    iget v1, p0, Landroidx/media3/common/AudioAttributes;->contentType:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/media3/common/AudioAttributes;->flags:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/media3/common/AudioAttributes;->usage:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/media3/common/AudioAttributes;->allowedCapturePolicy:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Landroidx/media3/common/AudioAttributes;->spatializationBehavior:I

    add-int/2addr v0, p0

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .line 210
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Landroidx/media3/common/AudioAttributes;->FIELD_CONTENT_TYPE:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/AudioAttributes;->contentType:I

    .line 211
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Landroidx/media3/common/AudioAttributes;->FIELD_FLAGS:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/AudioAttributes;->flags:I

    .line 212
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Landroidx/media3/common/AudioAttributes;->FIELD_USAGE:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/AudioAttributes;->usage:I

    .line 213
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Landroidx/media3/common/AudioAttributes;->FIELD_ALLOWED_CAPTURE_POLICY:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/AudioAttributes;->allowedCapturePolicy:I

    .line 214
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Landroidx/media3/common/AudioAttributes;->FIELD_SPATIALIZATION_BEHAVIOR:Ljava/lang/String;

    iget p0, p0, Landroidx/media3/common/AudioAttributes;->spatializationBehavior:I

    .line 215
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method
