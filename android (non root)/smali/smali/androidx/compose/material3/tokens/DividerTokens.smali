.class public final Landroidx/compose/material3/tokens/DividerTokens;
.super Ljava/lang/Object;
.source "DividerTokens.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDividerTokens.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DividerTokens.kt\nandroidx/compose/material3/tokens/DividerTokens\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,26:1\n164#2:27\n*S KotlinDebug\n*F\n+ 1 DividerTokens.kt\nandroidx/compose/material3/tokens/DividerTokens\n*L\n25#1:27\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u001c\u0010\u0007\u001a\u00020\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\n\n\u0002\u0010\u000b\u001a\u0004\u0008\t\u0010\n\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006\u000c"
    }
    d2 = {
        "Landroidx/compose/material3/tokens/DividerTokens;",
        "",
        "()V",
        "Color",
        "Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;",
        "getColor",
        "()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;",
        "Thickness",
        "Landroidx/compose/ui/unit/Dp;",
        "getThickness-D9Ej5fM",
        "()F",
        "F",
        "material3_release"
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
.field private static final Color:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field public static final INSTANCE:Landroidx/compose/material3/tokens/DividerTokens;

.field private static final Thickness:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/material3/tokens/DividerTokens;

    invoke-direct {v0}, Landroidx/compose/material3/tokens/DividerTokens;-><init>()V

    sput-object v0, Landroidx/compose/material3/tokens/DividerTokens;->INSTANCE:Landroidx/compose/material3/tokens/DividerTokens;

    .line 24
    sget-object v0, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->OutlineVariant:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v0, Landroidx/compose/material3/tokens/DividerTokens;->Color:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    double-to-float v0, v0

    .line 27
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material3/tokens/DividerTokens;->Thickness:F

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/DividerTokens;->Color:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    return-object p0
.end method

.method public final getThickness-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/DividerTokens;->Thickness:F

    return p0
.end method
