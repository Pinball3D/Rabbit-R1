.class Landroidx/core/os/ConfigurationCompat$Api24Impl;
.super Ljava/lang/Object;
.source "ConfigurationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/os/ConfigurationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api24Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getLocales(Landroid/content/res/Configuration;)Landroid/os/LocaleList;
    .locals 0

    .line 88
    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p0

    return-object p0
.end method

.method static setLocales(Landroid/content/res/Configuration;Landroidx/core/os/LocaleListCompat;)V
    .locals 0

    .line 94
    invoke-virtual {p1}, Landroidx/core/os/LocaleListCompat;->unwrap()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/LocaleList;

    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    return-void
.end method
