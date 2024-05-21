.class public Landroidx/core/graphics/drawable/IconCompat;
.super Landroidx/versionedparcelable/CustomVersionedParcelable;
.source "IconCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/graphics/drawable/IconCompat$Api23Impl;,
        Landroidx/core/graphics/drawable/IconCompat$Api26Impl;,
        Landroidx/core/graphics/drawable/IconCompat$Api30Impl;,
        Landroidx/core/graphics/drawable/IconCompat$Api28Impl;,
        Landroidx/core/graphics/drawable/IconCompat$IconType;
    }
.end annotation


# static fields
.field private static final ADAPTIVE_ICON_INSET_FACTOR:F = 0.25f

.field private static final AMBIENT_SHADOW_ALPHA:I = 0x1e

.field private static final BLUR_FACTOR:F = 0.010416667f

.field static final DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

.field private static final DEFAULT_VIEW_PORT_SCALE:F = 0.6666667f

.field static final EXTRA_INT1:Ljava/lang/String; = "int1"

.field static final EXTRA_INT2:Ljava/lang/String; = "int2"

.field static final EXTRA_OBJ:Ljava/lang/String; = "obj"

.field static final EXTRA_STRING1:Ljava/lang/String; = "string1"

.field static final EXTRA_TINT_LIST:Ljava/lang/String; = "tint_list"

.field static final EXTRA_TINT_MODE:Ljava/lang/String; = "tint_mode"

.field static final EXTRA_TYPE:Ljava/lang/String; = "type"

.field private static final ICON_DIAMETER_FACTOR:F = 0.9166667f

.field private static final KEY_SHADOW_ALPHA:I = 0x3d

.field private static final KEY_SHADOW_OFFSET_FACTOR:F = 0.020833334f

.field private static final TAG:Ljava/lang/String; = "IconCompat"

.field public static final TYPE_ADAPTIVE_BITMAP:I = 0x5

.field public static final TYPE_BITMAP:I = 0x1

.field public static final TYPE_DATA:I = 0x3

.field public static final TYPE_RESOURCE:I = 0x2

.field public static final TYPE_UNKNOWN:I = -0x1

.field public static final TYPE_URI:I = 0x4

.field public static final TYPE_URI_ADAPTIVE_BITMAP:I = 0x6


