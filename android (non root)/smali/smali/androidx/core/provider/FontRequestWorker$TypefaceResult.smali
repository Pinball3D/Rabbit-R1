.class final Landroidx/core/provider/FontRequestWorker$TypefaceResult;
.super Ljava/lang/Object;
.source "FontRequestWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/provider/FontRequestWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TypefaceResult"
.end annotation


# instance fields
.field final mResult:I

.field final mTypeface:Landroid/graphics/Typeface;


# direct methods
.method constructor <init>(I)V
    .locals 1

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/core/provider/FontRequestWorker$TypefaceResult;->mTypeface:Landroid/graphics/Typeface;

    iput p1, p0, Landroidx/core/provider/FontRequestWorker$TypefaceResult;->mResult:I

    return-void
.end method

.method constructor <init>(Landroid/graphics/Typeface;)V
    .locals 0

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/provider/FontRequestWorker$TypefaceResult;->mTypeface:Landroid/graphics/Typeface;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/core/provider/FontRequestWorker$TypefaceResult;->mResult:I

    return-void
.end method


# virtual methods
.method isSuccess()Z
    .locals 0

    iget p0, p0, Landroidx/core/provider/FontRequestWorker$TypefaceResult;->mResult:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
