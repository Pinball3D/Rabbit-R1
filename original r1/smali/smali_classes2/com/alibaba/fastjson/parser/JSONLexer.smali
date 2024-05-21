.class public final Lcom/alibaba/fastjson/parser/JSONLexer;
.super Ljava/lang/Object;
.source "JSONLexer.java"


# static fields
.field public static final CA:[C

.field public static final END:I = 0x4

.field public static final EOI:C = '\u001a'

.field static final IA:[I

.field public static final NOT_MATCH:I = -0x1

.field public static final NOT_MATCH_NAME:I = -0x2

.field public static final UNKNOWN:I = 0x0

.field private static V6:Z = false

.field public static final VALUE:I = 0x3

.field protected static final digits:[I

.field public static final firstIdentifierFlags:[Z

.field public static final identifierFlags:[Z

.field private static final sbufLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[C>;"
        }
    .end annotation
.end field


# instance fields
.field protected bp:I

.field public calendar:Ljava/util/Calendar;

.field protected ch:C

.field public disableCircularReferenceDetect:Z

.field protected eofPos:I

.field protected exp:Z

.field public features:I

.field protected fieldHash:J

.field protected hasSpecial:Z

.field protected isDouble:Z

.field protected final len:I

.field public locale:Ljava/util/Locale;

.field public matchStat:I

.field protected np:I

.field protected pos:I

.field protected sbuf:[C

.field protected sp:I

.field protected stringDefaultValue:Ljava/lang/String;

.field protected final text:Ljava/lang/String;

.field public timeZone:Ljava/util/TimeZone;

.field protected token:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    const-string v2, "android.os.Build$VERSION"

    .line 39
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "SDK_INT"

    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x0

    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    move v2, v1

    goto :goto_0

    :catch_0
    :cond_0
    move v2, v0

    :goto_0
    sput-boolean v2, Lcom/alibaba/fastjson/parser/JSONLexer;->V6:Z

    .line 79
    new-instance v2, Ljava/lang/ThreadLocal;

    invoke-direct {v2}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v2, Lcom/alibaba/fastjson/parser/JSONLexer;->sbufLocal:Ljava/lang/ThreadLocal;

    const/16 v2, 0x67

    new-array v2, v2, [I

    sput-object v2, Lcom/alibaba/fastjson/parser/JSONLexer;->digits:[I

    const/16 v2, 0x30

    move v3, v2

    :goto_1
    const/16 v4, 0x39

    if-gt v3, v4, :cond_1

    sget-object v4, Lcom/alibaba/fastjson/parser/JSONLexer;->digits:[I

    add-int/lit8 v5, v3, -0x30

    .line 1990
    aput v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/16 v3, 0x61

    move v5, v3

    :goto_2
    const/16 v6, 0x66

    if-gt v5, v6, :cond_2

    sget-object v6, Lcom/alibaba/fastjson/parser/JSONLexer;->digits:[I

    add-int/lit8 v7, v5, -0x57

    .line 1994
    aput v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    const/16 v5, 0x41

    move v6, v5

    :goto_3
    const/16 v7, 0x46

    if-gt v6, v7, :cond_3

    sget-object v7, Lcom/alibaba/fastjson/parser/JSONLexer;->digits:[I

    add-int/lit8 v8, v6, -0x37

    .line 1997
    aput v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_3
    const-string v6, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    .line 4759
    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    sput-object v6, Lcom/alibaba/fastjson/parser/JSONLexer;->CA:[C

    const/16 v7, 0x100

    new-array v8, v7, [I

    sput-object v8, Lcom/alibaba/fastjson/parser/JSONLexer;->IA:[I

    const/4 v9, -0x1

    .line 4762
    invoke-static {v8, v9}, Ljava/util/Arrays;->fill([II)V

    .line 4763
    array-length v6, v6

    move v8, v0

    :goto_4
    if-ge v8, v6, :cond_4

    sget-object v9, Lcom/alibaba/fastjson/parser/JSONLexer;->IA:[I

    sget-object v10, Lcom/alibaba/fastjson/parser/JSONLexer;->CA:[C

    .line 4764
    aget-char v10, v10, v8

    aput v8, v9, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_4
    sget-object v6, Lcom/alibaba/fastjson/parser/JSONLexer;->IA:[I

    const/16 v8, 0x3d

    .line 4766
    aput v0, v6, v8

    new-array v6, v7, [Z

    sput-object v6, Lcom/alibaba/fastjson/parser/JSONLexer;->firstIdentifierFlags:[Z

    move v6, v0

    :goto_5
    sget-object v8, Lcom/alibaba/fastjson/parser/JSONLexer;->firstIdentifierFlags:[Z

    .line 4827
    array-length v9, v8

    const/16 v10, 0x7a

    const/16 v11, 0x5f

    const/16 v12, 0x5a

    if-ge v6, v9, :cond_8

    if-lt v6, v5, :cond_5

    if-gt v6, v12, :cond_5

    .line 4829
    aput-boolean v1, v8, v6

    goto :goto_6

    :cond_5
    if-lt v6, v3, :cond_6

    if-gt v6, v10, :cond_6

    .line 4831
    aput-boolean v1, v8, v6

    goto :goto_6

    :cond_6
    if-ne v6, v11, :cond_7

    .line 4833
    aput-boolean v1, v8, v6

    :cond_7
    :goto_6
    add-int/lit8 v6, v6, 0x1

    int-to-char v6, v6

    goto :goto_5

    :cond_8
    new-array v6, v7, [Z

    sput-object v6, Lcom/alibaba/fastjson/parser/JSONLexer;->identifierFlags:[Z

    :goto_7
    sget-object v6, Lcom/alibaba/fastjson/parser/JSONLexer;->identifierFlags:[Z

    .line 4841
    array-length v7, v6

    if-ge v0, v7, :cond_d

    if-lt v0, v5, :cond_9

    if-gt v0, v12, :cond_9

    .line 4843
    aput-boolean v1, v6, v0

    goto :goto_8

    :cond_9
    if-lt v0, v3, :cond_a

    if-gt v0, v10, :cond_a

    .line 4845
    aput-boolean v1, v6, v0

    goto :goto_8

    :cond_a
    if-ne v0, v11, :cond_b

    .line 4847
    aput-boolean v1, v6, v0

    goto :goto_8

    :cond_b
    if-lt v0, v2, :cond_c

    if-gt v0, v4, :cond_c

    .line 4849
    aput-boolean v1, v6, v0

    :cond_c
    :goto_8
    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    goto :goto_7

    :cond_d
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 90
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 5

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->exp:Z

    iput-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->isDouble:Z

    .line 73
    sget-object v1, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    iput-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->timeZone:Ljava/util/TimeZone;

    .line 74
    sget-object v1, Lcom/alibaba/fastjson/JSON;->defaultLocale:Ljava/util/Locale;

    iput-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->locale:Ljava/util/Locale;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    sget-object v2, Lcom/alibaba/fastjson/parser/JSONLexer;->sbufLocal:Ljava/lang/ThreadLocal;

    .line 102
    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [C

    iput-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    if-nez v2, :cond_0

    const/16 v2, 0x200

    new-array v2, v2, [C

    iput-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    :cond_0
    iput p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    iput-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    const/4 v3, -0x1

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    if-lt v3, v2, :cond_1

    const/16 p1, 0x1a

    goto :goto_0

    .line 119
    :cond_1
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    :goto_0
    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const v2, 0xfeff

    if-ne p1, v2, :cond_2

    .line 122
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 125
    :cond_2
    sget-object p1, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    iget p1, p1, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr p1, p2

    if-eqz p1, :cond_3

    const-string v1, ""

    :cond_3
    iput-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->stringDefaultValue:Ljava/lang/String;

    .line 128
    sget-object p1, Lcom/alibaba/fastjson/parser/Feature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/parser/Feature;

    iget p1, p1, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr p1, p2

    if-eqz p1, :cond_4

    move v0, v4

    :cond_4
    iput-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->disableCircularReferenceDetect:Z

    return-void
.end method

.method public constructor <init>([CI)V
    .locals 1

    .line 94
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;-><init>([CII)V

    return-void
.end method

.method public constructor <init>([CII)V
    .locals 2

    .line 98
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {p0, v0, p3}, Lcom/alibaba/fastjson/parser/JSONLexer;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static checkDate(CCCCCCII)Z
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x31

    if-lt p0, v1, :cond_d

    const/16 v2, 0x33

    if-le p0, v2, :cond_0

    goto :goto_1

    :cond_0
    const/16 p0, 0x30

    if-lt p1, p0, :cond_d

    const/16 v3, 0x39

    if-le p1, v3, :cond_1

    goto :goto_1

    :cond_1
    if-lt p2, p0, :cond_d

    if-le p2, v3, :cond_2

    goto :goto_1

    :cond_2
    if-lt p3, p0, :cond_d

    if-le p3, v3, :cond_3

    goto :goto_1

    :cond_3
    const/16 p1, 0x32

    if-ne p4, p0, :cond_5

    if-lt p5, v1, :cond_4

    if-le p5, v3, :cond_6

    :cond_4
    return v0

    :cond_5
    if-ne p4, v1, :cond_d

    if-eq p5, p0, :cond_6

    if-eq p5, v1, :cond_6

    if-eq p5, p1, :cond_6

    return v0

    :cond_6
    if-ne p6, p0, :cond_8

    if-lt p7, v1, :cond_7

    if-le p7, v3, :cond_c

    :cond_7
    return v0

    :cond_8
    if-eq p6, v1, :cond_b

    if-ne p6, p1, :cond_9

    goto :goto_0

    :cond_9
    if-ne p6, v2, :cond_a

    if-eq p7, p0, :cond_c

    if-eq p7, v1, :cond_c

    :cond_a
    return v0

    :cond_b
    :goto_0
    if-lt p7, p0, :cond_d

    if-le p7, v3, :cond_c

    goto :goto_1

    :cond_c
    const/4 p0, 0x1

    return p0

    :cond_d
    :goto_1
    return v0
.end method

.method static checkTime(CCCCCC)Z
    .locals 4

    const/16 v0, 0x39

    const/4 v1, 0x0

    const/16 v2, 0x30

    if-ne p0, v2, :cond_1

    if-lt p1, v2, :cond_0

    if-le p1, v0, :cond_4

    :cond_0
    return v1

    :cond_1
    const/16 v3, 0x31

    if-ne p0, v3, :cond_3

    if-lt p1, v2, :cond_2

    if-le p1, v0, :cond_4

    :cond_2
    return v1

    :cond_3
    const/16 v3, 0x32

    if-ne p0, v3, :cond_b

    if-lt p1, v2, :cond_b

    const/16 p0, 0x34

    if-le p1, p0, :cond_4

    goto :goto_0

    :cond_4
    const/16 p0, 0x35

    const/16 p1, 0x36

    if-lt p2, v2, :cond_6

    if-gt p2, p0, :cond_6

    if-lt p3, v2, :cond_5

    if-le p3, v0, :cond_7

    :cond_5
    return v1

    :cond_6
    if-ne p2, p1, :cond_b

    if-eq p3, v2, :cond_7

    return v1

    :cond_7
    if-lt p4, v2, :cond_9

    if-gt p4, p0, :cond_9

    if-lt p5, v2, :cond_8

    if-le p5, v0, :cond_a

    :cond_8
    return v1

    :cond_9
    if-ne p4, p1, :cond_b

    if-eq p5, v2, :cond_a

    return v1

    :cond_a
    const/4 p0, 0x1

    return p0

    :cond_b
    :goto_0
    return v1
.end method

.method public static final decodeFast(Ljava/lang/String;II)[B
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p2

    const/4 v2, 0x0

    if-nez v1, :cond_0

    new-array v0, v2, [B

    return-object v0

    :cond_0
    add-int v3, p1, v1

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    move/from16 v5, p1

    :goto_0
    if-ge v5, v3, :cond_1

    sget-object v6, Lcom/alibaba/fastjson/parser/JSONLexer;->IA:[I

    .line 4778
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    aget v6, v6, v7

    if-gez v6, :cond_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-lez v3, :cond_2

    sget-object v6, Lcom/alibaba/fastjson/parser/JSONLexer;->IA:[I

    .line 4782
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    aget v6, v6, v7

    if-gez v6, :cond_2

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 4786
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x3d

    if-ne v6, v7, :cond_4

    add-int/lit8 v6, v3, -0x1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v7, :cond_3

    const/4 v6, 0x2

    goto :goto_2

    :cond_3
    move v6, v4

    goto :goto_2

    :cond_4
    move v6, v2

    :goto_2
    sub-int v7, v3, v5

    add-int/2addr v7, v4

    const/16 v8, 0x4c

    if-le v1, v8, :cond_6

    .line 4788
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v8, 0xd

    if-ne v1, v8, :cond_5

    div-int/lit8 v1, v7, 0x4e

    goto :goto_3

    :cond_5
    move v1, v2

    :goto_3
    shl-int/2addr v1, v4

    goto :goto_4

    :cond_6
    move v1, v2

    :goto_4
    sub-int/2addr v7, v1

    mul-int/lit8 v7, v7, 0x6

    shr-int/lit8 v7, v7, 0x3

    sub-int/2addr v7, v6

    .line 4791
    new-array v8, v7, [B

    .line 4795
    div-int/lit8 v9, v7, 0x3

    mul-int/lit8 v9, v9, 0x3

    move v10, v2

    move v11, v10

    :goto_5
    if-ge v10, v9, :cond_8

    sget-object v12, Lcom/alibaba/fastjson/parser/JSONLexer;->IA:[I

    add-int/lit8 v13, v5, 0x1

    .line 4797
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v14

    aget v14, v12, v14

    shl-int/lit8 v14, v14, 0x12

    add-int/lit8 v15, v5, 0x2

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    aget v13, v12, v13

    shl-int/lit8 v13, v13, 0xc

    or-int/2addr v13, v14

    add-int/lit8 v14, v5, 0x3

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    aget v15, v12, v15

    shl-int/lit8 v15, v15, 0x6

    or-int/2addr v13, v15

    add-int/lit8 v15, v5, 0x4

    .line 4798
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    aget v12, v12, v14

    or-int/2addr v12, v13

    add-int/lit8 v13, v10, 0x1

    shr-int/lit8 v14, v12, 0x10

    int-to-byte v14, v14

    .line 4801
    aput-byte v14, v8, v10

    add-int/lit8 v14, v10, 0x2

    shr-int/lit8 v2, v12, 0x8

    int-to-byte v2, v2

    .line 4802
    aput-byte v2, v8, v13

    add-int/lit8 v10, v10, 0x3

    int-to-byte v2, v12

    .line 4803
    aput-byte v2, v8, v14

    if-lez v1, :cond_7

    add-int/lit8 v11, v11, 0x1

    const/16 v2, 0x13

    if-ne v11, v2, :cond_7

    add-int/lit8 v5, v5, 0x6

    const/4 v11, 0x0

    goto :goto_6

    :cond_7
    move v5, v15

    :goto_6
    const/4 v2, 0x0

    goto :goto_5

    :cond_8
    if-ge v10, v7, :cond_a

    const/4 v2, 0x0

    const/16 v16, 0x0

    :goto_7
    sub-int v1, v3, v6

    if-gt v5, v1, :cond_9

    sget-object v1, Lcom/alibaba/fastjson/parser/JSONLexer;->IA:[I

    add-int/lit8 v9, v5, 0x1

    .line 4816
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aget v1, v1, v5

    mul-int/lit8 v5, v16, 0x6

    rsub-int/lit8 v5, v5, 0x12

    shl-int/2addr v1, v5

    or-int/2addr v2, v1

    add-int/lit8 v16, v16, 0x1

    move v5, v9

    goto :goto_7

    :cond_9
    const/16 v0, 0x10

    :goto_8
    if-ge v10, v7, :cond_a

    add-int/lit8 v1, v10, 0x1

    shr-int v3, v2, v0

    int-to-byte v3, v3

    .line 4819
    aput-byte v3, v8, v10

    add-int/lit8 v0, v0, -0x8

    move v10, v1

    goto :goto_8

    :cond_a
    return-object v8
.end method

.method private matchFieldHash(J)I
    .locals 16

    move-object/from16 v0, p0

    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/4 v2, 0x1

    move v3, v2

    :goto_0
    const/16 v4, 0x22

    const/4 v7, 0x0

    const/4 v8, -0x2

    const/16 v9, 0x9

    const/16 v10, 0xd

    const/16 v11, 0xa

    const/16 v13, 0x20

    if-ne v1, v4, :cond_0

    goto :goto_1

    :cond_0
    const/16 v4, 0x27

    if-ne v1, v4, :cond_9

    :goto_1
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v4, v3

    const-wide v14, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    :goto_2
    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-ge v4, v12, :cond_2

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2128
    invoke-virtual {v12, v4}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-ne v12, v1, :cond_1

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v4, v1

    sub-int/2addr v4, v3

    add-int/2addr v3, v4

    goto :goto_3

    :cond_1
    int-to-long v5, v12

    xor-long/2addr v5, v14

    const-wide v14, 0x100000001b3L

    mul-long/2addr v14, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    cmp-long v1, v14, p1

    if-eqz v1, :cond_3

    iput-wide v14, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    iput v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return v7

    :cond_3
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v3, v2

    add-int/2addr v1, v3

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v4, :cond_4

    const/16 v1, 0x1a

    goto :goto_4

    :cond_4
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2148
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_4
    const/16 v4, 0x3a

    if-ne v1, v4, :cond_5

    add-int/2addr v3, v2

    return v3

    :cond_5
    if-gt v1, v13, :cond_8

    if-eq v1, v13, :cond_6

    if-eq v1, v11, :cond_6

    if-eq v1, v10, :cond_6

    if-eq v1, v9, :cond_6

    const/16 v4, 0xc

    if-eq v1, v4, :cond_6

    const/16 v4, 0x8

    if-ne v1, v4, :cond_8

    :cond_6
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v3, 0x1

    add-int/2addr v1, v3

    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v3, :cond_7

    const/16 v1, 0x1a

    goto :goto_5

    :cond_7
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2165
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_5
    move v3, v4

    goto :goto_4

    .line 2169
    :cond_8
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "match feild error expect \':\'"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    if-eq v1, v13, :cond_b

    if-eq v1, v11, :cond_b

    if-eq v1, v10, :cond_b

    if-eq v1, v9, :cond_b

    const/16 v4, 0xc

    if-eq v1, v4, :cond_b

    const/16 v4, 0x8

    if-ne v1, v4, :cond_a

    goto :goto_6

    :cond_a
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    iput v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return v7

    :cond_b
    :goto_6
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v3, 0x1

    add-int/2addr v1, v3

    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v3, :cond_c

    const/16 v1, 0x1a

    goto :goto_7

    :cond_c
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2118
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_7
    move v3, v4

    goto/16 :goto_0
.end method

.method private static readString([CI)Ljava/lang/String;
    .locals 12

    .line 825
    new-array v0, p1, [C

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, p1, :cond_9

    .line 828
    aget-char v4, p0, v2

    const/16 v5, 0x5c

    const/4 v6, 0x1

    if-eq v4, v5, :cond_0

    add-int/lit8 v5, v3, 0x1

    .line 831
    aput-char v4, v0, v3

    move v3, v5

    goto/16 :goto_3

    :cond_0
    add-int/lit8 v4, v2, 0x1

    .line 834
    aget-char v7, p0, v4

    const/16 v8, 0x22

    if-eq v7, v8, :cond_8

    const/16 v8, 0x27

    if-eq v7, v8, :cond_7

    const/16 v8, 0x46

    if-eq v7, v8, :cond_6

    if-eq v7, v5, :cond_5

    const/16 v5, 0x62

    if-eq v7, v5, :cond_4

    const/16 v5, 0x66

    if-eq v7, v5, :cond_6

    const/16 v5, 0x6e

    if-eq v7, v5, :cond_3

    const/16 v5, 0x72

    if-eq v7, v5, :cond_2

    const/16 v5, 0x78

    const/16 v8, 0x10

    if-eq v7, v5, :cond_1

    const/4 v5, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    packed-switch v7, :pswitch_data_0

    packed-switch v7, :pswitch_data_1

    .line 903
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    const-string p1, "unclosed.str.lit"

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    add-int/lit8 v2, v3, 0x1

    const/16 v5, 0xb

    .line 871
    aput-char v5, v0, v3

    goto/16 :goto_2

    :pswitch_1
    add-int/lit8 v4, v3, 0x1

    .line 896
    new-instance v7, Ljava/lang/String;

    new-array v5, v5, [C

    add-int/lit8 v11, v2, 0x2

    aget-char v11, p0, v11

    aput-char v11, v5, v1

    add-int/lit8 v11, v2, 0x3

    aget-char v11, p0, v11

    aput-char v11, v5, v6

    add-int/lit8 v11, v2, 0x4

    aget-char v11, p0, v11

    aput-char v11, v5, v10

    add-int/lit8 v2, v2, 0x5

    aget-char v10, p0, v2

    aput-char v10, v5, v9

    invoke-direct {v7, v5}, Ljava/lang/String;-><init>([C)V

    invoke-static {v7, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    int-to-char v5, v5

    aput-char v5, v0, v3

    :goto_1
    move v3, v4

    goto/16 :goto_3

    :pswitch_2
    add-int/lit8 v2, v3, 0x1

    const/16 v5, 0x9

    .line 865
    aput-char v5, v0, v3

    goto/16 :goto_2

    :pswitch_3
    add-int/lit8 v2, v3, 0x1

    const/4 v5, 0x7

    .line 859
    aput-char v5, v0, v3

    goto/16 :goto_2

    :pswitch_4
    add-int/lit8 v2, v3, 0x1

    const/4 v5, 0x6

    .line 856
    aput-char v5, v0, v3

    goto/16 :goto_2

    :pswitch_5
    add-int/lit8 v2, v3, 0x1

    const/4 v5, 0x5

    .line 853
    aput-char v5, v0, v3

    goto :goto_2

    :pswitch_6
    add-int/lit8 v2, v3, 0x1

    .line 850
    aput-char v5, v0, v3

    goto :goto_2

    :pswitch_7
    add-int/lit8 v2, v3, 0x1

    .line 847
    aput-char v9, v0, v3

    goto :goto_2

    :pswitch_8
    add-int/lit8 v2, v3, 0x1

    .line 844
    aput-char v10, v0, v3

    goto :goto_2

    :pswitch_9
    add-int/lit8 v2, v3, 0x1

    .line 841
    aput-char v6, v0, v3

    goto :goto_2

    :pswitch_a
    add-int/lit8 v2, v3, 0x1

    .line 838
    aput-char v1, v0, v3

    goto :goto_2

    :pswitch_b
    add-int/lit8 v2, v3, 0x1

    const/16 v5, 0x2f

    .line 887
    aput-char v5, v0, v3

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v3, 0x1

    sget-object v5, Lcom/alibaba/fastjson/parser/JSONLexer;->digits:[I

    add-int/lit8 v7, v2, 0x2

    .line 893
    aget-char v7, p0, v7

    aget v7, v5, v7

    mul-int/2addr v7, v8

    add-int/lit8 v2, v2, 0x3

    aget-char v8, p0, v2

    aget v5, v5, v8

    add-int/2addr v7, v5

    int-to-char v5, v7

    aput-char v5, v0, v3

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v3, 0x1

    const/16 v5, 0xd

    .line 878
    aput-char v5, v0, v3

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v3, 0x1

    const/16 v5, 0xa

    .line 868
    aput-char v5, v0, v3

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v3, 0x1

    const/16 v5, 0x8

    .line 862
    aput-char v5, v0, v3

    goto :goto_2

    :cond_5
    add-int/lit8 v2, v3, 0x1

    .line 890
    aput-char v5, v0, v3

    goto :goto_2

    :cond_6
    add-int/lit8 v2, v3, 0x1

    const/16 v5, 0xc

    .line 875
    aput-char v5, v0, v3

    goto :goto_2

    :cond_7
    add-int/lit8 v2, v3, 0x1

    .line 884
    aput-char v8, v0, v3

    goto :goto_2

    :cond_8
    add-int/lit8 v2, v3, 0x1

    .line 881
    aput-char v8, v0, v3

    :goto_2
    move v3, v2

    move v2, v4

    :goto_3
    add-int/2addr v2, v6

    goto/16 :goto_0

    .line 906
    :cond_9
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0, v1, v3}, Ljava/lang/String;-><init>([CII)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x74
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private scanIdent()V
    .locals 2

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->hasSpecial:Z

    :goto_0
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1189
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 1190
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1194
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    .line 1196
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x8

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_1

    :cond_1
    const-string v1, "true"

    .line 1198
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x6

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_1

    :cond_2
    const-string v1, "false"

    .line 1200
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x7

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_1

    :cond_3
    const-string v1, "new"

    .line 1202
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v0, 0x9

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_1

    :cond_4
    const-string v1, "undefined"

    .line 1204
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v0, 0x17

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_1

    :cond_5
    const-string v1, "Set"

    .line 1206
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v0, 0x15

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_1

    :cond_6
    const-string v1, "TreeSet"

    .line 1208
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x16

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_1

    :cond_7
    const/16 v0, 0x12

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    :goto_1
    return-void
.end method

.method private setCalendar(CCCCCCCC)V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->timeZone:Ljava/util/TimeZone;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->locale:Ljava/util/Locale;

    .line 4704
    invoke-static {v0, v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    add-int/lit8 p1, p1, -0x30

    mul-int/lit16 p1, p1, 0x3e8

    add-int/lit8 p2, p2, -0x30

    mul-int/lit8 p2, p2, 0x64

    add-int/2addr p1, p2

    add-int/lit8 p3, p3, -0x30

    mul-int/lit8 p3, p3, 0xa

    add-int/2addr p1, p3

    add-int/lit8 p4, p4, -0x30

    add-int/2addr p1, p4

    add-int/lit8 p5, p5, -0x30

    mul-int/lit8 p5, p5, 0xa

    add-int/lit8 p6, p6, -0x30

    add-int/2addr p5, p6

    const/4 p2, 0x1

    sub-int/2addr p5, p2

    add-int/lit8 p7, p7, -0x30

    mul-int/lit8 p7, p7, 0xa

    add-int/lit8 p8, p8, -0x30

    add-int/2addr p7, p8

    .line 4708
    invoke-virtual {v0, p2, p1}, Ljava/util/Calendar;->set(II)V

    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    const/4 p2, 0x2

    .line 4709
    invoke-virtual {p1, p2, p5}, Ljava/util/Calendar;->set(II)V

    iget-object p0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    const/4 p1, 0x5

    .line 4710
    invoke-virtual {p0, p1, p7}, Ljava/util/Calendar;->set(II)V

    return-void
.end method

.method private final subString(II)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    .line 1225
    array-length v1, v0

    const/4 v2, 0x0

    if-ge p2, v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    add-int v3, p1, p2

    .line 1226
    invoke-virtual {v1, p1, v3, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 1227
    new-instance p1, Ljava/lang/String;

    iget-object p0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    invoke-direct {p1, p0, v2, p2}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    .line 1229
    :cond_0
    new-array v0, p2, [C

    iget-object p0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    add-int/2addr p2, p1

    .line 1230
    invoke-virtual {p0, p1, p2, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 1231
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method


# virtual methods
.method public bytesValue()[B
    .locals 2

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/lit8 v1, v1, 0x1

    iget p0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1179
    invoke-static {v0, v1, p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->decodeFast(Ljava/lang/String;II)[B

    move-result-object p0

    return-object p0
.end method

.method protected charAt(I)C
    .locals 1

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p1, v0, :cond_0

    const/16 p0, 0x1a

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 218
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    :goto_0
    return p0
.end method

.method public close()V
    .locals 3

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    .line 136
    array-length v1, v0

    const/16 v2, 0x2004

    if-gt v1, v2, :cond_0

    sget-object v1, Lcom/alibaba/fastjson/parser/JSONLexer;->sbufLocal:Ljava/lang/ThreadLocal;

    .line 137
    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    return-void
.end method

.method public final config(Lcom/alibaba/fastjson/parser/Feature;Z)V
    .locals 2

    if-eqz p2, :cond_0

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    .line 151
    iget v1, p1, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    .line 153
    iget v1, p1, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    not-int v1, v1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    .line 156
    :goto_0
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    if-ne p1, v0, :cond_2

    if-eqz p2, :cond_1

    const-string p1, ""

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->stringDefaultValue:Ljava/lang/String;

    :cond_2
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    .line 161
    sget-object p2, Lcom/alibaba/fastjson/parser/Feature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/parser/Feature;

    iget p2, p2, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr p1, p2

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    iput-boolean p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->disableCircularReferenceDetect:Z

    return-void
.end method

.method public final decimalValue(Z)Ljava/lang/Number;
    .locals 8

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v0, v1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v2, :cond_0

    const/16 v0, 0x1a

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1872
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_0
    const/16 v2, 0x46

    if-ne v0, v2, :cond_1

    .line 1875
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p1

    goto/16 :goto_6

    :cond_1
    const/16 v3, 0x44

    if-ne v0, v3, :cond_2

    .line 1879
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_2
    if-eqz p1, :cond_3

    .line 1883
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->decimalValue()Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0

    :cond_3
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr p1, v0

    sub-int/2addr p1, v1

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1886
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    const/16 v4, 0x4c

    if-eq p1, v4, :cond_4

    const/16 v4, 0x53

    if-eq p1, v4, :cond_4

    const/16 v4, 0x42

    if-eq p1, v4, :cond_4

    if-eq p1, v2, :cond_4

    if-ne p1, v3, :cond_5

    :cond_4
    add-int/lit8 v0, v0, -0x1

    :cond_5
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    .line 1902
    array-length v3, v2

    const/4 v4, 0x0

    if-ge v0, v3, :cond_6

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    add-int v5, p1, v0

    .line 1903
    invoke-virtual {v3, p1, v5, v2, v4}, Ljava/lang/String;->getChars(II[CI)V

    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    goto :goto_1

    .line 1906
    :cond_6
    new-array v2, v0, [C

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    add-int v5, p1, v0

    .line 1907
    invoke-virtual {v3, p1, v5, v2, v4}, Ljava/lang/String;->getChars(II[CI)V

    move-object p1, v2

    :goto_1
    const/16 v2, 0x9

    if-gt v0, v2, :cond_d

    iget-boolean v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->exp:Z

    if-nez v2, :cond_d

    .line 1914
    aget-char v2, p1, v4

    const/16 v3, 0x2d

    const/4 v5, 0x2

    if-ne v2, v3, :cond_7

    .line 1918
    aget-char v2, p1, v1

    move v3, v1

    goto :goto_3

    :cond_7
    const/16 v3, 0x2b

    if-ne v2, v3, :cond_8

    .line 1921
    aget-char v2, p1, v1

    goto :goto_2

    :cond_8
    move v5, v1

    :goto_2
    move v3, v4

    :goto_3
    add-int/lit8 v2, v2, -0x30

    :goto_4
    if-ge v5, v0, :cond_b

    .line 1930
    aget-char v6, p1, v5

    const/16 v7, 0x2e

    if-ne v6, v7, :cond_9

    move v4, v1

    goto :goto_5

    :cond_9
    add-int/lit8 v6, v6, -0x30

    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v6

    if-eqz v4, :cond_a

    mul-int/lit8 v4, v4, 0xa

    :cond_a
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_b
    int-to-double v0, v2

    int-to-double v4, v4

    div-double/2addr v0, v4

    if-eqz v3, :cond_c

    neg-double v0, v0

    .line 1949
    :cond_c
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 1951
    :cond_d
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, v4, v0}, Ljava/lang/String;-><init>([CII)V

    .line 1953
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 1956
    :goto_6
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final decimalValue()Ljava/math/BigDecimal;
    .locals 6

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1962
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    const/16 v2, 0x4c

    if-eq v0, v2, :cond_0

    const/16 v2, 0x53

    if-eq v0, v2, :cond_0

    const/16 v2, 0x42

    if-eq v0, v2, :cond_0

    const/16 v2, 0x46

    if-eq v0, v2, :cond_0

    const/16 v2, 0x44

    if-ne v0, v2, :cond_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    :cond_1
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    .line 1976
    array-length v3, v2

    const/4 v4, 0x0

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    add-int v5, v0, v1

    .line 1977
    invoke-virtual {v3, v0, v5, v2, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 1978
    new-instance v0, Ljava/math/BigDecimal;

    iget-object p0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    invoke-direct {v0, p0, v4, v1}, Ljava/math/BigDecimal;-><init>([CII)V

    return-object v0

    .line 1980
    :cond_2
    new-array v2, v1, [C

    iget-object p0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    add-int/2addr v1, v0

    .line 1981
    invoke-virtual {p0, v0, v1, v2, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 1982
    new-instance p0, Ljava/math/BigDecimal;

    invoke-direct {p0, v2}, Ljava/math/BigDecimal;-><init>([C)V

    return-object p0
.end method

.method public info()Ljava/lang/String;
    .locals 3

    .line 910
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pos "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", json : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    const/high16 v2, 0x10000

    iget-object p0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 914
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final intValue()I
    .locals 10

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1125
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0x2d

    if-ne v2, v5, :cond_1

    add-int/lit8 v0, v0, 0x1

    const/high16 v2, -0x80000000

    move v5, v3

    goto :goto_1

    :cond_1
    :goto_0
    const v2, -0x7fffffff

    move v5, v4

    :goto_1
    const/16 v6, 0x1a

    if-ge v0, v1, :cond_3

    add-int/lit8 v4, v0, 0x1

    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v7, :cond_2

    move v0, v6

    goto :goto_2

    :cond_2
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1138
    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_2
    add-int/lit8 v0, v0, -0x30

    neg-int v0, v0

    move v9, v4

    move v4, v0

    move v0, v9

    :cond_3
    :goto_3
    if-ge v0, v1, :cond_9

    add-int/lit8 v7, v0, 0x1

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v8, :cond_4

    move v0, v6

    goto :goto_4

    :cond_4
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1149
    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_4
    const/16 v8, 0x4c

    if-eq v0, v8, :cond_8

    const/16 v8, 0x53

    if-eq v0, v8, :cond_8

    const/16 v8, 0x42

    if-ne v0, v8, :cond_5

    goto :goto_5

    :cond_5
    add-int/lit8 v0, v0, -0x30

    const v8, -0xccccccc

    if-lt v4, v8, :cond_7

    mul-int/lit8 v4, v4, 0xa

    add-int v8, v2, v0

    if-lt v4, v8, :cond_6

    sub-int/2addr v4, v0

    move v0, v7

    goto :goto_3

    .line 1162
    :cond_6
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1158
    :cond_7
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_5
    move v0, v7

    :cond_9
    if-eqz v5, :cond_b

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/2addr v1, v3

    if-le v0, v1, :cond_a

    return v4

    .line 1171
    :cond_a
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    neg-int p0, v4

    return p0
.end method

.method public final integerValue()Ljava/lang/Number;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v2, v1

    add-int/lit8 v3, v2, -0x1

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v3, v4, :cond_0

    const/16 v3, 0x1a

    goto :goto_0

    :cond_0
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 615
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_0
    const/16 v4, 0x53

    const/16 v6, 0x4c

    const/16 v7, 0x42

    if-eq v3, v7, :cond_3

    if-eq v3, v6, :cond_2

    if-eq v3, v4, :cond_1

    const/16 v3, 0x20

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, -0x1

    move v3, v4

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, -0x1

    move v3, v6

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, -0x1

    move v3, v7

    :goto_1
    iget v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    iget v9, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    const/4 v10, 0x1

    if-lt v8, v9, :cond_4

    goto :goto_2

    :cond_4
    iget-object v9, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 636
    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x2d

    if-ne v8, v9, :cond_5

    add-int/lit8 v1, v1, 0x1

    const-wide/high16 v8, -0x8000000000000000L

    move-wide v11, v8

    move v8, v10

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v8, 0x0

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    :goto_3
    if-ge v1, v2, :cond_7

    add-int/lit8 v9, v1, 0x1

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v13, :cond_6

    const/16 v1, 0x1a

    goto :goto_4

    :cond_6
    iget-object v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 648
    invoke-virtual {v13, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_4
    add-int/lit8 v1, v1, -0x30

    neg-int v1, v1

    int-to-long v13, v1

    move v1, v9

    goto :goto_5

    :cond_7
    const-wide/16 v13, 0x0

    :goto_5
    if-ge v1, v2, :cond_b

    add-int/lit8 v9, v1, 0x1

    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v15, :cond_8

    const/16 v1, 0x1a

    goto :goto_6

    :cond_8
    iget-object v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 657
    invoke-virtual {v15, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_6
    add-int/lit8 v1, v1, -0x30

    const-wide v15, -0xcccccccccccccccL

    cmp-long v15, v13, v15

    if-gez v15, :cond_9

    .line 660
    new-instance v1, Ljava/math/BigInteger;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_9
    const-wide/16 v15, 0xa

    mul-long/2addr v13, v15

    int-to-long v4, v1

    add-long v17, v11, v4

    cmp-long v1, v13, v17

    if-gez v1, :cond_a

    .line 664
    new-instance v1, Ljava/math/BigInteger;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_a
    sub-long/2addr v13, v4

    move v1, v9

    const/16 v4, 0x53

    goto :goto_5

    :cond_b
    if-eqz v8, :cond_10

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/2addr v2, v10

    if-le v1, v2, :cond_f

    const-wide/32 v0, -0x80000000

    cmp-long v0, v13, v0

    if-ltz v0, :cond_e

    if-eq v3, v6, :cond_e

    const/16 v0, 0x53

    if-ne v3, v0, :cond_c

    long-to-int v0, v13

    int-to-short v0, v0

    .line 673
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0

    :cond_c
    if-ne v3, v7, :cond_d

    long-to-int v0, v13

    int-to-byte v0, v0

    .line 677
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    :cond_d
    long-to-int v0, v13

    .line 680
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 682
    :cond_e
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 684
    :cond_f
    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10
    neg-long v0, v13

    const-wide/32 v4, 0x7fffffff

    cmp-long v2, v0, v4

    if-gtz v2, :cond_13

    if-eq v3, v6, :cond_13

    const/16 v2, 0x53

    if-ne v3, v2, :cond_11

    long-to-int v0, v0

    int-to-short v0, v0

    .line 690
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0

    :cond_11
    if-ne v3, v7, :cond_12

    long-to-int v0, v0

    int-to-byte v0, v0

    .line 692
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    :cond_12
    long-to-int v0, v0

    .line 694
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 697
    :cond_13
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final isBlankInput()Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 1248
    :goto_0
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    const/16 v3, 0x1a

    if-ne v2, v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/16 v3, 0x20

    if-gt v2, v3, :cond_2

    if-eq v2, v3, :cond_1

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    const/16 v3, 0xd

    if-eq v2, v3, :cond_1

    const/16 v3, 0x9

    if-eq v2, v3, :cond_1

    const/16 v3, 0xc

    if-eq v2, v3, :cond_1

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public final isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z
    .locals 0

    iget p0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    .line 165
    iget p1, p1, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final longValue()J
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v1, v0

    .line 1817
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    const-wide/high16 v2, -0x8000000000000000L

    move-wide v5, v2

    move v2, v4

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    if-ge v0, v1, :cond_1

    add-int/lit8 v3, v0, 0x1

    .line 1825
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    neg-int v0, v0

    int-to-long v7, v0

    :goto_1
    move v0, v3

    goto :goto_2

    :cond_1
    const-wide/16 v7, 0x0

    :goto_2
    if-ge v0, v1, :cond_7

    add-int/lit8 v3, v0, 0x1

    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v9, :cond_2

    const/16 v0, 0x1a

    goto :goto_3

    :cond_2
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1836
    invoke-virtual {v9, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_3
    const/16 v9, 0x4c

    if-eq v0, v9, :cond_6

    const/16 v9, 0x53

    if-eq v0, v9, :cond_6

    const/16 v9, 0x42

    if-ne v0, v9, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v0, v0, -0x30

    const-wide v9, -0xcccccccccccccccL

    cmp-long v9, v7, v9

    if-ltz v9, :cond_5

    const-wide/16 v9, 0xa

    mul-long/2addr v7, v9

    int-to-long v9, v0

    add-long v11, v5, v9

    cmp-long v0, v7, v11

    if-ltz v0, :cond_4

    sub-long/2addr v7, v9

    goto :goto_1

    .line 1851
    :cond_4
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1847
    :cond_5
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_4
    move v0, v3

    :cond_7
    if-eqz v2, :cond_9

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/2addr v1, v4

    if-le v0, v1, :cond_8

    return-wide v7

    .line 1860
    :cond_8
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    neg-long v0, v7

    return-wide v0
.end method

.method public matchField(J)Z
    .locals 17

    move-object/from16 v0, p0

    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    move v4, v3

    :goto_0
    const/16 v5, 0x22

    const/16 v9, 0xa

    const/4 v10, 0x0

    const/4 v11, -0x2

    const/16 v12, 0xc

    const/16 v13, 0x20

    if-ne v1, v5, :cond_0

    goto :goto_1

    :cond_0
    const/16 v5, 0x27

    if-ne v1, v5, :cond_f

    :goto_1
    const-wide v15, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    move v5, v2

    move-wide v14, v15

    :goto_2
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-ge v5, v6, :cond_2

    iget-object v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2030
    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v1, :cond_1

    sub-int/2addr v5, v2

    add-int/2addr v5, v3

    add-int/2addr v4, v5

    goto :goto_3

    :cond_1
    int-to-long v7, v6

    xor-long v6, v14, v7

    const-wide v14, 0x100000001b3L

    mul-long/2addr v14, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    cmp-long v1, v14, p1

    if-eqz v1, :cond_3

    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    iput-wide v14, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    return v10

    :cond_3
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v4, 0x1

    add-int/2addr v1, v4

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v4, :cond_4

    const/16 v1, 0x1a

    goto :goto_4

    :cond_4
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2050
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_4
    const/16 v4, 0x3a

    if-ne v1, v4, :cond_b

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v1, v2

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v2, :cond_5

    const/16 v2, 0x1a

    goto :goto_5

    :cond_5
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2056
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_5
    const/16 v4, 0x7b

    if-ne v2, v4, :cond_7

    add-int/2addr v1, v3

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v2, :cond_6

    const/16 v14, 0x1a

    goto :goto_6

    :cond_6
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2081
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v14

    :goto_6
    iput-char v14, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_9

    :cond_7
    const/16 v4, 0x5b

    if-ne v2, v4, :cond_9

    add-int/2addr v1, v3

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v2, :cond_8

    const/16 v14, 0x1a

    goto :goto_7

    :cond_8
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2087
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v14

    :goto_7
    iput-char v14, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0xe

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_9

    :cond_9
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v2, :cond_a

    const/16 v14, 0x1a

    goto :goto_8

    :cond_a
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2093
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v14

    :goto_8
    iput-char v14, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 2094
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    :goto_9
    return v3

    :cond_b
    if-gt v1, v13, :cond_e

    if-eq v1, v13, :cond_c

    if-eq v1, v9, :cond_c

    const/16 v4, 0xd

    if-eq v1, v4, :cond_c

    const/16 v4, 0x9

    if-eq v1, v4, :cond_c

    if-eq v1, v12, :cond_c

    const/16 v4, 0x8

    if-ne v1, v4, :cond_e

    :cond_c
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v2, 0x1

    add-int/2addr v1, v2

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v2, :cond_d

    const/16 v1, 0x1a

    goto :goto_a

    :cond_d
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2070
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_a
    move v2, v4

    goto/16 :goto_4

    .line 2074
    :cond_e
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "match feild error expect \':\'"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    if-gt v1, v13, :cond_12

    if-eq v1, v13, :cond_10

    if-eq v1, v9, :cond_10

    const/16 v5, 0xd

    if-eq v1, v5, :cond_10

    const/16 v5, 0x9

    if-eq v1, v5, :cond_10

    if-eq v1, v12, :cond_10

    const/16 v5, 0x8

    if-ne v1, v5, :cond_12

    :cond_10
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v4, 0x1

    add-int/2addr v1, v4

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v4, :cond_11

    const/16 v1, 0x1a

    goto :goto_b

    :cond_11
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2020
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_b
    move v4, v5

    goto/16 :goto_0

    :cond_12
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return v10
.end method

.method public next()C
    .locals 2

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v1, :cond_0

    const/16 v0, 0x1a

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 146
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_0
    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    return v0
.end method

.method public final nextIdent()V
    .locals 2

    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x20

    if-gt v0, v1, :cond_1

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 592
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_0

    :cond_1
    const/16 v1, 0x5f

    if-eq v0, v1, :cond_3

    .line 596
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 599
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_2

    .line 597
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanIdent()V

    :goto_2
    return-void
.end method

.method public final nextToken()V
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    :goto_0
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->pos:I

    iget-char v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_0

    .line 228
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipComment()V

    goto :goto_0

    :cond_0
    const/16 v4, 0x22

    if-ne v3, v4, :cond_1

    .line 233
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanString()V

    return-void

    :cond_1
    const/16 v4, 0x30

    if-lt v3, v4, :cond_2

    const/16 v4, 0x39

    if-le v3, v4, :cond_3

    :cond_2
    const/16 v4, 0x2d

    if-ne v3, v4, :cond_4

    .line 238
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanNumber()V

    return-void

    :cond_4
    const/16 v4, 0x2c

    if-ne v3, v4, :cond_5

    .line 243
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    const/16 v1, 0x10

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-void

    :cond_5
    const/16 v5, 0xc

    if-eq v3, v5, :cond_1f

    const/16 v6, 0xd

    if-eq v3, v6, :cond_1f

    const/16 v7, 0x20

    if-eq v3, v7, :cond_1f

    const/16 v8, 0x3a

    if-eq v3, v8, :cond_1e

    const/16 v9, 0x5b

    const/4 v10, 0x1

    const/16 v11, 0x1a

    if-eq v3, v9, :cond_1c

    const/16 v9, 0x5d

    if-eq v3, v9, :cond_1b

    const/16 v12, 0x66

    const/16 v13, 0x9

    const/16 v14, 0x8

    const/16 v15, 0xa

    const/16 v1, 0x7d

    if-eq v3, v12, :cond_18

    const/16 v12, 0x6e

    if-eq v3, v12, :cond_13

    const/16 v12, 0x7b

    if-eq v3, v12, :cond_11

    if-eq v3, v1, :cond_f

    const/16 v12, 0x53

    if-eq v3, v12, :cond_e

    const/16 v12, 0x54

    if-eq v3, v12, :cond_e

    const/16 v12, 0x74

    if-eq v3, v12, :cond_b

    const/16 v1, 0x75

    if-eq v3, v1, :cond_e

    packed-switch v3, :pswitch_data_0

    packed-switch v3, :pswitch_data_1

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-eq v2, v1, :cond_9

    if-ne v3, v11, :cond_6

    add-int/lit8 v2, v2, 0x1

    if-ne v2, v1, :cond_6

    goto :goto_2

    :cond_6
    const/16 v1, 0x1f

    if-le v3, v1, :cond_8

    const/16 v1, 0x7f

    if-ne v3, v1, :cond_7

    goto :goto_1

    :cond_7
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 402
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_3

    .line 398
    :cond_8
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto/16 :goto_8

    :cond_9
    :goto_2
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v2, 0x14

    if-eq v1, v2, :cond_a

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->eofPos:I

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->pos:I

    :goto_3
    return-void

    .line 391
    :cond_a
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "EOF error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 346
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    const/16 v1, 0xb

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-void

    .line 342
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-void

    .line 250
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanString()V

    return-void

    :cond_b
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    const-string v10, "true"

    .line 262
    invoke-virtual {v3, v10, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_d

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v2, 0x4

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 264
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-eq v2, v7, :cond_c

    if-eq v2, v4, :cond_c

    if-eq v2, v1, :cond_c

    if-eq v2, v9, :cond_c

    if-eq v2, v15, :cond_c

    if-eq v2, v6, :cond_c

    if-eq v2, v13, :cond_c

    if-eq v2, v11, :cond_c

    if-eq v2, v5, :cond_c

    if-eq v2, v14, :cond_c

    if-ne v2, v8, :cond_d

    :cond_c
    const/4 v1, 0x6

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-void

    .line 281
    :cond_d
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "scan true error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanIdent()V

    return-void

    :cond_f
    add-int/2addr v2, v10

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v1, :cond_10

    goto :goto_4

    :cond_10
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 379
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v11

    :goto_4
    iput-char v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-void

    :cond_11
    add-int/2addr v2, v10

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v1, :cond_12

    goto :goto_5

    :cond_12
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 369
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v11

    :goto_5
    iput-char v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-void

    :cond_13
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    const-string v8, "null"

    .line 314
    invoke-virtual {v3, v8, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_14

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v2, 0x4

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move v2, v14

    goto :goto_6

    :cond_14
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    const-string v3, "new"

    iget v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 317
    invoke-virtual {v2, v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_15

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v2, 0x3

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move v2, v13

    goto :goto_6

    :cond_15
    const/4 v2, 0x0

    :goto_6
    if-eqz v2, :cond_17

    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 323
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v3

    iput-char v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-eq v3, v7, :cond_16

    if-eq v3, v4, :cond_16

    if-eq v3, v1, :cond_16

    if-eq v3, v9, :cond_16

    if-eq v3, v15, :cond_16

    if-eq v3, v6, :cond_16

    if-eq v3, v13, :cond_16

    if-eq v3, v11, :cond_16

    if-eq v3, v5, :cond_16

    if-ne v3, v14, :cond_17

    :cond_16
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-void

    .line 339
    :cond_17
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "scan null/new error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    const-string v10, "false"

    .line 290
    invoke-virtual {v3, v10, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1a

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v2, 0x5

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 292
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-eq v2, v7, :cond_19

    if-eq v2, v4, :cond_19

    if-eq v2, v1, :cond_19

    if-eq v2, v9, :cond_19

    if-eq v2, v15, :cond_19

    if-eq v2, v6, :cond_19

    if-eq v2, v13, :cond_19

    if-eq v2, v11, :cond_19

    if-eq v2, v5, :cond_19

    if-eq v2, v14, :cond_19

    if-ne v2, v8, :cond_1a

    :cond_19
    const/4 v1, 0x7

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-void

    .line 309
    :cond_1a
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "scan false error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 360
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    const/16 v1, 0xf

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-void

    :cond_1c
    add-int/2addr v2, v10

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v1, :cond_1d

    goto :goto_7

    :cond_1d
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 355
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v11

    :goto_7
    iput-char v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0xe

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-void

    .line 384
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    const/16 v1, 0x11

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-void

    .line 258
    :cond_1f
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    :goto_8
    const/4 v1, 0x0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x27
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final nextToken(I)V
    .locals 10

    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    :goto_0
    const/4 v0, 0x2

    const/16 v1, 0xd

    const/16 v2, 0x39

    const/16 v3, 0x22

    const/16 v4, 0x30

    const/16 v5, 0xe

    const/16 v6, 0x5b

    const/16 v7, 0x7b

    const/16 v8, 0xc

    if-eq p1, v0, :cond_11

    const/4 v0, 0x4

    const/16 v9, 0x1a

    if-eq p1, v0, :cond_d

    if-eq p1, v8, :cond_9

    const/16 v0, 0x12

    if-eq p1, v0, :cond_8

    const/16 v0, 0x14

    if-eq p1, v0, :cond_7

    const/16 v2, 0xf

    const/16 v3, 0x5d

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_7

    :pswitch_0
    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v5, 0x2c

    if-ne v4, v5, :cond_1

    const/16 p1, 0x10

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 448
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    :goto_1
    iput-char v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    return-void

    :cond_1
    const/16 v5, 0x7d

    if-ne v4, v5, :cond_3

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p1, v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 460
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    :goto_2
    iput-char v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    return-void

    :cond_3
    if-ne v4, v3, :cond_5

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p1, v0, :cond_4

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 472
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    :goto_3
    iput-char v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    return-void

    :cond_5
    if-ne v4, v9, :cond_15

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-void

    :pswitch_1
    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v4, v3, :cond_7

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 549
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    return-void

    :pswitch_2
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v0, v6, :cond_6

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 536
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    return-void

    :cond_6
    if-ne v0, v7, :cond_15

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 542
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    return-void

    :cond_7
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v2, v9, :cond_15

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-void

    .line 559
    :cond_8
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextIdent()V

    return-void

    :cond_9
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v0, v7, :cond_b

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p1, v0, :cond_a

    goto :goto_4

    :cond_a
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 424
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    :goto_4
    iput-char v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    return-void

    :cond_b
    if-ne v0, v6, :cond_15

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p1, v0, :cond_c

    goto :goto_5

    :cond_c
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 435
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    :goto_5
    iput-char v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    return-void

    :cond_d
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v0, v3, :cond_e

    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->pos:I

    .line 511
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanString()V

    return-void

    :cond_e
    if-lt v0, v4, :cond_f

    if-gt v0, v2, :cond_f

    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->pos:I

    .line 517
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanNumber()V

    return-void

    :cond_f
    if-ne v0, v7, :cond_15

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p1, v0, :cond_10

    goto :goto_6

    :cond_10
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 528
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    :goto_6
    iput-char v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    return-void

    :cond_11
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-lt v0, v4, :cond_12

    if-gt v0, v2, :cond_12

    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->pos:I

    .line 485
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanNumber()V

    return-void

    :cond_12
    if-ne v0, v3, :cond_13

    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->pos:I

    .line 491
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanString()V

    return-void

    :cond_13
    if-ne v0, v6, :cond_14

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 497
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    return-void

    :cond_14
    if-ne v0, v7, :cond_15

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 503
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    return-void

    :cond_15
    :goto_7
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v2, 0x20

    if-eq v0, v2, :cond_17

    const/16 v2, 0xa

    if-eq v0, v2, :cond_17

    if-eq v0, v1, :cond_17

    const/16 v1, 0x9

    if-eq v0, v1, :cond_17

    if-eq v0, v8, :cond_17

    const/16 v1, 0x8

    if-ne v0, v1, :cond_16

    goto :goto_8

    .line 575
    :cond_16
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    return-void

    .line 571
    :cond_17
    :goto_8
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final nextTokenWithChar(C)V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v0, p1, :cond_1

    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p1, v0, :cond_0

    const/16 p1, 0x1a

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 178
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    :goto_1
    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 180
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    return-void

    :cond_1
    const/16 v1, 0x20

    if-eq v0, v1, :cond_3

    const/16 v1, 0xa

    if-eq v0, v1, :cond_3

    const/16 v1, 0xd

    if-eq v0, v1, :cond_3

    const/16 v1, 0x9

    if-eq v0, v1, :cond_3

    const/16 v1, 0xc

    if-eq v0, v1, :cond_3

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    goto :goto_2

    .line 194
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "not match "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " - "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-char p0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_0
.end method

.method public final numberString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 200
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    const/16 v2, 0x4c

    if-eq v0, v2, :cond_0

    const/16 v2, 0x53

    if-eq v0, v2, :cond_0

    const/16 v2, 0x42

    if-eq v0, v2, :cond_0

    const/16 v2, 0x46

    if-eq v0, v2, :cond_0

    const/16 v2, 0x44

    if-ne v0, v2, :cond_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    :cond_1
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 212
    invoke-direct {p0, v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->subString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public scanBoolean()Z
    .locals 4

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    const-string v1, "false"

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1428
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    const-string v2, "true"

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1431
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    move v1, v2

    goto :goto_0

    :cond_1
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x31

    if-ne v0, v3, :cond_2

    move v0, v2

    move v1, v0

    goto :goto_0

    :cond_2
    const/16 v3, 0x30

    if-ne v0, v3, :cond_3

    move v0, v2

    :goto_0
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1446
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    return v1

    :cond_3
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return v1
.end method

.method public scanFieldBoolean(J)Z
    .locals 12

    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2880
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result p1

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v1, p1

    const-string v2, "false"

    .line 2886
    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result p2

    const/4 v1, 0x4

    const/4 v2, -0x1

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eqz p2, :cond_1

    add-int/lit8 p1, p1, 0x5

    :goto_0
    move p2, v0

    goto/16 :goto_2

    :cond_1
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v5, p1

    const-string v6, "true"

    .line 2889
    invoke-virtual {p2, v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_2

    add-int/2addr p1, v1

    :goto_1
    move p2, v4

    goto :goto_2

    :cond_2
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v5, p1

    const-string v6, "\"false\""

    .line 2892
    invoke-virtual {p2, v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_3

    add-int/lit8 p1, p1, 0x7

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v5, p1

    const-string v6, "\"true\""

    .line 2895
    invoke-virtual {p2, v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_4

    add-int/lit8 p1, p1, 0x6

    goto :goto_1

    :cond_4
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v5, p1

    .line 2898
    invoke-virtual {p2, v5}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v5, 0x31

    if-ne p2, v5, :cond_5

    add-int/2addr p1, v4

    goto :goto_1

    :cond_5
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v5, p1

    .line 2901
    invoke-virtual {p2, v5}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v5, 0x30

    if-ne p2, v5, :cond_6

    add-int/2addr p1, v4

    goto :goto_0

    :cond_6
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v5, p1

    const-string v6, "\"1\""

    .line 2904
    invoke-virtual {p2, v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_7

    add-int/2addr p1, v3

    goto :goto_1

    :cond_7
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v5, p1

    const-string v6, "\"0\""

    .line 2907
    invoke-virtual {p2, v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_16

    add-int/2addr p1, v3

    goto :goto_0

    :goto_2
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, p1, 0x1

    add-int/2addr v5, p1

    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    const/16 v7, 0x1a

    if-lt v5, p1, :cond_8

    move p1, v7

    goto :goto_3

    :cond_8
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2919
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result p1

    :goto_3
    const/16 v5, 0x10

    const/16 v8, 0x2c

    if-ne p1, v8, :cond_a

    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v6, v4

    add-int/2addr p1, v6

    add-int/2addr p1, v4

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p1, v0, :cond_9

    goto :goto_4

    :cond_9
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2929
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    :goto_4
    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return p2

    :cond_a
    const/16 v9, 0xd

    const/16 v10, 0x7d

    if-eq p1, v10, :cond_d

    const/16 v11, 0x20

    if-eq p1, v11, :cond_b

    const/16 v11, 0xa

    if-eq p1, v11, :cond_b

    if-eq p1, v9, :cond_b

    const/16 v11, 0x9

    if-eq p1, v11, :cond_b

    const/16 v11, 0xc

    if-eq p1, v11, :cond_b

    const/16 v11, 0x8

    if-ne p1, v11, :cond_d

    :cond_b
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v6, 0x1

    add-int/2addr p1, v6

    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p1, v6, :cond_c

    move p1, v7

    goto :goto_5

    :cond_c
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2945
    invoke-virtual {v6, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    :goto_5
    move v6, v5

    goto :goto_3

    :cond_d
    if-ne p1, v10, :cond_15

    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr p1, v6

    .line 2952
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result p1

    if-ne p1, v8, :cond_f

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr p1, v6

    add-int/2addr p1, v4

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p1, v0, :cond_e

    goto :goto_6

    :cond_e
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2961
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    :goto_6
    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_9

    :cond_f
    const/16 v3, 0x5d

    if-ne p1, v3, :cond_11

    const/16 p1, 0xf

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr p1, v6

    add-int/2addr p1, v4

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p1, v0, :cond_10

    goto :goto_7

    :cond_10
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2971
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    :goto_7
    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_9

    :cond_11
    if-ne p1, v10, :cond_13

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr p1, v6

    add-int/2addr p1, v4

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p1, v0, :cond_12

    goto :goto_8

    :cond_12
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2981
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    :goto_8
    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_9

    :cond_13
    if-ne p1, v7, :cond_14

    const/16 p1, 0x14

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr p1, v6

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    :goto_9
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return p2

    :cond_14
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return v0

    :cond_15
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return v0

    :cond_16
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return v0
.end method

.method public scanFieldDate(J)Ljava/util/Date;
    .locals 13

    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2724
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    add-int/lit8 v3, p1, 0x1

    add-int v4, v1, p1

    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    const/16 v6, 0x1a

    if-lt v4, v5, :cond_1

    move v4, v6

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2738
    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_0
    const/16 v5, 0x22

    const/4 v7, -0x1

    if-ne v4, v5, :cond_5

    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int v8, v4, v3

    add-int/lit8 p1, p1, 0x2

    add-int/2addr v4, v3

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v3, :cond_2

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2752
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    :goto_1
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v4, p1

    .line 2756
    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-eq v3, v7, :cond_4

    sub-int/2addr v3, v8

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2762
    invoke-virtual {p0, v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanISO8601DateIfMatch(ZI)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    .line 2763
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    add-int/2addr p1, v3

    add-int/lit8 v3, p1, 0x1

    add-int/2addr p1, v1

    .line 2771
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result p1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    goto :goto_5

    :cond_3
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-object p2

    .line 2758
    :cond_4
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    const-string p1, "unclosed str"

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    const/16 p1, 0x30

    if-lt v4, p1, :cond_16

    const/16 v0, 0x39

    if-gt v4, v0, :cond_16

    sub-int/2addr v4, p1

    int-to-long v8, v4

    :goto_2
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v10, v3, 0x1

    add-int/2addr v4, v3

    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v11, :cond_6

    move v4, v6

    goto :goto_3

    :cond_6
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2782
    invoke-virtual {v11, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_3
    if-lt v4, p1, :cond_7

    if-gt v4, v0, :cond_7

    const-wide/16 v11, 0xa

    mul-long/2addr v8, v11

    add-int/lit8 v4, v4, -0x30

    int-to-long v3, v4

    add-long/2addr v8, v3

    move v3, v10

    goto :goto_2

    :cond_7
    const/16 p1, 0x2e

    if-ne v4, p1, :cond_8

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-object p2

    :cond_8
    if-ne v4, v5, :cond_a

    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v3, v3, 0x2

    add-int/2addr p1, v10

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p1, v0, :cond_9

    move p1, v6

    goto :goto_4

    :cond_9
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2793
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    goto :goto_4

    :cond_a
    move p1, v4

    move v3, v10

    :goto_4
    const-wide/16 v4, 0x0

    cmp-long v0, v8, v4

    if-gez v0, :cond_b

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-object p2

    .line 2804
    :cond_b
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v8, v9}, Ljava/util/Date;-><init>(J)V

    :goto_5
    const/16 v4, 0x10

    const/16 v5, 0x2c

    if-ne p1, v5, :cond_d

    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v3, v3, -0x1

    add-int/2addr p1, v3

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p1, p2, :cond_c

    goto :goto_6

    :cond_c
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2817
    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    :goto_6
    iput-char v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/4 p1, 0x3

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-object v0

    :cond_d
    const/16 v8, 0x7d

    if-ne p1, v8, :cond_15

    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr p1, v3

    .line 2825
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result p1

    if-ne p1, v5, :cond_f

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr p1, v3

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p1, p2, :cond_e

    goto :goto_7

    :cond_e
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2834
    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    :goto_7
    iput-char v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_a

    :cond_f
    const/16 v4, 0x5d

    if-ne p1, v4, :cond_11

    const/16 p1, 0xf

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr p1, v3

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p1, p2, :cond_10

    goto :goto_8

    :cond_10
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2844
    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    :goto_8
    iput-char v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_a

    :cond_11
    if-ne p1, v8, :cond_13

    const/16 p1, 0xd

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr p1, v3

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p1, p2, :cond_12

    goto :goto_9

    :cond_12
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2854
    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    :goto_9
    iput-char v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_a

    :cond_13
    if-ne p1, v6, :cond_14

    const/16 p1, 0x14

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput-char v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    :goto_a
    const/4 p1, 0x4

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-object v0

    :cond_14
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-object p2

    :cond_15
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-object p2

    :cond_16
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-object p2
.end method

.method public final scanFieldDouble(J)D
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3562
    invoke-direct/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result v2

    const-wide/16 v3, 0x0

    if-nez v2, :cond_0

    return-wide v3

    :cond_0
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v2, 0x1

    add-int/2addr v5, v2

    .line 3567
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v5

    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int v8, v7, v6

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    const/16 v10, 0x2d

    if-ne v5, v10, :cond_1

    move v11, v9

    goto :goto_0

    :cond_1
    move v11, v1

    :goto_0
    if-eqz v11, :cond_2

    add-int/lit8 v2, v2, 0x2

    add-int/2addr v7, v6

    .line 3572
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v5

    move v6, v2

    :cond_2
    const/4 v2, -0x1

    const/16 v7, 0x30

    if-lt v5, v7, :cond_14

    const/16 v12, 0x39

    if-gt v5, v12, :cond_14

    sub-int/2addr v5, v7

    :goto_1
    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v14, v6, 0x1

    add-int/2addr v13, v6

    .line 3579
    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v13

    if-lt v13, v7, :cond_3

    if-gt v13, v12, :cond_3

    mul-int/lit8 v5, v5, 0xa

    add-int/lit8 v13, v13, -0x30

    add-int/2addr v5, v13

    move v6, v14

    goto :goto_1

    :cond_3
    const/16 v15, 0x2e

    const/16 v1, 0xa

    if-ne v13, v15, :cond_6

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v6, 0x2

    add-int/2addr v13, v14

    .line 3591
    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v13

    if-lt v13, v7, :cond_5

    if-gt v13, v12, :cond_5

    mul-int/lit8 v5, v5, 0xa

    sub-int/2addr v13, v7

    add-int/2addr v5, v13

    move v13, v1

    :goto_2
    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v15, v6, 0x1

    add-int/2addr v14, v6

    .line 3596
    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v6

    if-lt v6, v7, :cond_4

    if-gt v6, v12, :cond_4

    mul-int/lit8 v5, v5, 0xa

    add-int/lit8 v6, v6, -0x30

    add-int/2addr v5, v6

    mul-int/lit8 v13, v13, 0xa

    move v6, v15

    goto :goto_2

    :cond_4
    move v14, v15

    move/from16 v17, v13

    move v13, v6

    move/from16 v6, v17

    goto :goto_3

    :cond_5
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-wide v3

    :cond_6
    move v6, v9

    :goto_3
    const/16 v15, 0x65

    if-eq v13, v15, :cond_8

    const/16 v15, 0x45

    if-ne v13, v15, :cond_7

    goto :goto_4

    :cond_7
    const/16 v16, 0x0

    goto :goto_5

    :cond_8
    :goto_4
    move/from16 v16, v9

    :goto_5
    if-eqz v16, :cond_b

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v15, v14, 0x1

    add-int/2addr v13, v14

    .line 3613
    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v13

    const/16 v3, 0x2b

    if-eq v13, v3, :cond_a

    if-ne v13, v10, :cond_9

    goto :goto_6

    :cond_9
    move v14, v15

    goto :goto_7

    :cond_a
    :goto_6
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v14, v14, 0x2

    add-int/2addr v3, v15

    .line 3615
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v3

    move v13, v3

    :goto_7
    if-lt v13, v7, :cond_b

    if-gt v13, v12, :cond_b

    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v14, 0x1

    add-int/2addr v3, v14

    .line 3619
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v13

    move v14, v4

    goto :goto_7

    :cond_b
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v3, v14

    sub-int/2addr v3, v8

    sub-int/2addr v3, v9

    if-nez v16, :cond_c

    if-ge v3, v1, :cond_c

    int-to-double v3, v5

    int-to-double v5, v6

    div-double/2addr v3, v5

    if-eqz v11, :cond_d

    neg-double v3, v3

    goto :goto_8

    .line 3633
    :cond_c
    invoke-direct {v0, v8, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->subString(II)Ljava/lang/String;

    move-result-object v1

    .line 3634
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    :cond_d
    :goto_8
    const/16 v1, 0x10

    const/16 v5, 0x2c

    if-ne v13, v5, :cond_e

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v14, v9

    add-int/2addr v2, v14

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3643
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    const/4 v2, 0x3

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-wide v3

    :cond_e
    const/16 v6, 0x7d

    if-ne v13, v6, :cond_13

    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v7, v14

    .line 3650
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v7

    if-ne v7, v5, :cond_f

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v1, v14

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3654
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_9

    :cond_f
    const/16 v1, 0x5d

    if-ne v7, v1, :cond_10

    const/16 v1, 0xf

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v1, v14

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3658
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_9

    :cond_10
    if-ne v7, v6, :cond_11

    const/16 v1, 0xd

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v1, v14

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3662
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_9

    :cond_11
    const/16 v1, 0x1a

    if-ne v7, v1, :cond_12

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v2, v14

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/16 v2, 0x14

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    iput-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    :goto_9
    const/4 v1, 0x4

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-wide v3

    :cond_12
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const-wide/16 v3, 0x0

    return-wide v3

    :cond_13
    const-wide/16 v3, 0x0

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-wide v3

    :cond_14
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-wide v3
.end method

.method public final scanFieldDoubleArray(J)[D
    .locals 19

    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3683
    invoke-direct/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    :cond_0
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v2, 0x1

    add-int/2addr v4, v2

    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    const/4 v7, -0x1

    if-lt v4, v6, :cond_1

    goto :goto_0

    :cond_1
    iget-object v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3690
    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x5b

    if-eq v4, v6, :cond_2

    :goto_0
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-object v3

    :cond_2
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v2, 0x2

    add-int/2addr v4, v5

    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v5, :cond_3

    const/16 v4, 0x1a

    goto :goto_1

    :cond_3
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3699
    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_1
    const/16 v5, 0x10

    new-array v8, v5, [D

    move v9, v1

    :goto_2
    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int v11, v10, v2

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    const/16 v13, 0x2d

    if-ne v4, v13, :cond_4

    move v14, v12

    goto :goto_3

    :cond_4
    move v14, v1

    :goto_3
    if-eqz v14, :cond_6

    add-int/lit8 v4, v2, 0x1

    add-int/2addr v10, v2

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v10, v2, :cond_5

    const/16 v2, 0x1a

    goto :goto_4

    :cond_5
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3713
    invoke-virtual {v2, v10}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_4
    move/from16 v18, v4

    move v4, v2

    move/from16 v2, v18

    :cond_6
    const/16 v10, 0x30

    if-lt v4, v10, :cond_25

    const/16 v15, 0x39

    if-gt v4, v15, :cond_25

    add-int/lit8 v4, v4, -0x30

    :goto_5
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v16, v2, 0x1

    add-int/2addr v6, v2

    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v6, v5, :cond_7

    const/16 v5, 0x1a

    goto :goto_6

    :cond_7
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3723
    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_6
    if-lt v5, v10, :cond_8

    if-gt v5, v15, :cond_8

    mul-int/lit8 v4, v4, 0xa

    add-int/lit8 v5, v5, -0x30

    add-int/2addr v4, v5

    move/from16 v2, v16

    const/16 v5, 0x10

    goto :goto_5

    :cond_8
    const/16 v6, 0x2e

    const/16 v1, 0xa

    if-ne v5, v6, :cond_d

    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v2, 0x2

    add-int v5, v5, v16

    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v5, v6, :cond_9

    const/16 v5, 0x1a

    goto :goto_7

    :cond_9
    iget-object v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3739
    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_7
    if-lt v5, v10, :cond_c

    if-gt v5, v15, :cond_c

    mul-int/lit8 v4, v4, 0xa

    add-int/lit8 v5, v5, -0x30

    add-int/2addr v4, v5

    move v5, v1

    :goto_8
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v16, v2, 0x1

    add-int/2addr v6, v2

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v6, v2, :cond_a

    const/16 v2, 0x1a

    goto :goto_9

    :cond_a
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3748
    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_9
    if-lt v2, v10, :cond_b

    if-gt v2, v15, :cond_b

    mul-int/lit8 v4, v4, 0xa

    add-int/lit8 v2, v2, -0x30

    add-int/2addr v4, v2

    mul-int/lit8 v5, v5, 0xa

    move/from16 v2, v16

    goto :goto_8

    :cond_b
    move/from16 v18, v5

    move v5, v2

    move/from16 v2, v18

    goto :goto_a

    :cond_c
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-object v3

    :cond_d
    move v2, v12

    :goto_a
    const/16 v6, 0x65

    if-eq v5, v6, :cond_f

    const/16 v6, 0x45

    if-ne v5, v6, :cond_e

    goto :goto_b

    :cond_e
    const/4 v6, 0x0

    goto :goto_c

    :cond_f
    :goto_b
    move v6, v12

    :goto_c
    if-eqz v6, :cond_15

    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v17, v16, 0x1

    add-int v5, v5, v16

    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v5, v3, :cond_10

    const/16 v3, 0x1a

    goto :goto_d

    :cond_10
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3770
    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_d
    const/16 v5, 0x2b

    if-eq v3, v5, :cond_12

    if-ne v3, v13, :cond_11

    goto :goto_e

    :cond_11
    move v5, v3

    move/from16 v16, v17

    goto :goto_10

    :cond_12
    :goto_e
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v16, v16, 0x2

    add-int v3, v3, v17

    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v3, v5, :cond_13

    const/16 v3, 0x1a

    goto :goto_f

    :cond_13
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3776
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_f
    move v5, v3

    :goto_10
    if-lt v5, v10, :cond_15

    if-gt v5, v15, :cond_15

    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v16, 0x1

    add-int v3, v3, v16

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v3, v13, :cond_14

    const/16 v3, 0x1a

    goto :goto_11

    :cond_14
    iget-object v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3784
    invoke-virtual {v13, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_11
    move/from16 v16, v5

    goto :goto_f

    :cond_15
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int v3, v3, v16

    sub-int/2addr v3, v11

    sub-int/2addr v3, v12

    if-nez v6, :cond_16

    if-ge v3, v1, :cond_16

    int-to-double v3, v4

    int-to-double v1, v2

    div-double/2addr v3, v1

    if-eqz v14, :cond_17

    neg-double v3, v3

    goto :goto_12

    .line 3800
    :cond_16
    invoke-direct {v0, v11, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->subString(II)Ljava/lang/String;

    move-result-object v1

    .line 3801
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    :cond_17
    :goto_12
    array-length v1, v8

    const/4 v2, 0x3

    if-lt v9, v1, :cond_18

    array-length v1, v8

    mul-int/2addr v1, v2

    .line 3805
    div-int/lit8 v1, v1, 0x2

    new-array v1, v1, [D

    const/4 v6, 0x0

    .line 3806
    invoke-static {v8, v6, v1, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v8, v1

    :cond_18
    add-int/lit8 v6, v9, 0x1

    .line 3809
    aput-wide v3, v8, v9

    const/16 v1, 0x2c

    if-ne v5, v1, :cond_1a

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v16, 0x1

    add-int v1, v1, v16

    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v3, :cond_19

    const/16 v1, 0x1a

    goto :goto_13

    :cond_19
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3816
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_13
    move v4, v1

    move/from16 v16, v2

    const/16 v1, 0x10

    const/16 v2, 0x1a

    const/4 v3, 0x0

    const/4 v10, 0x0

    goto/16 :goto_17

    :cond_1a
    const/16 v3, 0x5d

    if-ne v5, v3, :cond_24

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v16, 0x1

    add-int v4, v4, v16

    iget v9, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v9, :cond_1b

    const/16 v4, 0x1a

    goto :goto_14

    :cond_1b
    iget-object v9, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3822
    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_14
    array-length v9, v8

    if-eq v6, v9, :cond_1c

    .line 3833
    new-array v9, v6, [D

    const/4 v10, 0x0

    .line 3834
    invoke-static {v8, v10, v9, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v8, v9

    :cond_1c
    if-ne v4, v1, :cond_1d

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int v1, v1, v16

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3840
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/16 v1, 0x10

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-object v8

    :cond_1d
    const/16 v2, 0x7d

    if-ne v4, v2, :cond_23

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v4, v5

    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v5, :cond_1e

    const/16 v4, 0x1a

    goto :goto_15

    :cond_1e
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3851
    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_15
    if-ne v4, v1, :cond_1f

    const/16 v1, 0x10

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v16, v16, 0x1

    add-int v1, v1, v16

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3855
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_16

    :cond_1f
    if-ne v4, v3, :cond_20

    const/16 v1, 0xf

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v16, v16, 0x1

    add-int v1, v1, v16

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3859
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_16

    :cond_20
    if-ne v4, v2, :cond_21

    const/16 v1, 0xd

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v16, v16, 0x1

    add-int v1, v1, v16

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3863
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_16

    :cond_21
    const/16 v2, 0x1a

    if-ne v4, v2, :cond_22

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v16, v16, 0x1

    add-int v1, v1, v16

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/16 v1, 0x14

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    :goto_16
    const/4 v1, 0x4

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-object v8

    :cond_22
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v3, 0x0

    return-object v3

    :cond_23
    const/4 v3, 0x0

    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-object v3

    :cond_24
    const/16 v1, 0x10

    const/16 v2, 0x1a

    const/4 v3, 0x0

    const/4 v10, 0x0

    move v4, v5

    :goto_17
    move v5, v1

    move v9, v6

    move v1, v10

    move/from16 v2, v16

    goto/16 :goto_2

    :cond_25
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-object v3
.end method

.method public final scanFieldDoubleArray2(J)[[D
    .locals 20

    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3884
    invoke-direct/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 3886
    move-object v0, v3

    check-cast v0, [[D

    return-object v3

    :cond_0
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v2, 0x1

    add-int/2addr v4, v2

    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    const/4 v7, -0x1

    if-lt v4, v6, :cond_1

    goto :goto_0

    :cond_1
    iget-object v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3891
    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x5b

    if-eq v4, v6, :cond_2

    :goto_0
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3895
    move-object v0, v3

    check-cast v0, [[D

    return-object v3

    :cond_2
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v2, 0x2

    add-int/2addr v4, v5

    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v5, :cond_3

    const/16 v4, 0x1a

    goto :goto_1

    :cond_3
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3901
    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_1
    const/16 v5, 0x10

    new-array v9, v5, [[D

    move v10, v1

    :goto_2
    if-ne v4, v6, :cond_2c

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v11, v2, 0x1

    add-int/2addr v4, v2

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v2, :cond_4

    const/16 v2, 0x1a

    goto :goto_3

    :cond_4
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3912
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_3
    new-array v4, v5, [D

    move v12, v1

    :goto_4
    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int v14, v13, v11

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    const/16 v6, 0x2d

    if-ne v2, v6, :cond_5

    move/from16 v16, v15

    goto :goto_5

    :cond_5
    move/from16 v16, v1

    :goto_5
    if-eqz v16, :cond_7

    add-int/lit8 v2, v11, 0x1

    add-int/2addr v13, v11

    iget v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v13, v11, :cond_6

    const/16 v11, 0x1a

    goto :goto_6

    :cond_6
    iget-object v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3925
    invoke-virtual {v11, v13}, Ljava/lang/String;->charAt(I)C

    move-result v11

    :goto_6
    move/from16 v19, v11

    move v11, v2

    move/from16 v2, v19

    :cond_7
    const/16 v13, 0x30

    if-lt v2, v13, :cond_2b

    const/16 v8, 0x39

    if-gt v2, v8, :cond_2b

    add-int/lit8 v2, v2, -0x30

    :goto_7
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v17, v11, 0x1

    add-int/2addr v5, v11

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v5, v1, :cond_8

    const/16 v1, 0x1a

    goto :goto_8

    :cond_8
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3935
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_8
    if-lt v1, v13, :cond_9

    if-gt v1, v8, :cond_9

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v2, v1

    move/from16 v11, v17

    const/4 v1, 0x0

    goto :goto_7

    :cond_9
    const/16 v5, 0x2e

    const/16 v15, 0xa

    if-ne v1, v5, :cond_e

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v11, v11, 0x2

    add-int v1, v1, v17

    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v5, :cond_a

    const/16 v1, 0x1a

    goto :goto_9

    :cond_a
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3951
    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_9
    if-lt v1, v13, :cond_d

    if-gt v1, v8, :cond_d

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v2, v1

    move v1, v15

    :goto_a
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v17, v11, 0x1

    add-int/2addr v5, v11

    iget v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v5, v11, :cond_b

    const/16 v5, 0x1a

    goto :goto_b

    :cond_b
    iget-object v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3961
    invoke-virtual {v11, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_b
    if-lt v5, v13, :cond_c

    if-gt v5, v8, :cond_c

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v5, v5, -0x30

    add-int/2addr v2, v5

    mul-int/lit8 v1, v1, 0xa

    move/from16 v11, v17

    goto :goto_a

    :cond_c
    move/from16 v19, v2

    move v2, v1

    move v1, v5

    move/from16 v5, v19

    goto :goto_c

    :cond_d
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3973
    move-object v0, v3

    check-cast v0, [[D

    return-object v3

    :cond_e
    move v5, v2

    const/4 v2, 0x1

    :goto_c
    const/16 v11, 0x65

    if-eq v1, v11, :cond_10

    const/16 v11, 0x45

    if-ne v1, v11, :cond_f

    goto :goto_d

    :cond_f
    const/4 v11, 0x0

    goto :goto_e

    :cond_10
    :goto_d
    const/4 v11, 0x1

    :goto_e
    if-eqz v11, :cond_16

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v18, v17, 0x1

    add-int v1, v1, v17

    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v3, :cond_11

    const/16 v1, 0x1a

    goto :goto_f

    :cond_11
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3983
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_f
    const/16 v3, 0x2b

    if-eq v1, v3, :cond_13

    if-ne v1, v6, :cond_12

    goto :goto_10

    :cond_12
    move/from16 v17, v18

    goto :goto_11

    :cond_13
    :goto_10
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v17, v17, 0x2

    add-int v1, v1, v18

    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v3, :cond_14

    const/16 v1, 0x1a

    goto :goto_11

    :cond_14
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3989
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_11
    if-lt v1, v13, :cond_16

    if-gt v1, v8, :cond_16

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v3, v17, 0x1

    add-int v1, v1, v17

    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v6, :cond_15

    const/16 v1, 0x1a

    goto :goto_12

    :cond_15
    iget-object v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3997
    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_12
    move/from16 v17, v3

    goto :goto_11

    :cond_16
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int v3, v3, v17

    sub-int/2addr v3, v14

    const/4 v6, 0x1

    sub-int/2addr v3, v6

    if-nez v11, :cond_17

    if-ge v3, v15, :cond_17

    int-to-double v5, v5

    int-to-double v2, v2

    div-double/2addr v5, v2

    if-eqz v16, :cond_18

    neg-double v5, v5

    goto :goto_13

    .line 4012
    :cond_17
    invoke-direct {v0, v14, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->subString(II)Ljava/lang/String;

    move-result-object v2

    .line 4013
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    :cond_18
    :goto_13
    array-length v2, v4

    const/4 v3, 0x3

    if-lt v12, v2, :cond_19

    array-length v2, v4

    mul-int/2addr v2, v3

    .line 4017
    div-int/lit8 v2, v2, 0x2

    new-array v2, v2, [D

    const/4 v8, 0x0

    .line 4018
    invoke-static {v4, v8, v2, v8, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v4, v2

    :cond_19
    add-int/lit8 v2, v12, 0x1

    .line 4021
    aput-wide v5, v4, v12

    const/16 v5, 0x2c

    if-ne v1, v5, :cond_1b

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v3, v17, 0x1

    add-int v1, v1, v17

    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v5, :cond_1a

    const/16 v1, 0x1a

    goto :goto_14

    :cond_1a
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 4028
    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_14
    move/from16 v17, v3

    goto/16 :goto_1b

    :cond_1b
    const/16 v6, 0x5d

    if-ne v1, v6, :cond_2a

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v17, 0x1

    add-int v1, v1, v17

    iget v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v11, :cond_1c

    const/16 v1, 0x1a

    goto :goto_15

    :cond_1c
    iget-object v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 4034
    invoke-virtual {v11, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_15
    array-length v11, v4

    if-eq v2, v11, :cond_1d

    .line 4045
    new-array v11, v2, [D

    const/4 v12, 0x0

    .line 4046
    invoke-static {v4, v12, v11, v12, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v4, v11

    goto :goto_16

    :cond_1d
    const/4 v12, 0x0

    :goto_16
    array-length v11, v9

    if-lt v10, v11, :cond_1e

    array-length v9, v9

    mul-int/2addr v9, v3

    .line 4051
    div-int/lit8 v9, v9, 0x2

    new-array v9, v9, [[D

    .line 4052
    invoke-static {v4, v12, v9, v12, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1e
    add-int/lit8 v2, v10, 0x1

    .line 4055
    aput-object v4, v9, v10

    if-ne v1, v5, :cond_20

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v17, v17, 0x2

    add-int/2addr v1, v8

    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v3, :cond_1f

    const/16 v1, 0x1a

    goto :goto_17

    :cond_1f
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 4062
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_17
    move v4, v1

    const/16 v3, 0x10

    const/16 v5, 0x1a

    const/4 v6, 0x0

    const/4 v11, 0x0

    goto/16 :goto_1a

    :cond_20
    if-ne v1, v6, :cond_29

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v17, 0x2

    add-int/2addr v1, v8

    iget v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v8, :cond_21

    const/16 v1, 0x1a

    goto :goto_18

    :cond_21
    iget-object v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 4068
    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_18
    array-length v8, v9

    if-eq v2, v8, :cond_22

    .line 4076
    new-array v8, v2, [[D

    const/4 v11, 0x0

    .line 4077
    invoke-static {v9, v11, v8, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v9, v8

    :cond_22
    if-ne v1, v5, :cond_23

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/4 v2, 0x1

    add-int/lit8 v17, v17, 0x1

    add-int v1, v1, v17

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 4083
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/16 v3, 0x10

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-object v9

    :cond_23
    const/16 v3, 0x10

    const/16 v2, 0x7d

    if-ne v1, v2, :cond_28

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v1, v4

    .line 4090
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_24

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v17, v17, 0x2

    add-int v1, v1, v17

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 4094
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_19

    :cond_24
    if-ne v1, v6, :cond_25

    const/16 v1, 0xf

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v17, v17, 0x2

    add-int v1, v1, v17

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 4098
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_19

    :cond_25
    if-ne v1, v2, :cond_26

    const/16 v1, 0xd

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v17, v17, 0x2

    add-int v1, v1, v17

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 4102
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_19

    :cond_26
    const/16 v5, 0x1a

    if-ne v1, v5, :cond_27

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v17, v17, 0x2

    add-int v1, v1, v17

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/16 v1, 0x14

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    iput-char v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    :goto_19
    const/4 v1, 0x4

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-object v9

    :cond_27
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v6, 0x0

    .line 4109
    move-object v3, v6

    check-cast v3, [[D

    return-object v6

    :cond_28
    const/4 v6, 0x0

    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 4114
    move-object v3, v6

    check-cast v3, [[D

    return-object v6

    :cond_29
    const/16 v3, 0x10

    const/16 v5, 0x1a

    const/4 v6, 0x0

    const/4 v11, 0x0

    move v4, v1

    move/from16 v17, v8

    :goto_1a
    move v10, v2

    move v5, v3

    move-object v3, v6

    move v1, v11

    move/from16 v2, v17

    goto :goto_1c

    :cond_2a
    :goto_1b
    const/16 v3, 0x10

    const/16 v5, 0x1a

    const/4 v6, 0x0

    const/4 v11, 0x0

    move v12, v2

    move v5, v3

    move-object v3, v6

    const/16 v6, 0x5b

    move v2, v1

    move v1, v11

    move/from16 v11, v17

    goto/16 :goto_4

    :cond_2b
    move-object v6, v3

    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 4039
    move-object v3, v6

    check-cast v3, [[D

    return-object v6

    :cond_2c
    move-object v6, v3

    :goto_1c
    const/16 v6, 0x5b

    goto/16 :goto_2
.end method

.method public final scanFieldFloat(J)F
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3003
    invoke-direct/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v2, 0x1

    add-int/2addr v4, v2

    .line 3008
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v4

    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int v7, v6, v5

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    const/16 v9, 0x2d

    if-ne v4, v9, :cond_1

    move v10, v8

    goto :goto_0

    :cond_1
    move v10, v1

    :goto_0
    if-eqz v10, :cond_2

    add-int/lit8 v2, v2, 0x2

    add-int/2addr v6, v5

    .line 3013
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v4

    move v5, v2

    :cond_2
    const/4 v2, -0x1

    const/16 v6, 0x30

    if-lt v4, v6, :cond_14

    const/16 v11, 0x39

    if-gt v4, v11, :cond_14

    sub-int/2addr v4, v6

    :goto_1
    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v13, v5, 0x1

    add-int/2addr v12, v5

    .line 3020
    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v12

    if-lt v12, v6, :cond_3

    if-gt v12, v11, :cond_3

    mul-int/lit8 v4, v4, 0xa

    add-int/lit8 v12, v12, -0x30

    add-int/2addr v4, v12

    move v5, v13

    goto :goto_1

    :cond_3
    const/16 v14, 0x2e

    const/16 v15, 0xa

    if-ne v12, v14, :cond_6

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v5, 0x2

    add-int/2addr v12, v13

    .line 3032
    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v12

    if-lt v12, v6, :cond_5

    if-gt v12, v11, :cond_5

    mul-int/lit8 v4, v4, 0xa

    sub-int/2addr v12, v6

    add-int/2addr v4, v12

    move v12, v15

    :goto_2
    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v14, v5, 0x1

    add-int/2addr v13, v5

    .line 3035
    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_4

    if-gt v5, v11, :cond_4

    mul-int/lit8 v4, v4, 0xa

    add-int/lit8 v5, v5, -0x30

    add-int/2addr v4, v5

    mul-int/lit8 v12, v12, 0xa

    move v5, v14

    goto :goto_2

    :cond_4
    move v13, v14

    move/from16 v16, v12

    move v12, v5

    move/from16 v5, v16

    goto :goto_3

    :cond_5
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return v3

    :cond_6
    move v5, v8

    :goto_3
    const/16 v14, 0x65

    if-eq v12, v14, :cond_7

    const/16 v14, 0x45

    if-ne v12, v14, :cond_8

    :cond_7
    move v1, v8

    :cond_8
    if-eqz v1, :cond_b

    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v14, v13, 0x1

    add-int/2addr v12, v13

    .line 3052
    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v12

    const/16 v3, 0x2b

    if-eq v12, v3, :cond_a

    if-ne v12, v9, :cond_9

    goto :goto_4

    :cond_9
    move v13, v14

    goto :goto_5

    :cond_a
    :goto_4
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v13, v13, 0x2

    add-int/2addr v3, v14

    .line 3054
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v3

    move v12, v3

    :goto_5
    if-lt v12, v6, :cond_b

    if-gt v12, v11, :cond_b

    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v9, v13, 0x1

    add-int/2addr v3, v13

    .line 3058
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v12

    move v13, v9

    goto :goto_5

    :cond_b
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v3, v13

    sub-int/2addr v3, v7

    sub-int/2addr v3, v8

    if-nez v1, :cond_c

    if-ge v3, v15, :cond_c

    int-to-float v1, v4

    int-to-float v3, v5

    div-float/2addr v1, v3

    if-eqz v10, :cond_d

    neg-float v1, v1

    goto :goto_6

    .line 3072
    :cond_c
    invoke-direct {v0, v7, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->subString(II)Ljava/lang/String;

    move-result-object v1

    .line 3073
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    :cond_d
    :goto_6
    const/16 v3, 0x10

    const/16 v4, 0x2c

    if-ne v12, v4, :cond_e

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v13, v8

    add-int/2addr v2, v13

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3082
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    const/4 v2, 0x3

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return v1

    :cond_e
    const/16 v5, 0x7d

    if-ne v12, v5, :cond_13

    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v6, v13

    .line 3089
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v6

    if-ne v6, v4, :cond_f

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v2, v13

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3093
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_7

    :cond_f
    const/16 v3, 0x5d

    if-ne v6, v3, :cond_10

    const/16 v2, 0xf

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v2, v13

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3097
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_7

    :cond_10
    if-ne v6, v5, :cond_11

    const/16 v2, 0xd

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v2, v13

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3101
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_7

    :cond_11
    const/16 v3, 0x1a

    if-ne v6, v3, :cond_12

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v2, v13

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/16 v2, 0x14

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    iput-char v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    :goto_7
    const/4 v2, 0x4

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return v1

    :cond_12
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v1, 0x0

    return v1

    :cond_13
    const/4 v1, 0x0

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return v1

    :cond_14
    move v1, v3

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return v1
.end method

.method public final scanFieldFloatArray(J)[F
    .locals 19

    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3122
    invoke-direct/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    :cond_0
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v2, 0x1

    add-int/2addr v4, v2

    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    const/4 v7, -0x1

    if-lt v4, v6, :cond_1

    goto :goto_0

    :cond_1
    iget-object v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3129
    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x5b

    if-eq v4, v6, :cond_2

    :goto_0
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-object v3

    :cond_2
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v2, 0x2

    add-int/2addr v4, v5

    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v5, :cond_3

    const/16 v4, 0x1a

    goto :goto_1

    :cond_3
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3138
    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_1
    const/16 v5, 0x10

    new-array v8, v5, [F

    move v9, v1

    :goto_2
    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int v11, v10, v2

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    const/16 v13, 0x2d

    if-ne v4, v13, :cond_4

    move v14, v12

    goto :goto_3

    :cond_4
    move v14, v1

    :goto_3
    if-eqz v14, :cond_6

    add-int/lit8 v4, v2, 0x1

    add-int/2addr v10, v2

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v10, v2, :cond_5

    const/16 v2, 0x1a

    goto :goto_4

    :cond_5
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3152
    invoke-virtual {v2, v10}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_4
    move/from16 v18, v4

    move v4, v2

    move/from16 v2, v18

    :cond_6
    const/16 v10, 0x30

    if-lt v4, v10, :cond_25

    const/16 v15, 0x39

    if-gt v4, v15, :cond_25

    add-int/lit8 v4, v4, -0x30

    :goto_5
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v16, v2, 0x1

    add-int/2addr v6, v2

    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v6, v5, :cond_7

    const/16 v5, 0x1a

    goto :goto_6

    :cond_7
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3162
    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_6
    if-lt v5, v10, :cond_8

    if-gt v5, v15, :cond_8

    mul-int/lit8 v4, v4, 0xa

    add-int/lit8 v5, v5, -0x30

    add-int/2addr v4, v5

    move/from16 v2, v16

    const/16 v5, 0x10

    goto :goto_5

    :cond_8
    const/16 v6, 0x2e

    const/16 v1, 0xa

    if-ne v5, v6, :cond_d

    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v2, 0x2

    add-int v5, v5, v16

    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v5, v6, :cond_9

    const/16 v5, 0x1a

    goto :goto_7

    :cond_9
    iget-object v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3178
    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_7
    if-lt v5, v10, :cond_c

    if-gt v5, v15, :cond_c

    mul-int/lit8 v4, v4, 0xa

    add-int/lit8 v5, v5, -0x30

    add-int/2addr v4, v5

    move v5, v1

    :goto_8
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v16, v2, 0x1

    add-int/2addr v6, v2

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v6, v2, :cond_a

    const/16 v2, 0x1a

    goto :goto_9

    :cond_a
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3187
    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_9
    if-lt v2, v10, :cond_b

    if-gt v2, v15, :cond_b

    mul-int/lit8 v4, v4, 0xa

    add-int/lit8 v2, v2, -0x30

    add-int/2addr v4, v2

    mul-int/lit8 v5, v5, 0xa

    move/from16 v2, v16

    goto :goto_8

    :cond_b
    move/from16 v18, v5

    move v5, v2

    move/from16 v2, v18

    goto :goto_a

    :cond_c
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-object v3

    :cond_d
    move v2, v12

    :goto_a
    const/16 v6, 0x65

    if-eq v5, v6, :cond_f

    const/16 v6, 0x45

    if-ne v5, v6, :cond_e

    goto :goto_b

    :cond_e
    const/4 v6, 0x0

    goto :goto_c

    :cond_f
    :goto_b
    move v6, v12

    :goto_c
    if-eqz v6, :cond_15

    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v17, v16, 0x1

    add-int v5, v5, v16

    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v5, v3, :cond_10

    const/16 v3, 0x1a

    goto :goto_d

    :cond_10
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3209
    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_d
    const/16 v5, 0x2b

    if-eq v3, v5, :cond_12

    if-ne v3, v13, :cond_11

    goto :goto_e

    :cond_11
    move v5, v3

    move/from16 v16, v17

    goto :goto_10

    :cond_12
    :goto_e
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v16, v16, 0x2

    add-int v3, v3, v17

    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v3, v5, :cond_13

    const/16 v3, 0x1a

    goto :goto_f

    :cond_13
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3215
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_f
    move v5, v3

    :goto_10
    if-lt v5, v10, :cond_15

    if-gt v5, v15, :cond_15

    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v16, 0x1

    add-int v3, v3, v16

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v3, v13, :cond_14

    const/16 v3, 0x1a

    goto :goto_11

    :cond_14
    iget-object v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3223
    invoke-virtual {v13, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_11
    move/from16 v16, v5

    goto :goto_f

    :cond_15
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int v3, v3, v16

    sub-int/2addr v3, v11

    sub-int/2addr v3, v12

    if-nez v6, :cond_16

    if-ge v3, v1, :cond_16

    int-to-float v1, v4

    int-to-float v2, v2

    div-float/2addr v1, v2

    if-eqz v14, :cond_17

    neg-float v1, v1

    goto :goto_12

    .line 3239
    :cond_16
    invoke-direct {v0, v11, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->subString(II)Ljava/lang/String;

    move-result-object v1

    .line 3240
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    :cond_17
    :goto_12
    array-length v2, v8

    const/4 v3, 0x3

    if-lt v9, v2, :cond_18

    array-length v2, v8

    mul-int/2addr v2, v3

    .line 3244
    div-int/lit8 v2, v2, 0x2

    new-array v2, v2, [F

    const/4 v4, 0x0

    .line 3245
    invoke-static {v8, v4, v2, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v8, v2

    :cond_18
    add-int/lit8 v4, v9, 0x1

    .line 3248
    aput v1, v8, v9

    const/16 v1, 0x2c

    if-ne v5, v1, :cond_1a

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v16, 0x1

    add-int v1, v1, v16

    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v3, :cond_19

    const/16 v1, 0x1a

    goto :goto_13

    :cond_19
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3255
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_13
    move v5, v1

    move/from16 v16, v2

    goto/16 :goto_17

    :cond_1a
    const/16 v2, 0x5d

    if-ne v5, v2, :cond_24

    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v16, 0x1

    add-int v5, v5, v16

    iget v9, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v5, v9, :cond_1b

    const/16 v5, 0x1a

    goto :goto_14

    :cond_1b
    iget-object v9, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3261
    invoke-virtual {v9, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_14
    array-length v9, v8

    if-eq v4, v9, :cond_1c

    .line 3272
    new-array v9, v4, [F

    const/4 v10, 0x0

    .line 3273
    invoke-static {v8, v10, v9, v10, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v8, v9

    :cond_1c
    if-ne v5, v1, :cond_1d

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int v1, v1, v16

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3279
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/16 v1, 0x10

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-object v8

    :cond_1d
    const/16 v3, 0x7d

    if-ne v5, v3, :cond_23

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v4, v6

    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v5, :cond_1e

    const/16 v4, 0x1a

    goto :goto_15

    :cond_1e
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3290
    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_15
    if-ne v4, v1, :cond_1f

    const/16 v1, 0x10

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v16, v16, 0x1

    add-int v1, v1, v16

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3294
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_16

    :cond_1f
    if-ne v4, v2, :cond_20

    const/16 v1, 0xf

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v16, v16, 0x1

    add-int v1, v1, v16

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3298
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_16

    :cond_20
    if-ne v4, v3, :cond_21

    const/16 v1, 0xd

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v16, v16, 0x1

    add-int v1, v1, v16

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3302
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_16

    :cond_21
    const/16 v2, 0x1a

    if-ne v4, v2, :cond_22

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v16, v16, 0x1

    add-int v1, v1, v16

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/16 v1, 0x14

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    :goto_16
    const/4 v1, 0x4

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-object v8

    :cond_22
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v3, 0x0

    return-object v3

    :cond_23
    const/4 v3, 0x0

    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-object v3

    :cond_24
    :goto_17
    const/16 v1, 0x10

    const/16 v2, 0x1a

    const/4 v3, 0x0

    const/4 v10, 0x0

    move v9, v4

    move v4, v5

    move/from16 v2, v16

    move v5, v1

    move v1, v10

    goto/16 :goto_2

    :cond_25
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-object v3
.end method

.method public final scanFieldFloatArray2(J)[[F
    .locals 20

    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3323
    invoke-direct/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 3325
    move-object v0, v3

    check-cast v0, [[F

    return-object v3

    :cond_0
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v2, 0x1

    add-int/2addr v4, v2

    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    const/4 v7, -0x1

    if-lt v4, v6, :cond_1

    goto :goto_0

    :cond_1
    iget-object v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3330
    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x5b

    if-eq v4, v6, :cond_2

    :goto_0
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3334
    move-object v0, v3

    check-cast v0, [[F

    return-object v3

    :cond_2
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v2, 0x2

    add-int/2addr v4, v5

    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v5, :cond_3

    const/16 v4, 0x1a

    goto :goto_1

    :cond_3
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3340
    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_1
    const/16 v5, 0x10

    new-array v9, v5, [[F

    move v10, v1

    :goto_2
    if-ne v4, v6, :cond_2c

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v11, v2, 0x1

    add-int/2addr v4, v2

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v2, :cond_4

    const/16 v2, 0x1a

    goto :goto_3

    :cond_4
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3351
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_3
    new-array v4, v5, [F

    move v12, v1

    :goto_4
    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int v14, v13, v11

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    const/16 v6, 0x2d

    if-ne v2, v6, :cond_5

    move/from16 v16, v15

    goto :goto_5

    :cond_5
    move/from16 v16, v1

    :goto_5
    if-eqz v16, :cond_7

    add-int/lit8 v2, v11, 0x1

    add-int/2addr v13, v11

    iget v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v13, v11, :cond_6

    const/16 v11, 0x1a

    goto :goto_6

    :cond_6
    iget-object v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3364
    invoke-virtual {v11, v13}, Ljava/lang/String;->charAt(I)C

    move-result v11

    :goto_6
    move/from16 v19, v11

    move v11, v2

    move/from16 v2, v19

    :cond_7
    const/16 v13, 0x30

    if-lt v2, v13, :cond_2b

    const/16 v8, 0x39

    if-gt v2, v8, :cond_2b

    add-int/lit8 v2, v2, -0x30

    :goto_7
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v17, v11, 0x1

    add-int/2addr v5, v11

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v5, v1, :cond_8

    const/16 v1, 0x1a

    goto :goto_8

    :cond_8
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3374
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_8
    if-lt v1, v13, :cond_9

    if-gt v1, v8, :cond_9

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v2, v1

    move/from16 v11, v17

    const/4 v1, 0x0

    goto :goto_7

    :cond_9
    const/16 v5, 0x2e

    const/16 v15, 0xa

    if-ne v1, v5, :cond_e

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v11, v11, 0x2

    add-int v1, v1, v17

    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v5, :cond_a

    const/16 v1, 0x1a

    goto :goto_9

    :cond_a
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3390
    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_9
    if-lt v1, v13, :cond_d

    if-gt v1, v8, :cond_d

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v2, v1

    move v1, v15

    :goto_a
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v17, v11, 0x1

    add-int/2addr v5, v11

    iget v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v5, v11, :cond_b

    const/16 v5, 0x1a

    goto :goto_b

    :cond_b
    iget-object v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3400
    invoke-virtual {v11, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_b
    if-lt v5, v13, :cond_c

    if-gt v5, v8, :cond_c

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v5, v5, -0x30

    add-int/2addr v2, v5

    mul-int/lit8 v1, v1, 0xa

    move/from16 v11, v17

    goto :goto_a

    :cond_c
    move/from16 v19, v2

    move v2, v1

    move v1, v5

    move/from16 v5, v19

    goto :goto_c

    :cond_d
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3412
    move-object v0, v3

    check-cast v0, [[F

    return-object v3

    :cond_e
    move v5, v2

    const/4 v2, 0x1

    :goto_c
    const/16 v11, 0x65

    if-eq v1, v11, :cond_10

    const/16 v11, 0x45

    if-ne v1, v11, :cond_f

    goto :goto_d

    :cond_f
    const/4 v11, 0x0

    goto :goto_e

    :cond_10
    :goto_d
    const/4 v11, 0x1

    :goto_e
    if-eqz v11, :cond_16

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v18, v17, 0x1

    add-int v1, v1, v17

    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v3, :cond_11

    const/16 v1, 0x1a

    goto :goto_f

    :cond_11
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3422
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_f
    const/16 v3, 0x2b

    if-eq v1, v3, :cond_13

    if-ne v1, v6, :cond_12

    goto :goto_10

    :cond_12
    move/from16 v17, v18

    goto :goto_11

    :cond_13
    :goto_10
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v17, v17, 0x2

    add-int v1, v1, v18

    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v3, :cond_14

    const/16 v1, 0x1a

    goto :goto_11

    :cond_14
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3428
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_11
    if-lt v1, v13, :cond_16

    if-gt v1, v8, :cond_16

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v3, v17, 0x1

    add-int v1, v1, v17

    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v6, :cond_15

    const/16 v1, 0x1a

    goto :goto_12

    :cond_15
    iget-object v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3436
    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_12
    move/from16 v17, v3

    goto :goto_11

    :cond_16
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int v3, v3, v17

    sub-int/2addr v3, v14

    const/4 v6, 0x1

    sub-int/2addr v3, v6

    if-nez v11, :cond_17

    if-ge v3, v15, :cond_17

    int-to-float v3, v5

    int-to-float v2, v2

    div-float/2addr v3, v2

    if-eqz v16, :cond_18

    neg-float v3, v3

    goto :goto_13

    .line 3451
    :cond_17
    invoke-direct {v0, v14, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->subString(II)Ljava/lang/String;

    move-result-object v2

    .line 3452
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    :cond_18
    :goto_13
    array-length v2, v4

    const/4 v5, 0x3

    if-lt v12, v2, :cond_19

    array-length v2, v4

    mul-int/2addr v2, v5

    .line 3456
    div-int/lit8 v2, v2, 0x2

    new-array v2, v2, [F

    const/4 v6, 0x0

    .line 3457
    invoke-static {v4, v6, v2, v6, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v4, v2

    :cond_19
    add-int/lit8 v2, v12, 0x1

    .line 3460
    aput v3, v4, v12

    const/16 v3, 0x2c

    if-ne v1, v3, :cond_1b

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v3, v17, 0x1

    add-int v1, v1, v17

    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v5, :cond_1a

    const/16 v1, 0x1a

    goto :goto_14

    :cond_1a
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3467
    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_14
    move/from16 v17, v3

    goto/16 :goto_1b

    :cond_1b
    const/16 v6, 0x5d

    if-ne v1, v6, :cond_2a

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v17, 0x1

    add-int v1, v1, v17

    iget v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v11, :cond_1c

    const/16 v1, 0x1a

    goto :goto_15

    :cond_1c
    iget-object v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3473
    invoke-virtual {v11, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_15
    array-length v11, v4

    if-eq v2, v11, :cond_1d

    .line 3484
    new-array v11, v2, [F

    const/4 v12, 0x0

    .line 3485
    invoke-static {v4, v12, v11, v12, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v4, v11

    goto :goto_16

    :cond_1d
    const/4 v12, 0x0

    :goto_16
    array-length v11, v9

    if-lt v10, v11, :cond_1e

    array-length v9, v9

    mul-int/2addr v9, v5

    .line 3490
    div-int/lit8 v9, v9, 0x2

    new-array v9, v9, [[F

    .line 3491
    invoke-static {v4, v12, v9, v12, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1e
    add-int/lit8 v2, v10, 0x1

    .line 3494
    aput-object v4, v9, v10

    if-ne v1, v3, :cond_20

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v17, v17, 0x2

    add-int/2addr v1, v8

    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v3, :cond_1f

    const/16 v1, 0x1a

    goto :goto_17

    :cond_1f
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3501
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_17
    move v4, v1

    const/16 v3, 0x1a

    const/16 v5, 0x10

    const/4 v6, 0x0

    const/4 v11, 0x0

    goto/16 :goto_1a

    :cond_20
    if-ne v1, v6, :cond_29

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v17, 0x2

    add-int/2addr v1, v8

    iget v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v8, :cond_21

    const/16 v1, 0x1a

    goto :goto_18

    :cond_21
    iget-object v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3507
    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_18
    array-length v8, v9

    if-eq v2, v8, :cond_22

    .line 3515
    new-array v8, v2, [[F

    const/4 v11, 0x0

    .line 3516
    invoke-static {v9, v11, v8, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v9, v8

    :cond_22
    if-ne v1, v3, :cond_23

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/4 v2, 0x1

    add-int/lit8 v17, v17, 0x1

    add-int v1, v1, v17

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3522
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/16 v5, 0x10

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-object v9

    :cond_23
    const/16 v5, 0x10

    const/16 v2, 0x7d

    if-ne v1, v2, :cond_28

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v1, v4

    .line 3529
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_24

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v17, v17, 0x2

    add-int v1, v1, v17

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3533
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_19

    :cond_24
    if-ne v1, v6, :cond_25

    const/16 v1, 0xf

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v17, v17, 0x2

    add-int v1, v1, v17

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3537
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_19

    :cond_25
    if-ne v1, v2, :cond_26

    const/16 v1, 0xd

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v17, v17, 0x2

    add-int v1, v1, v17

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3541
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_19

    :cond_26
    const/16 v3, 0x1a

    if-ne v1, v3, :cond_27

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v17, v17, 0x2

    add-int v1, v1, v17

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/16 v1, 0x14

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    iput-char v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    :goto_19
    const/4 v1, 0x4

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-object v9

    :cond_27
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v6, 0x0

    .line 3548
    move-object v3, v6

    check-cast v3, [[F

    return-object v6

    :cond_28
    const/4 v6, 0x0

    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3553
    move-object v3, v6

    check-cast v3, [[F

    return-object v6

    :cond_29
    const/16 v3, 0x1a

    const/16 v5, 0x10

    const/4 v6, 0x0

    const/4 v11, 0x0

    move v4, v1

    move/from16 v17, v8

    :goto_1a
    move v10, v2

    move-object v3, v6

    move v1, v11

    move/from16 v2, v17

    goto :goto_1c

    :cond_2a
    :goto_1b
    const/16 v3, 0x1a

    const/16 v5, 0x10

    const/4 v6, 0x0

    const/4 v11, 0x0

    move v12, v2

    move-object v3, v6

    const/16 v6, 0x5b

    move v2, v1

    move v1, v11

    move/from16 v11, v17

    goto/16 :goto_4

    :cond_2b
    move-object v6, v3

    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3478
    move-object v3, v6

    check-cast v3, [[F

    return-object v6

    :cond_2c
    move-object v6, v3

    :goto_1c
    const/16 v6, 0x5b

    goto/16 :goto_2
.end method

.method public scanFieldInt(J)I
    .locals 12

    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2178
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result p1

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v1, p1, 0x1

    add-int/2addr p2, p1

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    const/16 v3, 0x1a

    if-lt p2, v2, :cond_1

    move p2, v3

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2187
    invoke-virtual {v2, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    :goto_0
    const/16 v2, 0x22

    const/4 v4, 0x1

    if-ne p2, v2, :cond_2

    move v5, v4

    goto :goto_1

    :cond_2
    move v5, v0

    :goto_1
    if-eqz v5, :cond_4

    iget p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 p1, p1, 0x2

    add-int/2addr p2, v1

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p2, v1, :cond_3

    move p2, v3

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2196
    invoke-virtual {v1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    :goto_2
    move v1, p1

    move v5, v4

    :cond_4
    const/16 p1, 0x2d

    if-ne p2, p1, :cond_5

    move p1, v4

    goto :goto_3

    :cond_5
    move p1, v0

    :goto_3
    if-eqz p1, :cond_7

    iget p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v1, 0x1

    add-int/2addr p2, v1

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p2, v1, :cond_6

    move p2, v3

    goto :goto_4

    :cond_6
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2204
    invoke-virtual {v1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    :goto_4
    move v1, v6

    :cond_7
    const/16 v6, 0x30

    const/4 v7, -0x1

    if-lt p2, v6, :cond_1e

    const/16 v8, 0x39

    if-gt p2, v8, :cond_1e

    sub-int/2addr p2, v6

    :goto_5
    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v10, v1, 0x1

    add-int/2addr v9, v1

    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v9, v11, :cond_8

    move v9, v3

    goto :goto_6

    :cond_8
    iget-object v11, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2215
    invoke-virtual {v11, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    :goto_6
    if-lt v9, v6, :cond_9

    if-gt v9, v8, :cond_9

    mul-int/lit8 p2, p2, 0xa

    add-int/lit8 v9, v9, -0x30

    add-int/2addr p2, v9

    move v1, v10

    goto :goto_5

    :cond_9
    const/16 v6, 0x2e

    if-ne v9, v6, :cond_a

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return v0

    :cond_a
    if-ne v9, v2, :cond_d

    if-nez v5, :cond_b

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return v0

    :cond_b
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v1, v1, 0x2

    add-int/2addr v2, v10

    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v5, :cond_c

    move v9, v3

    goto :goto_7

    :cond_c
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2229
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move v9, v2

    :goto_7
    move v10, v1

    :cond_d
    if-gez p2, :cond_e

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return v0

    :cond_e
    :goto_8
    const/16 v1, 0x10

    const/16 v2, 0x2c

    if-ne v9, v2, :cond_11

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v10, v4

    add-int/2addr v0, v10

    add-int/2addr v0, v4

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v2, :cond_f

    goto :goto_9

    :cond_f
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2252
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_9
    iput-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/4 v0, 0x3

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-eqz p1, :cond_10

    neg-int p2, p2

    :cond_10
    return p2

    :cond_11
    const/16 v5, 0xd

    const/16 v6, 0x20

    if-gt v9, v6, :cond_14

    if-eq v9, v6, :cond_12

    const/16 v6, 0xa

    if-eq v9, v6, :cond_12

    if-eq v9, v5, :cond_12

    const/16 v6, 0x9

    if-eq v9, v6, :cond_12

    const/16 v6, 0xc

    if-eq v9, v6, :cond_12

    const/16 v6, 0x8

    if-ne v9, v6, :cond_14

    :cond_12
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v10, 0x1

    add-int/2addr v1, v10

    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v5, :cond_13

    move v9, v3

    goto :goto_a

    :cond_13
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2267
    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move v9, v1

    :goto_a
    move v10, v2

    goto :goto_8

    :cond_14
    const/16 v6, 0x7d

    if-ne v9, v6, :cond_1d

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v8, v10

    .line 2274
    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v8

    if-ne v8, v2, :cond_16

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v10

    add-int/2addr v0, v4

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v1, :cond_15

    goto :goto_b

    :cond_15
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2283
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_b
    iput-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_e

    :cond_16
    const/16 v1, 0x5d

    if-ne v8, v1, :cond_18

    const/16 v0, 0xf

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v10

    add-int/2addr v0, v4

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v1, :cond_17

    goto :goto_c

    :cond_17
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2293
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_c
    iput-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_e

    :cond_18
    if-ne v8, v6, :cond_1a

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v10

    add-int/2addr v0, v4

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v1, :cond_19

    goto :goto_d

    :cond_19
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2303
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_d
    iput-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_e

    :cond_1a
    if-ne v8, v3, :cond_1c

    const/16 v0, 0x14

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v10

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    :goto_e
    const/4 v0, 0x4

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-eqz p1, :cond_1b

    neg-int p2, p2

    :cond_1b
    return p2

    :cond_1c
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return v0

    :cond_1d
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return v0

    :cond_1e
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return v0
.end method

.method public final scanFieldIntArray(J)[I
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2325
    invoke-direct/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    :cond_0
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v2, 0x1

    add-int/2addr v4, v2

    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    const/4 v7, -0x1

    if-lt v4, v6, :cond_1

    goto :goto_0

    :cond_1
    iget-object v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2333
    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x5b

    if-eq v4, v6, :cond_2

    :goto_0
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-object v3

    :cond_2
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v2, 0x2

    add-int/2addr v4, v5

    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v5, :cond_3

    const/16 v4, 0x1a

    goto :goto_1

    :cond_3
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2342
    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_1
    const/16 v5, 0x10

    new-array v9, v5, [I

    const/16 v10, 0x2c

    const/4 v11, 0x3

    const/16 v12, 0x5d

    const/4 v13, 0x1

    if-ne v4, v12, :cond_5

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v2, v11

    add-int/2addr v4, v6

    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v6, :cond_4

    const/16 v4, 0x1a

    goto :goto_2

    :cond_4
    iget-object v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2353
    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_2
    move v3, v1

    goto/16 :goto_a

    :cond_5
    move v2, v1

    :goto_3
    const/16 v14, 0x2d

    if-ne v4, v14, :cond_7

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v14, v6, 0x1

    add-int/2addr v4, v6

    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v6, :cond_6

    const/16 v4, 0x1a

    goto :goto_4

    :cond_6
    iget-object v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2362
    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_4
    move v6, v14

    move v14, v13

    goto :goto_5

    :cond_7
    move v14, v1

    :goto_5
    const/16 v15, 0x30

    if-lt v4, v15, :cond_18

    const/16 v3, 0x39

    if-gt v4, v3, :cond_17

    add-int/lit8 v4, v4, -0x30

    :goto_6
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v16, v6, 0x1

    add-int/2addr v7, v6

    iget v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v7, v8, :cond_8

    const/16 v7, 0x1a

    goto :goto_7

    :cond_8
    iget-object v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2372
    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    :goto_7
    if-lt v7, v15, :cond_9

    if-gt v7, v3, :cond_9

    mul-int/lit8 v4, v4, 0xa

    add-int/lit8 v7, v7, -0x30

    add-int/2addr v4, v7

    move/from16 v6, v16

    goto :goto_6

    :cond_9
    array-length v3, v9

    if-lt v2, v3, :cond_a

    array-length v3, v9

    mul-int/2addr v3, v11

    .line 2382
    div-int/lit8 v3, v3, 0x2

    new-array v3, v3, [I

    .line 2383
    invoke-static {v9, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v9, v3

    :cond_a
    add-int/lit8 v3, v2, 0x1

    if-eqz v14, :cond_b

    neg-int v4, v4

    .line 2386
    :cond_b
    aput v4, v9, v2

    if-ne v7, v10, :cond_d

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v6, 0x2

    add-int v2, v2, v16

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v4, :cond_c

    const/16 v2, 0x1a

    goto :goto_8

    :cond_c
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2393
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_8
    move v7, v2

    move/from16 v16, v6

    goto/16 :goto_c

    :cond_d
    if-ne v7, v12, :cond_16

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v6, 0x2

    add-int v2, v2, v16

    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v6, :cond_e

    const/16 v2, 0x1a

    goto :goto_9

    :cond_e
    iget-object v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2399
    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_9
    move/from16 v17, v4

    move v4, v2

    move/from16 v2, v17

    :goto_a
    array-length v6, v9

    if-eq v3, v6, :cond_f

    .line 2411
    new-array v6, v3, [I

    .line 2412
    invoke-static {v9, v1, v6, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v9, v6

    :cond_f
    if-ne v4, v10, :cond_10

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v2, v13

    add-int/2addr v1, v2

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2418
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-object v9

    :cond_10
    const/16 v1, 0x7d

    if-ne v4, v1, :cond_15

    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v3, v2

    .line 2425
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v3

    if-ne v3, v10, :cond_11

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2429
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_b

    :cond_11
    if-ne v3, v12, :cond_12

    const/16 v1, 0xf

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2433
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_b

    :cond_12
    if-ne v3, v1, :cond_13

    const/16 v1, 0xd

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2437
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_b

    :cond_13
    const/16 v4, 0x1a

    if-ne v3, v4, :cond_14

    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/16 v1, 0x14

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    iput-char v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    :goto_b
    const/4 v1, 0x4

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-object v9

    :cond_14
    const/4 v2, -0x1

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v6, 0x0

    return-object v6

    :cond_15
    const/4 v2, -0x1

    const/4 v6, 0x0

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-object v6

    :cond_16
    :goto_c
    const/4 v2, -0x1

    const/16 v4, 0x1a

    const/4 v6, 0x0

    move v4, v7

    move v7, v2

    move v2, v3

    move-object v3, v6

    move/from16 v6, v16

    goto/16 :goto_3

    :cond_17
    move v2, v7

    const/4 v6, 0x0

    goto :goto_d

    :cond_18
    move-object v6, v3

    move v2, v7

    :goto_d
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-object v6
.end method

.method public scanFieldLong(J)J
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2458
    invoke-direct/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result v2

    const-wide/16 v3, 0x0

    if-nez v2, :cond_0

    return-wide v3

    :cond_0
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v2, 0x1

    add-int/2addr v5, v2

    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v5, v7, :cond_1

    const/16 v5, 0x1a

    goto :goto_0

    :cond_1
    iget-object v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2469
    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_0
    const/16 v7, 0x22

    const/4 v9, 0x1

    if-ne v5, v7, :cond_2

    move v10, v9

    goto :goto_1

    :cond_2
    move v10, v1

    :goto_1
    if-eqz v10, :cond_4

    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v2, 0x2

    add-int/2addr v5, v6

    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v5, v6, :cond_3

    const/16 v5, 0x1a

    goto :goto_2

    :cond_3
    iget-object v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2479
    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_2
    move v6, v2

    :cond_4
    const/16 v2, 0x2d

    if-ne v5, v2, :cond_5

    move v1, v9

    :cond_5
    if-eqz v1, :cond_7

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v6, 0x1

    add-int/2addr v2, v6

    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v6, :cond_6

    const/16 v2, 0x1a

    goto :goto_3

    :cond_6
    iget-object v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2487
    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_3
    move v6, v5

    move v5, v2

    :cond_7
    const/16 v2, 0x30

    const/4 v11, -0x1

    if-lt v5, v2, :cond_1b

    const/16 v12, 0x39

    if-gt v5, v12, :cond_1b

    sub-int/2addr v5, v2

    int-to-long v13, v5

    :goto_4
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v15, v6, 0x1

    add-int/2addr v5, v6

    iget v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v5, v8, :cond_8

    const/16 v5, 0x1a

    goto :goto_5

    :cond_8
    iget-object v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2499
    invoke-virtual {v8, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_5
    if-lt v5, v2, :cond_9

    if-gt v5, v12, :cond_9

    const-wide/16 v16, 0xa

    mul-long v13, v13, v16

    add-int/lit8 v5, v5, -0x30

    int-to-long v5, v5

    add-long/2addr v13, v5

    move v6, v15

    goto :goto_4

    :cond_9
    const/16 v2, 0x2e

    if-ne v5, v2, :cond_a

    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-wide v3

    :cond_a
    if-ne v5, v7, :cond_d

    if-nez v10, :cond_b

    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-wide v3

    :cond_b
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v6, 0x2

    add-int/2addr v2, v15

    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v5, :cond_c

    const/16 v5, 0x1a

    goto :goto_6

    :cond_c
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2514
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move v5, v2

    :goto_6
    move v15, v6

    :cond_d
    cmp-long v2, v13, v3

    if-gez v2, :cond_e

    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-wide v3

    :cond_e
    const/16 v2, 0x10

    const/16 v6, 0x2c

    if-ne v5, v6, :cond_11

    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v15, v9

    add-int/2addr v3, v15

    add-int/2addr v3, v9

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v3, v4, :cond_f

    const/16 v8, 0x1a

    goto :goto_7

    :cond_f
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2536
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_7
    iput-char v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/4 v3, 0x3

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-eqz v1, :cond_10

    neg-long v13, v13

    :cond_10
    return-wide v13

    :cond_11
    const/16 v7, 0x7d

    if-ne v5, v7, :cond_1a

    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v5, v15

    .line 2544
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v5

    if-ne v5, v6, :cond_13

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v2, v15

    add-int/2addr v2, v9

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v3, :cond_12

    const/16 v8, 0x1a

    goto :goto_8

    :cond_12
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2553
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_8
    iput-char v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_b

    :cond_13
    const/16 v2, 0x5d

    if-ne v5, v2, :cond_15

    const/16 v2, 0xf

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v2, v15

    add-int/2addr v2, v9

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v3, :cond_14

    const/16 v8, 0x1a

    goto :goto_9

    :cond_14
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2563
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_9
    iput-char v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_b

    :cond_15
    if-ne v5, v7, :cond_17

    const/16 v2, 0xd

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v2, v15

    add-int/2addr v2, v9

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v3, :cond_16

    const/16 v8, 0x1a

    goto :goto_a

    :cond_16
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2573
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_a
    iput-char v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_b

    :cond_17
    const/16 v2, 0x1a

    if-ne v5, v2, :cond_19

    const/16 v3, 0x14

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v3, v15

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    :goto_b
    const/4 v2, 0x4

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-eqz v1, :cond_18

    neg-long v13, v13

    :cond_18
    return-wide v13

    :cond_19
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-wide v3

    :cond_1a
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-wide v3

    :cond_1b
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-wide v3
.end method

.method public scanFieldString(J)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2595
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v1, p1, 0x1

    add-int/2addr p2, p1

    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    const-string v2, "unclosed str, "

    if-ge p2, p1, :cond_11

    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2606
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 p2, 0x22

    const/4 v3, -0x1

    if-eq p1, p2, :cond_1

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    iget-object p0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->stringDefaultValue:Ljava/lang/String;

    return-object p0

    :cond_1
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr p1, v1

    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2619
    invoke-virtual {v4, p2, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-eq v4, v3, :cond_10

    sget-boolean v2, Lcom/alibaba/fastjson/parser/JSONLexer;->V6:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2626
    invoke-virtual {v2, p1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    sub-int v2, v4, p1

    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v5, v1

    .line 2629
    invoke-virtual {p0, v5, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->sub_chars(II)[C

    move-result-object v5

    .line 2630
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5, v0, v2}, Ljava/lang/String;-><init>([CII)V

    move-object v2, v6

    :goto_0
    const/16 v5, 0x5c

    .line 2633
    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-eq v6, v3, :cond_6

    move v2, v0

    :goto_1
    add-int/lit8 v6, v4, -0x1

    move v7, v0

    :goto_2
    if-ltz v6, :cond_3

    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2637
    invoke-virtual {v8, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v5, :cond_3

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v6, v6, -0x1

    const/4 v2, 0x1

    goto :goto_2

    .line 2644
    :cond_3
    rem-int/lit8 v7, v7, 0x2

    if-nez v7, :cond_5

    sub-int p1, v4, p1

    iget p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr p2, v1

    .line 2651
    invoke-virtual {p0, p2, p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->sub_chars(II)[C

    move-result-object p2

    if-eqz v2, :cond_4

    .line 2653
    invoke-static {p2, p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->readString([CI)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 2655
    :cond_4
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p2, v0, p1}, Ljava/lang/String;-><init>([CII)V

    .line 2656
    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v3, :cond_6

    .line 2657
    invoke-static {p2, p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->readString([CI)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_5
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    add-int/lit8 v4, v4, 0x1

    .line 2647
    invoke-virtual {v6, p2, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    goto :goto_1

    :cond_6
    :goto_3
    add-int/lit8 p1, v4, 0x1

    iget p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    const/16 v0, 0x1a

    if-lt p1, p2, :cond_7

    move p1, v0

    goto :goto_4

    :cond_7
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2668
    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    :goto_4
    const/16 p2, 0x10

    const/16 v1, 0x2c

    if-ne p1, v1, :cond_9

    add-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, p1, :cond_8

    goto :goto_5

    :cond_8
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2678
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_5
    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/4 p1, 0x3

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    iput p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-object v2

    :cond_9
    const/16 v5, 0x7d

    if-ne p1, v5, :cond_f

    add-int/lit8 v4, v4, 0x2

    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, p1, :cond_a

    move p1, v0

    goto :goto_6

    :cond_a
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2690
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result p1

    :goto_6
    if-ne p1, v1, :cond_b

    iput p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2695
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_7

    :cond_b
    const/16 p2, 0x5d

    if-ne p1, p2, :cond_c

    const/16 p1, 0xf

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2699
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_7

    :cond_c
    if-ne p1, v5, :cond_d

    const/16 p1, 0xd

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2703
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_7

    :cond_d
    if-ne p1, v0, :cond_e

    const/16 p1, 0x14

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    :goto_7
    const/4 p1, 0x4

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-object v2

    :cond_e
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    iget-object p0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->stringDefaultValue:Ljava/lang/String;

    return-object p0

    :cond_f
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    iget-object p0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->stringDefaultValue:Ljava/lang/String;

    return-object p0

    .line 2621
    :cond_10
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2604
    :cond_11
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public scanFieldSymbol(J)J
    .locals 9

    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 4123
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result p1

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    return-wide v0

    :cond_0
    iget p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, p1, 0x1

    add-int/2addr p2, p1

    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    const/4 v3, -0x1

    if-lt p2, p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 4131
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 p2, 0x22

    if-eq p1, p2, :cond_2

    :goto_0
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-wide v0

    :cond_2
    const-wide v4, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    :goto_1
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v2, 0x1

    add-int/2addr p1, v2

    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    const/16 v8, 0x1a

    if-lt p1, v7, :cond_3

    move p1, v8

    goto :goto_2

    :cond_3
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 4144
    invoke-virtual {v7, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    :goto_2
    if-ne p1, p2, :cond_d

    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 p2, v2, 0x2

    add-int/2addr p1, v6

    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p1, v6, :cond_4

    move p1, v8

    goto :goto_3

    :cond_4
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 4150
    invoke-virtual {v6, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    :goto_3
    const/16 v6, 0x2c

    if-ne p1, v6, :cond_6

    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v2, 0x1

    add-int/2addr p1, v2

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p1, p2, :cond_5

    goto :goto_4

    :cond_5
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 4170
    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_4
    iput-char v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/4 p1, 0x3

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-wide v4

    :cond_6
    const/16 v7, 0x7d

    if-ne p1, v7, :cond_c

    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr p1, p2

    iget p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p1, p2, :cond_7

    move p1, v8

    goto :goto_5

    :cond_7
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 4180
    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    :goto_5
    if-ne p1, v6, :cond_8

    const/16 p1, 0x10

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v2, 0x2

    add-int/2addr p1, v2

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 4184
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_6

    :cond_8
    const/16 p2, 0x5d

    if-ne p1, p2, :cond_9

    const/16 p1, 0xf

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v2, 0x2

    add-int/2addr p1, v2

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 4188
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_6

    :cond_9
    if-ne p1, v7, :cond_a

    const/16 p1, 0xd

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v2, 0x2

    add-int/2addr p1, v2

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 4192
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_6

    :cond_a
    if-ne p1, v8, :cond_b

    const/16 p1, 0x14

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v2, 0x2

    add-int/2addr p1, v2

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput-char v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    :goto_6
    const/4 p1, 0x4

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-wide v4

    :cond_b
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-wide v0

    :cond_c
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-wide v0

    :cond_d
    int-to-long v7, p1

    xor-long/2addr v4, v7

    const-wide v7, 0x100000001b3L

    mul-long/2addr v4, v7

    const/16 v2, 0x5c

    if-ne p1, v2, :cond_e

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-wide v0

    :cond_e
    move v2, v6

    goto/16 :goto_1
.end method

.method public scanISO8601DateIfMatch(Z)Z
    .locals 2

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v0, v1

    .line 4211
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanISO8601DateIfMatch(ZI)Z

    move-result p0

    return p0
.end method

.method public scanISO8601DateIfMatch(ZI)Z
    .locals 35

    move-object/from16 v9, p0

    move/from16 v10, p2

    const/16 v0, 0x2f

    const/16 v11, 0xd

    const/16 v12, 0x39

    const/4 v13, 0x6

    const/4 v14, 0x3

    const/4 v15, 0x2

    const/4 v8, 0x5

    const/16 v16, 0x1

    const/16 v7, 0x30

    const/4 v6, 0x0

    if-nez p1, :cond_4

    if-le v10, v11, :cond_4

    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 4216
    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v1

    iget v2, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v2, 0x1

    .line 4217
    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    iget v3, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v3, v15

    .line 4218
    invoke-virtual {v9, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v3

    iget v4, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v4, v14

    .line 4219
    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v4

    iget v5, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v5, 0x4

    .line 4220
    invoke-virtual {v9, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v5

    iget v11, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v11, v8

    .line 4221
    invoke-virtual {v9, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v11

    iget v14, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v14, v10

    add-int/lit8 v14, v14, -0x1

    .line 4223
    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v14

    iget v8, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v8, v10

    sub-int/2addr v8, v15

    .line 4224
    invoke-virtual {v9, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v8

    if-ne v1, v0, :cond_4

    const/16 v1, 0x44

    if-ne v2, v1, :cond_4

    const/16 v1, 0x61

    if-ne v3, v1, :cond_4

    const/16 v1, 0x74

    if-ne v4, v1, :cond_4

    const/16 v1, 0x65

    if-ne v5, v1, :cond_4

    const/16 v1, 0x28

    if-ne v11, v1, :cond_4

    if-ne v14, v0, :cond_4

    const/16 v1, 0x29

    if-ne v8, v1, :cond_4

    const/4 v0, -0x1

    move v1, v13

    :goto_0
    if-ge v1, v10, :cond_2

    iget v2, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v2, v1

    .line 4229
    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    const/16 v3, 0x2b

    if-ne v2, v3, :cond_0

    move v0, v1

    goto :goto_1

    :cond_0
    if-lt v2, v7, :cond_2

    if-le v2, v12, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    return v6

    :cond_3
    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v1, v13

    sub-int/2addr v0, v1

    .line 4240
    invoke-direct {v9, v1, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->subString(II)Ljava/lang/String;

    move-result-object v0

    .line 4241
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iget-object v2, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->timeZone:Ljava/util/TimeZone;

    iget-object v3, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->locale:Ljava/util/Locale;

    .line 4243
    invoke-static {v2, v3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    .line 4244
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v0, 0x5

    iput v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return v16

    :cond_4
    const/16 v11, 0x54

    const/16 v14, 0x10

    const/16 v4, 0x8

    const/16 v3, 0x9

    const/16 v2, 0xe

    const/16 v1, 0x2d

    const/16 v20, 0xa

    if-eq v10, v4, :cond_3f

    if-eq v10, v2, :cond_3f

    if-ne v10, v14, :cond_6

    iget v2, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v2, 0xa

    .line 4254
    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    if-eq v2, v11, :cond_5

    const/16 v5, 0x20

    if-eq v2, v5, :cond_5

    goto :goto_4

    :cond_5
    :goto_3
    move v8, v1

    move/from16 v21, v3

    move v7, v4

    move v12, v6

    move v13, v14

    const/4 v11, 0x5

    const/16 v14, 0xe

    const/16 v15, 0xb

    goto/16 :goto_18

    :cond_6
    :goto_4
    const/16 v2, 0x11

    if-ne v10, v2, :cond_7

    iget v2, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v2, v13

    .line 4255
    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    if-eq v2, v1, :cond_7

    goto :goto_3

    :cond_7
    if-ge v10, v3, :cond_8

    return v6

    :cond_8
    iget v2, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 4375
    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    iget v5, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v5, 0x1

    .line 4376
    invoke-virtual {v9, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v5

    iget v14, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v14, v15

    .line 4377
    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v14

    iget v7, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/16 v18, 0x3

    add-int/lit8 v7, v7, 0x3

    .line 4378
    invoke-virtual {v9, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v7

    iget v8, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v8, 0x4

    .line 4379
    invoke-virtual {v9, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v8

    iget v12, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/16 v19, 0x5

    add-int/lit8 v12, v12, 0x5

    .line 4380
    invoke-virtual {v9, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v12

    iget v15, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v15, v13

    .line 4381
    invoke-virtual {v9, v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v15

    iget v13, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v13, v13, 0x7

    .line 4382
    invoke-virtual {v9, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v13

    iget v11, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v11, v4

    .line 4383
    invoke-virtual {v9, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v11

    iget v4, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v4, v3

    .line 4384
    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v4

    const/16 v6, 0x65e5

    if-ne v8, v1, :cond_9

    if-eq v13, v1, :cond_a

    :cond_9
    if-ne v8, v0, :cond_b

    if-ne v13, v0, :cond_b

    :cond_a
    move/from16 v13, v20

    const v8, 0xc77c

    :goto_5
    move/from16 v34, v11

    move v11, v4

    move v4, v7

    move/from16 v7, v34

    goto/16 :goto_e

    :cond_b
    if-ne v8, v1, :cond_d

    if-ne v15, v1, :cond_d

    const/16 v0, 0x20

    if-ne v11, v0, :cond_c

    move v4, v7

    move v15, v12

    move v11, v13

    const/16 v7, 0x30

    const v8, 0xc77c

    const/16 v12, 0x30

    const/16 v13, 0x8

    goto/16 :goto_e

    :cond_c
    move v4, v7

    move v15, v12

    move v7, v13

    const v8, 0xc77c

    const/16 v12, 0x30

    move v13, v3

    goto/16 :goto_e

    :cond_d
    const/16 v0, 0x2e

    if-ne v14, v0, :cond_e

    const/16 v0, 0x2e

    if-eq v12, v0, :cond_f

    :cond_e
    if-ne v14, v1, :cond_10

    if-ne v12, v1, :cond_10

    :cond_f
    move v12, v7

    move v14, v11

    move v7, v2

    move v11, v5

    move v5, v13

    move v2, v15

    move/from16 v13, v20

    move v15, v8

    const v8, 0xc77c

    goto/16 :goto_e

    :cond_10
    const/16 v0, 0x5e74

    if-eq v8, v0, :cond_12

    const v0, 0xb144

    if-ne v8, v0, :cond_11

    goto :goto_6

    :cond_11
    const/4 v0, 0x0

    return v0

    :cond_12
    :goto_6
    const/16 v0, 0x6708

    if-eq v13, v0, :cond_1a

    const v0, 0xc6d4

    if-ne v13, v0, :cond_13

    goto :goto_b

    :cond_13
    const/16 v0, 0x6708

    if-eq v15, v0, :cond_15

    const v0, 0xc6d4

    if-ne v15, v0, :cond_14

    goto :goto_7

    :cond_14
    const/4 v0, 0x0

    return v0

    :cond_15
    :goto_7
    const/4 v0, 0x0

    const v8, 0xc77c

    if-eq v11, v6, :cond_19

    if-ne v11, v8, :cond_16

    goto :goto_9

    :cond_16
    if-eq v4, v6, :cond_18

    if-ne v4, v8, :cond_17

    goto :goto_8

    :cond_17
    return v0

    :cond_18
    :goto_8
    move v4, v7

    move v15, v12

    move v7, v13

    move/from16 v13, v20

    goto :goto_a

    :cond_19
    :goto_9
    move v4, v7

    move v15, v12

    move v11, v13

    move/from16 v13, v20

    const/16 v7, 0x30

    :goto_a
    const/16 v12, 0x30

    goto :goto_e

    :cond_1a
    :goto_b
    const v8, 0xc77c

    if-eq v4, v6, :cond_1e

    if-ne v4, v8, :cond_1b

    goto :goto_d

    :cond_1b
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v0, 0xa

    .line 4441
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    if-eq v0, v6, :cond_1d

    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v0, 0xa

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    if-ne v0, v8, :cond_1c

    goto :goto_c

    :cond_1c
    const/4 v0, 0x0

    return v0

    :cond_1d
    :goto_c
    const/16 v13, 0xb

    goto/16 :goto_5

    :cond_1e
    :goto_d
    move v4, v7

    move/from16 v13, v20

    const/16 v7, 0x30

    :goto_e
    move/from16 v26, v2

    move/from16 v27, v5

    move/from16 v28, v14

    move/from16 v29, v4

    move/from16 v30, v12

    move/from16 v31, v15

    move/from16 v32, v7

    move/from16 v33, v11

    .line 4468
    invoke-static/range {v26 .. v33}, Lcom/alibaba/fastjson/parser/JSONLexer;->checkDate(CCCCCCII)Z

    move-result v0

    if-nez v0, :cond_1f

    const/16 v25, 0x0

    return v25

    :cond_1f
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move v10, v1

    move v1, v2

    move v2, v5

    move/from16 v21, v3

    move v3, v14

    const/16 v14, 0x8

    const/16 v14, 0x3a

    move v5, v12

    move v14, v6

    move/from16 v12, v25

    move v6, v15

    const/16 v15, 0x30

    move v15, v8

    move v8, v11

    .line 4472
    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->setCalendar(CCCCCCCC)V

    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v13

    .line 4474
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v7

    const/16 v0, 0x54

    if-eq v7, v0, :cond_27

    const/16 v0, 0x20

    if-ne v7, v0, :cond_20

    if-nez p1, :cond_20

    goto/16 :goto_12

    :cond_20
    const/16 v0, 0x22

    if-eq v7, v0, :cond_26

    const/16 v0, 0x1a

    if-eq v7, v0, :cond_26

    if-eq v7, v14, :cond_26

    if-ne v7, v15, :cond_21

    goto :goto_11

    :cond_21
    const/16 v0, 0x2b

    if-eq v7, v0, :cond_23

    if-ne v7, v10, :cond_22

    goto :goto_f

    :cond_22
    return v12

    :cond_23
    :goto_f
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    add-int/lit8 v1, v13, 0x6

    if-ne v0, v1, :cond_25

    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v13

    const/4 v1, 0x3

    add-int/2addr v0, v1

    .line 4491
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    const/16 v1, 0x3a

    if-ne v0, v1, :cond_25

    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v13

    add-int/lit8 v0, v0, 0x4

    .line 4492
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    if-ne v0, v1, :cond_25

    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v13

    const/4 v11, 0x5

    add-int/2addr v0, v11

    .line 4493
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    if-eq v0, v1, :cond_24

    goto :goto_10

    :cond_24
    const/16 v1, 0x30

    const/16 v2, 0x30

    const/16 v3, 0x30

    const/16 v4, 0x30

    const/16 v5, 0x30

    const/16 v6, 0x30

    move-object/from16 v0, p0

    .line 4497
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->setTime(CCCCCC)V

    iget-object v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    const/16 v14, 0xe

    .line 4498
    invoke-virtual {v0, v14, v12}, Ljava/util/Calendar;->set(II)V

    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v13

    add-int/lit8 v0, v0, 0x1

    .line 4499
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v1, v13

    const/4 v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v1

    invoke-virtual {v9, v7, v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->setTimeZone(CCC)V

    return v16

    :cond_25
    :goto_10
    return v12

    :cond_26
    :goto_11
    const/4 v11, 0x5

    const/16 v14, 0xe

    iget-object v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    const/16 v15, 0xb

    .line 4480
    invoke-virtual {v0, v15, v12}, Ljava/util/Calendar;->set(II)V

    iget-object v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xc

    .line 4481
    invoke-virtual {v0, v1, v12}, Ljava/util/Calendar;->set(II)V

    iget-object v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xd

    .line 4482
    invoke-virtual {v0, v1, v12}, Ljava/util/Calendar;->set(II)V

    iget-object v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    .line 4483
    invoke-virtual {v0, v14, v12}, Ljava/util/Calendar;->set(II)V

    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v13

    iput v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 4485
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    iput-char v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    iput v11, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return v16

    :cond_27
    :goto_12
    const/4 v11, 0x5

    const/16 v14, 0xe

    const/16 v15, 0xb

    add-int/lit8 v7, v13, 0x9

    move v8, v10

    move/from16 v10, p2

    if-ge v10, v7, :cond_28

    return v12

    :cond_28
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v13

    const/4 v1, 0x3

    add-int/2addr v0, v1

    .line 4507
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_29

    return v12

    :cond_29
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v13

    const/4 v2, 0x6

    add-int/2addr v0, v2

    .line 4510
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    if-eq v0, v1, :cond_2a

    return v12

    :cond_2a
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v13

    add-int/lit8 v0, v0, 0x1

    .line 4514
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v17

    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v13

    const/4 v1, 0x2

    add-int/2addr v0, v1

    .line 4515
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v19

    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v13

    add-int/lit8 v0, v0, 0x4

    .line 4516
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v22

    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v13

    add-int/2addr v0, v11

    .line 4517
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v23

    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v13

    add-int/lit8 v0, v0, 0x7

    .line 4518
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v25

    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v13

    const/16 v1, 0x8

    add-int/2addr v0, v1

    .line 4519
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v24

    move/from16 v1, v17

    move/from16 v2, v19

    move/from16 v3, v22

    move/from16 v4, v23

    move/from16 v5, v25

    move/from16 v6, v24

    .line 4521
    invoke-static/range {v1 .. v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->checkTime(CCCCCC)Z

    move-result v0

    if-nez v0, :cond_2b

    return v12

    :cond_2b
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v19

    move/from16 v3, v22

    move/from16 v4, v23

    move/from16 v5, v25

    move/from16 v6, v24

    .line 4525
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->setTime(CCCCCC)V

    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v13

    add-int/lit8 v0, v0, 0x9

    .line 4527
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_3d

    add-int/lit8 v0, v13, 0xb

    if-ge v10, v0, :cond_2c

    return v12

    :cond_2c
    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v1, v13

    add-int/lit8 v1, v1, 0xa

    .line 4552
    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-lt v1, v2, :cond_3c

    const/16 v3, 0x39

    if-le v1, v3, :cond_2d

    goto/16 :goto_17

    :cond_2d
    sub-int/2addr v1, v2

    if-le v10, v0, :cond_2e

    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v13

    add-int/2addr v0, v15

    .line 4560
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    if-lt v0, v2, :cond_2e

    if-gt v0, v3, :cond_2e

    mul-int/lit8 v1, v1, 0xa

    sub-int/2addr v0, v2

    add-int/2addr v1, v0

    const/4 v0, 0x2

    goto :goto_13

    :cond_2e
    move/from16 v0, v16

    :goto_13
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2f

    iget v2, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v2, v13

    add-int/lit8 v2, v2, 0xc

    .line 4568
    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_2f

    const/16 v4, 0x39

    if-gt v2, v4, :cond_2f

    mul-int/lit8 v1, v1, 0xa

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    const/4 v0, 0x3

    :cond_2f
    iget-object v2, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    .line 4575
    invoke-virtual {v2, v14, v1}, Ljava/util/Calendar;->set(II)V

    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v1, v13

    add-int/lit8 v1, v1, 0xa

    add-int/2addr v1, v0

    .line 4578
    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    if-eq v1, v2, :cond_33

    if-ne v1, v8, :cond_30

    goto :goto_14

    :cond_30
    const/16 v2, 0x5a

    if-ne v1, v2, :cond_32

    iget-object v1, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    .line 4616
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    if-eqz v1, :cond_31

    .line 4617
    invoke-static {v12}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v1

    .line 4618
    array-length v2, v1

    if-lez v2, :cond_31

    .line 4619
    aget-object v1, v1, v12

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    iget-object v2, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    .line 4620
    invoke-virtual {v2, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_31
    move/from16 v6, v16

    goto/16 :goto_16

    :cond_32
    move v6, v12

    goto/16 :goto_16

    :cond_33
    :goto_14
    iget v2, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v2, v13

    add-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x1

    .line 4580
    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_3c

    const/16 v4, 0x31

    if-le v2, v4, :cond_34

    goto/16 :goto_17

    :cond_34
    iget v4, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v4, v13

    add-int/lit8 v4, v4, 0xa

    add-int/2addr v4, v0

    const/4 v5, 0x2

    add-int/2addr v4, v5

    .line 4585
    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v4

    if-lt v4, v3, :cond_3c

    const/16 v3, 0x39

    if-le v4, v3, :cond_35

    goto/16 :goto_17

    :cond_35
    iget v3, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v3, v13

    add-int/lit8 v3, v3, 0xa

    add-int/2addr v3, v0

    const/4 v5, 0x3

    add-int/2addr v3, v5

    .line 4590
    invoke-virtual {v9, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v3

    const/16 v5, 0x3a

    if-ne v3, v5, :cond_38

    iget v3, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v3, v13

    add-int/lit8 v3, v3, 0xa

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x4

    .line 4592
    invoke-virtual {v9, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v3

    const/16 v5, 0x30

    if-eq v3, v5, :cond_36

    return v12

    :cond_36
    iget v3, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v3, v13

    add-int/lit8 v3, v3, 0xa

    add-int/2addr v3, v0

    add-int/2addr v3, v11

    .line 4597
    invoke-virtual {v9, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v3

    if-eq v3, v5, :cond_37

    return v12

    :cond_37
    const/16 v18, 0x6

    goto :goto_15

    :cond_38
    const/16 v5, 0x30

    if-ne v3, v5, :cond_3a

    iget v3, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v3, v13

    add-int/lit8 v3, v3, 0xa

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x4

    .line 4603
    invoke-virtual {v9, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v3

    if-eq v3, v5, :cond_39

    return v12

    :cond_39
    move/from16 v18, v11

    goto :goto_15

    :cond_3a
    const/16 v18, 0x3

    .line 4612
    :goto_15
    invoke-virtual {v9, v1, v2, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->setTimeZone(CCC)V

    move/from16 v6, v18

    :goto_16
    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v13, v13, 0xa

    add-int/2addr v13, v0

    add-int/2addr v13, v6

    add-int/2addr v1, v13

    .line 4625
    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_3b

    const/16 v1, 0x22

    if-eq v0, v1, :cond_3b

    return v12

    :cond_3b
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v13

    iput v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 4629
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    iput-char v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    iput v11, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return v16

    :cond_3c
    :goto_17
    return v12

    :cond_3d
    iget-object v1, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    .line 4533
    invoke-virtual {v1, v14, v12}, Ljava/util/Calendar;->set(II)V

    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v1, v7

    iput v1, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 4535
    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v1

    iput-char v1, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    iput v11, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_3e

    iget-object v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    .line 4541
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    if-eqz v0, :cond_3e

    .line 4542
    invoke-static {v12}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v0

    .line 4543
    array-length v1, v0

    if-lez v1, :cond_3e

    .line 4544
    aget-object v0, v0, v12

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    iget-object v1, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    .line 4545
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_3e
    return v16

    :cond_3f
    move v8, v1

    move/from16 v21, v3

    move v7, v4

    move v12, v6

    move v13, v14

    const/4 v11, 0x5

    const/16 v15, 0xb

    move v14, v2

    :goto_18
    if-eqz p1, :cond_40

    return v12

    :cond_40
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 4262
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v1

    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v0, 0x1

    .line 4263
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/4 v3, 0x2

    add-int/2addr v0, v3

    .line 4264
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v3

    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/4 v4, 0x3

    add-int/2addr v0, v4

    .line 4265
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v4

    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v0, 0x4

    .line 4266
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    iget v5, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v5, v11

    .line 4267
    invoke-virtual {v9, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v5

    iget v6, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/16 v18, 0x6

    add-int/lit8 v6, v6, 0x6

    .line 4268
    invoke-virtual {v9, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v6

    iget v11, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v11, v11, 0x7

    .line 4269
    invoke-virtual {v9, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v11

    iget v14, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v14, v7

    .line 4270
    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v14

    if-ne v0, v8, :cond_41

    if-ne v11, v8, :cond_41

    move/from16 v8, v16

    goto :goto_19

    :cond_41
    move v8, v12

    :goto_19
    if-eqz v8, :cond_42

    if-ne v10, v13, :cond_42

    move/from16 v18, v16

    goto :goto_1a

    :cond_42
    move/from16 v18, v12

    :goto_1a
    if-eqz v8, :cond_43

    const/16 v8, 0x11

    if-ne v10, v8, :cond_43

    move/from16 v19, v16

    goto :goto_1b

    :cond_43
    move/from16 v19, v12

    :goto_1b
    if-nez v19, :cond_45

    if-eqz v18, :cond_44

    goto :goto_1c

    :cond_44
    move v8, v6

    move v6, v5

    move v5, v0

    goto :goto_1d

    :cond_45
    :goto_1c
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v0, 0x9

    .line 4283
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    move v11, v0

    move v8, v14

    :goto_1d
    move/from16 v24, v1

    move/from16 v25, v2

    move/from16 v26, v3

    move/from16 v27, v4

    move/from16 v28, v5

    move/from16 v29, v6

    move/from16 v30, v8

    move/from16 v31, v11

    .line 4296
    invoke-static/range {v24 .. v31}, Lcom/alibaba/fastjson/parser/JSONLexer;->checkDate(CCCCCCII)Z

    move-result v0

    if-nez v0, :cond_46

    return v12

    :cond_46
    move-object/from16 v0, p0

    move v12, v7

    move v7, v8

    move v8, v11

    .line 4300
    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->setCalendar(CCCCCCCC)V

    if-eq v10, v12, :cond_53

    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v0, 0x9

    .line 4304
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v1, v1, 0xa

    .line 4305
    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v1

    iget v2, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v2, v15

    .line 4306
    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    iget v3, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v3, v3, 0xc

    .line 4307
    invoke-virtual {v9, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v7

    iget v3, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/16 v4, 0xd

    add-int/2addr v3, v4

    .line 4308
    invoke-virtual {v9, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v3

    if-eqz v19, :cond_47

    const/16 v4, 0x54

    if-ne v1, v4, :cond_47

    const/16 v4, 0x3a

    if-ne v3, v4, :cond_47

    iget v4, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v4, v13

    .line 4312
    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v4

    const/16 v5, 0x5a

    if-eq v4, v5, :cond_49

    :cond_47
    if-eqz v18, :cond_4a

    const/16 v4, 0x20

    if-eq v1, v4, :cond_48

    const/16 v4, 0x54

    if-ne v1, v4, :cond_4a

    :cond_48
    const/16 v4, 0x3a

    if-ne v3, v4, :cond_4a

    :cond_49
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/16 v1, 0xe

    add-int/2addr v0, v1

    .line 4316
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v1

    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v0, 0xf

    .line 4317
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    move v14, v2

    const/16 v3, 0x30

    move v2, v0

    move v0, v7

    const/16 v7, 0x30

    :cond_4a
    move/from16 v26, v14

    move/from16 v27, v0

    move/from16 v28, v1

    move/from16 v29, v2

    move/from16 v30, v7

    move/from16 v31, v3

    .line 4329
    invoke-static/range {v26 .. v31}, Lcom/alibaba/fastjson/parser/JSONLexer;->checkTime(CCCCCC)Z

    move-result v4

    if-nez v4, :cond_4b

    const/4 v4, 0x0

    return v4

    :cond_4b
    const/16 v4, 0x11

    if-ne v10, v4, :cond_52

    if-nez v19, :cond_52

    iget v4, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/16 v5, 0xe

    add-int/2addr v4, v5

    .line 4334
    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v4

    iget v5, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v5, 0xf

    .line 4335
    invoke-virtual {v9, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v5

    iget v6, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v6, v13

    .line 4336
    invoke-virtual {v9, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v6

    const/16 v8, 0x30

    if-lt v4, v8, :cond_51

    const/16 v10, 0x39

    if-le v4, v10, :cond_4c

    goto :goto_20

    :cond_4c
    if-lt v5, v8, :cond_50

    if-le v5, v10, :cond_4d

    goto :goto_1f

    :cond_4d
    if-lt v6, v8, :cond_4f

    if-le v6, v10, :cond_4e

    goto :goto_1e

    :cond_4e
    sub-int/2addr v4, v8

    mul-int/lit8 v4, v4, 0x64

    sub-int/2addr v5, v8

    mul-int/lit8 v5, v5, 0xa

    add-int/2addr v4, v5

    sub-int/2addr v6, v8

    add-int/2addr v4, v6

    goto :goto_21

    :cond_4f
    :goto_1e
    const/4 v4, 0x0

    return v4

    :cond_50
    :goto_1f
    const/4 v4, 0x0

    return v4

    :cond_51
    :goto_20
    const/4 v4, 0x0

    return v4

    :cond_52
    const/4 v4, 0x0

    :goto_21
    move v6, v4

    const/16 v4, 0x30

    sub-int/2addr v14, v4

    mul-int/lit8 v14, v14, 0xa

    sub-int/2addr v0, v4

    add-int/2addr v0, v14

    sub-int/2addr v1, v4

    mul-int/lit8 v1, v1, 0xa

    sub-int/2addr v2, v4

    add-int/2addr v1, v2

    sub-int/2addr v7, v4

    mul-int/lit8 v7, v7, 0xa

    sub-int/2addr v3, v4

    add-int v2, v7, v3

    move v4, v6

    move v6, v0

    goto :goto_22

    :cond_53
    const/4 v4, 0x0

    move v1, v4

    move v2, v1

    move v6, v2

    :goto_22
    iget-object v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    .line 4362
    invoke-virtual {v0, v15, v6}, Ljava/util/Calendar;->set(II)V

    iget-object v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    const/16 v3, 0xc

    .line 4363
    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    iget-object v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xd

    .line 4364
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    iget-object v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xe

    .line 4365
    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    const/4 v0, 0x5

    iput v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return v16
.end method

.method public final scanLongValue()J
    .locals 12

    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v2, 0x2d

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1767
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const-wide/high16 v0, -0x8000000000000000L

    move-wide v1, v0

    move v0, v3

    goto :goto_0

    .line 1765
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "syntax error, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    const-wide/16 v4, 0x0

    :goto_1
    iget-char v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v7, 0x30

    if-lt v6, v7, :cond_5

    const/16 v7, 0x39

    if-gt v6, v7, :cond_5

    add-int/lit8 v6, v6, -0x30

    const-wide v7, -0xcccccccccccccccL

    cmp-long v7, v4, v7

    const-string v8, ", "

    const-string v9, "error long value, "

    if-ltz v7, :cond_4

    const-wide/16 v10, 0xa

    mul-long/2addr v4, v10

    int-to-long v6, v6

    add-long v10, v1, v6

    cmp-long v10, v4, v10

    if-ltz v10, :cond_3

    sub-long/2addr v4, v6

    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/2addr v6, v3

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v6, v3

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v6, v7, :cond_2

    const/16 v6, 0x1a

    goto :goto_2

    :cond_2
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1798
    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    :goto_2
    iput-char v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_1

    .line 1785
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1780
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    if-nez v0, :cond_6

    neg-long v4, v4

    :cond_6
    return-wide v4
.end method

.method public final scanNumber()V
    .locals 9

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->exp:Z

    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x1a

    const/4 v4, 0x1

    const/16 v5, 0x2d

    if-ne v2, v5, :cond_1

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v2, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1302
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_0
    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    :cond_1
    :goto_1
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v2, 0x39

    const/16 v6, 0x30

    if-lt v0, v6, :cond_3

    if-gt v0, v2, :cond_3

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v2, :cond_2

    move v0, v3

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1318
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_2
    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_1

    :cond_3
    iput-boolean v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->isDouble:Z

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_6

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v1, :cond_4

    move v0, v3

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1331
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_3
    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    iput-boolean v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->isDouble:Z

    :goto_4
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-lt v0, v6, :cond_6

    if-gt v0, v2, :cond_6

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v1, :cond_5

    move v0, v3

    goto :goto_5

    :cond_5
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1347
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_5
    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_4

    :cond_6
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x4c

    if-ne v0, v1, :cond_7

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1354
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto/16 :goto_a

    :cond_7
    const/16 v1, 0x53

    if-ne v0, v1, :cond_8

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1357
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto/16 :goto_a

    :cond_8
    const/16 v1, 0x42

    if-ne v0, v1, :cond_9

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1360
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto/16 :goto_a

    :cond_9
    const/16 v1, 0x46

    if-ne v0, v1, :cond_a

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1363
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    iput-boolean v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->isDouble:Z

    goto/16 :goto_a

    :cond_a
    const/16 v7, 0x44

    if-ne v0, v7, :cond_b

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1367
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    iput-boolean v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->isDouble:Z

    goto/16 :goto_a

    :cond_b
    const/16 v8, 0x65

    if-eq v0, v8, :cond_c

    const/16 v8, 0x45

    if-ne v0, v8, :cond_15

    :cond_c
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v8, :cond_d

    move v0, v3

    goto :goto_6

    :cond_d
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1377
    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_6
    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v8, 0x2b

    if-eq v0, v8, :cond_e

    if-ne v0, v5, :cond_10

    :cond_e
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v5, :cond_f

    move v0, v3

    goto :goto_7

    :cond_f
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1388
    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_7
    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    :cond_10
    :goto_8
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-lt v0, v6, :cond_12

    if-gt v0, v2, :cond_12

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v5, :cond_11

    move v0, v3

    goto :goto_9

    :cond_11
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1404
    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_9
    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_8

    :cond_12
    if-eq v0, v7, :cond_13

    if-ne v0, v1, :cond_14

    :cond_13
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1411
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    :cond_14
    iput-boolean v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->exp:Z

    iput-boolean v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->isDouble:Z

    :cond_15
    :goto_a
    iget-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->isDouble:Z

    if-eqz v0, :cond_16

    const/4 v0, 0x3

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_b

    :cond_16
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    :goto_b
    return-void
.end method

.method public final scanNumberValue()Ljava/lang/Number;
    .locals 23

    move-object/from16 v1, p0

    iget v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/4 v2, 0x0

    iput v2, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    iget-char v3, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/4 v5, 0x1

    const/16 v6, 0x2d

    if-ne v3, v6, :cond_1

    iput v5, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/lit8 v3, v0, 0x1

    iput v3, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v7, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v3, v7, :cond_0

    const/16 v3, 0x1a

    goto :goto_0

    :cond_0
    iget-object v7, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1470
    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_0
    iput-char v3, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const-wide/high16 v7, -0x8000000000000000L

    move v3, v5

    goto :goto_1

    :cond_1
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    move v3, v2

    :goto_1
    const-wide/16 v9, 0x0

    move v12, v2

    move v11, v5

    :goto_2
    iget-char v13, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const-wide v14, -0xcccccccccccccccL

    const/16 v4, 0x12

    const/16 v2, 0x39

    const-wide/16 v16, 0xa

    const/16 v6, 0x30

    if-lt v13, v6, :cond_6

    if-gt v13, v2, :cond_6

    add-int/lit8 v13, v13, -0x30

    if-ge v11, v4, :cond_3

    mul-long v9, v9, v16

    int-to-long v13, v13

    :cond_2
    :goto_3
    sub-long/2addr v9, v13

    goto :goto_4

    :cond_3
    cmp-long v2, v9, v14

    if-gez v2, :cond_4

    move v12, v5

    :cond_4
    mul-long v9, v9, v16

    int-to-long v13, v13

    add-long v16, v7, v13

    cmp-long v2, v9, v16

    if-gez v2, :cond_2

    move v12, v5

    goto :goto_3

    :goto_4
    iget v2, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/2addr v2, v5

    iput v2, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    iget v2, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v2, v5

    iput v2, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v4, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v4, :cond_5

    const/16 v2, 0x1a

    goto :goto_5

    :cond_5
    iget-object v4, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1508
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_5
    iput-char v2, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    add-int/lit8 v11, v11, 0x1

    const/4 v2, 0x0

    const/16 v6, 0x2d

    goto :goto_2

    :cond_6
    const/16 v15, 0x2e

    const/16 v20, 0x0

    if-ne v13, v15, :cond_e

    iget v13, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/2addr v13, v5

    iput v13, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    iget v13, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v13, v5

    iput v13, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v15, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v13, v15, :cond_7

    const/16 v13, 0x1a

    goto :goto_6

    :cond_7
    iget-object v15, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1525
    invoke-virtual {v15, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    :goto_6
    iput-char v13, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/4 v13, 0x0

    :goto_7
    iget-char v15, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-lt v15, v6, :cond_c

    if-gt v15, v2, :cond_c

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v15, v15, -0x30

    if-ge v11, v4, :cond_8

    mul-long v9, v9, v16

    int-to-long v14, v15

    sub-long/2addr v9, v14

    const-wide v18, -0xcccccccccccccccL

    goto :goto_8

    :cond_8
    const-wide v18, -0xcccccccccccccccL

    cmp-long v14, v9, v18

    if-gez v14, :cond_9

    move v12, v5

    :cond_9
    mul-long v9, v9, v16

    int-to-long v14, v15

    add-long v21, v7, v14

    cmp-long v21, v9, v21

    if-gez v21, :cond_a

    move v12, v5

    :cond_a
    sub-long/2addr v9, v14

    :goto_8
    iget v14, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/2addr v14, v5

    iput v14, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    iget v14, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v14, v5

    iput v14, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v15, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v14, v15, :cond_b

    const/16 v14, 0x1a

    goto :goto_9

    :cond_b
    iget-object v15, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1557
    invoke-virtual {v15, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    :goto_9
    iput-char v14, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    :cond_c
    if-nez v3, :cond_d

    neg-long v9, v9

    :cond_d
    move v4, v5

    goto :goto_b

    :cond_e
    if-nez v3, :cond_f

    neg-long v9, v9

    :cond_f
    const/16 v4, 0x4c

    if-ne v13, v4, :cond_11

    iget v4, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/2addr v4, v5

    iput v4, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1571
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1572
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    :cond_10
    :goto_a
    const/4 v4, 0x0

    const/4 v13, 0x0

    goto :goto_b

    :cond_11
    const/16 v4, 0x53

    if-ne v13, v4, :cond_12

    iget v4, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/2addr v4, v5

    iput v4, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1575
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    long-to-int v4, v9

    int-to-short v4, v4

    .line 1576
    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v20

    goto :goto_a

    :cond_12
    const/16 v4, 0x42

    if-ne v13, v4, :cond_13

    iget v4, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/2addr v4, v5

    iput v4, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1579
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    long-to-int v4, v9

    int-to-byte v4, v4

    .line 1580
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v20

    goto :goto_a

    :cond_13
    const/16 v4, 0x46

    if-ne v13, v4, :cond_14

    iget v4, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/2addr v4, v5

    iput v4, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1583
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    long-to-float v4, v9

    .line 1584
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v20

    goto :goto_a

    :cond_14
    const/16 v4, 0x44

    if-ne v13, v4, :cond_10

    iget v4, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/2addr v4, v5

    iput v4, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1587
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    long-to-double v7, v9

    .line 1588
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v20

    goto :goto_a

    :goto_b
    iget-char v7, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v8, 0x65

    const/16 v11, 0x2b

    if-eq v7, v8, :cond_16

    const/16 v8, 0x45

    if-ne v7, v8, :cond_15

    goto :goto_c

    :cond_15
    const/4 v2, 0x0

    const/4 v7, 0x0

    goto/16 :goto_13

    :cond_16
    :goto_c
    iget v7, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/2addr v7, v5

    iput v7, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    iget v7, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v7, v5

    iput v7, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v8, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v7, v8, :cond_17

    const/16 v7, 0x1a

    goto :goto_d

    :cond_17
    iget-object v8, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1601
    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    :goto_d
    iput-char v7, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-eq v7, v11, :cond_18

    const/16 v8, 0x2d

    if-ne v7, v8, :cond_1a

    :cond_18
    iget v7, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/2addr v7, v5

    iput v7, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    iget v7, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v7, v5

    iput v7, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v8, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v7, v8, :cond_19

    const/16 v7, 0x1a

    goto :goto_e

    :cond_19
    iget-object v8, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1612
    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    :goto_e
    iput-char v7, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    :cond_1a
    :goto_f
    iget-char v7, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-lt v7, v6, :cond_1c

    if-gt v7, v2, :cond_1c

    iget v7, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/2addr v7, v5

    iput v7, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    iget v7, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v7, v5

    iput v7, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v8, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v7, v8, :cond_1b

    const/16 v7, 0x1a

    goto :goto_10

    :cond_1b
    iget-object v8, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1628
    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    :goto_10
    iput-char v7, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_f

    :cond_1c
    const/16 v2, 0x44

    if-eq v7, v2, :cond_1e

    const/16 v2, 0x46

    if-ne v7, v2, :cond_1d

    goto :goto_11

    :cond_1d
    const/4 v7, 0x0

    goto :goto_12

    :cond_1e
    :goto_11
    iget v2, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/2addr v2, v5

    iput v2, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1636
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    :goto_12
    move v2, v5

    :goto_13
    if-nez v4, :cond_22

    if-nez v2, :cond_22

    if-eqz v12, :cond_1f

    iget v2, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int v3, v2, v0

    .line 1646
    new-array v3, v3, [C

    iget-object v1, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    const/4 v4, 0x0

    .line 1647
    invoke-virtual {v1, v0, v2, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 1648
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([C)V

    .line 1649
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    move-object/from16 v20, v1

    :cond_1f
    if-nez v20, :cond_21

    const-wide/32 v0, -0x80000000

    cmp-long v0, v9, v0

    if-lez v0, :cond_20

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, v9, v0

    if-gez v0, :cond_20

    long-to-int v0, v9

    .line 1653
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    goto :goto_14

    .line 1655
    :cond_20
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    :cond_21
    :goto_14
    return-object v20

    :cond_22
    iget v4, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v4, v0

    if-eqz v7, :cond_23

    add-int/lit8 v4, v4, -0x1

    :cond_23
    if-nez v2, :cond_26

    iget v8, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    .line 1671
    sget-object v14, Lcom/alibaba/fastjson/parser/Feature;->UseBigDecimal:Lcom/alibaba/fastjson/parser/Feature;

    iget v14, v14, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v8, v14

    if-eqz v8, :cond_26

    if-nez v12, :cond_24

    .line 1674
    invoke-static {v9, v10, v13}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v0

    goto/16 :goto_1b

    :cond_24
    iget-object v2, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    .line 1676
    array-length v3, v2

    if-ge v4, v3, :cond_25

    iget-object v3, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    add-int v5, v0, v4

    const/4 v8, 0x0

    .line 1677
    invoke-virtual {v3, v0, v5, v2, v8}, Ljava/lang/String;->getChars(II[CI)V

    iget-object v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    goto :goto_15

    :cond_25
    const/4 v8, 0x0

    .line 1680
    new-array v2, v4, [C

    iget-object v1, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    add-int v3, v0, v4

    .line 1681
    invoke-virtual {v1, v0, v3, v2, v8}, Ljava/lang/String;->getChars(II[CI)V

    move-object v0, v2

    .line 1684
    :goto_15
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, v0, v8, v4}, Ljava/math/BigDecimal;-><init>([CII)V

    move-object v0, v1

    goto/16 :goto_1b

    :cond_26
    const/4 v8, 0x0

    iget-object v9, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    .line 1687
    array-length v10, v9

    if-ge v4, v10, :cond_27

    iget-object v10, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    add-int v12, v0, v4

    .line 1688
    invoke-virtual {v10, v0, v12, v9, v8}, Ljava/lang/String;->getChars(II[CI)V

    iget-object v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    goto :goto_16

    .line 1691
    :cond_27
    new-array v9, v4, [C

    iget-object v10, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    add-int v12, v0, v4

    .line 1692
    invoke-virtual {v10, v0, v12, v9, v8}, Ljava/lang/String;->getChars(II[CI)V

    move-object v0, v9

    :goto_16
    const/16 v9, 0x9

    if-gt v4, v9, :cond_30

    if-nez v2, :cond_30

    .line 1698
    :try_start_0
    aget-char v2, v0, v8

    const/16 v8, 0x2d

    if-eq v2, v8, :cond_29

    if-ne v2, v11, :cond_28

    goto :goto_17

    :cond_28
    move v8, v5

    goto :goto_18

    .line 1700
    :cond_29
    :goto_17
    aget-char v2, v0, v5

    const/4 v8, 0x2

    :goto_18
    sub-int/2addr v2, v6

    const/4 v6, 0x0

    :goto_19
    if-ge v8, v4, :cond_2c

    .line 1706
    aget-char v9, v0, v8

    const/16 v10, 0x2e

    if-ne v9, v10, :cond_2a

    move v6, v5

    goto :goto_1a

    :cond_2a
    add-int/lit8 v9, v9, -0x30

    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v9

    if-eqz v6, :cond_2b

    mul-int/lit8 v6, v6, 0xa

    :cond_2b
    :goto_1a
    add-int/lit8 v8, v8, 0x1

    goto :goto_19

    :cond_2c
    const/16 v0, 0x46

    if-ne v7, v0, :cond_2e

    int-to-float v0, v2

    int-to-float v2, v6

    div-float/2addr v0, v2

    if-eqz v3, :cond_2d

    neg-float v0, v0

    .line 1726
    :cond_2d
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    :cond_2e
    int-to-double v4, v2

    int-to-double v6, v6

    div-double/2addr v4, v6

    if-eqz v3, :cond_2f

    neg-double v4, v4

    .line 1734
    :cond_2f
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 1737
    :cond_30
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v4}, Ljava/lang/String;-><init>([CII)V

    const/16 v0, 0x46

    if-ne v7, v0, :cond_31

    .line 1739
    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    goto :goto_1b

    .line 1741
    :cond_31
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1b
    return-object v0

    :catch_0
    move-exception v0

    .line 1744
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public final scanString()V
    .locals 11

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 990
    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_8

    sub-int v1, v3, v1

    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v4, v2

    .line 999
    invoke-virtual {p0, v4, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->sub_chars(II)[C

    move-result-object v4

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    const/16 v7, 0x5c

    if-lez v1, :cond_4

    add-int/lit8 v8, v1, -0x1

    .line 1000
    aget-char v8, v4, v8

    if-ne v8, v7, :cond_4

    add-int/lit8 v8, v1, -0x2

    move v9, v2

    :goto_1
    if-ltz v8, :cond_0

    .line 1005
    aget-char v10, v4, v8

    if-ne v10, v7, :cond_0

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    .line 1011
    :cond_0
    rem-int/lit8 v9, v9, 0x2

    if-nez v9, :cond_1

    goto :goto_2

    :cond_1
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    add-int/lit8 v7, v3, 0x1

    .line 1015
    invoke-virtual {v6, v0, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    sub-int v7, v6, v3

    add-int/2addr v7, v1

    .line 1019
    array-length v8, v4

    if-lt v7, v8, :cond_3

    .line 1020
    array-length v8, v4

    mul-int/lit8 v8, v8, 0x3

    div-int/lit8 v8, v8, 0x2

    if-ge v8, v7, :cond_2

    move v8, v7

    .line 1024
    :cond_2
    new-array v8, v8, [C

    .line 1025
    array-length v9, v4

    invoke-static {v4, v5, v8, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v4, v8

    :cond_3
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1028
    invoke-virtual {v8, v3, v6, v4, v1}, Ljava/lang/String;->getChars(II[CI)V

    move v3, v6

    move v1, v7

    move v6, v2

    goto :goto_0

    :cond_4
    :goto_2
    if-nez v6, :cond_6

    :goto_3
    if-ge v5, v1, :cond_6

    .line 1037
    aget-char v0, v4, v5

    if-ne v0, v7, :cond_5

    move v6, v2

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    iput-object v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    iput-boolean v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->hasSpecial:Z

    add-int/2addr v3, v2

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v3, v0, :cond_7

    const/16 v0, 0x1a

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1054
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_4
    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/4 v0, 0x4

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-void

    .line 992
    :cond_8
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unclosed str, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public scanStringValue(C)Ljava/lang/String;
    .locals 7

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1062
    invoke-virtual {v1, p1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    sget-boolean v3, Lcom/alibaba/fastjson/parser/JSONLexer;->V6:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1069
    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    sub-int v3, v1, v0

    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v5, 0x1

    .line 1072
    invoke-virtual {p0, v5, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->sub_chars(II)[C

    move-result-object v5

    .line 1073
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5, v4, v3}, Ljava/lang/String;-><init>([CII)V

    move-object v3, v6

    :goto_0
    const/16 v5, 0x5c

    .line 1076
    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-eq v6, v2, :cond_3

    :goto_1
    add-int/lit8 v2, v1, -0x1

    move v3, v4

    :goto_2
    if-ltz v2, :cond_1

    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1080
    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v5, :cond_1

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 1086
    :cond_1
    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_2

    sub-int p1, v1, v0

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v0, 0x1

    .line 1093
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->sub_chars(II)[C

    move-result-object v0

    .line 1094
    invoke-static {v0, p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->readString([CI)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_2
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    .line 1089
    invoke-virtual {v2, p1, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    goto :goto_1

    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, p1, :cond_4

    const/16 p1, 0x1a

    goto :goto_4

    :cond_4
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1103
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    :goto_4
    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    return-object v3

    .line 1064
    :cond_5
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unclosed str, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
    .locals 4

    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_6

    const/16 v1, 0xa

    if-eq v0, v1, :cond_6

    const/16 v1, 0xd

    if-eq v0, v1, :cond_6

    const/16 v2, 0x9

    if-eq v0, v2, :cond_6

    const/16 v2, 0xc

    if-eq v0, v2, :cond_6

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    goto :goto_1

    :cond_0
    const/16 v2, 0x22

    if-ne v0, v2, :cond_1

    .line 716
    invoke-virtual {p0, p1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/16 v2, 0x27

    if-ne v0, v2, :cond_2

    .line 720
    invoke-virtual {p0, p1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/16 v2, 0x7d

    const/4 v3, 0x0

    if-ne v0, v2, :cond_3

    .line 724
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-object v3

    :cond_3
    const/16 v1, 0x2c

    if-ne v0, v1, :cond_4

    .line 730
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    const/16 p1, 0x10

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-object v3

    :cond_4
    const/16 v1, 0x1a

    if-ne v0, v1, :cond_5

    const/16 p1, 0x14

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-object v3

    .line 740
    :cond_5
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbolUnQuoted(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 709
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_0
.end method

.method public scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;
    .locals 10

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 748
    invoke-virtual {v2, p2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_b

    sub-int v0, v2, v0

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v3, v1

    .line 757
    invoke-virtual {p0, v3, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->sub_chars(II)[C

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const/16 v6, 0x5c

    if-lez v0, :cond_4

    add-int/lit8 v7, v0, -0x1

    .line 758
    aget-char v7, v3, v7

    if-ne v7, v6, :cond_4

    add-int/lit8 v7, v0, -0x2

    move v8, v1

    :goto_1
    if-ltz v7, :cond_0

    .line 763
    aget-char v9, v3, v7

    if-ne v9, v6, :cond_0

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 769
    :cond_0
    rem-int/lit8 v8, v8, 0x2

    if-nez v8, :cond_1

    goto :goto_2

    :cond_1
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    add-int/lit8 v6, v2, 0x1

    .line 773
    invoke-virtual {v5, p2, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    sub-int v6, v5, v2

    add-int/2addr v6, v0

    .line 777
    array-length v7, v3

    if-lt v6, v7, :cond_3

    .line 778
    array-length v7, v3

    mul-int/lit8 v7, v7, 0x3

    div-int/lit8 v7, v7, 0x2

    if-ge v7, v6, :cond_2

    move v7, v6

    .line 782
    :cond_2
    new-array v7, v7, [C

    .line 783
    array-length v8, v3

    invoke-static {v3, v4, v7, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v7

    :cond_3
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 786
    invoke-virtual {v7, v2, v5, v3, v0}, Ljava/lang/String;->getChars(II[CI)V

    move v2, v5

    move v0, v6

    move v5, v1

    goto :goto_0

    :cond_4
    :goto_2
    if-nez v5, :cond_9

    move p2, v4

    move v7, p2

    :goto_3
    if-ge p2, v0, :cond_6

    .line 796
    aget-char v8, v3, p2

    mul-int/lit8 v7, v7, 0x1f

    add-int/2addr v7, v8

    if-ne v8, v6, :cond_5

    move v5, v1

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_6
    if-eqz v5, :cond_7

    .line 804
    invoke-static {v3, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->readString([CI)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_7
    const/16 p2, 0x14

    if-ge v0, p2, :cond_8

    .line 806
    invoke-virtual {p1, v3, v4, v0, v7}, Lcom/alibaba/fastjson/parser/SymbolTable;->addSymbol([CIII)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_8
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v3, v4, v0}, Ljava/lang/String;-><init>([CII)V

    goto :goto_4

    .line 809
    :cond_9
    invoke-static {v3, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->readString([CI)Ljava/lang/String;

    move-result-object p1

    :goto_4
    add-int/2addr v2, v1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, p2, :cond_a

    const/16 p2, 0x1a

    goto :goto_5

    :cond_a
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 818
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    :goto_5
    iput-char p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    return-object p1

    .line 750
    :cond_b
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "unclosed str, "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final scanSymbolUnQuoted(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
    .locals 5

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    sget-object v1, Lcom/alibaba/fastjson/parser/JSONLexer;->firstIdentifierFlags:[Z

    .line 950
    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    goto :goto_0

    .line 952
    :cond_0
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "illegal identifier : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 953
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 961
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    move-result v2

    sget-object v3, Lcom/alibaba/fastjson/parser/JSONLexer;->identifierFlags:[Z

    .line 963
    array-length v4, v3

    if-ge v2, v4, :cond_3

    .line 964
    aget-boolean v3, v3, v2

    if-nez v3, :cond_3

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 975
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x12

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    const-string v2, "null"

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 979
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    iget p0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 983
    invoke-virtual {p1, v1, v2, p0, v0}, Lcom/alibaba/fastjson/parser/SymbolTable;->addSymbol(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v2

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    goto :goto_1
.end method

.method protected setTime(CCCCCC)V
    .locals 0

    add-int/lit8 p1, p1, -0x30

    mul-int/lit8 p1, p1, 0xa

    add-int/lit8 p2, p2, -0x30

    add-int/2addr p1, p2

    add-int/lit8 p3, p3, -0x30

    mul-int/lit8 p3, p3, 0xa

    add-int/lit8 p4, p4, -0x30

    add-int/2addr p3, p4

    add-int/lit8 p5, p5, -0x30

    mul-int/lit8 p5, p5, 0xa

    add-int/lit8 p6, p6, -0x30

    add-int/2addr p5, p6

    iget-object p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    const/16 p4, 0xb

    .line 4639
    invoke-virtual {p2, p4, p1}, Ljava/util/Calendar;->set(II)V

    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    const/16 p2, 0xc

    .line 4640
    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    iget-object p0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    const/16 p1, 0xd

    .line 4641
    invoke-virtual {p0, p1, p5}, Ljava/util/Calendar;->set(II)V

    return-void
.end method

.method protected setTimeZone(CCC)V
    .locals 0

    add-int/lit8 p2, p2, -0x30

    mul-int/lit8 p2, p2, 0xa

    add-int/lit8 p3, p3, -0x30

    add-int/2addr p2, p3

    const p3, 0x36ee80

    mul-int/2addr p2, p3

    const/16 p3, 0x2d

    if-ne p1, p3, :cond_0

    neg-int p2, p2

    :cond_0
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    .line 4650
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result p1

    if-eq p1, p2, :cond_1

    .line 4651
    invoke-static {p2}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object p1

    .line 4652
    array-length p2, p1

    if-lez p2, :cond_1

    const/4 p2, 0x0

    .line 4653
    aget-object p1, p1, p2

    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    iget-object p0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    .line 4654
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_1
    return-void
.end method

.method protected skipComment()V
    .locals 4

    .line 918
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_1

    .line 921
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 923
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    return-void

    :cond_1
    const/16 v2, 0x2a

    if-ne v0, v2, :cond_5

    .line 928
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    :cond_2
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x1a

    if-eq v0, v3, :cond_4

    if-ne v0, v2, :cond_3

    .line 932
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v0, v1, :cond_2

    .line 934
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_1

    .line 940
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_0

    :cond_4
    :goto_1
    return-void

    .line 943
    :cond_5
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    const-string v0, "invalid comment"

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method final skipWhitespace()V
    .locals 3

    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x2f

    if-gt v0, v1, :cond_2

    const/16 v2, 0x20

    if-eq v0, v2, :cond_1

    const/16 v2, 0xd

    if-eq v0, v2, :cond_1

    const/16 v2, 0xa

    if-eq v0, v2, :cond_1

    const/16 v2, 0x9

    if-eq v0, v2, :cond_1

    const/16 v2, 0xc

    if-eq v0, v2, :cond_1

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    goto :goto_1

    :cond_0
    if-ne v0, v1, :cond_2

    .line 1280
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipComment()V

    goto :goto_0

    .line 1277
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final stringVal()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->hasSpecial:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    iget p0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1220
    invoke-static {v0, p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->readString([CI)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1221
    invoke-direct {p0, v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->subString(II)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method final sub_chars(II)[C
    .locals 3

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    .line 1236
    array-length v1, v0

    const/4 v2, 0x0

    if-ge p2, v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    add-int/2addr p2, p1

    .line 1237
    invoke-virtual {v1, p1, p2, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    iget-object p0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    return-object p0

    .line 1240
    :cond_0
    new-array v0, p2, [C

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    iget-object p0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    add-int/2addr p2, p1

    .line 1241
    invoke-virtual {p0, p1, p2, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    return-object v0
.end method

.method public final token()I
    .locals 0

    iget p0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return p0
.end method
