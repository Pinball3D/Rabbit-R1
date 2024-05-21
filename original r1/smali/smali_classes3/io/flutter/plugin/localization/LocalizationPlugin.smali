.class public Lio/flutter/plugin/localization/LocalizationPlugin;
.super Ljava/lang/Object;
.source "LocalizationPlugin.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private final localizationChannel:Lio/flutter/embedding/engine/systemchannels/LocalizationChannel;

.field final localizationMessageHandler:Lio/flutter/embedding/engine/systemchannels/LocalizationChannel$LocalizationMessageHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/flutter/embedding/engine/systemchannels/LocalizationChannel;)V
    .locals 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lio/flutter/plugin/localization/LocalizationPlugin$1;

    invoke-direct {v0, p0}, Lio/flutter/plugin/localization/LocalizationPlugin$1;-><init>(Lio/flutter/plugin/localization/LocalizationPlugin;)V

    iput-object v0, p0, Lio/flutter/plugin/localization/LocalizationPlugin;->localizationMessageHandler:Lio/flutter/embedding/engine/systemchannels/LocalizationChannel$LocalizationMessageHandler;

    iput-object p1, p0, Lio/flutter/plugin/localization/LocalizationPlugin;->context:Landroid/content/Context;

    iput-object p2, p0, Lio/flutter/plugin/localization/LocalizationPlugin;->localizationChannel:Lio/flutter/embedding/engine/systemchannels/LocalizationChannel;

    .line 81
    invoke-virtual {p2, v0}, Lio/flutter/embedding/engine/systemchannels/LocalizationChannel;->setLocalizationMessageHandler(Lio/flutter/embedding/engine/systemchannels/LocalizationChannel$LocalizationMessageHandler;)V

    return-void
.end method

.method static synthetic access$000(Lio/flutter/plugin/localization/LocalizationPlugin;)Landroid/content/Context;
    .locals 0

    .line 22
    iget-object p0, p0, Lio/flutter/plugin/localization/LocalizationPlugin;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static localeFromString(Ljava/lang/String;)Ljava/util/Locale;
    .locals 6

    const/16 v0, 0x5f

    const/16 v1, 0x2d

    .line 208
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const-string v0, "-"

    const/4 v1, -0x1

    .line 211
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 214
    aget-object v0, p0, v0

    .line 218
    array-length v1, p0

    const/4 v2, 0x2

    const-string v3, ""

    const/4 v4, 0x1

    if-le v1, v4, :cond_0

    aget-object v1, p0, v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v5, 0x4

    if-ne v1, v5, :cond_0

    .line 219
    aget-object v1, p0, v4

    move v4, v2

    goto :goto_0

    :cond_0
    move-object v1, v3

    .line 222
    :goto_0
    array-length v5, p0

    if-le v5, v4, :cond_1

    aget-object v5, p0, v4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v2, :cond_1

    aget-object v2, p0, v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v5, 0x3

    if-gt v2, v5, :cond_1

    .line 223
    aget-object v3, p0, v4

    .line 227
    :cond_1
    new-instance p0, Ljava/util/Locale;

    invoke-direct {p0, v0, v3, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public resolveNativeLocale(Ljava/util/List;)Ljava/util/Locale;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Locale;",
            ">;)",
            "Ljava/util/Locale;"
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 92
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 104
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lio/flutter/plugin/localization/LocalizationPlugin;->context:Landroid/content/Context;

    .line 105
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p0

    .line 106
    invoke-virtual {p0}, Landroid/os/LocaleList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    .line 108
    invoke-virtual {p0, v3}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v4

    .line 110
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    .line 111
    invoke-virtual {v4}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    const-string v7, "-"

    if-nez v6, :cond_1

    .line 112
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 114
    :cond_1
    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 115
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 117
    :cond_2
    new-instance v6, Ljava/util/Locale$LanguageRange;

    invoke-direct {v6, v5}, Ljava/util/Locale$LanguageRange;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    new-instance v5, Ljava/util/Locale$LanguageRange;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/Locale$LanguageRange;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    new-instance v5, Ljava/util/Locale$LanguageRange;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "-*"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/util/Locale$LanguageRange;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 121
    :cond_3
    invoke-static {v0, p1}, Ljava/util/Locale;->lookup(Ljava/util/List;Ljava/util/Collection;)Ljava/util/Locale;

    move-result-object p0

    if-eqz p0, :cond_4

    return-object p0

    .line 125
    :cond_4
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Locale;

    return-object p0

    :cond_5
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public sendLocalesToFlutter(Landroid/content/res/Configuration;)V
    .locals 4

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 183
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p1

    .line 184
    invoke-virtual {p1}, Landroid/os/LocaleList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 186
    invoke-virtual {p1, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v3

    .line 187
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lio/flutter/plugin/localization/LocalizationPlugin;->localizationChannel:Lio/flutter/embedding/engine/systemchannels/LocalizationChannel;

    .line 193
    invoke-virtual {p0, v0}, Lio/flutter/embedding/engine/systemchannels/LocalizationChannel;->sendLocales(Ljava/util/List;)V

    return-void
.end method
