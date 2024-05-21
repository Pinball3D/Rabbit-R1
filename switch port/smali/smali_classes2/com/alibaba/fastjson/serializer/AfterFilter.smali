.class public abstract Lcom/alibaba/fastjson/serializer/AfterFilter;
.super Ljava/lang/Object;
.source "AfterFilter.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/SerializeFilter;


# static fields
.field private static final COMMA:Ljava/lang/Character;

.field private static final seperatorLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final serializerLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/alibaba/fastjson/serializer/JSONSerializer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/AfterFilter;->serializerLocal:Ljava/lang/ThreadLocal;

    .line 9
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/AfterFilter;->seperatorLocal:Ljava/lang/ThreadLocal;

    const/16 v0, 0x2c

    .line 11
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/serializer/AfterFilter;->COMMA:Ljava/lang/Character;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final writeAfter(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C
    .locals 1

    sget-object v0, Lcom/alibaba/fastjson/serializer/AfterFilter;->serializerLocal:Ljava/lang/ThreadLocal;

    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    sget-object p1, Lcom/alibaba/fastjson/serializer/AfterFilter;->seperatorLocal:Ljava/lang/ThreadLocal;

    .line 15
    invoke-static {p3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 16
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/AfterFilter;->writeAfter(Ljava/lang/Object;)V

    const/4 p0, 0x0

    .line 17
    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 18
    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Character;

    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result p0

    return p0
.end method

.method public abstract writeAfter(Ljava/lang/Object;)V
.end method

.method protected final writeKeyValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    sget-object p0, Lcom/alibaba/fastjson/serializer/AfterFilter;->serializerLocal:Ljava/lang/ThreadLocal;

    .line 22
    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    sget-object v0, Lcom/alibaba/fastjson/serializer/AfterFilter;->seperatorLocal:Ljava/lang/ThreadLocal;

    .line 23
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    .line 24
    invoke-virtual {p0, v1, p1, p2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeKeyValue(CLjava/lang/String;Ljava/lang/Object;)V

    const/16 p0, 0x2c

    if-eq v1, p0, :cond_0

    sget-object p0, Lcom/alibaba/fastjson/serializer/AfterFilter;->COMMA:Ljava/lang/Character;

    .line 26
    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
