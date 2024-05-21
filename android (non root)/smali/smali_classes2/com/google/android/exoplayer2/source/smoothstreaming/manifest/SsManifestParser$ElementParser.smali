.class abstract Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;
.super Ljava/lang/Object;
.source "SsManifestParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ElementParser"
.end annotation


# instance fields
.field private final baseUri:Ljava/lang/String;

.field private final normalizedAttributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final parent:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;

.field private final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;->parent:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;->baseUri:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;->tag:Ljava/lang/String;

    .line 106
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;->normalizedAttributes:Ljava/util/List;

    return-void
.end method

.method private newChildParser(Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;
    .locals 0

    const-string p0, "QualityLevel"

    .line 165
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 166
    new-instance p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$QualityLevelParser;

    invoke-direct {p0, p1, p3}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$QualityLevelParser;-><init>(Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;Ljava/lang/String;)V

    return-object p0

    :cond_0
    const-string p0, "Protection"

    .line 167
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 168
    new-instance p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ProtectionParser;

    invoke-direct {p0, p1, p3}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ProtectionParser;-><init>(Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;Ljava/lang/String;)V

    return-object p0

    :cond_1
    const-string p0, "StreamIndex"

    .line 169
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 170
    new-instance p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$StreamIndexParser;

    invoke-direct {p0, p1, p3}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$StreamIndexParser;-><init>(Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;Ljava/lang/String;)V

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method protected addChild(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method protected abstract build()Ljava/lang/Object;
.end method

.method protected final getNormalizedAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;->normalizedAttributes:Ljava/util/List;

    .line 199
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;->normalizedAttributes:Ljava/util/List;

    .line 200
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 201
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 202
    iget-object p0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;->parent:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;

    if-nez p0, :cond_2

    const/4 p0, 0x0

    goto :goto_1

    .line 205
    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;->getNormalizedAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method protected handleChildInline(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final parse(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 114
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_9

    const/4 v4, 0x2

    if-eq v2, v4, :cond_3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_8

    if-nez v1, :cond_8

    .line 138
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;->parseText(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_8

    if-lez v1, :cond_2

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 146
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 147
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;->parseEndTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 148
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;->handleChildInline(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 149
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;->build()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 117
    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;->tag:Ljava/lang/String;

    .line 118
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 120
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;->parseStartTag(Lorg/xmlpull/v1/XmlPullParser;)V

    move v0, v3

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_8

    if-lez v1, :cond_5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 124
    :cond_5
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;->handleChildInline(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 125
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;->parseStartTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    :cond_6
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;->baseUri:Ljava/lang/String;

    .line 127
    invoke-direct {p0, p0, v2, v4}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;->newChildParser(Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;

    move-result-object v2

    if-nez v2, :cond_7

    move v1, v3

    goto :goto_1

    .line 131
    :cond_7
    invoke-virtual {v2, p1}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;->parse(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;->addChild(Ljava/lang/Object;)V

    .line 160
    :cond_8
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method protected final parseBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z
    .locals 0

    const/4 p0, 0x0

    .line 315
    invoke-interface {p1, p0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 317
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    return p3
.end method

.method protected parseEndTag(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0

    return-void
.end method

.method protected final parseInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    const/4 p0, 0x0

    .line 261
    invoke-interface {p1, p0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 264
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    .line 266
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0

    :cond_0
    return p3
.end method

.method protected final parseLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    const/4 p0, 0x0

    .line 288
    invoke-interface {p1, p0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 291
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p1

    .line 293
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0

    :cond_0
    return-wide p3
.end method

.method protected final parseRequiredInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    const/4 p0, 0x0

    .line 274
    invoke-interface {p1, p0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 277
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    .line 279
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0

    .line 282
    :cond_0
    new-instance p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$MissingFieldException;

    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$MissingFieldException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected final parseRequiredLong(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    const/4 p0, 0x0

    .line 302
    invoke-interface {p1, p0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 305
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p1

    .line 307
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0

    .line 310
    :cond_0
    new-instance p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$MissingFieldException;

    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$MissingFieldException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected final parseRequiredString(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$MissingFieldException;
        }
    .end annotation

    const/4 p0, 0x0

    .line 251
    invoke-interface {p1, p0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 255
    :cond_0
    new-instance p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$MissingFieldException;

    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$MissingFieldException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected parseStartTag(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    return-void
.end method

.method protected parseText(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0

    return-void
.end method

.method protected final putNormalizedAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$ElementParser;->normalizedAttributes:Ljava/util/List;

    .line 187
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
