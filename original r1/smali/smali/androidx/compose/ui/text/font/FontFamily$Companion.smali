.class public final Landroidx/compose/ui/text/font/FontFamily$Companion;
.super Ljava/lang/Object;
.source "FontFamily.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/text/font/FontFamily;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u000b\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u0006R\u0011\u0010\r\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u0006R\u0011\u0010\u000f\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0006\u00a8\u0006\u0011"
    }
    d2 = {
        "Landroidx/compose/ui/text/font/FontFamily$Companion;",
        "",
        "()V",
        "Cursive",
        "Landroidx/compose/ui/text/font/GenericFontFamily;",
        "getCursive",
        "()Landroidx/compose/ui/text/font/GenericFontFamily;",
        "Default",
        "Landroidx/compose/ui/text/font/SystemFontFamily;",
        "getDefault",
        "()Landroidx/compose/ui/text/font/SystemFontFamily;",
        "Monospace",
        "getMonospace",
        "SansSerif",
        "getSansSerif",
        "Serif",
        "getSerif",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/text/font/FontFamily$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCursive()Landroidx/compose/ui/text/font/GenericFontFamily;
    .locals 0

    .line 142
    invoke-static {}, Landroidx/compose/ui/text/font/FontFamily;->access$getCursive$cp()Landroidx/compose/ui/text/font/GenericFontFamily;

    move-result-object p0

    return-object p0
.end method

.method public final getDefault()Landroidx/compose/ui/text/font/SystemFontFamily;
    .locals 0

    .line 103
    invoke-static {}, Landroidx/compose/ui/text/font/FontFamily;->access$getDefault$cp()Landroidx/compose/ui/text/font/SystemFontFamily;

    move-result-object p0

    return-object p0
.end method

.method public final getMonospace()Landroidx/compose/ui/text/font/GenericFontFamily;
    .locals 0

    .line 130
    invoke-static {}, Landroidx/compose/ui/text/font/FontFamily;->access$getMonospace$cp()Landroidx/compose/ui/text/font/GenericFontFamily;

    move-result-object p0

    return-object p0
.end method

.method public final getSansSerif()Landroidx/compose/ui/text/font/GenericFontFamily;
    .locals 0

    .line 112
    invoke-static {}, Landroidx/compose/ui/text/font/FontFamily;->access$getSansSerif$cp()Landroidx/compose/ui/text/font/GenericFontFamily;

    move-result-object p0

    return-object p0
.end method

.method public final getSerif()Landroidx/compose/ui/text/font/GenericFontFamily;
    .locals 0

    .line 121
    invoke-static {}, Landroidx/compose/ui/text/font/FontFamily;->access$getSerif$cp()Landroidx/compose/ui/text/font/GenericFontFamily;

    move-result-object p0

    return-object p0
.end method
