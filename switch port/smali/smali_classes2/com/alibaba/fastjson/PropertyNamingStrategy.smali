.class public final enum Lcom/alibaba/fastjson/PropertyNamingStrategy;
.super Ljava/lang/Enum;
.source "PropertyNamingStrategy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/fastjson/PropertyNamingStrategy;

.field public static final enum CamelCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;

.field public static final enum KebabCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;

.field public static final enum PascalCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;

.field public static final enum SnakeCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 7
    new-instance v0, Lcom/alibaba/fastjson/PropertyNamingStrategy;

    const-string v1, "CamelCase"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/PropertyNamingStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/PropertyNamingStrategy;->CamelCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    .line 8
    new-instance v1, Lcom/alibaba/fastjson/PropertyNamingStrategy;

    const-string v2, "PascalCase"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/alibaba/fastjson/PropertyNamingStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/alibaba/fastjson/PropertyNamingStrategy;->PascalCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    .line 9
    new-instance v2, Lcom/alibaba/fastjson/PropertyNamingStrategy;

    const-string v3, "SnakeCase"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/alibaba/fastjson/PropertyNamingStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/alibaba/fastjson/PropertyNamingStrategy;->SnakeCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    .line 10
    new-instance v3, Lcom/alibaba/fastjson/PropertyNamingStrategy;

    const-string v4, "KebabCase"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/alibaba/fastjson/PropertyNamingStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/alibaba/fastjson/PropertyNamingStrategy;->KebabCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    filled-new-array {v0, v1, v2, v3}, [Lcom/alibaba/fastjson/PropertyNamingStrategy;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/PropertyNamingStrategy;->$VALUES:[Lcom/alibaba/fastjson/PropertyNamingStrategy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .locals 1

    const-class v0, Lcom/alibaba/fastjson/PropertyNamingStrategy;

    .line 6
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alibaba/fastjson/PropertyNamingStrategy;

    return-object p0
.end method

.method public static values()[Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .locals 1

    sget-object v0, Lcom/alibaba/fastjson/PropertyNamingStrategy;->$VALUES:[Lcom/alibaba/fastjson/PropertyNamingStrategy;

    .line 6
    invoke-virtual {v0}, [Lcom/alibaba/fastjson/PropertyNamingStrategy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/fastjson/PropertyNamingStrategy;

    return-object v0
.end method


# virtual methods
.method public translate(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 13
    sget-object v0, Lcom/alibaba/fastjson/PropertyNamingStrategy$1;->$SwitchMap$com$alibaba$fastjson$PropertyNamingStrategy:[I

    invoke-virtual {p0}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/16 v0, 0x5a

    const/16 v1, 0x41

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p0, v2, :cond_8

    const/4 v2, 0x2

    if-eq p0, v2, :cond_4

    const/4 v2, 0x3

    if-eq p0, v2, :cond_2

    const/4 v2, 0x4

    if-eq p0, v2, :cond_0

    return-object p1

    .line 57
    :cond_0
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-lt p0, v1, :cond_1

    if-gt p0, v0, :cond_1

    .line 59
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 60
    aget-char p1, p0, v3

    add-int/lit8 p1, p1, 0x20

    int-to-char p1, p1

    aput-char p1, p0, v3

    .line 61
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    :cond_1
    return-object p1

    .line 47
    :cond_2
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v0, 0x61

    if-lt p0, v0, :cond_3

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_3

    .line 49
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 50
    aget-char p1, p0, v3

    add-int/lit8 p1, p1, -0x20

    int-to-char p1, p1

    aput-char p1, p0, v3

    .line 51
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    :cond_3
    return-object p1

    .line 31
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v3, v2, :cond_7

    .line 33
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v1, :cond_6

    if-gt v2, v0, :cond_6

    add-int/lit8 v2, v2, 0x20

    int-to-char v2, v2

    if-lez v3, :cond_5

    const/16 v4, 0x2d

    .line 37
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 39
    :cond_5
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 41
    :cond_6
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 44
    :cond_7
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 15
    :cond_8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v3, v2, :cond_b

    .line 17
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v1, :cond_a

    if-gt v2, v0, :cond_a

    add-int/lit8 v2, v2, 0x20

    int-to-char v2, v2

    if-lez v3, :cond_9

    const/16 v4, 0x5f

    .line 21
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 23
    :cond_9
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 25
    :cond_a
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 28
    :cond_b
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
