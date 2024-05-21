.class public final Landroidx/compose/material3/ShapeDefaults;
.super Ljava/lang/Object;
.source "Shapes.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0006R\u0011\u0010\t\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0006R\u0011\u0010\u000b\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u0006R\u0011\u0010\r\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u0006\u00a8\u0006\u000f"
    }
    d2 = {
        "Landroidx/compose/material3/ShapeDefaults;",
        "",
        "()V",
        "ExtraLarge",
        "Landroidx/compose/foundation/shape/CornerBasedShape;",
        "getExtraLarge",
        "()Landroidx/compose/foundation/shape/CornerBasedShape;",
        "ExtraSmall",
        "getExtraSmall",
        "Large",
        "getLarge",
        "Medium",
        "getMedium",
        "Small",
        "getSmall",
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
.field public static final $stable:I

.field private static final ExtraLarge:Landroidx/compose/foundation/shape/CornerBasedShape;

.field private static final ExtraSmall:Landroidx/compose/foundation/shape/CornerBasedShape;

.field public static final INSTANCE:Landroidx/compose/material3/ShapeDefaults;

.field private static final Large:Landroidx/compose/foundation/shape/CornerBasedShape;

.field private static final Medium:Landroidx/compose/foundation/shape/CornerBasedShape;

.field private static final Small:Landroidx/compose/foundation/shape/CornerBasedShape;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/material3/ShapeDefaults;

    invoke-direct {v0}, Landroidx/compose/material3/ShapeDefaults;-><init>()V

    sput-object v0, Landroidx/compose/material3/ShapeDefaults;->INSTANCE:Landroidx/compose/material3/ShapeDefaults;

    .line 128
    sget-object v0, Landroidx/compose/material3/tokens/ShapeTokens;->INSTANCE:Landroidx/compose/material3/tokens/ShapeTokens;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/ShapeTokens;->getCornerExtraSmall()Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/shape/CornerBasedShape;

    sput-object v0, Landroidx/compose/material3/ShapeDefaults;->ExtraSmall:Landroidx/compose/foundation/shape/CornerBasedShape;

    .line 131
    sget-object v0, Landroidx/compose/material3/tokens/ShapeTokens;->INSTANCE:Landroidx/compose/material3/tokens/ShapeTokens;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/ShapeTokens;->getCornerSmall()Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/shape/CornerBasedShape;

    sput-object v0, Landroidx/compose/material3/ShapeDefaults;->Small:Landroidx/compose/foundation/shape/CornerBasedShape;

    .line 134
    sget-object v0, Landroidx/compose/material3/tokens/ShapeTokens;->INSTANCE:Landroidx/compose/material3/tokens/ShapeTokens;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/ShapeTokens;->getCornerMedium()Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/shape/CornerBasedShape;

    sput-object v0, Landroidx/compose/material3/ShapeDefaults;->Medium:Landroidx/compose/foundation/shape/CornerBasedShape;

    .line 137
    sget-object v0, Landroidx/compose/material3/tokens/ShapeTokens;->INSTANCE:Landroidx/compose/material3/tokens/ShapeTokens;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/ShapeTokens;->getCornerLarge()Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/shape/CornerBasedShape;

    sput-object v0, Landroidx/compose/material3/ShapeDefaults;->Large:Landroidx/compose/foundation/shape/CornerBasedShape;

    .line 140
    sget-object v0, Landroidx/compose/material3/tokens/ShapeTokens;->INSTANCE:Landroidx/compose/material3/tokens/ShapeTokens;

    invoke-virtual {v0}, Landroidx/compose/material3/tokens/ShapeTokens;->getCornerExtraLarge()Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/shape/CornerBasedShape;

    sput-object v0, Landroidx/compose/material3/ShapeDefaults;->ExtraLarge:Landroidx/compose/foundation/shape/CornerBasedShape;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getExtraLarge()Landroidx/compose/foundation/shape/CornerBasedShape;
    .locals 0

    sget-object p0, Landroidx/compose/material3/ShapeDefaults;->ExtraLarge:Landroidx/compose/foundation/shape/CornerBasedShape;

    return-object p0
.end method

.method public final getExtraSmall()Landroidx/compose/foundation/shape/CornerBasedShape;
    .locals 0

    sget-object p0, Landroidx/compose/material3/ShapeDefaults;->ExtraSmall:Landroidx/compose/foundation/shape/CornerBasedShape;

    return-object p0
.end method

.method public final getLarge()Landroidx/compose/foundation/shape/CornerBasedShape;
    .locals 0

    sget-object p0, Landroidx/compose/material3/ShapeDefaults;->Large:Landroidx/compose/foundation/shape/CornerBasedShape;

    return-object p0
.end method

.method public final getMedium()Landroidx/compose/foundation/shape/CornerBasedShape;
    .locals 0

    sget-object p0, Landroidx/compose/material3/ShapeDefaults;->Medium:Landroidx/compose/foundation/shape/CornerBasedShape;

    return-object p0
.end method

.method public final getSmall()Landroidx/compose/foundation/shape/CornerBasedShape;
    .locals 0

    sget-object p0, Landroidx/compose/material3/ShapeDefaults;->Small:Landroidx/compose/foundation/shape/CornerBasedShape;

    return-object p0
.end method
