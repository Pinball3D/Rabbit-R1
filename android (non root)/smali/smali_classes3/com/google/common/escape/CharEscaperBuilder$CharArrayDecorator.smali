.class Lcom/google/common/escape/CharEscaperBuilder$CharArrayDecorator;
.super Lcom/google/common/escape/CharEscaper;
.source "CharEscaperBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/escape/CharEscaperBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CharArrayDecorator"
.end annotation


# instance fields
.field private final replaceLength:I

.field private final replacements:[[C


# direct methods
.method constructor <init>([[C)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/google/common/escape/CharEscaper;-><init>()V

    iput-object p1, p0, Lcom/google/common/escape/CharEscaperBuilder$CharArrayDecorator;->replacements:[[C

    .line 49
    array-length p1, p1

    iput p1, p0, Lcom/google/common/escape/CharEscaperBuilder$CharArrayDecorator;->replaceLength:I

    return-void
.end method


# virtual methods
.method public escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 58
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 60
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iget-object v3, p0, Lcom/google/common/escape/CharEscaperBuilder$CharArrayDecorator;->replacements:[[C

    .line 61
    array-length v4, v3

    if-ge v2, v4, :cond_0

    aget-object v2, v3, v2

    if-eqz v2, :cond_0

    .line 62
    invoke-virtual {p0, p1, v1}, Lcom/google/common/escape/CharEscaperBuilder$CharArrayDecorator;->escapeSlow(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method protected escape(C)[C
    .locals 1
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget v0, p0, Lcom/google/common/escape/CharEscaperBuilder$CharArrayDecorator;->replaceLength:I

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lcom/google/common/escape/CharEscaperBuilder$CharArrayDecorator;->replacements:[[C

    .line 71
    aget-object p0, p0, p1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
