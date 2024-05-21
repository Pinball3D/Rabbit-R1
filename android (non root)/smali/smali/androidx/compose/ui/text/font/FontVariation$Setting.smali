.class public interface abstract Landroidx/compose/ui/text/font/FontVariation$Setting;
.super Ljava/lang/Object;
.source "FontVariation.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/text/font/FontVariation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Setting"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008w\u0018\u00002\u00020\u0001J\u0012\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH&R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\t\u0082\u0001\u0003\u000e\u000f\u0010\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u0011\u00c0\u0006\u0001"
    }
    d2 = {
        "Landroidx/compose/ui/text/font/FontVariation$Setting;",
        "",
        "axisName",
        "",
        "getAxisName",
        "()Ljava/lang/String;",
        "needsDensity",
        "",
        "getNeedsDensity",
        "()Z",
        "toVariationValue",
        "",
        "density",
        "Landroidx/compose/ui/unit/Density;",
        "Landroidx/compose/ui/text/font/FontVariation$SettingFloat;",
        "Landroidx/compose/ui/text/font/FontVariation$SettingInt;",
        "Landroidx/compose/ui/text/font/FontVariation$SettingTextUnit;",
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


# virtual methods
.method public abstract getAxisName()Ljava/lang/String;
.end method

.method public abstract getNeedsDensity()Z
.end method

.method public abstract toVariationValue(Landroidx/compose/ui/unit/Density;)F
.end method
