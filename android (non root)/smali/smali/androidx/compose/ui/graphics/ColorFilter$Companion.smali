.class public final Landroidx/compose/ui/graphics/ColorFilter$Companion;
.super Ljava/lang/Object;
.source "ColorFilter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/graphics/ColorFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001d\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0005H\u0007\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J%\u0010\u0008\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0007\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\'\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\n2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0011H\u0007\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0012\u0010\u0013\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006\u0014"
    }
    d2 = {
        "Landroidx/compose/ui/graphics/ColorFilter$Companion;",
        "",
        "()V",
        "colorMatrix",
        "Landroidx/compose/ui/graphics/ColorFilter;",
        "Landroidx/compose/ui/graphics/ColorMatrix;",
        "colorMatrix-jHG-Opc",
        "([F)Landroidx/compose/ui/graphics/ColorFilter;",
        "lighting",
        "multiply",
        "Landroidx/compose/ui/graphics/Color;",
        "add",
        "lighting--OWjLjI",
        "(JJ)Landroidx/compose/ui/graphics/ColorFilter;",
        "tint",
        "color",
        "blendMode",
        "Landroidx/compose/ui/graphics/BlendMode;",
        "tint-xETnrds",
        "(JI)Landroidx/compose/ui/graphics/ColorFilter;",
        "ui-graphics_release"
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

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/graphics/ColorFilter$Companion;-><init>()V

    return-void
.end method

.method public static synthetic tint-xETnrds$default(Landroidx/compose/ui/graphics/ColorFilter$Companion;JIILjava/lang/Object;)Landroidx/compose/ui/graphics/ColorFilter;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 44
    sget-object p3, Landroidx/compose/ui/graphics/BlendMode;->Companion:Landroidx/compose/ui/graphics/BlendMode$Companion;

    invoke-virtual {p3}, Landroidx/compose/ui/graphics/BlendMode$Companion;->getSrcIn-0nO6VwU()I

    move-result p3

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/ui/graphics/ColorFilter$Companion;->tint-xETnrds(JI)Landroidx/compose/ui/graphics/ColorFilter;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final colorMatrix-jHG-Opc([F)Landroidx/compose/ui/graphics/ColorFilter;
    .locals 0

    const-string p0, "colorMatrix"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-static {p1}, Landroidx/compose/ui/graphics/AndroidColorFilter_androidKt;->actualColorMatrixColorFilter-jHG-Opc([F)Landroidx/compose/ui/graphics/ColorFilter;

    move-result-object p0

    return-object p0
.end method

.method public final lighting--OWjLjI(JJ)Landroidx/compose/ui/graphics/ColorFilter;
    .locals 0

    .line 68
    invoke-static {p1, p2, p3, p4}, Landroidx/compose/ui/graphics/AndroidColorFilter_androidKt;->actualLightingColorFilter--OWjLjI(JJ)Landroidx/compose/ui/graphics/ColorFilter;

    move-result-object p0

    return-object p0
.end method

.method public final tint-xETnrds(JI)Landroidx/compose/ui/graphics/ColorFilter;
    .locals 0

    .line 45
    invoke-static {p1, p2, p3}, Landroidx/compose/ui/graphics/AndroidColorFilter_androidKt;->actualTintColorFilter-xETnrds(JI)Landroidx/compose/ui/graphics/ColorFilter;

    move-result-object p0

    return-object p0
.end method
