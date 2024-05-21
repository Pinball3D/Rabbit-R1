.class public final Landroidx/core/os/ConfigurationCompat;
.super Ljava/lang/Object;
.source "ConfigurationCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/os/ConfigurationCompat$Api24Impl;,
        Landroidx/core/os/ConfigurationCompat$Api17Impl;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLocales(Landroid/content/res/Configuration;)Landroidx/core/os/LocaleListCompat;
    .locals 0

    .line 47
    invoke-static {p0}, Landroidx/core/os/ConfigurationCompat$Api24Impl;->getLocales(Landroid/content/res/Configuration;)Landroid/os/LocaleList;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/os/LocaleListCompat;->wrap(Landroid/os/LocaleList;)Landroidx/core/os/LocaleListCompat;

    move-result-object p0

    return-object p0
.end method

.method public static setLocales(Landroid/content/res/Configuration;Landroidx/core/os/LocaleListCompat;)V
    .locals 0

    .line 59
    invoke-static {p0, p1}, Landroidx/core/os/ConfigurationCompat$Api24Impl;->setLocales(Landroid/content/res/Configuration;Landroidx/core/os/LocaleListCompat;)V

    return-void
.end method
