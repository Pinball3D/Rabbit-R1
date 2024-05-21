.class Landroidx/appcompat/widget/ResourcesWrapper;
.super Landroid/content/res/Resources;
.source "ResourcesWrapper.java"


# instance fields
.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 3

    .line 50
    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    iput-object p1, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public getAnimation(I)Landroid/content/res/XmlResourceParser;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    iget-object p0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    .line 209
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object p0

    return-object p0
.end method

.method public getBoolean(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    iget-object p0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    .line 194
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public getColor(I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    iget-object p0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    .line 183
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    return p0
.end method

.method public getColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    iget-object p0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    .line 189
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    .line 272
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    return-object p0
.end method

.method public getDimension(I)F
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    iget-object p0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    .line 112
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    return p0
.end method

.method public getDimensionPixelOffset(I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    iget-object p0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    .line 117
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    return p0
.end method

.method public getDimensionPixelSize(I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    iget-object p0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    .line 122
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    .line 267
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    return-object p0
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    iget-object p0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    .line 133
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    iget-object p0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    .line 155
    invoke-static {p0, p1, p2}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method final getDrawableCanonical(I)Landroid/graphics/drawable/Drawable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 149
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    iget-object p0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    const/4 v0, 0x0

    .line 165
    invoke-static {p0, p1, p2, v0}, Landroidx/core/content/res/ResourcesCompat;->getDrawableForDensity(Landroid/content/res/Resources;IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getDrawableForDensity(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    .line 171
    invoke-static {p0, p1, p2, p3}, Landroidx/core/content/res/ResourcesCompat;->getDrawableForDensity(Landroid/content/res/Resources;IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getFraction(III)F
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    .line 127
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result p0

    return p0
.end method

.method public getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    .line 277
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getIntArray(I)[I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    iget-object p0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    .line 102
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p0

    return-object p0
.end method

.method public getInteger(I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    iget-object p0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    .line 199
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    return p0
.end method

.method public getLayout(I)Landroid/content/res/XmlResourceParser;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    iget-object p0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    .line 204
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object p0

    return-object p0
.end method

.method public getMovie(I)Landroid/graphics/Movie;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    iget-object p0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    .line 177
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getMovie(I)Landroid/graphics/Movie;

    move-result-object p0

    return-object p0
.end method

.method public getQuantityString(II)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    iget-object p0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    .line 82
    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public varargs getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    iget-object p0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    .line 77
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getQuantityText(II)Ljava/lang/CharSequence;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    iget-object p0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    .line 61
    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getResourceEntryName(I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    iget-object p0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    .line 297
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getResourceName(I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    iget-object p0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    .line 282
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getResourcePackageName(I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    iget-object p0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    .line 287
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getResourceTypeName(I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    iget-object p0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    .line 292
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    iget-object p0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    .line 66
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    iget-object p0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    .line 71
    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStringArray(I)[Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    iget-object p0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    .line 97
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getText(I)Ljava/lang/CharSequence;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    iget-object p0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    .line 56
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    .line 87
    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getTextArray(I)[Ljava/lang/CharSequence;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    iget-object p0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    .line 92
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getValue(ILandroid/util/TypedValue;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    iget-object p0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    .line 235
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    return-void
.end method

.method public getValue(Ljava/lang/String;Landroid/util/TypedValue;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    iget-object p0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    .line 248
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/res/Resources;->getValue(Ljava/lang/String;Landroid/util/TypedValue;Z)V

    return-void
.end method

.method public getValueForDensity(IILandroid/util/TypedValue;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    iget-object p0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    .line 242
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/appcompat/resources/Compatibility$Api15Impl;->getValueForDensity(Landroid/content/res/Resources;IILandroid/util/TypedValue;Z)V

    return-void
.end method

.method public getXml(I)Landroid/content/res/XmlResourceParser;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    iget-object p0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    .line 214
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p0

    return-object p0
.end method

.method public obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    .line 253
    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    return-object p0
.end method

.method public obtainTypedArray(I)Landroid/content/res/TypedArray;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    iget-object p0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    .line 107
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p0

    return-object p0
.end method

.method public openRawResource(I)Ljava/io/InputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    iget-object p0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    .line 219
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    iget-object p0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    .line 224
    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    iget-object p0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    .line 229
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    iget-object p0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    .line 309
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    return-void
.end method

.method public parseBundleExtras(Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    .line 303
    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->parseBundleExtras(Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;)V

    return-void
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V
    .locals 0

    .line 259
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    iget-object p0, p0, Landroidx/appcompat/widget/ResourcesWrapper;->mResources:Landroid/content/res/Resources;

    if-eqz p0, :cond_0

    .line 261
    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_0
    return-void
.end method
