.class public final Landroidx/compose/material3/tokens/ScrimTokens;
.super Ljava/lang/Object;
.source "ScrimTokens.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0000\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\u0008X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Landroidx/compose/material3/tokens/ScrimTokens;",
        "",
        "()V",
        "ContainerColor",
        "Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;",
        "getContainerColor",
        "()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;",
        "ContainerOpacity",
        "",
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

.field public static final ContainerOpacity:F = 0.32f

.field public static final INSTANCE:Landroidx/compose/material3/tokens/ScrimTokens;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/material3/tokens/ScrimTokens;

    invoke-direct {v0}, Landroidx/compose/material3/tokens/ScrimTokens;-><init>()V

    sput-object v0, Landroidx/compose/material3/tokens/ScrimTokens;->INSTANCE:Landroidx/compose/material3/tokens/ScrimTokens;

    .line 22
    sget-object v0, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;->Scrim:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    sput-object v0, Landroidx/compose/material3/tokens/ScrimTokens;->ContainerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getContainerColor()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;
    .locals 0

    sget-object p0, Landroidx/compose/material3/tokens/ScrimTokens;->ContainerColor:Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;

    return-object p0
.end method
