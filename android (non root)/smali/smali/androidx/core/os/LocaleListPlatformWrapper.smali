.class final Landroidx/core/os/LocaleListPlatformWrapper;
.super Ljava/lang/Object;
.source "LocaleListPlatformWrapper.java"

# interfaces
.implements Landroidx/core/os/LocaleListInterface;


# instance fields
.field private final mLocaleList:Landroid/os/LocaleList;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    check-cast p1, Landroid/os/LocaleList;

    iput-object p1, p0, Landroidx/core/os/LocaleListPlatformWrapper;->mLocaleList:Landroid/os/LocaleList;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Landroidx/core/os/LocaleListPlatformWrapper;->mLocaleList:Landroid/os/LocaleList;

    .line 62
    check-cast p1, Landroidx/core/os/LocaleListInterface;

    invoke-interface {p1}, Landroidx/core/os/LocaleListInterface;->getLocaleList()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public get(I)Ljava/util/Locale;
    .locals 0

    iget-object p0, p0, Landroidx/core/os/LocaleListPlatformWrapper;->mLocaleList:Landroid/os/LocaleList;

    .line 42
    invoke-virtual {p0, p1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p0

    return-object p0
.end method

.method public getFirstMatch([Ljava/lang/String;)Ljava/util/Locale;
    .locals 0

    iget-object p0, p0, Landroidx/core/os/LocaleListPlatformWrapper;->mLocaleList:Landroid/os/LocaleList;

    .line 83
    invoke-virtual {p0, p1}, Landroid/os/LocaleList;->getFirstMatch([Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p0

    return-object p0
.end method

.method public getLocaleList()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/core/os/LocaleListPlatformWrapper;->mLocaleList:Landroid/os/LocaleList;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Landroidx/core/os/LocaleListPlatformWrapper;->mLocaleList:Landroid/os/LocaleList;

    .line 67
    invoke-virtual {p0}, Landroid/os/LocaleList;->hashCode()I

    move-result p0

    return p0
.end method

.method public indexOf(Ljava/util/Locale;)I
    .locals 0

    iget-object p0, p0, Landroidx/core/os/LocaleListPlatformWrapper;->mLocaleList:Landroid/os/LocaleList;

    .line 57
    invoke-virtual {p0, p1}, Landroid/os/LocaleList;->indexOf(Ljava/util/Locale;)I

    move-result p0

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Landroidx/core/os/LocaleListPlatformWrapper;->mLocaleList:Landroid/os/LocaleList;

    .line 47
    invoke-virtual {p0}, Landroid/os/LocaleList;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Landroidx/core/os/LocaleListPlatformWrapper;->mLocaleList:Landroid/os/LocaleList;

    .line 52
    invoke-virtual {p0}, Landroid/os/LocaleList;->size()I

    move-result p0

    return p0
.end method

.method public toLanguageTags()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/core/os/LocaleListPlatformWrapper;->mLocaleList:Landroid/os/LocaleList;

    .line 77
    invoke-virtual {p0}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/core/os/LocaleListPlatformWrapper;->mLocaleList:Landroid/os/LocaleList;

    .line 72
    invoke-virtual {p0}, Landroid/os/LocaleList;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
