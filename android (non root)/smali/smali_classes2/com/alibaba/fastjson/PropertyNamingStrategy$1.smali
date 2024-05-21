.class synthetic Lcom/alibaba/fastjson/PropertyNamingStrategy$1;
.super Ljava/lang/Object;
.source "PropertyNamingStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/PropertyNamingStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$alibaba$fastjson$PropertyNamingStrategy:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 13
    invoke-static {}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->values()[Lcom/alibaba/fastjson/PropertyNamingStrategy;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/alibaba/fastjson/PropertyNamingStrategy$1;->$SwitchMap$com$alibaba$fastjson$PropertyNamingStrategy:[I

    :try_start_0
    sget-object v1, Lcom/alibaba/fastjson/PropertyNamingStrategy;->SnakeCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/alibaba/fastjson/PropertyNamingStrategy$1;->$SwitchMap$com$alibaba$fastjson$PropertyNamingStrategy:[I

    sget-object v1, Lcom/alibaba/fastjson/PropertyNamingStrategy;->KebabCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/alibaba/fastjson/PropertyNamingStrategy$1;->$SwitchMap$com$alibaba$fastjson$PropertyNamingStrategy:[I

    sget-object v1, Lcom/alibaba/fastjson/PropertyNamingStrategy;->PascalCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/alibaba/fastjson/PropertyNamingStrategy$1;->$SwitchMap$com$alibaba$fastjson$PropertyNamingStrategy:[I

    sget-object v1, Lcom/alibaba/fastjson/PropertyNamingStrategy;->CamelCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
