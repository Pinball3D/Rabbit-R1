.class final Lcom/alibaba/fastjson/parser/ResolveFieldDeserializer;
.super Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
.source "ResolveFieldDeserializer.java"


# instance fields
.field private final collection:Ljava/util/Collection;

.field private final index:I

.field private final key:Ljava/lang/Object;

.field private final list:Ljava/util/List;

.field private final map:Ljava/util/Map;

.field private final parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/util/List;I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 26
    invoke-direct {p0, v1, v1, v0}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;I)V

    iput-object p1, p0, Lcom/alibaba/fastjson/parser/ResolveFieldDeserializer;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    iput p3, p0, Lcom/alibaba/fastjson/parser/ResolveFieldDeserializer;->index:I

    iput-object p2, p0, Lcom/alibaba/fastjson/parser/ResolveFieldDeserializer;->list:Ljava/util/List;

    iput-object v1, p0, Lcom/alibaba/fastjson/parser/ResolveFieldDeserializer;->key:Ljava/lang/Object;

    iput-object v1, p0, Lcom/alibaba/fastjson/parser/ResolveFieldDeserializer;->map:Ljava/util/Map;

    iput-object v1, p0, Lcom/alibaba/fastjson/parser/ResolveFieldDeserializer;->collection:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 51
    invoke-direct {p0, v1, v1, v0}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;I)V

    iput-object v1, p0, Lcom/alibaba/fastjson/parser/ResolveFieldDeserializer;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/ResolveFieldDeserializer;->index:I

    iput-object v1, p0, Lcom/alibaba/fastjson/parser/ResolveFieldDeserializer;->list:Ljava/util/List;

    iput-object v1, p0, Lcom/alibaba/fastjson/parser/ResolveFieldDeserializer;->key:Ljava/lang/Object;

    iput-object v1, p0, Lcom/alibaba/fastjson/parser/ResolveFieldDeserializer;->map:Ljava/util/Map;

    iput-object p1, p0, Lcom/alibaba/fastjson/parser/ResolveFieldDeserializer;->collection:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 38
    invoke-direct {p0, v1, v1, v0}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;I)V

    iput-object v1, p0, Lcom/alibaba/fastjson/parser/ResolveFieldDeserializer;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/ResolveFieldDeserializer;->index:I

    iput-object v1, p0, Lcom/alibaba/fastjson/parser/ResolveFieldDeserializer;->list:Ljava/util/List;

    iput-object p2, p0, Lcom/alibaba/fastjson/parser/ResolveFieldDeserializer;->key:Ljava/lang/Object;

    iput-object p1, p0, Lcom/alibaba/fastjson/parser/ResolveFieldDeserializer;->map:Ljava/util/Map;

    iput-object v1, p0, Lcom/alibaba/fastjson/parser/ResolveFieldDeserializer;->collection:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object p1, p0, Lcom/alibaba/fastjson/parser/ResolveFieldDeserializer;->map:Ljava/util/Map;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/alibaba/fastjson/parser/ResolveFieldDeserializer;->key:Ljava/lang/Object;

    .line 66
    invoke-interface {p1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/ResolveFieldDeserializer;->collection:Ljava/util/Collection;

    if-eqz p1, :cond_1

    .line 71
    invoke-interface {p1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/ResolveFieldDeserializer;->list:Ljava/util/List;

    iget v0, p0, Lcom/alibaba/fastjson/parser/ResolveFieldDeserializer;->index:I

    .line 75
    invoke-interface {p1, v0, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/alibaba/fastjson/parser/ResolveFieldDeserializer;->list:Ljava/util/List;

    .line 77
    instance-of v0, p1, Lcom/alibaba/fastjson/JSONArray;

    if-eqz v0, :cond_3

    .line 78
    check-cast p1, Lcom/alibaba/fastjson/JSONArray;

    .line 79
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->getRelatedArray()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 82
    invoke-static {v0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    iget v2, p0, Lcom/alibaba/fastjson/parser/ResolveFieldDeserializer;->index:I

    if-le v1, v2, :cond_3

    .line 86
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->getComponentType()Ljava/lang/reflect/Type;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 87
    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONArray;->getComponentType()Ljava/lang/reflect/Type;

    move-result-object p1

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/ResolveFieldDeserializer;->parser:Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    iget-object v1, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-static {p2, p1, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object p2

    :cond_2
    iget p0, p0, Lcom/alibaba/fastjson/parser/ResolveFieldDeserializer;->index:I

    .line 91
    invoke-static {v0, p0, p2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    :cond_3
    return-void
.end method
