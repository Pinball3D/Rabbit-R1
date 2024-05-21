.class public Lcom/alibaba/fastjson/util/FieldInfo;
.super Ljava/lang/Object;
.source "FieldInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/alibaba/fastjson/util/FieldInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final alternateNames:[Ljava/lang/String;

.field public final declaringClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final field:Ljava/lang/reflect/Field;

.field public final fieldAccess:Z

.field private final fieldAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

.field public final fieldClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final fieldTransient:Z

.field public final fieldType:Ljava/lang/reflect/Type;

.field public final format:Ljava/lang/String;

.field public final getOnly:Z

.field public final isEnum:Z

.field public final method:Ljava/lang/reflect/Method;

.field private final methodAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

.field public final name:Ljava/lang/String;

.field public final nameHashCode:J

.field private ordinal:I

.field public final serialzeFeatures:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Field;",
            "II)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    if-gez p6, :cond_0

    move p6, v0

    :cond_0
    iput-object p1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/alibaba/fastjson/util/FieldInfo;->declaringClass:Ljava/lang/Class;

    iput-object p3, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    iput-object p4, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    iput-object p5, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    iput p6, p0, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    iput p7, p0, Lcom/alibaba/fastjson/util/FieldInfo;->serialzeFeatures:I

    .line 66
    invoke-virtual {p3}, Ljava/lang/Class;->isEnum()Z

    move-result p4

    const/4 p6, 0x1

    if-eqz p4, :cond_1

    const-class p4, Lcom/alibaba/fastjson/JSONAware;

    invoke-virtual {p4, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p3

    if-nez p3, :cond_1

    move p3, p6

    goto :goto_0

    :cond_1
    move p3, v0

    :goto_0
    iput-boolean p3, p0, Lcom/alibaba/fastjson/util/FieldInfo;->isEnum:Z

    iput-object p2, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

    iput-object p2, p0, Lcom/alibaba/fastjson/util/FieldInfo;->methodAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz p5, :cond_2

    .line 72
    invoke-virtual {p5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result p3

    iput-boolean p6, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    .line 74
    invoke-static {p3}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result p3

    iput-boolean p3, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldTransient:Z

    goto :goto_1

    :cond_2
    iput-boolean v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    iput-boolean v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldTransient:Z

    :goto_1
    iput-boolean v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->getOnly:Z

    const-wide p3, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    move p5, v0

    .line 82
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p6

    if-ge p5, p6, :cond_3

    .line 83
    invoke-virtual {p1, p5}, Ljava/lang/String;->charAt(I)C

    move-result p6

    int-to-long p6, p6

    xor-long/2addr p3, p6

    const-wide p6, 0x100000001b3L

    mul-long/2addr p3, p6

    add-int/lit8 p5, p5, 0x1

    goto :goto_2

    :cond_3
    iput-wide p3, p0, Lcom/alibaba/fastjson/util/FieldInfo;->nameHashCode:J

    iput-object p2, p0, Lcom/alibaba/fastjson/util/FieldInfo;->format:Ljava/lang/String;

    new-array p1, v0, [Ljava/lang/String;

    iput-object p1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->alternateNames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            "II",
            "Lcom/alibaba/fastjson/annotation/JSONField;",
            "Lcom/alibaba/fastjson/annotation/JSONField;",
            "Z)V"
        }
    .end annotation

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    if-gez p6, :cond_0

    move p6, v0

    :cond_0
    iput-object p1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    iput-object p3, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    iput p6, p0, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    iput-object p8, p0, Lcom/alibaba/fastjson/util/FieldInfo;->methodAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

    iput-object p9, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

    iput p7, p0, Lcom/alibaba/fastjson/util/FieldInfo;->serialzeFeatures:I

    .line 115
    invoke-virtual {p0}, Lcom/alibaba/fastjson/util/FieldInfo;->getAnnotation()Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object p6

    const/4 p7, 0x0

    if-eqz p6, :cond_2

    .line 118
    invoke-interface {p6}, Lcom/alibaba/fastjson/annotation/JSONField;->format()Ljava/lang/String;

    move-result-object p8

    .line 120
    invoke-virtual {p8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p9

    invoke-virtual {p9}, Ljava/lang/String;->length()I

    move-result p9

    if-nez p9, :cond_1

    move-object p8, p7

    .line 124
    :cond_1
    invoke-interface {p6}, Lcom/alibaba/fastjson/annotation/JSONField;->alternateNames()[Ljava/lang/String;

    move-result-object p6

    iput-object p6, p0, Lcom/alibaba/fastjson/util/FieldInfo;->alternateNames:[Ljava/lang/String;

    goto :goto_0

    :cond_2
    new-array p6, v0, [Ljava/lang/String;

    iput-object p6, p0, Lcom/alibaba/fastjson/util/FieldInfo;->alternateNames:[Ljava/lang/String;

    move-object p8, p7

    :goto_0
    iput-object p8, p0, Lcom/alibaba/fastjson/util/FieldInfo;->format:Ljava/lang/String;

    const/4 p6, 0x1

    if-eqz p3, :cond_6

    .line 131
    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result p8

    if-eqz p2, :cond_4

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_3

    .line 132
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p9

    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    if-ne p9, v1, :cond_3

    goto :goto_1

    :cond_3
    move p9, v0

    goto :goto_2

    :cond_4
    :goto_1
    move p9, p6

    :goto_2
    iput-boolean p9, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    and-int/lit16 p8, p8, 0x80

    if-eqz p8, :cond_5

    move p8, p6

    goto :goto_3

    :cond_5
    move p8, v0

    :goto_3
    iput-boolean p8, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldTransient:Z

    goto :goto_4

    :cond_6
    iput-boolean v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    iput-boolean v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldTransient:Z

    :goto_4
    const-wide p8, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    move v1, v0

    .line 140
    :goto_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 141
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-long v2, v2

    xor-long/2addr p8, v2

    const-wide v2, 0x100000001b3L

    mul-long/2addr p8, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_7
    iput-wide p8, p0, Lcom/alibaba/fastjson/util/FieldInfo;->nameHashCode:J

    if-eqz p2, :cond_d

    .line 150
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    .line 151
    array-length p3, p1

    if-ne p3, p6, :cond_a

    .line 152
    aget-object p1, p1, v0

    .line 153
    const-class p3, Ljava/lang/Class;

    if-eq p1, p3, :cond_9

    const-class p3, Ljava/lang/String;

    if-eq p1, p3, :cond_9

    .line 155
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result p3

    if-eqz p3, :cond_8

    goto :goto_6

    :cond_8
    if-eqz p10, :cond_9

    .line 158
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object p3

    aget-object p3, p3, v0

    goto :goto_7

    :cond_9
    :goto_6
    move-object p3, p1

    :goto_7
    iput-boolean v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->getOnly:Z

    goto :goto_9

    .line 162
    :cond_a
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    .line 163
    const-class p3, Ljava/lang/Class;

    if-ne p1, p3, :cond_c

    :cond_b
    move-object p3, p1

    goto :goto_8

    :cond_c
    if-eqz p10, :cond_b

    .line 166
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object p3

    :goto_8
    iput-boolean p6, p0, Lcom/alibaba/fastjson/util/FieldInfo;->getOnly:Z

    .line 170
    :goto_9
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p2

    iput-object p2, p0, Lcom/alibaba/fastjson/util/FieldInfo;->declaringClass:Ljava/lang/Class;

    goto :goto_c

    .line 172
    :cond_d
    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p1

    .line 173
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result p2

    if-nez p2, :cond_f

    const-class p2, Ljava/lang/String;

    if-eq p1, p2, :cond_f

    .line 175
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result p2

    if-eqz p2, :cond_e

    goto :goto_a

    :cond_e
    if-eqz p10, :cond_f

    .line 178
    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object p2

    goto :goto_b

    :cond_f
    :goto_a
    move-object p2, p1

    .line 181
    :goto_b
    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p8

    iput-object p8, p0, Lcom/alibaba/fastjson/util/FieldInfo;->declaringClass:Ljava/lang/Class;

    .line 182
    invoke-virtual {p3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result p3

    invoke-static {p3}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result p3

    iput-boolean p3, p0, Lcom/alibaba/fastjson/util/FieldInfo;->getOnly:Z

    move-object p3, p2

    :goto_c
    if-eqz p4, :cond_16

    .line 185
    const-class p2, Ljava/lang/Object;

    if-ne p1, p2, :cond_16

    instance-of p2, p3, Ljava/lang/reflect/TypeVariable;

    if-eqz p2, :cond_16

    .line 189
    move-object p2, p3

    check-cast p2, Ljava/lang/reflect/TypeVariable;

    .line 193
    instance-of p8, p5, Ljava/lang/reflect/ParameterizedType;

    if-eqz p8, :cond_10

    .line 194
    move-object p8, p5

    check-cast p8, Ljava/lang/reflect/ParameterizedType;

    .line 195
    invoke-interface {p8}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p8

    goto :goto_d

    :cond_10
    move-object p8, p7

    :goto_d
    move-object p9, p4

    :goto_e
    if-eqz p9, :cond_12

    .line 198
    const-class p10, Ljava/lang/Object;

    if-eq p9, p10, :cond_12

    iget-object p10, p0, Lcom/alibaba/fastjson/util/FieldInfo;->declaringClass:Ljava/lang/Class;

    if-eq p9, p10, :cond_12

    .line 199
    invoke-virtual {p9}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object p10

    .line 201
    instance-of v1, p10, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_11

    .line 202
    check-cast p10, Ljava/lang/reflect/ParameterizedType;

    .line 203
    invoke-interface {p10}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p10

    .line 204
    invoke-virtual {p9}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v1

    invoke-static {p10, v1, p8}, Lcom/alibaba/fastjson/util/TypeUtils;->getArgument([Ljava/lang/reflect/Type;[Ljava/lang/reflect/TypeVariable;[Ljava/lang/reflect/Type;)Z

    move-object p8, p10

    .line 198
    :cond_11
    invoke-virtual {p9}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p9

    goto :goto_e

    :cond_12
    if-eqz p8, :cond_14

    iget-object p9, p0, Lcom/alibaba/fastjson/util/FieldInfo;->declaringClass:Ljava/lang/Class;

    .line 210
    invoke-virtual {p9}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object p9

    move p10, v0

    .line 211
    :goto_f
    array-length v1, p9

    if-ge p10, v1, :cond_14

    .line 212
    aget-object v1, p9, p10

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 213
    aget-object p7, p8, p10

    goto :goto_10

    :cond_13
    add-int/lit8 p10, p10, 0x1

    goto :goto_f

    :cond_14
    :goto_10
    if-eqz p7, :cond_16

    .line 221
    invoke-static {p7}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p2

    iput-object p2, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    iput-object p7, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    .line 224
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result p2

    if-eqz p2, :cond_15

    const-class p2, Lcom/alibaba/fastjson/JSONAware;

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_15

    move v0, p6

    :cond_15
    iput-boolean v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->isEnum:Z

    return-void

    .line 231
    :cond_16
    instance-of p2, p3, Ljava/lang/Class;

    if-nez p2, :cond_1a

    if-eqz p5, :cond_17

    goto :goto_11

    :cond_17
    move-object p5, p4

    .line 232
    :goto_11
    invoke-static {p4, p5, p3}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldType(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p2

    if-eq p2, p3, :cond_19

    .line 234
    instance-of p3, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz p3, :cond_18

    .line 235
    invoke-static {p2}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p1

    goto :goto_12

    .line 236
    :cond_18
    instance-of p3, p2, Ljava/lang/Class;

    if-eqz p3, :cond_19

    .line 237
    invoke-static {p2}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p1

    :cond_19
    :goto_12
    move-object p3, p2

    :cond_1a
    iput-object p3, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    iput-object p1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 245
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result p2

    if-nez p2, :cond_1b

    .line 246
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result p2

    if-eqz p2, :cond_1b

    const-class p2, Lcom/alibaba/fastjson/JSONAware;

    .line 247
    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_1b

    move v0, p6

    :cond_1b
    iput-boolean v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->isEnum:Z

    return-void
.end method

.method public static getFieldType(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    if-eqz p0, :cond_c

    if-nez p1, :cond_0

    goto/16 :goto_4

    .line 255
    :cond_0
    instance-of v0, p2, Ljava/lang/reflect/GenericArrayType;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 256
    move-object v0, p2

    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    .line 257
    invoke-interface {v0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 258
    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldType(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    if-eq v0, p0, :cond_1

    .line 260
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p2

    .line 267
    :cond_2
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->isGenericParamType(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_3

    return-object p2

    .line 271
    :cond_3
    instance-of v0, p2, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_5

    .line 272
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->getGenericParamType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 273
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v2

    .line 274
    move-object v3, p2

    check-cast v3, Ljava/lang/reflect/TypeVariable;

    move v4, v1

    .line 276
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v5

    array-length v5, v5

    if-ge v4, v5, :cond_5

    .line 277
    invoke-virtual {v2}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v5

    aget-object v5, v5, v4

    invoke-interface {v5}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 278
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    aget-object p0, p0, v4

    return-object p0

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 284
    :cond_5
    instance-of v0, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_c

    .line 285
    move-object v0, p2

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 287
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    .line 293
    instance-of v3, p1, Ljava/lang/reflect/ParameterizedType;

    const/4 v4, 0x0

    if-eqz v3, :cond_6

    .line 294
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .line 295
    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object p0

    goto :goto_1

    .line 296
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object p1

    instance-of p1, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz p1, :cond_7

    .line 297
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .line 298
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object p0

    goto :goto_1

    :cond_7
    move-object p0, v4

    move-object p1, p0

    :goto_1
    move v3, v1

    move v5, v3

    .line 301
    :goto_2
    array-length v6, v2

    if-ge v3, v6, :cond_b

    if-eqz p1, :cond_b

    .line 302
    aget-object v6, v2, v3

    .line 303
    instance-of v7, v6, Ljava/lang/reflect/TypeVariable;

    if-eqz v7, :cond_a

    .line 304
    check-cast v6, Ljava/lang/reflect/TypeVariable;

    move v7, v1

    .line 306
    :goto_3
    array-length v8, p0

    if-ge v7, v8, :cond_a

    .line 307
    aget-object v8, p0, v7

    invoke-interface {v8}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    if-nez v4, :cond_8

    .line 309
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v4

    .line 311
    :cond_8
    aget-object v5, v4, v7

    aput-object v5, v2, v3

    const/4 v5, 0x1

    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_b
    if-eqz v5, :cond_c

    .line 318
    new-instance p0, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object p1

    .line 319
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p2

    invoke-direct {p0, v2, p1, p2}, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;-><init>([Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    return-object p0

    :cond_c
    :goto_4
    return-object p2
.end method


# virtual methods
.method public compareTo(Lcom/alibaba/fastjson/util/FieldInfo;)I
    .locals 2

    iget v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    .line 332
    iget v1, p1, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    if-ge v0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    if-le v0, v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    iget-object p0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    .line 340
    iget-object p1, p1, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 18
    check-cast p1, Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/util/FieldInfo;->compareTo(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result p0

    return p0
.end method

.method public equals(Lcom/alibaba/fastjson/util/FieldInfo;)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 347
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/util/FieldInfo;->compareTo(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    .line 360
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 363
    invoke-virtual {p0, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getAnnotation()Lcom/alibaba/fastjson/annotation/JSONField;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->methodAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

    return-object p0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 369
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    iget-object p0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    .line 373
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    return-object p0
.end method