# instance fields
.field public mData:[B

.field public mInt1:I

.field public mInt2:I

.field mObj1:Ljava/lang/Object;

.field public mParcelable:Landroid/os/Parcelable;

.field public mString1:Ljava/lang/String;

.field public mTintList:Landroid/content/res/ColorStateList;

.field mTintMode:Landroid/graphics/PorterDuff$Mode;

.field public mTintModeStr:Ljava/lang/String;

.field public mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 206
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Landroidx/core/graphics/drawable/IconCompat;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 365
    invoke-direct {p0}, Landroidx/versionedparcelable/CustomVersionedParcelable;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mType:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mData:[B

    iput-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mParcelable:Landroid/os/Parcelable;

    const/4 v1, 0x0

    iput v1, p0, Landroidx/core/graphics/drawable/IconCompat;->mInt1:I

    iput v1, p0, Landroidx/core/graphics/drawable/IconCompat;->mInt2:I

    iput-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mTintList:Landroid/content/res/ColorStateList;

    sget-object v1, Landroidx/core/graphics/drawable/IconCompat;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    iput-object v1, p0, Landroidx/core/graphics/drawable/IconCompat;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mTintModeStr:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(I)V
    .locals 2

    .line 368
    invoke-direct {p0}, Landroidx/versionedparcelable/CustomVersionedParcelable;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mData:[B

    iput-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mParcelable:Landroid/os/Parcelable;

    const/4 v1, 0x0

    iput v1, p0, Landroidx/core/graphics/drawable/IconCompat;->mInt1:I

    iput v1, p0, Landroidx/core/graphics/drawable/IconCompat;->mInt2:I

    iput-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mTintList:Landroid/content/res/ColorStateList;

    sget-object v1, Landroidx/core/graphics/drawable/IconCompat;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    iput-object v1, p0, Landroidx/core/graphics/drawable/IconCompat;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mTintModeStr:Ljava/lang/String;

    iput p1, p0, Landroidx/core/graphics/drawable/IconCompat;->mType:I

    return-void
.end method

.method public static createFromBundle(Landroid/os/Bundle;)Landroidx/core/graphics/drawable/IconCompat;
    .locals 4

    const-string/jumbo v0, "type"

    .line 931
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 932
    new-instance v1, Landroidx/core/graphics/drawable/IconCompat;

    invoke-direct {v1, v0}, Landroidx/core/graphics/drawable/IconCompat;-><init>(I)V

    const-string v2, "int1"

    .line 933
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroidx/core/graphics/drawable/IconCompat;->mInt1:I

    const-string v2, "int2"

    .line 934
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroidx/core/graphics/drawable/IconCompat;->mInt2:I

    const-string/jumbo v2, "string1"

    .line 935
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroidx/core/graphics/drawable/IconCompat;->mString1:Ljava/lang/String;

    const-string/jumbo v2, "tint_list"

    .line 936
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 937
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/res/ColorStateList;

    iput-object v2, v1, Landroidx/core/graphics/drawable/IconCompat;->mTintList:Landroid/content/res/ColorStateList;

    :cond_0
    const-string/jumbo v2, "tint_mode"

    .line 939
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 941
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 940
    invoke-static {v2}, Landroid/graphics/PorterDuff$Mode;->valueOf(Ljava/lang/String;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    iput-object v2, v1, Landroidx/core/graphics/drawable/IconCompat;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    :cond_1
    const-string v2, "obj"

    packed-switch v0, :pswitch_data_0

    .line 958
    :pswitch_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown type "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "IconCompat"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 955
    :pswitch_1
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p0

    iput-object p0, v1, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    goto :goto_0

    .line 952
    :pswitch_2
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    goto :goto_0

    .line 947
    :pswitch_3
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    iput-object p0, v1, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    :goto_0
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public static createFromIcon(Landroid/content/Context;Landroid/graphics/drawable/Icon;)Landroidx/core/graphics/drawable/IconCompat;
    .locals 0

    .line 970
    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 971
    invoke-static {p0, p1}, Landroidx/core/graphics/drawable/IconCompat$Api23Impl;->createFromIcon(Landroid/content/Context;Landroid/graphics/drawable/Icon;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p0

    return-object p0
.end method

.method public static createFromIcon(Landroid/graphics/drawable/Icon;)Landroidx/core/graphics/drawable/IconCompat;
    .locals 0

    .line 981
    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat$Api23Impl;->createFromIconInner(Ljava/lang/Object;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p0

    return-object p0
.end method

.method public static createFromIconOrNullIfZeroResId(Landroid/graphics/drawable/Icon;)Landroidx/core/graphics/drawable/IconCompat;
    .locals 2

    .line 992
    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat$Api23Impl;->getType(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat$Api23Impl;->getResId(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 995
    :cond_0
    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat$Api23Impl;->createFromIconInner(Ljava/lang/Object;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p0

    return-object p0
.end method

.method static createLegacyIconFromAdaptiveIcon(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 9

    .line 1007
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 1008
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 1007
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f2aaaab

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 1010
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1011
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1012
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    int-to-float v4, v0

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v5, v4

    const v6, 0x3f6aaaab

    mul-float/2addr v6, v5

    if-eqz p1, :cond_0

    const p1, 0x3c2aaaab

    mul-float/2addr p1, v4

    const/4 v7, 0x0

    .line 1020
    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setColor(I)V

    const v7, 0x3caaaaab

    mul-float/2addr v4, v7

    const/high16 v7, 0x3d000000    # 0.03125f

    const/4 v8, 0x0

    .line 1021
    invoke-virtual {v3, p1, v8, v4, v7}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 1022
    invoke-virtual {v2, v5, v5, v6, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/high16 v4, 0x1e000000

    .line 1025
    invoke-virtual {v3, p1, v8, v8, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 1026
    invoke-virtual {v2, v5, v5, v6, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1027
    invoke-virtual {v3}, Landroid/graphics/Paint;->clearShadowLayer()V

    :cond_0
    const/high16 p1, -0x1000000

    .line 1031
    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1032
    new-instance p1, Landroid/graphics/BitmapShader;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {p1, p0, v4, v7}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 1034
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 1035
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    sub-int/2addr v7, v0

    neg-int v7, v7

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    .line 1036
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    sub-int/2addr p0, v0

    neg-int p0, p0

    int-to-float p0, p0

    div-float/2addr p0, v8

    .line 1035
    invoke-virtual {v4, v7, p0}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 1037
    invoke-virtual {p1, v4}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 1038
    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 1039
    invoke-virtual {v2, v5, v5, v6, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/4 p0, 0x0

    .line 1041
    invoke-virtual {v2, p0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method public static createWithAdaptiveBitmap(Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/IconCompat;
    .locals 2

    .line 282
    invoke-static {p0}, Landroidx/core/util/ObjectsCompat;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    new-instance v0, Landroidx/core/graphics/drawable/IconCompat;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroidx/core/graphics/drawable/IconCompat;-><init>(I)V

    iput-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    return-object v0
.end method

.method public static createWithAdaptiveBitmapContentUri(Landroid/net/Uri;)Landroidx/core/graphics/drawable/IconCompat;
    .locals 0

    .line 357
    invoke-static {p0}, Landroidx/core/util/ObjectsCompat;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat;->createWithAdaptiveBitmapContentUri(Ljava/lang/String;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p0

    return-object p0
.end method

.method public static createWithAdaptiveBitmapContentUri(Ljava/lang/String;)Landroidx/core/graphics/drawable/IconCompat;
    .locals 2

    .line 342
    invoke-static {p0}, Landroidx/core/util/ObjectsCompat;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    new-instance v0, Landroidx/core/graphics/drawable/IconCompat;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroidx/core/graphics/drawable/IconCompat;-><init>(I)V

    iput-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    return-object v0
.end method

.method public static createWithBitmap(Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/IconCompat;
    .locals 2

    .line 268
    invoke-static {p0}, Landroidx/core/util/ObjectsCompat;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    new-instance v0, Landroidx/core/graphics/drawable/IconCompat;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/core/graphics/drawable/IconCompat;-><init>(I)V

    iput-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    return-object v0
.end method

.method public static createWithContentUri(Landroid/net/Uri;)Landroidx/core/graphics/drawable/IconCompat;
    .locals 0

    .line 329
    invoke-static {p0}, Landroidx/core/util/ObjectsCompat;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat;->createWithContentUri(Ljava/lang/String;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p0

    return-object p0
.end method

.method public static createWithContentUri(Ljava/lang/String;)Landroidx/core/graphics/drawable/IconCompat;
    .locals 2

    .line 315
    invoke-static {p0}, Landroidx/core/util/ObjectsCompat;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    new-instance v0, Landroidx/core/graphics/drawable/IconCompat;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroidx/core/graphics/drawable/IconCompat;-><init>(I)V

    iput-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    return-object v0
.end method

.method public static createWithData([BII)Landroidx/core/graphics/drawable/IconCompat;
    .locals 2

    .line 299
    invoke-static {p0}, Landroidx/core/util/ObjectsCompat;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    new-instance v0, Landroidx/core/graphics/drawable/IconCompat;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroidx/core/graphics/drawable/IconCompat;-><init>(I)V

    iput-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    iput p1, v0, Landroidx/core/graphics/drawable/IconCompat;->mInt1:I

    iput p2, v0, Landroidx/core/graphics/drawable/IconCompat;->mInt2:I

    return-object v0
.end method

.method public static createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;
    .locals 1

    .line 232
    invoke-static {p0}, Landroidx/core/util/ObjectsCompat;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/res/Resources;Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p0

    return-object p0
.end method

.method public static createWithResource(Landroid/content/res/Resources;Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;
    .locals 2

    .line 242
    invoke-static {p1}, Landroidx/core/util/ObjectsCompat;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    .line 246
    new-instance v0, Landroidx/core/graphics/drawable/IconCompat;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroidx/core/graphics/drawable/IconCompat;-><init>(I)V

    iput p2, v0, Landroidx/core/graphics/drawable/IconCompat;->mInt1:I

    if-eqz p0, :cond_0

    .line 250
    :try_start_0
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 252
    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Icon resource cannot be found"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    iput-object p1, v0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    :goto_0
    iput-object p1, v0, Landroidx/core/graphics/drawable/IconCompat;->mString1:Ljava/lang/String;

    return-object v0

    .line 244
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Drawable resource ID must not be 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static getResources(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 2

    const-string v0, "android"

    .line 673
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 674
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p0

    return-object p0

    .line 676
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v0, 0x2000

    const/4 v1, 0x0

    .line 678
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 681
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_1
    return-object v1

    :catch_0
    move-exception p0

    const-string v0, "Unable to find pkg=%s for icon"

    .line 686
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "IconCompat"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method private loadDrawableInner(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 3

    iget v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mType:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 628
    :pswitch_0
    invoke-virtual {p0, p1}, Landroidx/core/graphics/drawable/IconCompat;->getUriInputStream(Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 631
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 632
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 633
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 631
    invoke-static {v1, v0}, Landroidx/core/graphics/drawable/IconCompat$Api26Impl;->createAdaptiveIconDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 597
    :pswitch_1
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object p0, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    .line 598
    invoke-static {p0, v1}, Landroidx/core/graphics/drawable/IconCompat;->createLegacyIconFromAdaptiveIcon(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0

    .line 621
    :pswitch_2
    invoke-virtual {p0, p1}, Landroidx/core/graphics/drawable/IconCompat;->getUriInputStream(Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 623
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 624
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0

    .line 617
    :pswitch_3
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v1, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast v1, [B

    iget v2, p0, Landroidx/core/graphics/drawable/IconCompat;->mInt1:I

    iget p0, p0, Landroidx/core/graphics/drawable/IconCompat;->mInt2:I

    .line 618
    invoke-static {v1, v2, p0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0

    .line 601
    :pswitch_4
    invoke-virtual {p0}, Landroidx/core/graphics/drawable/IconCompat;->getResPackage()Ljava/lang/String;

    move-result-object v0

    .line 602
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 604
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 606
    :cond_0
    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/IconCompat;->getResources(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    :try_start_0
    iget v2, p0, Landroidx/core/graphics/drawable/IconCompat;->mInt1:I

    .line 608
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-static {v0, v2, p1}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    iget v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mInt1:I

    .line 611
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p0, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Unable to load resource 0x%08x from pkg=%s"

    .line 610
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "IconCompat"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 595
    :pswitch_5
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object p0, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Bitmap;

    invoke-direct {v0, p1, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0

    :cond_1
    :goto_0
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static typeToString(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "UNKNOWN"

    return-object p0

    :pswitch_0
    const-string p0, "URI_MASKABLE"

    return-object p0

    :pswitch_1
    const-string p0, "BITMAP_MASKABLE"

    return-object p0

    :pswitch_2
    const-string p0, "URI"

    return-object p0

    :pswitch_3
    const-string p0, "DATA"

    return-object p0

    :pswitch_4
    const-string p0, "RESOURCE"

    return-object p0

    :pswitch_5
    const-string p0, "BITMAP"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addToShortcutIntent(Landroid/content/Intent;Landroid/graphics/drawable/Drawable;Landroid/content/Context;)V
    .locals 4

    .line 700
    invoke-virtual {p0, p3}, Landroidx/core/graphics/drawable/IconCompat;->checkResource(Landroid/content/Context;)V

    iget v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 p3, 0x5

    if-ne v0, p3, :cond_0

    iget-object p0, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    .line 711
    check-cast p0, Landroid/graphics/Bitmap;

    invoke-static {p0, v1}, Landroidx/core/graphics/drawable/IconCompat;->createLegacyIconFromAdaptiveIcon(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    goto/16 :goto_2

    .line 739
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Icon type not supported for intent shortcuts"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 715
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroidx/core/graphics/drawable/IconCompat;->getResPackage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p3

    if-nez p2, :cond_2

    const-string p2, "android.intent.extra.shortcut.ICON_RESOURCE"

    iget v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mInt1:I

    .line 718
    invoke-static {p3, v0}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object p3

    .line 717
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-void

    :cond_2
    iget v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mInt1:I

    .line 721
    invoke-static {p3, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 722
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    if-lez v2, :cond_4

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-gtz v2, :cond_3

    goto :goto_0

    .line 727
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p3

    .line 728
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 727
    invoke-static {p3, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p3

    goto :goto_1

    :cond_4
    :goto_0
    const-string v2, "activity"

    .line 723
    invoke-virtual {p3, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/ActivityManager;

    .line 724
    invoke-virtual {p3}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result p3

    .line 725
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p3, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 731
    :goto_1
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 732
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, p3

    goto :goto_2

    :catch_0
    move-exception p1

    .line 735
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Can\'t find package "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_5
    iget-object p0, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    .line 704
    check-cast p0, Landroid/graphics/Bitmap;

    if-eqz p2, :cond_6

    .line 707
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p3

    invoke-virtual {p0, p3, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    :cond_6
    :goto_2
    if-eqz p2, :cond_7

    .line 743
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    .line 744
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 745
    div-int/lit8 v1, p3, 0x2

    div-int/lit8 v2, v0, 0x2

    invoke-virtual {p2, v1, v2, p3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 746
    new-instance p3, Landroid/graphics/Canvas;

    invoke-direct {p3, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_7
    const-string p2, "android.intent.extra.shortcut.ICON"

    .line 748
    invoke-virtual {p1, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-void
.end method

.method public checkResource(Landroid/content/Context;)V
    .locals 8

    iget v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 541
    check-cast v0, Ljava/lang/String;

    const-string v1, ":"

    .line 542
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v2, -0x1

    .line 546
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const-string v5, "/"

    .line 547
    invoke-virtual {v3, v5, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    .line 548
    invoke-virtual {v3, v5, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v4

    .line 549
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v7

    const-string v2, "0_resource_name_obfuscated"

    .line 550
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "IconCompat"

    if-eqz v2, :cond_1

    const-string p0, "Found obfuscated resource, not trying to update resource id for it"

    .line 553
    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 556
    :cond_1
    invoke-virtual {p0}, Landroidx/core/graphics/drawable/IconCompat;->getResPackage()Ljava/lang/String;

    move-result-object v2

    .line 557
    invoke-static {p1, v2}, Landroidx/core/graphics/drawable/IconCompat;->getResources(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p1

    .line 558
    invoke-virtual {p1, v3, v6, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iget v1, p0, Landroidx/core/graphics/drawable/IconCompat;->mInt1:I

    if-eq v1, p1, :cond_2

    .line 560
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Id has changed for "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Landroidx/core/graphics/drawable/IconCompat;->mInt1:I

    :cond_2
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 3

    iget v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    .line 443
    instance-of v0, p0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 444
    check-cast p0, Landroid/graphics/Bitmap;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object p0, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    .line 449
    check-cast p0, Landroid/graphics/Bitmap;

    return-object p0

    :cond_2
    const/4 v2, 0x5

    if-ne v0, v2, :cond_3

    iget-object p0, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    .line 451
    check-cast p0, Landroid/graphics/Bitmap;

    invoke-static {p0, v1}, Landroidx/core/graphics/drawable/IconCompat;->createLegacyIconFromAdaptiveIcon(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 453
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "called getBitmap() on "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getResId()I
    .locals 3

    iget v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    .line 423
    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat$Api23Impl;->getResId(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget p0, p0, Landroidx/core/graphics/drawable/IconCompat;->mInt1:I

    return p0

    .line 426
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "called getResId() on "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getResPackage()Ljava/lang/String;
    .locals 3

    iget v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    .line 396
    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat$Api23Impl;->getResPackage(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mString1:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 404
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/core/graphics/drawable/IconCompat;->mString1:Ljava/lang/String;

    return-object p0

    :cond_2
    :goto_0
    iget-object p0, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    .line 405
    check-cast p0, Ljava/lang/String;

    const-string v0, ":"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0

    .line 399
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "called getResPackage() on "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getType()I
    .locals 2

    iget v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    .line 381
    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat$Api23Impl;->getType(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 3

    iget v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    .line 467
    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat$Api23Impl;->getUri(Ljava/lang/Object;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 470
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "called getUri() on "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    iget-object p0, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    .line 472
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public getUriInputStream(Landroid/content/Context;)Ljava/io/InputStream;
    .locals 4

    .line 652
    invoke-virtual {p0}, Landroidx/core/graphics/drawable/IconCompat;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 653
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content"

    .line 654
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "IconCompat"

    if-nez v2, :cond_1

    const-string v2, "file"

    .line 655
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 663
    :cond_0
    :try_start_0
    new-instance p1, Ljava/io/FileInputStream;

    new-instance v1, Ljava/io/File;

    iget-object p0, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    .line 665
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Unable to load image from path: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 657
    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    .line 659
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Unable to load image from URI: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 576
    invoke-virtual {p0, p1}, Landroidx/core/graphics/drawable/IconCompat;->checkResource(Landroid/content/Context;)V

    .line 578
    invoke-virtual {p0, p1}, Landroidx/core/graphics/drawable/IconCompat;->toIcon(Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    move-result-object p0

    invoke-static {p0, p1}, Landroidx/core/graphics/drawable/IconCompat$Api23Impl;->loadDrawable(Landroid/graphics/drawable/Icon;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public onPostParceling()V
    .locals 4

    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mTintModeStr:Ljava/lang/String;

    .line 873
    invoke-static {v0}, Landroid/graphics/PorterDuff$Mode;->valueOf(Ljava/lang/String;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    iget v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mType:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mData:[B

    iput-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    goto :goto_0

    .line 897
    :pswitch_2
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Landroidx/core/graphics/drawable/IconCompat;->mData:[B

    const-string v3, "UTF-16"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    iget v2, p0, Landroidx/core/graphics/drawable/IconCompat;->mType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroidx/core/graphics/drawable/IconCompat;->mString1:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 904
    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    const-string v2, ":"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v1

    iput-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mString1:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mParcelable:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    iput-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mData:[B

    iput-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    const/4 v2, 0x3

    iput v2, p0, Landroidx/core/graphics/drawable/IconCompat;->mType:I

    iput v1, p0, Landroidx/core/graphics/drawable/IconCompat;->mInt1:I

    .line 891
    array-length v0, v0

    iput v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mInt2:I

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mParcelable:Landroid/os/Parcelable;

    if-eqz v0, :cond_1

    iput-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    goto :goto_0

    .line 879
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid icon"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public onPreParceling(Z)V
    .locals 3

    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 836
    invoke-virtual {v0}, Landroid/graphics/PorterDuff$Mode;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mTintModeStr:Ljava/lang/String;

    iget v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mType:I

    const-string v1, "UTF-16"

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    .line 860
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    iput-object p1, p0, Landroidx/core/graphics/drawable/IconCompat;->mData:[B

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    .line 866
    check-cast p1, [B

    iput-object p1, p0, Landroidx/core/graphics/drawable/IconCompat;->mData:[B

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    .line 863
    check-cast p1, Ljava/lang/String;

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    iput-object p1, p0, Landroidx/core/graphics/drawable/IconCompat;->mData:[B

    goto :goto_0

    :pswitch_4
    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    .line 850
    check-cast p1, Landroid/graphics/Bitmap;

    .line 851
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 852
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x5a

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 853
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iput-object p1, p0, Landroidx/core/graphics/drawable/IconCompat;->mData:[B

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    .line 855
    check-cast p1, Landroid/os/Parcelable;

    iput-object p1, p0, Landroidx/core/graphics/drawable/IconCompat;->mParcelable:Landroid/os/Parcelable;

    goto :goto_0

    :pswitch_5
    if-nez p1, :cond_1

    iget-object p1, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    .line 844
    check-cast p1, Landroid/os/Parcelable;

    iput-object p1, p0, Landroidx/core/graphics/drawable/IconCompat;->mParcelable:Landroid/os/Parcelable;

    goto :goto_0

    .line 841
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t serialize Icon created with IconCompat#createFromIcon"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method public setTint(I)Landroidx/core/graphics/drawable/IconCompat;
    .locals 0

    .line 483
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/core/graphics/drawable/IconCompat;->setTintList(Landroid/content/res/ColorStateList;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p0

    return-object p0
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)Landroidx/core/graphics/drawable/IconCompat;
    .locals 0

    iput-object p1, p0, Landroidx/core/graphics/drawable/IconCompat;->mTintList:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)Landroidx/core/graphics/drawable/IconCompat;
    .locals 0

    iput-object p1, p0, Landroidx/core/graphics/drawable/IconCompat;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object p0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .line 757
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget v1, p0, Landroidx/core/graphics/drawable/IconCompat;->mType:I

    const-string v2, "obj"

    packed-switch v1, :pswitch_data_0

    .line 776
    :pswitch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid icon"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    iget-object v1, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    .line 773
    check-cast v1, [B

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    .line 770
    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    .line 761
    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    .line 765
    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :goto_0
    const-string/jumbo v1, "type"

    iget v2, p0, Landroidx/core/graphics/drawable/IconCompat;->mType:I

    .line 778
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "int1"

    iget v2, p0, Landroidx/core/graphics/drawable/IconCompat;->mInt1:I

    .line 779
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "int2"

    iget v2, p0, Landroidx/core/graphics/drawable/IconCompat;->mInt2:I

    .line 780
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "string1"

    iget-object v2, p0, Landroidx/core/graphics/drawable/IconCompat;->mString1:Ljava/lang/String;

    .line 781
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/core/graphics/drawable/IconCompat;->mTintList:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_0

    const-string/jumbo v2, "tint_list"

    .line 783
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    iget-object p0, p0, Landroidx/core/graphics/drawable/IconCompat;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    sget-object v1, Landroidx/core/graphics/drawable/IconCompat;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    if-eq p0, v1, :cond_1

    const-string/jumbo v1, "tint_mode"

    .line 786
    invoke-virtual {p0}, Landroid/graphics/PorterDuff$Mode;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public toIcon()Landroid/graphics/drawable/Icon;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 517
    invoke-virtual {p0, v0}, Landroidx/core/graphics/drawable/IconCompat;->toIcon(Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    move-result-object p0

    return-object p0
.end method

.method public toIcon(Landroid/content/Context;)Landroid/graphics/drawable/Icon;
    .locals 0

    .line 529
    invoke-static {p0, p1}, Landroidx/core/graphics/drawable/IconCompat$Api23Impl;->toIcon(Landroidx/core/graphics/drawable/IconCompat;Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    .line 795
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 797
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Icon(typ="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/core/graphics/drawable/IconCompat;->mType:I

    invoke-static {v1}, Landroidx/core/graphics/drawable/IconCompat;->typeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/core/graphics/drawable/IconCompat;->mType:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v1, " uri="

    .line 820
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_1
    const-string v1, " len="

    .line 813
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/core/graphics/drawable/IconCompat;->mInt1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/core/graphics/drawable/IconCompat;->mInt2:I

    if-eqz v1, :cond_1

    const-string v1, " off="

    .line 815
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/core/graphics/drawable/IconCompat;->mInt2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_2
    const-string v1, " pkg="

    .line 807
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidx/core/graphics/drawable/IconCompat;->mString1:Ljava/lang/String;

    .line 808
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " id="

    .line 809
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 810
    invoke-virtual {p0}, Landroidx/core/graphics/drawable/IconCompat;->getResId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "0x%08x"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_3
    const-string v1, " size="

    .line 801
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Bitmap;

    .line 802
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "x"

    .line 803
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Bitmap;

    .line 804
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1
    :goto_0
    iget-object v1, p0, Landroidx/core/graphics/drawable/IconCompat;->mTintList:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_2

    const-string v1, " tint="

    .line 824
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/core/graphics/drawable/IconCompat;->mTintList:Landroid/content/res/ColorStateList;

    .line 825
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Landroidx/core/graphics/drawable/IconCompat;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    sget-object v2, Landroidx/core/graphics/drawable/IconCompat;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    if-eq v1, v2, :cond_3

    const-string v1, " mode="

    .line 828
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Landroidx/core/graphics/drawable/IconCompat;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_3
    const-string p0, ")"

    .line 830
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 831
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
