.class public abstract Lcom/google/common/escape/UnicodeEscaper;
.super Lcom/google/common/escape/Escaper;
.source "UnicodeEscaper.java"


# annotations
.annotation runtime Lcom/google/common/escape/ElementTypesAreNonnullByDefault;
.end annotation


# static fields
.field private static final DEST_PAD:I = 0x20


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/google/common/escape/Escaper;-><init>()V

    return-void
.end method

.method protected static codePointAt(Ljava/lang/CharSequence;II)I
    .locals 7

    .line 247
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-ge p1, p2, :cond_5

    add-int/lit8 v0, p1, 0x1

    .line 249
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const v2, 0xd800

    if-lt v1, v2, :cond_4

    const v2, 0xdfff

    if-le v1, v2, :cond_0

    goto/16 :goto_0

    :cond_0
    const v2, 0xdbff

    const-string v3, "\'"

    const-string v4, " in \'"

    const-string v5, " at index "

    const-string v6, "\' with value "

    if-gt v1, v2, :cond_3

    if-ne v0, p2, :cond_1

    neg-int p0, v1

    return p0

    .line 259
    :cond_1
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    .line 260
    invoke-static {p1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 261
    invoke-static {v1, p1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result p0

    return p0

    .line 263
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x59

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Expected low surrogate but got char \'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 274
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x58

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unexpected low surrogate character \'"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4
    :goto_0
    return v1

    .line 286
    :cond_5
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "Index exceeds specified range"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static growBuffer([CII)[C
    .locals 1

    if-ltz p2, :cond_1

    .line 297
    new-array p2, p2, [C

    if-lez p1, :cond_0

    const/4 v0, 0x0

    .line 299
    invoke-static {p0, v0, p2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object p2

    .line 295
    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "Cannot increase internal buffer any further"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method


# virtual methods
.method public escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 103
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    .line 105
    invoke-virtual {p0, p1, v1, v0}, Lcom/google/common/escape/UnicodeEscaper;->nextEscapeIndex(Ljava/lang/CharSequence;II)I

    move-result v1

    if-ne v1, v0, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/google/common/escape/UnicodeEscaper;->escapeSlow(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method protected abstract escape(I)[C
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end method

.method protected final escapeSlow(Ljava/lang/String;I)Ljava/lang/String;
    .locals 11

    .line 159
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 162
    invoke-static {}, Lcom/google/common/escape/Platform;->charBufferFromThreadLocal()[C

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge p2, v0, :cond_6

    .line 167
    invoke-static {p1, p2, v0}, Lcom/google/common/escape/UnicodeEscaper;->codePointAt(Ljava/lang/CharSequence;II)I

    move-result v5

    if-ltz v5, :cond_5

    .line 174
    invoke-virtual {p0, v5}, Lcom/google/common/escape/UnicodeEscaper;->escape(I)[C

    move-result-object v6

    .line 175
    invoke-static {v5}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x2

    goto :goto_1

    :cond_0
    const/4 v5, 0x1

    :goto_1
    add-int/2addr v5, p2

    if-eqz v6, :cond_4

    sub-int v7, p2, v3

    add-int v8, v4, v7

    .line 181
    array-length v9, v6

    add-int/2addr v9, v8

    .line 182
    array-length v10, v1

    if-ge v10, v9, :cond_1

    sub-int v10, v0, p2

    add-int/2addr v9, v10

    add-int/lit8 v9, v9, 0x20

    .line 184
    invoke-static {v1, v4, v9}, Lcom/google/common/escape/UnicodeEscaper;->growBuffer([CII)[C

    move-result-object v1

    :cond_1
    if-lez v7, :cond_2

    .line 188
    invoke-virtual {p1, v3, p2, v1, v4}, Ljava/lang/String;->getChars(II[CI)V

    move v4, v8

    .line 191
    :cond_2
    array-length p2, v6

    if-lez p2, :cond_3

    .line 192
    array-length p2, v6

    invoke-static {v6, v2, v1, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 193
    array-length p2, v6

    add-int/2addr v4, p2

    :cond_3
    move v3, v5

    .line 198
    :cond_4
    invoke-virtual {p0, p1, v5, v0}, Lcom/google/common/escape/UnicodeEscaper;->nextEscapeIndex(Ljava/lang/CharSequence;II)I

    move-result p2

    goto :goto_0

    .line 169
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trailing high surrogate at end of input"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    sub-int p0, v0, v3

    if-lez p0, :cond_8

    add-int/2addr p0, v4

    .line 206
    array-length p2, v1

    if-ge p2, p0, :cond_7

    .line 207
    invoke-static {v1, v4, p0}, Lcom/google/common/escape/UnicodeEscaper;->growBuffer([CII)[C

    move-result-object p2

    move-object v1, p2

    .line 209
    :cond_7
    invoke-virtual {p1, v3, v0, v1, v4}, Ljava/lang/String;->getChars(II[CI)V

    move v4, p0

    .line 212
    :cond_8
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v2, v4}, Ljava/lang/String;-><init>([CII)V

    return-object p0
.end method

.method protected nextEscapeIndex(Ljava/lang/CharSequence;II)I
    .locals 2

    :goto_0
    if-ge p2, p3, :cond_2

    .line 134
    invoke-static {p1, p2, p3}, Lcom/google/common/escape/UnicodeEscaper;->codePointAt(Ljava/lang/CharSequence;II)I

    move-result v0

    if-ltz v0, :cond_2

    .line 135
    invoke-virtual {p0, v0}, Lcom/google/common/escape/UnicodeEscaper;->escape(I)[C

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 138
    :cond_0
    invoke-static {v0}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    :goto_1
    add-int/2addr p2, v0

    goto :goto_0

    :cond_2
    :goto_2
    return p2
.end method
