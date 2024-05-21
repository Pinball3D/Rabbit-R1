.class public Lio/flutter/plugin/editing/SpellCheckPlugin;
.super Ljava/lang/Object;
.source "SpellCheckPlugin.java"

# interfaces
.implements Lio/flutter/embedding/engine/systemchannels/SpellCheckChannel$SpellCheckMethodHandler;
.implements Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;


# static fields
.field public static final END_INDEX_KEY:Ljava/lang/String; = "endIndex"

.field private static final MAX_SPELL_CHECK_SUGGESTIONS:I = 0x5

.field public static final START_INDEX_KEY:Ljava/lang/String; = "startIndex"

.field public static final SUGGESTIONS_KEY:Ljava/lang/String; = "suggestions"


# instance fields
.field private final mSpellCheckChannel:Lio/flutter/embedding/engine/systemchannels/SpellCheckChannel;

.field private mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

.field private final mTextServicesManager:Landroid/view/textservice/TextServicesManager;

.field pendingResult:Lio/flutter/plugin/common/MethodChannel$Result;


# direct methods
.method public constructor <init>(Landroid/view/textservice/TextServicesManager;Lio/flutter/embedding/engine/systemchannels/SpellCheckChannel;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/plugin/editing/SpellCheckPlugin;->mTextServicesManager:Landroid/view/textservice/TextServicesManager;

    iput-object p2, p0, Lio/flutter/plugin/editing/SpellCheckPlugin;->mSpellCheckChannel:Lio/flutter/embedding/engine/systemchannels/SpellCheckChannel;

    .line 54
    invoke-virtual {p2, p0}, Lio/flutter/embedding/engine/systemchannels/SpellCheckChannel;->setSpellCheckMethodHandler(Lio/flutter/embedding/engine/systemchannels/SpellCheckChannel$SpellCheckMethodHandler;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    iget-object v0, p0, Lio/flutter/plugin/editing/SpellCheckPlugin;->mSpellCheckChannel:Lio/flutter/embedding/engine/systemchannels/SpellCheckChannel;

    const/4 v1, 0x0

    .line 66
    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/systemchannels/SpellCheckChannel;->setSpellCheckMethodHandler(Lio/flutter/embedding/engine/systemchannels/SpellCheckChannel$SpellCheckMethodHandler;)V

    iget-object p0, p0, Lio/flutter/plugin/editing/SpellCheckPlugin;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    if-eqz p0, :cond_0

    .line 69
    invoke-virtual {p0}, Landroid/view/textservice/SpellCheckerSession;->close()V

    :cond_0
    return-void
.end method

.method public initiateSpellCheck(Ljava/lang/String;Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    iget-object v0, p0, Lio/flutter/plugin/editing/SpellCheckPlugin;->pendingResult:Lio/flutter/plugin/common/MethodChannel$Result;

    if-eqz v0, :cond_0

    const-string p0, "Previous spell check request still pending."

    const/4 p1, 0x0

    const-string p2, "error"

    .line 81
    invoke-interface {p3, p2, p0, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    iput-object p3, p0, Lio/flutter/plugin/editing/SpellCheckPlugin;->pendingResult:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 87
    invoke-virtual {p0, p1, p2}, Lio/flutter/plugin/editing/SpellCheckPlugin;->performSpellCheck(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onGetSentenceSuggestions([Landroid/view/textservice/SentenceSuggestionsInfo;)V
    .locals 12

    .line 126
    array-length v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object p1, p0, Lio/flutter/plugin/editing/SpellCheckPlugin;->pendingResult:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    iput-object v1, p0, Lio/flutter/plugin/editing/SpellCheckPlugin;->pendingResult:Lio/flutter/plugin/common/MethodChannel$Result;

    return-void

    .line 132
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 134
    aget-object p1, p1, v2

    if-nez p1, :cond_1

    iget-object p1, p0, Lio/flutter/plugin/editing/SpellCheckPlugin;->pendingResult:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    iput-object v1, p0, Lio/flutter/plugin/editing/SpellCheckPlugin;->pendingResult:Lio/flutter/plugin/common/MethodChannel$Result;

    return-void

    :cond_1
    move v3, v2

    .line 141
    :goto_0
    invoke-virtual {p1}, Landroid/view/textservice/SentenceSuggestionsInfo;->getSuggestionsCount()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 142
    invoke-virtual {p1, v3}, Landroid/view/textservice/SentenceSuggestionsInfo;->getSuggestionsInfoAt(I)Landroid/view/textservice/SuggestionsInfo;

    move-result-object v4

    .line 143
    invoke-virtual {v4}, Landroid/view/textservice/SuggestionsInfo;->getSuggestionsCount()I

    move-result v5

    if-gtz v5, :cond_2

    goto :goto_2

    .line 149
    :cond_2
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 150
    invoke-virtual {p1, v3}, Landroid/view/textservice/SentenceSuggestionsInfo;->getOffsetAt(I)I

    move-result v7

    .line 151
    invoke-virtual {p1, v3}, Landroid/view/textservice/SentenceSuggestionsInfo;->getLengthAt(I)I

    move-result v8

    add-int/2addr v8, v7

    const-string v9, "startIndex"

    .line 153
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "endIndex"

    .line 154
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v8, v2

    move v9, v8

    :goto_1
    if-ge v8, v5, :cond_4

    .line 159
    invoke-virtual {v4, v8}, Landroid/view/textservice/SuggestionsInfo;->getSuggestionAt(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    .line 162
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 164
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v9, 0x1

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    if-nez v9, :cond_5

    goto :goto_2

    :cond_5
    const-string v4, "suggestions"

    .line 171
    invoke-virtual {v6, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    iget-object p1, p0, Lio/flutter/plugin/editing/SpellCheckPlugin;->pendingResult:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 175
    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    iput-object v1, p0, Lio/flutter/plugin/editing/SpellCheckPlugin;->pendingResult:Lio/flutter/plugin/common/MethodChannel$Result;

    return-void
.end method

.method public onGetSuggestions([Landroid/view/textservice/SuggestionsInfo;)V
    .locals 0

    return-void
.end method

.method public performSpellCheck(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 92
    invoke-static {p1}, Lio/flutter/plugin/localization/LocalizationPlugin;->localeFromString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p1

    iget-object v0, p0, Lio/flutter/plugin/editing/SpellCheckPlugin;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/flutter/plugin/editing/SpellCheckPlugin;->mTextServicesManager:Landroid/view/textservice/TextServicesManager;

    const/4 v2, 0x0

    .line 96
    invoke-virtual {v0, v2, p1, p0, v1}, Landroid/view/textservice/TextServicesManager;->newSpellCheckerSession(Landroid/os/Bundle;Ljava/util/Locale;Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;Z)Landroid/view/textservice/SpellCheckerSession;

    move-result-object p1

    iput-object p1, p0, Lio/flutter/plugin/editing/SpellCheckPlugin;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    :cond_0
    new-array p1, v1, [Landroid/view/textservice/TextInfo;

    .line 104
    new-instance v0, Landroid/view/textservice/TextInfo;

    invoke-direct {v0, p2}, Landroid/view/textservice/TextInfo;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    aput-object v0, p1, p2

    iget-object p0, p0, Lio/flutter/plugin/editing/SpellCheckPlugin;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    const/4 p2, 0x5

    .line 105
    invoke-virtual {p0, p1, p2}, Landroid/view/textservice/SpellCheckerSession;->getSentenceSuggestions([Landroid/view/textservice/TextInfo;I)V

    return-void
.end method
