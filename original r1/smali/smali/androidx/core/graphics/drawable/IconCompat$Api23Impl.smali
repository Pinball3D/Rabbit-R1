.class Landroidx/core/graphics/drawable/IconCompat$Api23Impl;
.super Ljava/lang/Object;
.source "IconCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/graphics/drawable/IconCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api23Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createFromIcon(Landroid/content/Context;Landroid/graphics/drawable/Icon;)Landroidx/core/graphics/drawable/IconCompat;
    .locals 2

    .line 1111
    invoke-static {p1}, Landroidx/core/graphics/drawable/IconCompat$Api23Impl;->getType(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 p0, 0x4

    if-eq v0, p0, :cond_1

    const/4 p0, 0x6

    if-eq v0, p0, :cond_0

    .line 1125
    new-instance p0, Landroidx/core/graphics/drawable/IconCompat;

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Landroidx/core/graphics/drawable/IconCompat;-><init>(I)V

    .line 1126
    iput-object p1, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    return-object p0

    .line 1123
    :cond_0
    invoke-static {p1}, Landroidx/core/graphics/drawable/IconCompat$Api23Impl;->getUri(Ljava/lang/Object;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat;->createWithAdaptiveBitmapContentUri(Landroid/net/Uri;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p0

    return-object p0

    .line 1121
    :cond_1
    invoke-static {p1}, Landroidx/core/graphics/drawable/IconCompat$Api23Impl;->getUri(Ljava/lang/Object;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat;->createWithContentUri(Landroid/net/Uri;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p0

    return-object p0

    .line 1113
    :cond_2
    invoke-static {p1}, Landroidx/core/graphics/drawable/IconCompat$Api23Impl;->getResPackage(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1115
    :try_start_0
    invoke-static {p0, v0}, Landroidx/core/graphics/drawable/IconCompat;->getResources(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    .line 1116
    invoke-static {p1}, Landroidx/core/graphics/drawable/IconCompat$Api23Impl;->getResId(Ljava/lang/Object;)I

    move-result p1

    .line 1115
    invoke-static {p0, v0, p1}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/res/Resources;Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 1118
    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Icon resource cannot be found"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static createFromIconInner(Ljava/lang/Object;)Landroidx/core/graphics/drawable/IconCompat;
    .locals 2

    .line 1189
    invoke-static {p0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1190
    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat$Api23Impl;->getType(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 1198
    new-instance v0, Landroidx/core/graphics/drawable/IconCompat;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroidx/core/graphics/drawable/IconCompat;-><init>(I)V

    .line 1199
    iput-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    return-object v0

    .line 1196
    :cond_0
    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat$Api23Impl;->getUri(Ljava/lang/Object;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat;->createWithAdaptiveBitmapContentUri(Landroid/net/Uri;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p0

    return-object p0

    .line 1194
    :cond_1
    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat$Api23Impl;->getUri(Ljava/lang/Object;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat;->createWithContentUri(Landroid/net/Uri;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p0

    return-object p0

    .line 1192
    :cond_2
    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat$Api23Impl;->getResPackage(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat$Api23Impl;->getResId(Ljava/lang/Object;)I

    move-result p0

    const/4 v1, 0x0

    invoke-static {v1, v0, p0}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/res/Resources;Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p0

    return-object p0
.end method

.method static getResId(Ljava/lang/Object;)I
    .locals 0

    .line 1215
    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat$Api28Impl;->getResId(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method static getResPackage(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1168
    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat$Api28Impl;->getResPackage(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getType(Ljava/lang/Object;)I
    .locals 0

    .line 1140
    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat$Api28Impl;->getType(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method static getUri(Ljava/lang/Object;)Landroid/net/Uri;
    .locals 0

    .line 1244
    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat$Api28Impl;->getUri(Ljava/lang/Object;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method static loadDrawable(Landroid/graphics/drawable/Icon;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1325
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method static toIcon(Landroidx/core/graphics/drawable/IconCompat;Landroid/content/Context;)Landroid/graphics/drawable/Icon;
    .locals 2

    .line 1264
    iget p1, p0, Landroidx/core/graphics/drawable/IconCompat;->mType:I

    packed-switch p1, :pswitch_data_0

    .line 1312
    :pswitch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unknown type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1291
    :pswitch_1
    invoke-virtual {p0}, Landroidx/core/graphics/drawable/IconCompat;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/graphics/drawable/IconCompat$Api30Impl;->createWithAdaptiveBitmapContentUri(Landroid/net/Uri;)Landroid/graphics/drawable/Icon;

    move-result-object p1

    goto :goto_0

    .line 1273
    :pswitch_2
    iget-object p1, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-static {p1}, Landroidx/core/graphics/drawable/IconCompat$Api26Impl;->createWithAdaptiveBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object p1

    goto :goto_0

    .line 1287
    :pswitch_3
    iget-object p1, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/graphics/drawable/Icon;->createWithContentUri(Ljava/lang/String;)Landroid/graphics/drawable/Icon;

    move-result-object p1

    goto :goto_0

    .line 1283
    :pswitch_4
    iget-object p1, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast p1, [B

    iget v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mInt1:I

    iget v1, p0, Landroidx/core/graphics/drawable/IconCompat;->mInt2:I

    invoke-static {p1, v0, v1}, Landroid/graphics/drawable/Icon;->createWithData([BII)Landroid/graphics/drawable/Icon;

    move-result-object p1

    goto :goto_0

    .line 1280
    :pswitch_5
    invoke-virtual {p0}, Landroidx/core/graphics/drawable/IconCompat;->getResPackage()Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mInt1:I

    invoke-static {p1, v0}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object p1

    goto :goto_0

    .line 1269
    :pswitch_6
    iget-object p1, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-static {p1}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object p1

    .line 1314
    :goto_0
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mTintList:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    .line 1315
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Icon;->setTintList(Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/Icon;

    .line 1317
    :cond_0
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    sget-object v1, Landroidx/core/graphics/drawable/IconCompat;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, v1, :cond_1

    .line 1318
    iget-object p0, p0, Landroidx/core/graphics/drawable/IconCompat;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Icon;->setTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/drawable/Icon;

    :cond_1
    return-object p1

    .line 1267
    :pswitch_7
    iget-object p0, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/drawable/Icon;

    return-object p0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
