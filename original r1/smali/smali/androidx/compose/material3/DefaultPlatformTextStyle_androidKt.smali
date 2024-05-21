.class public final Landroidx/compose/material3/DefaultPlatformTextStyle_androidKt;
.super Ljava/lang/Object;
.source "DefaultPlatformTextStyle.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001a\n\u0010\u0006\u001a\u0004\u0018\u00010\u0003H\u0000\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u0014\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0007"
    }
    d2 = {
        "DefaultIncludeFontPadding",
        "",
        "DefaultPlatformTextStyle",
        "Landroidx/compose/ui/text/PlatformTextStyle;",
        "getDefaultPlatformTextStyle$annotations",
        "()V",
        "defaultPlatformTextStyle",
        "material3_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final DefaultIncludeFontPadding:Z = true

.field private static final DefaultPlatformTextStyle:Landroidx/compose/ui/text/PlatformTextStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Landroidx/compose/ui/text/PlatformTextStyle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/compose/ui/text/PlatformTextStyle;-><init>(Z)V

    sput-object v0, Landroidx/compose/material3/DefaultPlatformTextStyle_androidKt;->DefaultPlatformTextStyle:Landroidx/compose/ui/text/PlatformTextStyle;

    return-void
.end method

.method public static final defaultPlatformTextStyle()Landroidx/compose/ui/text/PlatformTextStyle;
    .locals 1

    sget-object v0, Landroidx/compose/material3/DefaultPlatformTextStyle_androidKt;->DefaultPlatformTextStyle:Landroidx/compose/ui/text/PlatformTextStyle;

    return-object v0
.end method

.method private static synthetic getDefaultPlatformTextStyle$annotations()V
    .locals 0

    return-void
.end method
