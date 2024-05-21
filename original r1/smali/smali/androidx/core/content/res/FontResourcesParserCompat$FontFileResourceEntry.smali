.class public final Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;
.super Ljava/lang/Object;
.source "FontResourcesParserCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/content/res/FontResourcesParserCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FontFileResourceEntry"
.end annotation


# instance fields
.field private final mFileName:Ljava/lang/String;

.field private final mItalic:Z

.field private final mResourceId:I

.field private final mTtcIndex:I

.field private final mVariationSettings:Ljava/lang/String;

.field private final mWeight:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IZLjava/lang/String;II)V
    .locals 0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->mFileName:Ljava/lang/String;

    iput p2, p0, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->mWeight:I

    iput-boolean p3, p0, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->mItalic:Z

    iput-object p4, p0, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->mVariationSettings:Ljava/lang/String;

    iput p5, p0, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->mTtcIndex:I

    iput p6, p0, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->mResourceId:I

    return-void
.end method


# virtual methods
.method public getFileName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->mFileName:Ljava/lang/String;

    return-object p0
.end method

.method public getResourceId()I
    .locals 0

    iget p0, p0, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->mResourceId:I

    return p0
.end method

.method public getTtcIndex()I
    .locals 0

    iget p0, p0, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->mTtcIndex:I

    return p0
.end method

.method public getVariationSettings()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->mVariationSettings:Ljava/lang/String;

    return-object p0
.end method

.method public getWeight()I
    .locals 0

    iget p0, p0, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->mWeight:I

    return p0
.end method

.method public isItalic()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->mItalic:Z

    return p0
.end method
