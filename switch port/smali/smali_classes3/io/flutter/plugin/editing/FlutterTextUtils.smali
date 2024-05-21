.class Lio/flutter/plugin/editing/FlutterTextUtils;
.super Ljava/lang/Object;
.source "FlutterTextUtils.java"


# static fields
.field public static final CANCEL_TAG:I = 0xe007f

.field public static final CARRIAGE_RETURN:I = 0xd

.field public static final COMBINING_ENCLOSING_KEYCAP:I = 0x20e3

.field public static final LINE_FEED:I = 0xa

.field public static final ZERO_WIDTH_JOINER:I = 0x200d


# instance fields
.field private final flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;


# direct methods
.method public constructor <init>(Lio/flutter/embedding/engine/FlutterJNI;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/plugin/editing/FlutterTextUtils;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    return-void
.end method


# virtual methods
.method public getOffsetAfter(Ljava/lang/CharSequence;I)I
    .locals 9

    .line 198
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    if-lt p2, v1, :cond_0

    return v0

    .line 204
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 205
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int v4, p2, v3

    const/4 v5, 0x0

    if-nez v4, :cond_1

    return v5

    :cond_1
    const/16 v6, 0xa

    if-ne v2, v6, :cond_3

    .line 214
    invoke-static {p1, v4}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result p0

    const/16 p1, 0xd

    if-ne p0, p1, :cond_2

    add-int/lit8 v3, v3, 0x1

    :cond_2
    add-int/2addr p2, v3

    return p2

    .line 222
    :cond_3
    invoke-virtual {p0, v2}, Lio/flutter/plugin/editing/FlutterTextUtils;->isRegionalIndicatorSymbol(I)Z

    move-result v6

    if-eqz v6, :cond_8

    if-ge v4, v1, :cond_7

    .line 224
    invoke-static {p1, v4}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lio/flutter/plugin/editing/FlutterTextUtils;->isRegionalIndicatorSymbol(I)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    move v0, p2

    :goto_0
    if-lez v0, :cond_5

    .line 234
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lio/flutter/plugin/editing/FlutterTextUtils;->isRegionalIndicatorSymbol(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 235
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 238
    :cond_5
    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_6

    add-int/lit8 v3, v3, 0x2

    :cond_6
    add-int/2addr p2, v3

    return p2

    :cond_7
    :goto_1
    return v4

    .line 245
    :cond_8
    invoke-virtual {p0, v2}, Lio/flutter/plugin/editing/FlutterTextUtils;->isKeycapBase(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 246
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr v3, v1

    :cond_9
    const/16 v1, 0x20e3

    if-ne v2, v1, :cond_c

    .line 249
    invoke-static {p1, v4}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 250
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v4, v2

    if-ge v4, v0, :cond_a

    .line 251
    invoke-virtual {p0, v1}, Lio/flutter/plugin/editing/FlutterTextUtils;->isVariationSelector(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 252
    invoke-static {p1, v4}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result p1

    .line 253
    invoke-virtual {p0, p1}, Lio/flutter/plugin/editing/FlutterTextUtils;->isKeycapBase(I)Z

    move-result p0

    if-eqz p0, :cond_b

    .line 254
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result p0

    invoke-static {p1}, Ljava/lang/Character;->charCount(I)I

    move-result p1

    add-int/2addr p0, p1

    goto :goto_2

    .line 256
    :cond_a
    invoke-virtual {p0, v1}, Lio/flutter/plugin/editing/FlutterTextUtils;->isKeycapBase(I)Z

    move-result p0

    if-eqz p0, :cond_b

    .line 257
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result p0

    :goto_2
    add-int/2addr v3, p0

    :cond_b
    add-int/2addr p2, v3

    return p2

    .line 262
    :cond_c
    invoke-virtual {p0, v2}, Lio/flutter/plugin/editing/FlutterTextUtils;->isEmoji(I)Z

    move-result v6

    if-eqz v6, :cond_18

    move v6, v5

    move v7, v6

    :cond_d
    const/4 v8, 0x1

    if-eqz v6, :cond_e

    .line 267
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    add-int/2addr v6, v7

    add-int/2addr v6, v8

    add-int/2addr v3, v6

    move v6, v5

    .line 271
    :cond_e
    invoke-virtual {p0, v2}, Lio/flutter/plugin/editing/FlutterTextUtils;->isEmojiModifier(I)Z

    move-result v7

    if-eqz v7, :cond_f

    goto/16 :goto_7

    :cond_f
    if-ge v4, v0, :cond_16

    .line 276
    invoke-static {p1, v4}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 277
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v7

    add-int/2addr v4, v7

    if-ne v2, v1, :cond_12

    .line 279
    invoke-static {p1, v4}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 280
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v4, v2

    if-ge v4, v0, :cond_10

    .line 281
    invoke-virtual {p0, v1}, Lio/flutter/plugin/editing/FlutterTextUtils;->isVariationSelector(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 282
    invoke-static {p1, v4}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result p1

    .line 283
    invoke-virtual {p0, p1}, Lio/flutter/plugin/editing/FlutterTextUtils;->isKeycapBase(I)Z

    move-result p0

    if-eqz p0, :cond_11

    .line 284
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result p0

    invoke-static {p1}, Ljava/lang/Character;->charCount(I)I

    move-result p1

    add-int/2addr p0, p1

    goto :goto_3

    .line 286
    :cond_10
    invoke-virtual {p0, v1}, Lio/flutter/plugin/editing/FlutterTextUtils;->isKeycapBase(I)Z

    move-result p0

    if-eqz p0, :cond_11

    .line 287
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result p0

    :goto_3
    add-int/2addr v3, p0

    :cond_11
    add-int/2addr p2, v3

    return p2

    .line 291
    :cond_12
    invoke-virtual {p0, v2}, Lio/flutter/plugin/editing/FlutterTextUtils;->isEmojiModifier(I)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 292
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result p0

    :goto_4
    add-int/2addr v3, p0

    goto :goto_7

    .line 295
    :cond_13
    invoke-virtual {p0, v2}, Lio/flutter/plugin/editing/FlutterTextUtils;->isVariationSelector(I)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 296
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result p0

    goto :goto_4

    :cond_14
    const/16 v7, 0x200d

    if-ne v2, v7, :cond_16

    .line 301
    invoke-static {p1, v4}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 302
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    add-int/2addr v4, v6

    if-ge v4, v0, :cond_15

    .line 303
    invoke-virtual {p0, v2}, Lio/flutter/plugin/editing/FlutterTextUtils;->isVariationSelector(I)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 304
    invoke-static {p1, v4}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 305
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    .line 306
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v7

    add-int/2addr v4, v7

    move v7, v6

    goto :goto_5

    :cond_15
    move v7, v5

    :goto_5
    move v6, v8

    goto :goto_6

    :cond_16
    move v7, v5

    :goto_6
    if-lt v4, v0, :cond_17

    goto :goto_7

    :cond_17
    if-eqz v6, :cond_18

    .line 314
    invoke-virtual {p0, v2}, Lio/flutter/plugin/editing/FlutterTextUtils;->isEmoji(I)Z

    move-result v8

    if-nez v8, :cond_d

    :cond_18
    :goto_7
    add-int/2addr p2, v3

    return p2
.end method

.method public getOffsetBefore(Ljava/lang/CharSequence;I)I
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gt p2, v1, :cond_0

    return v0

    .line 62
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 63
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    sub-int v4, p2, v3

    if-nez v4, :cond_1

    return v0

    :cond_1
    const/16 v5, 0xa

    if-ne v2, v5, :cond_3

    .line 72
    invoke-static {p1, v4}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result p0

    const/16 p1, 0xd

    if-ne p0, p1, :cond_2

    add-int/lit8 v3, v3, 0x1

    :cond_2
    sub-int/2addr p2, v3

    return p2

    .line 80
    :cond_3
    invoke-virtual {p0, v2}, Lio/flutter/plugin/editing/FlutterTextUtils;->isRegionalIndicatorSymbol(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 81
    invoke-static {p1, v4}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 82
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    sub-int/2addr v4, v2

    :goto_0
    if-lez v4, :cond_4

    .line 84
    invoke-virtual {p0, v0}, Lio/flutter/plugin/editing/FlutterTextUtils;->isRegionalIndicatorSymbol(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 85
    invoke-static {p1, v4}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 86
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    sub-int/2addr v4, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 89
    :cond_4
    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_5

    add-int/lit8 v3, v3, 0x2

    :cond_5
    sub-int/2addr p2, v3

    return p2

    :cond_6
    const/16 v5, 0x20e3

    if-ne v2, v5, :cond_9

    .line 97
    invoke-static {p1, v4}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 98
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    sub-int/2addr v4, v1

    if-lez v4, :cond_7

    .line 99
    invoke-virtual {p0, v0}, Lio/flutter/plugin/editing/FlutterTextUtils;->isVariationSelector(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 100
    invoke-static {p1, v4}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result p1

    .line 101
    invoke-virtual {p0, p1}, Lio/flutter/plugin/editing/FlutterTextUtils;->isKeycapBase(I)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 102
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result p0

    invoke-static {p1}, Ljava/lang/Character;->charCount(I)I

    move-result p1

    add-int/2addr p0, p1

    goto :goto_1

    .line 104
    :cond_7
    invoke-virtual {p0, v0}, Lio/flutter/plugin/editing/FlutterTextUtils;->isKeycapBase(I)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 105
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result p0

    :goto_1
    add-int/2addr v3, p0

    :cond_8
    sub-int/2addr p2, v3

    return p2

    :cond_9
    const v5, 0xe007f

    if-ne v2, v5, :cond_c

    .line 117
    invoke-static {p1, v4}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 118
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    :goto_2
    sub-int/2addr v4, v5

    if-lez v4, :cond_a

    .line 119
    invoke-virtual {p0, v2}, Lio/flutter/plugin/editing/FlutterTextUtils;->isTagSpecChar(I)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 120
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v3, v2

    .line 121
    invoke-static {p1, v4}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 122
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    goto :goto_2

    .line 124
    :cond_a
    invoke-virtual {p0, v2}, Lio/flutter/plugin/editing/FlutterTextUtils;->isEmoji(I)Z

    move-result v5

    if-nez v5, :cond_b

    add-int/lit8 p2, p2, -0x2

    return p2

    .line 127
    :cond_b
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v3, v5

    .line 130
    :cond_c
    invoke-virtual {p0, v2}, Lio/flutter/plugin/editing/FlutterTextUtils;->isVariationSelector(I)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 131
    invoke-static {p1, v4}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 132
    invoke-virtual {p0, v2}, Lio/flutter/plugin/editing/FlutterTextUtils;->isEmoji(I)Z

    move-result v5

    if-nez v5, :cond_d

    sub-int/2addr p2, v3

    return p2

    .line 135
    :cond_d
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v3, v5

    sub-int/2addr v4, v3

    .line 140
    :cond_e
    invoke-virtual {p0, v2}, Lio/flutter/plugin/editing/FlutterTextUtils;->isEmoji(I)Z

    move-result v5

    if-eqz v5, :cond_17

    move v5, v0

    move v6, v5

    :cond_f
    if-eqz v5, :cond_10

    .line 145
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v5, v6

    add-int/2addr v5, v1

    add-int/2addr v3, v5

    move v5, v0

    .line 149
    :cond_10
    invoke-virtual {p0, v2}, Lio/flutter/plugin/editing/FlutterTextUtils;->isEmojiModifier(I)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 150
    invoke-static {p1, v4}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 151
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    sub-int/2addr v4, v2

    if-lez v4, :cond_12

    .line 152
    invoke-virtual {p0, v1}, Lio/flutter/plugin/editing/FlutterTextUtils;->isVariationSelector(I)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 153
    invoke-static {p1, v4}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 154
    invoke-virtual {p0, v1}, Lio/flutter/plugin/editing/FlutterTextUtils;->isEmoji(I)Z

    move-result p1

    if-nez p1, :cond_11

    sub-int/2addr p2, v3

    return p2

    .line 157
    :cond_11
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    .line 158
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    .line 160
    :cond_12
    invoke-virtual {p0, v1}, Lio/flutter/plugin/editing/FlutterTextUtils;->isEmojiModifierBase(I)Z

    move-result p0

    if-eqz p0, :cond_17

    .line 161
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result p0

    add-int/2addr v0, p0

    add-int/2addr v3, v0

    goto :goto_5

    :cond_13
    if-lez v4, :cond_15

    .line 167
    invoke-static {p1, v4}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 168
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    sub-int/2addr v4, v6

    const/16 v6, 0x200d

    if-ne v2, v6, :cond_15

    .line 171
    invoke-static {p1, v4}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 172
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    sub-int/2addr v4, v5

    if-lez v4, :cond_14

    .line 173
    invoke-virtual {p0, v2}, Lio/flutter/plugin/editing/FlutterTextUtils;->isVariationSelector(I)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 174
    invoke-static {p1, v4}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 175
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    .line 176
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    sub-int/2addr v4, v6

    move v6, v5

    goto :goto_3

    :cond_14
    move v6, v0

    :goto_3
    move v5, v1

    goto :goto_4

    :cond_15
    move v6, v0

    :goto_4
    if-nez v4, :cond_16

    goto :goto_5

    :cond_16
    if-eqz v5, :cond_17

    .line 184
    invoke-virtual {p0, v2}, Lio/flutter/plugin/editing/FlutterTextUtils;->isEmoji(I)Z

    move-result v7

    if-nez v7, :cond_f

    :cond_17
    :goto_5
    sub-int/2addr p2, v3

    return p2
.end method

.method public isEmoji(I)Z
    .locals 0

    iget-object p0, p0, Lio/flutter/plugin/editing/FlutterTextUtils;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    .line 22
    invoke-virtual {p0, p1}, Lio/flutter/embedding/engine/FlutterJNI;->isCodePointEmoji(I)Z

    move-result p0

    return p0
.end method

.method public isEmojiModifier(I)Z
    .locals 0

    iget-object p0, p0, Lio/flutter/plugin/editing/FlutterTextUtils;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    .line 26
    invoke-virtual {p0, p1}, Lio/flutter/embedding/engine/FlutterJNI;->isCodePointEmojiModifier(I)Z

    move-result p0

    return p0
.end method

.method public isEmojiModifierBase(I)Z
    .locals 0

    iget-object p0, p0, Lio/flutter/plugin/editing/FlutterTextUtils;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    .line 30
    invoke-virtual {p0, p1}, Lio/flutter/embedding/engine/FlutterJNI;->isCodePointEmojiModifierBase(I)Z

    move-result p0

    return p0
.end method

.method public isKeycapBase(I)Z
    .locals 0

    const/16 p0, 0x30

    if-gt p0, p1, :cond_0

    const/16 p0, 0x39

    if-le p1, p0, :cond_2

    :cond_0
    const/16 p0, 0x23

    if-eq p1, p0, :cond_2

    const/16 p0, 0x2a

    if-ne p1, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isRegionalIndicatorSymbol(I)Z
    .locals 0

    iget-object p0, p0, Lio/flutter/plugin/editing/FlutterTextUtils;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    .line 38
    invoke-virtual {p0, p1}, Lio/flutter/embedding/engine/FlutterJNI;->isCodePointRegionalIndicator(I)Z

    move-result p0

    return p0
.end method

.method public isTagSpecChar(I)Z
    .locals 0

    const p0, 0xe0020

    if-gt p0, p1, :cond_0

    const p0, 0xe007e

    if-gt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isVariationSelector(I)Z
    .locals 0

    iget-object p0, p0, Lio/flutter/plugin/editing/FlutterTextUtils;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    .line 34
    invoke-virtual {p0, p1}, Lio/flutter/embedding/engine/FlutterJNI;->isCodePointVariantSelector(I)Z

    move-result p0

    return p0
.end method
