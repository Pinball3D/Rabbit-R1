.class final Landroidx/media3/extractor/jpeg/XmpMotionPhotoDescriptionParser;
.super Ljava/lang/Object;
.source "XmpMotionPhotoDescriptionParser.java"


# static fields
.field private static final DESCRIPTION_MICRO_VIDEO_OFFSET_ATTRIBUTE_NAMES:[Ljava/lang/String;

.field private static final DESCRIPTION_MOTION_PHOTO_PRESENTATION_TIMESTAMP_ATTRIBUTE_NAMES:[Ljava/lang/String;

.field private static final MOTION_PHOTO_ATTRIBUTE_NAMES:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "MotionPhotoXmpParser"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "Camera:MicroVideo"

    const-string v1, "GCamera:MicroVideo"

    const-string v2, "Camera:MotionPhoto"

    const-string v3, "GCamera:MotionPhoto"

    .line 60
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/extractor/jpeg/XmpMotionPhotoDescriptionParser;->MOTION_PHOTO_ATTRIBUTE_NAMES:[Ljava/lang/String;

    const-string v0, "Camera:MicroVideoPresentationTimestampUs"

    const-string v1, "GCamera:MicroVideoPresentationTimestampUs"

    const-string v2, "Camera:MotionPhotoPresentationTimestampUs"

    const-string v3, "GCamera:MotionPhotoPresentationTimestampUs"

    .line 67
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/extractor/jpeg/XmpMotionPhotoDescriptionParser;->DESCRIPTION_MOTION_PHOTO_PRESENTATION_TIMESTAMP_ATTRIBUTE_NAMES:[Ljava/lang/String;

    const-string v0, "Camera:MicroVideoOffset"

    const-string v1, "GCamera:MicroVideoOffset"

    .line 74
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/extractor/jpeg/XmpMotionPhotoDescriptionParser;->DESCRIPTION_MICRO_VIDEO_OFFSET_ATTRIBUTE_NAMES:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Ljava/lang/String;)Landroidx/media3/extractor/jpeg/MotionPhotoDescription;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    :try_start_0
    invoke-static {p0}, Landroidx/media3/extractor/jpeg/XmpMotionPhotoDescriptionParser;->parseInternal(Ljava/lang/String;)Landroidx/media3/extractor/jpeg/MotionPhotoDescription;

    move-result-object p0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroidx/media3/common/ParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "MotionPhotoXmpParser"

    const-string v0, "Ignoring unexpected XMP metadata"

    .line 53
    invoke-static {p0, v0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static parseInternal(Ljava/lang/String;)Landroidx/media3/extractor/jpeg/MotionPhotoDescription;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 85
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 86
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string p0, "x:xmpmeta"

    .line 87
    invoke-static {v0, p0}, Landroidx/media3/common/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 92
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 94
    :cond_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v5, "rdf:Description"

    .line 95
    invoke-static {v0, v5}, Landroidx/media3/common/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 96
    invoke-static {v0}, Landroidx/media3/extractor/jpeg/XmpMotionPhotoDescriptionParser;->parseMotionPhotoFlagFromDescription(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v2

    .line 101
    :cond_1
    invoke-static {v0}, Landroidx/media3/extractor/jpeg/XmpMotionPhotoDescriptionParser;->parseMotionPhotoPresentationTimestampUsFromDescription(Lorg/xmlpull/v1/XmlPullParser;)J

    move-result-wide v3

    .line 102
    invoke-static {v0}, Landroidx/media3/extractor/jpeg/XmpMotionPhotoDescriptionParser;->parseMicroVideoOffsetFromDescription(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string v5, "Container:Directory"

    .line 103
    invoke-static {v0, v5}, Landroidx/media3/common/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v1, "Container"

    const-string v5, "Item"

    .line 104
    invoke-static {v0, v1, v5}, Landroidx/media3/extractor/jpeg/XmpMotionPhotoDescriptionParser;->parseMotionPhotoV1Directory(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    goto :goto_0

    :cond_3
    const-string v5, "GContainer:Directory"

    .line 105
    invoke-static {v0, v5}, Landroidx/media3/common/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v1, "GContainer"

    const-string v5, "GContainerItem"

    .line 106
    invoke-static {v0, v1, v5}, Landroidx/media3/extractor/jpeg/XmpMotionPhotoDescriptionParser;->parseMotionPhotoV1Directory(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 108
    :cond_4
    :goto_0
    invoke-static {v0, p0}, Landroidx/media3/common/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 109
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_5

    return-object v2

    .line 113
    :cond_5
    new-instance p0, Landroidx/media3/extractor/jpeg/MotionPhotoDescription;

    invoke-direct {p0, v3, v4, v1}, Landroidx/media3/extractor/jpeg/MotionPhotoDescription;-><init>(JLjava/util/List;)V

    return-object p0

    :cond_6
    const-string p0, "Couldn\'t find xmp metadata"

    .line 88
    invoke-static {p0, v2}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0
.end method

.method private static parseMicroVideoOffsetFromDescription(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/common/collect/ImmutableList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/extractor/jpeg/MotionPhotoDescription$ContainerItem;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroidx/media3/extractor/jpeg/XmpMotionPhotoDescriptionParser;->DESCRIPTION_MICRO_VIDEO_OFFSET_ATTRIBUTE_NAMES:[Ljava/lang/String;

    .line 142
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 143
    invoke-static {p0, v3}, Landroidx/media3/common/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 145
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 146
    new-instance p0, Landroidx/media3/extractor/jpeg/MotionPhotoDescription$ContainerItem;

    const-string v1, "image/jpeg"

    const-string v2, "Primary"

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroidx/media3/extractor/jpeg/MotionPhotoDescription$ContainerItem;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    new-instance v0, Landroidx/media3/extractor/jpeg/MotionPhotoDescription$ContainerItem;

    const-string v5, "video/mp4"

    const-string v6, "MotionPhoto"

    const-wide/16 v9, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Landroidx/media3/extractor/jpeg/MotionPhotoDescription$ContainerItem;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    invoke-static {p0, v0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 156
    :cond_1
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method private static parseMotionPhotoFlagFromDescription(Lorg/xmlpull/v1/XmlPullParser;)Z
    .locals 5

    sget-object v0, Landroidx/media3/extractor/jpeg/XmpMotionPhotoDescriptionParser;->MOTION_PHOTO_ATTRIBUTE_NAMES:[Ljava/lang/String;

    .line 117
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 118
    invoke-static {p0, v4}, Landroidx/media3/common/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 120
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v2, v0

    :cond_0
    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method private static parseMotionPhotoPresentationTimestampUsFromDescription(Lorg/xmlpull/v1/XmlPullParser;)J
    .locals 7

    sget-object v0, Landroidx/media3/extractor/jpeg/XmpMotionPhotoDescriptionParser;->DESCRIPTION_MOTION_PHOTO_PRESENTATION_TIMESTAMP_ATTRIBUTE_NAMES:[Ljava/lang/String;

    .line 128
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v2, v1, :cond_2

    aget-object v5, v0, v2

    .line 129
    invoke-static {p0, v5}, Landroidx/media3/common/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 131
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v5, -0x1

    cmp-long p0, v0, v5

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    move-wide v3, v0

    :goto_1
    return-wide v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-wide v3
.end method

.method private static parseMotionPhotoV1Directory(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/collect/ImmutableList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/extractor/jpeg/MotionPhotoDescription$ContainerItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":Item"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 165
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ":Directory"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 167
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 168
    invoke-static {p0, v1}, Landroidx/media3/common/util/XmlPullParserUtil;->isStartTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":Mime"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 170
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":Semantic"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 171
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":Length"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 172
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":Padding"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 173
    invoke-static {p0, v2}, Landroidx/media3/common/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 174
    invoke-static {p0, v3}, Landroidx/media3/common/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 175
    invoke-static {p0, v4}, Landroidx/media3/common/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 176
    invoke-static {p0, v5}, Landroidx/media3/common/util/XmlPullParserUtil;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v7, :cond_4

    if-nez v8, :cond_1

    goto :goto_2

    .line 181
    :cond_1
    new-instance v4, Landroidx/media3/extractor/jpeg/MotionPhotoDescription$ContainerItem;

    const-wide/16 v5, 0x0

    if-eqz v2, :cond_2

    .line 185
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    goto :goto_0

    :cond_2
    move-wide v9, v5

    :goto_0
    if-eqz v3, :cond_3

    .line 186
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    move-wide v11, v2

    goto :goto_1

    :cond_3
    move-wide v11, v5

    :goto_1
    move-object v6, v4

    invoke-direct/range {v6 .. v12}, Landroidx/media3/extractor/jpeg/MotionPhotoDescription$ContainerItem;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 181
    invoke-virtual {v0, v4}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_3

    .line 179
    :cond_4
    :goto_2
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0

    .line 188
    :cond_5
    :goto_3
    invoke-static {p0, p1}, Landroidx/media3/common/util/XmlPullParserUtil;->isEndTag(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 189
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method
