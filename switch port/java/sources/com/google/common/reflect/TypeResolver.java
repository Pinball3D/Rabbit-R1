package com.google.common.reflect;

import com.google.common.base.Joiner;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Maps;
import com.google.common.reflect.Types;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import javax.annotation.CheckForNull;
import kotlin.text.Typography;

@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public final class TypeResolver {
    private final TypeTable typeTable;

    public TypeResolver() {
        this.typeTable = new TypeTable();
    }

    private TypeResolver(TypeTable typeTable) {
        this.typeTable = typeTable;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static TypeResolver covariantly(Type type) {
        return new TypeResolver().where(TypeMappingIntrospector.getTypeMappings(type));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static TypeResolver invariantly(Type type) {
        return new TypeResolver().where(TypeMappingIntrospector.getTypeMappings(WildcardCapturer.INSTANCE.capture(type)));
    }

    public TypeResolver where(Type type, Type type2) {
        HashMap newHashMap = Maps.newHashMap();
        populateTypeMappings(newHashMap, (Type) Preconditions.checkNotNull(type), (Type) Preconditions.checkNotNull(type2));
        return where(newHashMap);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public TypeResolver where(Map<TypeVariableKey, ? extends Type> map) {
        return new TypeResolver(this.typeTable.where(map));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void populateTypeMappings(final Map<TypeVariableKey, Type> map, Type type, final Type type2) {
        if (type.equals(type2)) {
            return;
        }
        new TypeVisitor() { // from class: com.google.common.reflect.TypeResolver.1
            @Override // com.google.common.reflect.TypeVisitor
            void visitTypeVariable(TypeVariable<?> typeVariable) {
                map.put(new TypeVariableKey(typeVariable), type2);
            }

            @Override // com.google.common.reflect.TypeVisitor
            void visitWildcardType(WildcardType wildcardType) {
                Type type3 = type2;
                if (type3 instanceof WildcardType) {
                    WildcardType wildcardType2 = (WildcardType) type3;
                    Type[] upperBounds = wildcardType.getUpperBounds();
                    Type[] upperBounds2 = wildcardType2.getUpperBounds();
                    Type[] lowerBounds = wildcardType.getLowerBounds();
                    Type[] lowerBounds2 = wildcardType2.getLowerBounds();
                    Preconditions.checkArgument(upperBounds.length == upperBounds2.length && lowerBounds.length == lowerBounds2.length, "Incompatible type: %s vs. %s", wildcardType, type2);
                    for (int i = 0; i < upperBounds.length; i++) {
                        TypeResolver.populateTypeMappings(map, upperBounds[i], upperBounds2[i]);
                    }
                    for (int i2 = 0; i2 < lowerBounds.length; i2++) {
                        TypeResolver.populateTypeMappings(map, lowerBounds[i2], lowerBounds2[i2]);
                    }
                }
            }

            @Override // com.google.common.reflect.TypeVisitor
            void visitParameterizedType(ParameterizedType parameterizedType) {
                Type type3 = type2;
                if (type3 instanceof WildcardType) {
                    return;
                }
                ParameterizedType parameterizedType2 = (ParameterizedType) TypeResolver.expectArgument(ParameterizedType.class, type3);
                if (parameterizedType.getOwnerType() != null && parameterizedType2.getOwnerType() != null) {
                    TypeResolver.populateTypeMappings(map, parameterizedType.getOwnerType(), parameterizedType2.getOwnerType());
                }
                Preconditions.checkArgument(parameterizedType.getRawType().equals(parameterizedType2.getRawType()), "Inconsistent raw type: %s vs. %s", parameterizedType, type2);
                Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
                Type[] actualTypeArguments2 = parameterizedType2.getActualTypeArguments();
                Preconditions.checkArgument(actualTypeArguments.length == actualTypeArguments2.length, "%s not compatible with %s", parameterizedType, parameterizedType2);
                for (int i = 0; i < actualTypeArguments.length; i++) {
                    TypeResolver.populateTypeMappings(map, actualTypeArguments[i], actualTypeArguments2[i]);
                }
            }

            @Override // com.google.common.reflect.TypeVisitor
            void visitGenericArrayType(GenericArrayType genericArrayType) {
                Type type3 = type2;
                if (type3 instanceof WildcardType) {
                    return;
                }
                Type componentType = Types.getComponentType(type3);
                Preconditions.checkArgument(componentType != null, "%s is not an array type.", type2);
                TypeResolver.populateTypeMappings(map, genericArrayType.getGenericComponentType(), componentType);
            }

            @Override // com.google.common.reflect.TypeVisitor
            void visitClass(Class<?> cls) {
                if (type2 instanceof WildcardType) {
                    return;
                }
                String valueOf = String.valueOf(cls);
                String valueOf2 = String.valueOf(type2);
                throw new IllegalArgumentException(new StringBuilder(String.valueOf(valueOf).length() + 25 + String.valueOf(valueOf2).length()).append("No type mapping from ").append(valueOf).append(" to ").append(valueOf2).toString());
            }
        }.visit(type);
    }

    public Type resolveType(Type type) {
        Preconditions.checkNotNull(type);
        if (type instanceof TypeVariable) {
            return this.typeTable.resolve((TypeVariable) type);
        }
        if (type instanceof ParameterizedType) {
            return resolveParameterizedType((ParameterizedType) type);
        }
        if (type instanceof GenericArrayType) {
            return resolveGenericArrayType((GenericArrayType) type);
        }
        return type instanceof WildcardType ? resolveWildcardType((WildcardType) type) : type;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Type[] resolveTypesInPlace(Type[] typeArr) {
        for (int i = 0; i < typeArr.length; i++) {
            typeArr[i] = resolveType(typeArr[i]);
        }
        return typeArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Type[] resolveTypes(Type[] typeArr) {
        Type[] typeArr2 = new Type[typeArr.length];
        for (int i = 0; i < typeArr.length; i++) {
            typeArr2[i] = resolveType(typeArr[i]);
        }
        return typeArr2;
    }

    private WildcardType resolveWildcardType(WildcardType wildcardType) {
        return new Types.WildcardTypeImpl(resolveTypes(wildcardType.getLowerBounds()), resolveTypes(wildcardType.getUpperBounds()));
    }

    private Type resolveGenericArrayType(GenericArrayType genericArrayType) {
        return Types.newArrayType(resolveType(genericArrayType.getGenericComponentType()));
    }

    private ParameterizedType resolveParameterizedType(ParameterizedType parameterizedType) {
        Type ownerType = parameterizedType.getOwnerType();
        return Types.newParameterizedTypeWithOwner(ownerType == null ? null : resolveType(ownerType), (Class) resolveType(parameterizedType.getRawType()), resolveTypes(parameterizedType.getActualTypeArguments()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <T> T expectArgument(Class<T> cls, Object obj) {
        try {
            return cls.cast(obj);
        } catch (ClassCastException unused) {
            String valueOf = String.valueOf(obj);
            String simpleName = cls.getSimpleName();
            throw new IllegalArgumentException(new StringBuilder(String.valueOf(valueOf).length() + 10 + String.valueOf(simpleName).length()).append(valueOf).append(" is not a ").append(simpleName).toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class TypeTable {
        private final ImmutableMap<TypeVariableKey, Type> map;

        TypeTable() {
            this.map = ImmutableMap.of();
        }

        private TypeTable(ImmutableMap<TypeVariableKey, Type> immutableMap) {
            this.map = immutableMap;
        }

        final TypeTable where(Map<TypeVariableKey, ? extends Type> map) {
            ImmutableMap.Builder builder = ImmutableMap.builder();
            builder.putAll(this.map);
            for (Map.Entry<TypeVariableKey, ? extends Type> entry : map.entrySet()) {
                TypeVariableKey key = entry.getKey();
                Type value = entry.getValue();
                Preconditions.checkArgument(!key.equalsType(value), "Type variable %s bound to itself", key);
                builder.put(key, value);
            }
            return new TypeTable(builder.buildOrThrow());
        }

        final Type resolve(final TypeVariable<?> typeVariable) {
            return resolveInternal(typeVariable, new TypeTable(this) { // from class: com.google.common.reflect.TypeResolver.TypeTable.1
                @Override // com.google.common.reflect.TypeResolver.TypeTable
                public Type resolveInternal(TypeVariable<?> typeVariable2, TypeTable typeTable) {
                    return typeVariable2.getGenericDeclaration().equals(typeVariable.getGenericDeclaration()) ? typeVariable2 : this.resolveInternal(typeVariable2, typeTable);
                }
            });
        }

        /* JADX WARN: Type inference failed for: r2v6, types: [java.lang.reflect.GenericDeclaration] */
        Type resolveInternal(TypeVariable<?> typeVariable, TypeTable typeTable) {
            Type type = this.map.get(new TypeVariableKey(typeVariable));
            if (type == null) {
                Type[] bounds = typeVariable.getBounds();
                if (bounds.length == 0) {
                    return typeVariable;
                }
                Type[] resolveTypes = new TypeResolver(typeTable).resolveTypes(bounds);
                return (Types.NativeTypeVariableEquals.NATIVE_TYPE_VARIABLE_ONLY && Arrays.equals(bounds, resolveTypes)) ? typeVariable : Types.newArtificialTypeVariable(typeVariable.getGenericDeclaration(), typeVariable.getName(), resolveTypes);
            }
            return new TypeResolver(typeTable).resolveType(type);
        }
    }

    /* loaded from: classes3.dex */
    private static final class TypeMappingIntrospector extends TypeVisitor {
        private final Map<TypeVariableKey, Type> mappings = Maps.newHashMap();

        private TypeMappingIntrospector() {
        }

        static ImmutableMap<TypeVariableKey, Type> getTypeMappings(Type type) {
            Preconditions.checkNotNull(type);
            TypeMappingIntrospector typeMappingIntrospector = new TypeMappingIntrospector();
            typeMappingIntrospector.visit(type);
            return ImmutableMap.copyOf((Map) typeMappingIntrospector.mappings);
        }

        @Override // com.google.common.reflect.TypeVisitor
        void visitClass(Class<?> cls) {
            visit(cls.getGenericSuperclass());
            visit(cls.getGenericInterfaces());
        }

        @Override // com.google.common.reflect.TypeVisitor
        void visitParameterizedType(ParameterizedType parameterizedType) {
            Class cls = (Class) parameterizedType.getRawType();
            TypeVariable[] typeParameters = cls.getTypeParameters();
            Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
            Preconditions.checkState(typeParameters.length == actualTypeArguments.length);
            for (int i = 0; i < typeParameters.length; i++) {
                map(new TypeVariableKey(typeParameters[i]), actualTypeArguments[i]);
            }
            visit(cls);
            visit(parameterizedType.getOwnerType());
        }

        @Override // com.google.common.reflect.TypeVisitor
        void visitTypeVariable(TypeVariable<?> typeVariable) {
            visit(typeVariable.getBounds());
        }

        @Override // com.google.common.reflect.TypeVisitor
        void visitWildcardType(WildcardType wildcardType) {
            visit(wildcardType.getUpperBounds());
        }

        private void map(TypeVariableKey typeVariableKey, Type type) {
            if (this.mappings.containsKey(typeVariableKey)) {
                return;
            }
            Type type2 = type;
            while (type2 != null) {
                if (typeVariableKey.equalsType(type2)) {
                    while (type != null) {
                        type = this.mappings.remove(TypeVariableKey.forLookup(type));
                    }
                    return;
                }
                type2 = this.mappings.get(TypeVariableKey.forLookup(type2));
            }
            this.mappings.put(typeVariableKey, type);
        }
    }

    /* loaded from: classes3.dex */
    private static class WildcardCapturer {
        static final WildcardCapturer INSTANCE = new WildcardCapturer();
        private final AtomicInteger id;

        private WildcardCapturer() {
            this(new AtomicInteger());
        }

        private WildcardCapturer(AtomicInteger atomicInteger) {
            this.id = atomicInteger;
        }

        final Type capture(Type type) {
            Preconditions.checkNotNull(type);
            if ((type instanceof Class) || (type instanceof TypeVariable)) {
                return type;
            }
            if (type instanceof GenericArrayType) {
                return Types.newArrayType(notForTypeVariable().capture(((GenericArrayType) type).getGenericComponentType()));
            }
            if (type instanceof ParameterizedType) {
                ParameterizedType parameterizedType = (ParameterizedType) type;
                Class cls = (Class) parameterizedType.getRawType();
                TypeVariable<?>[] typeParameters = cls.getTypeParameters();
                Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
                for (int i = 0; i < actualTypeArguments.length; i++) {
                    actualTypeArguments[i] = forTypeVariable(typeParameters[i]).capture(actualTypeArguments[i]);
                }
                return Types.newParameterizedTypeWithOwner(notForTypeVariable().captureNullable(parameterizedType.getOwnerType()), cls, actualTypeArguments);
            }
            if (type instanceof WildcardType) {
                WildcardType wildcardType = (WildcardType) type;
                return wildcardType.getLowerBounds().length == 0 ? captureAsTypeVariable(wildcardType.getUpperBounds()) : type;
            }
            throw new AssertionError("must have been one of the known types");
        }

        TypeVariable<?> captureAsTypeVariable(Type[] typeArr) {
            int incrementAndGet = this.id.incrementAndGet();
            String join = Joiner.on(Typography.amp).join(typeArr);
            return Types.newArtificialTypeVariable(WildcardCapturer.class, new StringBuilder(String.valueOf(join).length() + 33).append("capture#").append(incrementAndGet).append("-of ? extends ").append(join).toString(), typeArr);
        }

        private WildcardCapturer forTypeVariable(final TypeVariable<?> typeVariable) {
            return new WildcardCapturer(this, this.id) { // from class: com.google.common.reflect.TypeResolver.WildcardCapturer.1
                @Override // com.google.common.reflect.TypeResolver.WildcardCapturer
                TypeVariable<?> captureAsTypeVariable(Type[] typeArr) {
                    LinkedHashSet linkedHashSet = new LinkedHashSet(Arrays.asList(typeArr));
                    linkedHashSet.addAll(Arrays.asList(typeVariable.getBounds()));
                    if (linkedHashSet.size() > 1) {
                        linkedHashSet.remove(Object.class);
                    }
                    return super.captureAsTypeVariable((Type[]) linkedHashSet.toArray(new Type[0]));
                }
            };
        }

        private WildcardCapturer notForTypeVariable() {
            return new WildcardCapturer(this.id);
        }

        @CheckForNull
        private Type captureNullable(@CheckForNull Type type) {
            if (type == null) {
                return null;
            }
            return capture(type);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static final class TypeVariableKey {
        private final TypeVariable<?> var;

        /* JADX INFO: Access modifiers changed from: package-private */
        public TypeVariableKey(TypeVariable<?> typeVariable) {
            this.var = (TypeVariable) Preconditions.checkNotNull(typeVariable);
        }

        public int hashCode() {
            return Objects.hashCode(this.var.getGenericDeclaration(), this.var.getName());
        }

        public boolean equals(@CheckForNull Object obj) {
            if (obj instanceof TypeVariableKey) {
                return equalsTypeVariable(((TypeVariableKey) obj).var);
            }
            return false;
        }

        public String toString() {
            return this.var.toString();
        }

        @CheckForNull
        static TypeVariableKey forLookup(Type type) {
            if (type instanceof TypeVariable) {
                return new TypeVariableKey((TypeVariable) type);
            }
            return null;
        }

        boolean equalsType(Type type) {
            if (type instanceof TypeVariable) {
                return equalsTypeVariable((TypeVariable) type);
            }
            return false;
        }

        private boolean equalsTypeVariable(TypeVariable<?> typeVariable) {
            return this.var.getGenericDeclaration().equals(typeVariable.getGenericDeclaration()) && this.var.getName().equals(typeVariable.getName());
        }
    }
}
