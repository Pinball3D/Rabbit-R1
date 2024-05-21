.class public final Landroidx/compose/material3/tokens/PlainTooltipTokens;
.super Ljava/lang/Object;
.source "PlainTooltipTokens.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u000b\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u0006R\u0011\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Landroidx/compose/material3/tokens/PlainTooltipTokens;",
        "",
        "()V",
        "ContainerColor",
        "Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;",
        "getContainerColor",
        "()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;",
        "ContainerShape",
        "Landroidx/compose/material3/tokens/ShapeKeyTokens;",
        "getContainerShape",
        "()Landroidx/compose/material3/tokens/ShapeKeyTokens;",
        "SupportingTextColor",
        "getSupportingTextColor",
        "SupportingTextFont",
        "Landroidx/compose/material3/tokens/TypographyKeyTokens;",
        "getSupportingTextFont",
        "()Landroidx/compose/material3/tokens/TypographyKeyTokens;",
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
.field private static final ContainerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final ContainerShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

.field public static final INSTANCE:Landroidx/compose/material3/tokens/PlainTooltipTokens;

.field private static final SupportingTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

.field private static final SupportingTextFont:Landroidx/compose/material3/tokens/TypographyKeyTokens;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/material3/tokens/PlainTooltipTokens;

    invoke-direct {v0}, Landroidx/compose/material3/tokens/PlainTooltipTokens;-><init>()V

    sput-object v0, Landroidx/compose/material3/tokens/PlainTooltipTokens;->INSTANCE:Landroidx/compose/material3/tokens/PlainTooltipTokens;

    .line 20
    sget-object v0, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->InverseSurface:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v0, Landroidx/compose/material3/tokens/PlainTooltipTokens;->ContainerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 21
    sget-object v0, Landroidx/compose/material3/tokens/ShapeKeyTokens;->CornerExtraSmall:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    sput-object v0, Landroidx/compose/material3/tokens/PlainTooltipTokens;->ContainerShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    .line 22
    sget-object v0, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->InverseOnSurface:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v0, Landroidx/compose/material3/tokens/PlainTooltipTokens;->SupportingTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    .line 23
    sget-object v0, Landroidx/compose/material3/tokens/TypographyKeyTokens;->BodySmall:Landroidx/compose/material3/tokens/TypographyKeyTokens;

    sput-object v0, Landroidx/compose/material3/tokens/PlainTooltipTokens;->SupportingTextFont:Landroidx/compose/material3/tokens/TypographyKeyTokens;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getContainerColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/PlainTooltipTokens;->ContainerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    return-object p0
.end method

.method public final getContainerShape()Landroidx/compose/material3/tokens/ShapeKeyTokens;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/PlainTooltipTokens;->ContainerShape:Landroidx/compose/material3/tokens/ShapeKeyTokens;

    return-object p0
.end method

.method public final getSupportingTextColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/PlainTooltipTokens;->SupportingTextColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    return-object p0
.end method

.method public final getSupportingTextFont()Landroidx/compose/material3/tokens/TypographyKeyTokens;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/PlainTooltipTokens;->SupportingTextFont:Landroidx/compose/material3/tokens/TypographyKeyTokens;

    return-object p0
.end method
