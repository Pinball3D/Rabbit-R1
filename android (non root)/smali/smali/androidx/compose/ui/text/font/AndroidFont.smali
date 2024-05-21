.class public abstract Landroidx/compose/ui/text/font/AndroidFont;
.super Ljava/lang/Object;
.source "AndroidFont.kt"

# interfaces
.implements Landroidx/compose/ui/text/font/Font;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/text/font/AndroidFont$TypefaceLoader;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\'\u0018\u00002\u00020\u0001:\u0001\u0011B\u001a\u0008\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0006B \u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\tR\u001c\u0010\u0002\u001a\u00020\u0003\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\n\n\u0002\u0010\u000c\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006\u0012"
    }
    d2 = {
        "Landroidx/compose/ui/text/font/AndroidFont;",
        "Landroidx/compose/ui/text/font/Font;",
        "loadingStrategy",
        "Landroidx/compose/ui/text/font/FontLoadingStrategy;",
        "typefaceLoader",
        "Landroidx/compose/ui/text/font/AndroidFont$TypefaceLoader;",
        "(ILandroidx/compose/ui/text/font/AndroidFont$TypefaceLoader;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "variationSettings",
        "Landroidx/compose/ui/text/font/FontVariation$Settings;",
        "(ILandroidx/compose/ui/text/font/AndroidFont$TypefaceLoader;Landroidx/compose/ui/text/font/FontVariation$Settings;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "getLoadingStrategy-PKNRLFQ",
        "()I",
        "I",
        "getTypefaceLoader",
        "()Landroidx/compose/ui/text/font/AndroidFont$TypefaceLoader;",
        "getVariationSettings",
        "()Landroidx/compose/ui/text/font/FontVariation$Settings;",
        "TypefaceLoader",
        "ui-text_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I


# instance fields
.field private final loadingStrategy:I

.field private final typefaceLoader:Landroidx/compose/ui/text/font/AndroidFont$TypefaceLoader;

.field private final variationSettings:Landroidx/compose/ui/text/font/FontVariation$Settings;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(ILandroidx/compose/ui/text/font/AndroidFont$TypefaceLoader;)V
    .locals 2

    const-string/jumbo v0, "typefaceLoader"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    new-instance v0, Landroidx/compose/ui/text/font/FontVariation$Settings;

    const/4 v1, 0x0

    new-array v1, v1, [Landroidx/compose/ui/text/font/FontVariation$Setting;

    invoke-direct {v0, v1}, Landroidx/compose/ui/text/font/FontVariation$Settings;-><init>([Landroidx/compose/ui/text/font/FontVariation$Setting;)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/compose/ui/text/font/AndroidFont;-><init>(ILandroidx/compose/ui/text/font/AndroidFont$TypefaceLoader;Landroidx/compose/ui/text/font/FontVariation$Settings;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method private constructor <init>(ILandroidx/compose/ui/text/font/AndroidFont$TypefaceLoader;Landroidx/compose/ui/text/font/FontVariation$Settings;)V
    .locals 1

    const-string/jumbo v0, "typefaceLoader"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "variationSettings"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/ui/text/font/AndroidFont;->loadingStrategy:I

    iput-object p2, p0, Landroidx/compose/ui/text/font/AndroidFont;->typefaceLoader:Landroidx/compose/ui/text/font/AndroidFont$TypefaceLoader;

    iput-object p3, p0, Landroidx/compose/ui/text/font/AndroidFont;->variationSettings:Landroidx/compose/ui/text/font/FontVariation$Settings;

    return-void
.end method

.method public synthetic constructor <init>(ILandroidx/compose/ui/text/font/AndroidFont$TypefaceLoader;Landroidx/compose/ui/text/font/FontVariation$Settings;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/ui/text/font/AndroidFont;-><init>(ILandroidx/compose/ui/text/font/AndroidFont$TypefaceLoader;Landroidx/compose/ui/text/font/FontVariation$Settings;)V

    return-void
.end method

.method public synthetic constructor <init>(ILandroidx/compose/ui/text/font/AndroidFont$TypefaceLoader;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Replaced with fontVariation constructor"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "AndroidFont(loadingStrategy, typefaceLoader, FontVariation.Settings())"
            imports = {}
        .end subannotation
    .end annotation

    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/text/font/AndroidFont;-><init>(ILandroidx/compose/ui/text/font/AndroidFont$TypefaceLoader;)V

    return-void
.end method


# virtual methods
.method public final getLoadingStrategy-PKNRLFQ()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/text/font/AndroidFont;->loadingStrategy:I

    return p0
.end method

.method public final getTypefaceLoader()Landroidx/compose/ui/text/font/AndroidFont$TypefaceLoader;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/font/AndroidFont;->typefaceLoader:Landroidx/compose/ui/text/font/AndroidFont$TypefaceLoader;

    return-object p0
.end method

.method public final getVariationSettings()Landroidx/compose/ui/text/font/FontVariation$Settings;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/font/AndroidFont;->variationSettings:Landroidx/compose/ui/text/font/FontVariation$Settings;

    return-object p0
.end method
