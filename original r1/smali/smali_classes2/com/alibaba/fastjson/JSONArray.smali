.class public Lcom/alibaba/fastjson/JSONArray;
.super Lcom/alibaba/fastjson/JSON;
.source "JSONArray.java"

# interfaces
.implements Ljava/util/List;
.implements Ljava/lang/Cloneable;
.implements Ljava/util/RandomAccess;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/fastjson/JSON;",
        "Ljava/util/List<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Cloneable;",
        "Ljava/util/RandomAccess;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field protected transient componentType:Ljava/lang/reflect/Type;

.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected transient relatedArray:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 54
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSON;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 62
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSON;-><init>()V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSON;-><init>()V

    iput-object p1, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    .line 147
    invoke-interface {p0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    .line 111
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    iget-object p0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    .line 127
    invoke-interface {p0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    iget-object p0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    .line 123
    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public clear()V
    .locals 0

    iget-object p0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    .line 139
    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .line 345
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONArray;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    .line 95
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    iget-object p0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    .line 119
    invoke-interface {p0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    .line 349
    invoke-interface {p0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    .line 175
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getBigDecimal(I)Ljava/math/BigDecimal;
    .locals 0

    .line 320
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 322
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public getBigInteger(I)Ljava/math/BigInteger;
    .locals 0

    .line 326
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 328
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public getBoolean(I)Ljava/lang/Boolean;
    .locals 0

    .line 204
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 210
    :cond_0
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public getBooleanValue(I)Z
    .locals 0

    .line 214
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 220
    :cond_0
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getByte(I)Ljava/lang/Byte;
    .locals 0

    .line 224
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 226
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToByte(Ljava/lang/Object;)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method public getByteValue(I)B
    .locals 0

    .line 230
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 236
    :cond_0
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToByte(Ljava/lang/Object;)Ljava/lang/Byte;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    return p0
.end method

.method public getComponentType()Ljava/lang/reflect/Type;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/fastjson/JSONArray;->componentType:Ljava/lang/reflect/Type;

    return-object p0
.end method

.method public getDate(I)Ljava/util/Date;
    .locals 0

    .line 338
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 340
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToDate(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public getDouble(I)Ljava/lang/Double;
    .locals 0

    .line 304
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 306
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public getDoubleValue(I)D
    .locals 0

    .line 310
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    .line 316
    :cond_0
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method public getFloat(I)Ljava/lang/Float;
    .locals 0

    .line 288
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 290
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public getFloatValue(I)F
    .locals 0

    .line 294
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 300
    :cond_0
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public getIntValue(I)I
    .locals 0

    .line 262
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 268
    :cond_0
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getInteger(I)Ljava/lang/Integer;
    .locals 0

    .line 256
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 258
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getJSONArray(I)Lcom/alibaba/fastjson/JSONArray;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    .line 189
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 191
    instance-of p1, p0, Lcom/alibaba/fastjson/JSONArray;

    if-eqz p1, :cond_0

    .line 192
    check-cast p0, Lcom/alibaba/fastjson/JSONArray;

    return-object p0

    .line 195
    :cond_0
    invoke-static {p0}, Lcom/alibaba/fastjson/JSONArray;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/alibaba/fastjson/JSONArray;

    return-object p0
.end method

.method public getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    .line 179
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 181
    instance-of p1, p0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz p1, :cond_0

    .line 182
    check-cast p0, Lcom/alibaba/fastjson/JSONObject;

    return-object p0

    .line 185
    :cond_0
    invoke-static {p0}, Lcom/alibaba/fastjson/JSONArray;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/alibaba/fastjson/JSONObject;

    return-object p0
.end method

.method public getLong(I)Ljava/lang/Long;
    .locals 0

    .line 272
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 274
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public getLongValue(I)J
    .locals 0

    .line 278
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    .line 284
    :cond_0
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public getObject(ILjava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    .line 199
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 200
    invoke-static {p0, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->castToJavaBean(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getRelatedArray()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/fastjson/JSONArray;->relatedArray:Ljava/lang/Object;

    return-object p0
.end method

.method public getShort(I)Ljava/lang/Short;
    .locals 0

    .line 240
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 242
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToShort(Ljava/lang/Object;)Ljava/lang/Short;

    move-result-object p0

    return-object p0
.end method

.method public getShortValue(I)S
    .locals 0

    .line 246
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 252
    :cond_0
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToShort(Ljava/lang/Object;)Ljava/lang/Short;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    move-result p0

    return p0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 0

    .line 332
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    .line 334
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    .line 353
    invoke-interface {p0}, Ljava/util/List;->hashCode()I

    move-result p0

    return p0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    .line 155
    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    .line 91
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    .line 99
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    .line 159
    invoke-interface {p0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    .line 163
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p0

    return-object p0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    .line 167
    invoke-interface {p0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p0

    return-object p0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    .line 151
    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    .line 115
    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    iget-object p0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    .line 131
    invoke-interface {p0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    iget-object p0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    .line 135
    invoke-interface {p0, p1}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    .line 143
    invoke-interface {p0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public setComponentType(Ljava/lang/reflect/Type;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/fastjson/JSONArray;->componentType:Ljava/lang/reflect/Type;

    return-void
.end method

.method public setRelatedArray(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/fastjson/JSONArray;->relatedArray:Ljava/lang/Object;

    return-void
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    .line 87
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public subList(II)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    .line 171
    invoke-interface {p0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    .line 103
    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/alibaba/fastjson/JSONArray;->list:Ljava/util/List;

    .line 107
    invoke-interface {p0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public toJavaList(Ljava/lang/Class;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 360
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 362
    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v1

    .line 364
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONArray;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 365
    invoke-static {v2, p1, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v2

    .line 366
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method
