.class public final Landroidx/compose/material3/tokens/CircularProgressIndicatorTokens;
.super Ljava/lang/Object;
.source "CircularProgressIndicatorTokens.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCircularProgressIndicatorTokens.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CircularProgressIndicatorTokens.kt\nandroidx/compose/material3/tokens/CircularProgressIndicatorTokens\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,32:1\n164#2:33\n164#2:34\n*S KotlinDebug\n*F\n+ 1 CircularProgressIndicatorTokens.kt\nandroidx/compose/material3/tokens/CircularProgressIndicatorTokens\n*L\n26#1:33\n31#1:34\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\r\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u001c\u0010\u0007\u001a\u00020\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\n\n\u0002\u0010\u000b\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0010\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0006R\u0011\u0010\u0012\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0006R\u0011\u0010\u0014\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0006R\u0011\u0010\u0016\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0006R\u001c\u0010\u0018\u001a\u00020\u0008\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\n\n\u0002\u0010\u000b\u001a\u0004\u0008\u0019\u0010\n\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006\u001a"
    }
    d2 = {
        "Landroidx/compose/material3/tokens/CircularProgressIndicatorTokens;",
        "",
        "()V",
        "ActiveIndicatorColor",
        "Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;",
        "getActiveIndicatorColor",
        "()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;",
        "ActiveIndicatorWidth",
        "Landroidx/compose/ui/unit/Dp;",
        "getActiveIndicatorWidth-D9Ej5fM",
        "()F",
        "F",
        "ActiveShape",
        "Landroidx/compose/material3/tokens/ShapeKeyTokens;",
        "getActiveShape",
        "()Landroidx/compose/material3/tokens/ShapeKeyTokens;",
        "FourColorActiveIndicatorFourColor",
        "getFourColorActiveIndicatorFourColor",
        "FourColorActiveIndicatorOneColor",
        "getFourColorActiveIndicatorOneColor",
        "FourColorActiveIndicatorThreeColor",
        "getFourColorActiveIndicatorThreeColor",
        "FourColorActiveIndicatorTwoColor",
        "getFourColorActiveIndicatorTwoColor",
        "Size",
        "getSize-D9Ej5fM",
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
.field private static final ActiveIndicatorColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final ActiveIndicatorWidth:F

.field private static final ActiveShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

.field private static final FourColorActiveIndicatorFourColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final FourColorActiveIndicatorOneColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final FourColorActiveIndicatorThreeColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final FourColorActiveIndicatorTwoColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field public static final INSTANCE:Landroidx/compose/material3/tokens/CircularProgressIndicatorTokens;

.field private static final Size:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/material3/tokens/CircularProgressIndicatorTokens;

    invoke-direct {v0}, Landroidx/compose/material3/tokens/CircularProgressIndicatorTokens;-><init>()V

    sput-object v0, Landroidx/compose/material3/tokens/CircularProgressIndicatorTokens;->INSTANCE:Landroidx/compose/material3/tokens/CircularProgressIndicatorTokens;

    .line 24
    sget-object v0, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->Primary:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v0, Landroidx/compose/material3/tokens/CircularProgressIndicatorTokens;->ActiveIndicatorColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 25
    sget-object v0, Landroidx/compose/material3/tokens/ShapeKeyTokens;->CornerNone:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    sput-object v0, Landroidx/compose/material3/tokens/CircularProgressIndicatorTokens;->ActiveShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    double-to-float v0, v0

    .line 33
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material3/tokens/CircularProgressIndicatorTokens;->ActiveIndicatorWidth:F

    .line 27
    sget-object v0, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->TertiaryContainer:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v0, Landroidx/compose/material3/tokens/CircularProgressIndicatorTokens;->FourColorActiveIndicatorFourColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 28
    sget-object v0, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->Primary:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v0, Landroidx/compose/material3/tokens/CircularProgressIndicatorTokens;->FourColorActiveIndicatorOneColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 29
    sget-object v0, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->Tertiary:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v0, Landroidx/compose/material3/tokens/CircularProgressIndicatorTokens;->FourColorActiveIndicatorThreeColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 30
    sget-object v0, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->PrimaryContainer:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v0, Landroidx/compose/material3/tokens/CircularProgressIndicatorTokens;->FourColorActiveIndicatorTwoColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    const-wide/high16 v0, 0x4048000000000000L    # 48.0

    double-to-float v0, v0

    .line 34
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v0

    sput v0, Landroidx/compose/material3/tokens/CircularProgressIndicatorTokens;->Size:F

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getActiveIndicatorColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/CircularProgressIndicatorTokens;->ActiveIndicatorColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    return-object p0
.end method

.method public final getActiveIndicatorWidth-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/CircularProgressIndicatorTokens;->ActiveIndicatorWidth:F

    return p0
.end method

.method public final getActiveShape()Landroidx/compose/material3/tokens/ShapeKeyTokens;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/CircularProgressIndicatorTokens;->ActiveShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    return-object p0
.end method

.method public final getFourColorActiveIndicatorFourColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/CircularProgressIndicatorTokens;->FourColorActiveIndicatorFourColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    return-object p0
.end method

.method public final getFourColorActiveIndicatorOneColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/CircularProgressIndicatorTokens;->FourColorActiveIndicatorOneColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    return-object p0
.end method

.method public final getFourColorActiveIndicatorThreeColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/CircularProgressIndicatorTokens;->FourColorActiveIndicatorThreeColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    return-object p0
.end method

.method public final getFourColorActiveIndicatorTwoColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/CircularProgressIndicatorTokens;->FourColorActiveIndicatorTwoColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    return-object p0
.end method

.method public final getSize-D9Ej5fM()F
    .locals 0

    sget p0, Landroidx/compose/material3/tokens/CircularProgressIndicatorTokens;->Size:F

    return p0
.end method
