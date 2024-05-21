.class public abstract Landroidx/compose/ui/text/font/SystemFontFamily;
.super Landroidx/compose/ui/text/font/FontFamily;
.source "FontFamily.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00087\u0018\u00002\u00020\u0001B\u0007\u0008\u0004\u00a2\u0006\u0002\u0010\u0002\u0082\u0001\u0002\u0003\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Landroidx/compose/ui/text/font/SystemFontFamily;",
        "Landroidx/compose/ui/text/font/FontFamily;",
        "()V",
        "Landroidx/compose/ui/text/font/DefaultFontFamily;",
        "Landroidx/compose/ui/text/font/GenericFontFamily;",
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


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 161
    invoke-direct {p0, v0, v1}, Landroidx/compose/ui/text/font/FontFamily;-><init>(ZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/text/font/SystemFontFamily;-><init>()V

    return-void
.end method
