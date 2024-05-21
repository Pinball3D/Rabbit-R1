package com.google.common.reflect;

import com.google.common.base.Joiner;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.collect.FluentIterable;
import com.google.common.collect.ForwardingSet;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Maps;
import com.google.common.collect.Ordering;
import com.google.common.collect.UnmodifiableIterator;
import com.google.common.primitives.Primitives;
import com.google.common.reflect.Invokable;
import com.google.common.reflect.TypeResolver;
import com.google.common.reflect.Types;
import java.io.Serializable;
import java.lang.reflect.Constructor;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public abstract class TypeToken<T> extends TypeCapture<T> implements Serializable {
    private static final long serialVersionUID = 3637540370352322684L;

    @CheckForNull
    private transient TypeResolver covariantTypeResolver;

    @CheckForNull
    private transient TypeResolver invariantTypeResolver;
    private final Type runtimeType;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public enum TypeFilter implements Predicate<TypeToken<?>> {
        IGNORE_TYPE_VARIABLE_OR_WILDCARD { // from class: com.google.common.reflect.TypeToken.TypeFilter.1
            @Override // com.google.common.base.Predicate
            public boolean apply(TypeToken<?> typeToken) {
                return ((((TypeToken) typeToken).runtimeType instanceof TypeVariable) || (((TypeToken) typeToken).runtimeType instanceof WildcardType)) ? false : true;
            }
        },
        INTERFACE_ONLY { // from class: com.google.common.reflect.TypeToken.TypeFilter.2
            @Override // com.google.common.base.Predicate
            public boolean apply(TypeToken<?> typeToken) {
                return typeToken.getRawType().isInterface();
            }
        }
    }

    public final Type getType() {
        return this.runtimeType;
    }

    protected TypeToken() {
        Type capture = capture();
        this.runtimeType = capture;
        Preconditions.checkState(!(capture instanceof TypeVariable), "Cannot construct a TypeToken for a type variable.\nYou probably meant to call new TypeToken<%s>(getClass()) that can resolve the type variable for you.\nIf you do need to create a TypeToken of a type variable, please use TypeToken.of() instead.", capture);
    }

    protected TypeToken(Class<?> cls) {
        Type capture = super.capture();
        if (capture instanceof Class) {
            this.runtimeType = capture;
        } else {
            this.runtimeType = TypeResolver.covariantly(cls).resolveType(capture);
        }
    }

    private TypeToken(Type type) {
        this.runtimeType = (Type) Preconditions.checkNotNull(type);
    }

    public static <T> TypeToken<T> of(Class<T> cls) {
        return new SimpleTypeToken(cls);
    }

    public static TypeToken<?> of(Type type) {
        return new SimpleTypeToken(type);
    }

    public final Class<? super T> getRawType() {
        return getRawTypes().iterator().next();
    }

    public final <X> TypeToken<T> where(TypeParameter<X> typeParameter, TypeToken<X> typeToken) {
        return new SimpleTypeToken(new TypeResolver().where(ImmutableMap.of(new TypeResolver.TypeVariableKey(typeParameter.typeVariable), typeToken.runtimeType)).resolveType(this.runtimeType));
    }

    public final <X> TypeToken<T> where(TypeParameter<X> typeParameter, Class<X> cls) {
        return where(typeParameter, of((Class) cls));
    }

    public final TypeToken<?> resolveType(Type type) {
        Preconditions.checkNotNull(type);
        return of(getInvariantTypeResolver().resolveType(type));
    }

    private TypeToken<?> resolveSupertype(Type type) {
        TypeToken<?> of = of(getCovariantTypeResolver().resolveType(type));
        of.covariantTypeResolver = this.covariantTypeResolver;
        of.invariantTypeResolver = this.invariantTypeResolver;
        return of;
    }

    @CheckForNull
    final TypeToken<? super T> getGenericSuperclass() {
        Type type = this.runtimeType;
        if (type instanceof TypeVariable) {
            return boundAsSuperclass(((TypeVariable) type).getBounds()[0]);
        }
        if (type instanceof WildcardType) {
            return boundAsSuperclass(((WildcardType) type).getUpperBounds()[0]);
        }
        Type genericSuperclass = getRawType().getGenericSuperclass();
        if (genericSuperclass == null) {
            return null;
        }
        return (TypeToken<? super T>) resolveSupertype(genericSuperclass);
    }

    @CheckForNull
    private TypeToken<? super T> boundAsSuperclass(Type type) {
        TypeToken<? super T> typeToken = (TypeToken<? super T>) of(type);
        if (typeToken.getRawType().isInterface()) {
            return null;
        }
        return typeToken;
    }

    final ImmutableList<TypeToken<? super T>> getGenericInterfaces() {
        Type type = this.runtimeType;
        if (type instanceof TypeVariable) {
            return boundsAsInterfaces(((TypeVariable) type).getBounds());
        }
        if (type instanceof WildcardType) {
            return boundsAsInterfaces(((WildcardType) type).getUpperBounds());
        }
        ImmutableList.Builder builder = ImmutableList.builder();
        for (Type type2 : getRawType().getGenericInterfaces()) {
            builder.add((ImmutableList.Builder) resolveSupertype(type2));
        }
        return builder.build();
    }

    private ImmutableList<TypeToken<? super T>> boundsAsInterfaces(Type[] typeArr) {
        ImmutableList.Builder builder = ImmutableList.builder();
        for (Type type : typeArr) {
            TypeToken<?> of = of(type);
            if (of.getRawType().isInterface()) {
                builder.add((ImmutableList.Builder) of);
            }
        }
        return builder.build();
    }

    public final TypeToken<T>.TypeSet getTypes() {
        return new TypeSet();
    }

    public final TypeToken<? super T> getSupertype(Class<? super T> cls) {
        Preconditions.checkArgument(someRawTypeIsSubclassOf(cls), "%s is not a super class of %s", cls, this);
        Type type = this.runtimeType;
        if (type instanceof TypeVariable) {
            return getSupertypeFromUpperBounds(cls, ((TypeVariable) type).getBounds());
        }
        if (type instanceof WildcardType) {
            return getSupertypeFromUpperBounds(cls, ((WildcardType) type).getUpperBounds());
        }
        if (cls.isArray()) {
            return getArraySupertype(cls);
        }
        return (TypeToken<? super T>) resolveSupertype(toGenericType(cls).runtimeType);
    }

    public final TypeToken<? extends T> getSubtype(Class<?> cls) {
        Preconditions.checkArgument(!(this.runtimeType instanceof TypeVariable), "Cannot get subtype of type variable <%s>", this);
        Type type = this.runtimeType;
        if (type instanceof WildcardType) {
            return getSubtypeFromLowerBounds(cls, ((WildcardType) type).getLowerBounds());
        }
        if (isArray()) {
            return getArraySubtype(cls);
        }
        Preconditions.checkArgument(getRawType().isAssignableFrom(cls), "%s isn't a subclass of %s", cls, this);
        TypeToken<? extends T> typeToken = (TypeToken<? extends T>) of(resolveTypeArgsForSubclass(cls));
        Preconditions.checkArgument(typeToken.isSubtypeOf((TypeToken<?>) this), "%s does not appear to be a subtype of %s", typeToken, this);
        return typeToken;
    }

    public final boolean isSupertypeOf(TypeToken<?> typeToken) {
        return typeToken.isSubtypeOf(getType());
    }

    public final boolean isSupertypeOf(Type type) {
        return of(type).isSubtypeOf(getType());
    }

    public final boolean isSubtypeOf(TypeToken<?> typeToken) {
        return isSubtypeOf(typeToken.getType());
    }

    public final boolean isSubtypeOf(Type type) {
        Preconditions.checkNotNull(type);
        if (type instanceof WildcardType) {
            return any(((WildcardType) type).getLowerBounds()).isSupertypeOf(this.runtimeType);
        }
        Type type2 = this.runtimeType;
        if (type2 instanceof WildcardType) {
            return any(((WildcardType) type2).getUpperBounds()).isSubtypeOf(type);
        }
        if (type2 instanceof TypeVariable) {
            return type2.equals(type) || any(((TypeVariable) this.runtimeType).getBounds()).isSubtypeOf(type);
        }
        if (type2 instanceof GenericArrayType) {
            return of(type).isSupertypeOfArray((GenericArrayType) this.runtimeType);
        }
        if (type instanceof Class) {
            return someRawTypeIsSubclassOf((Class) type);
        }
        if (type instanceof ParameterizedType) {
            return isSubtypeOfParameterizedType((ParameterizedType) type);
        }
        if (type instanceof GenericArrayType) {
            return isSubtypeOfArrayType((GenericArrayType) type);
        }
        return false;
    }

    public final boolean isArray() {
        return getComponentType() != null;
    }

    public final boolean isPrimitive() {
        Type type = this.runtimeType;
        return (type instanceof Class) && ((Class) type).isPrimitive();
    }

    public final TypeToken<T> wrap() {
        return isPrimitive() ? of(Primitives.wrap((Class) this.runtimeType)) : this;
    }

    private boolean isWrapper() {
        return Primitives.allWrapperTypes().contains(this.runtimeType);
    }

    public final TypeToken<T> unwrap() {
        return isWrapper() ? of(Primitives.unwrap((Class) this.runtimeType)) : this;
    }

    @CheckForNull
    public final TypeToken<?> getComponentType() {
        Type componentType = Types.getComponentType(this.runtimeType);
        if (componentType == null) {
            return null;
        }
        return of(componentType);
    }

    public final Invokable<T, Object> method(Method method) {
        Preconditions.checkArgument(someRawTypeIsSubclassOf(method.getDeclaringClass()), "%s not declared by %s", method, this);
        return new Invokable.MethodInvokable<T>(method) { // from class: com.google.common.reflect.TypeToken.1
            @Override // com.google.common.reflect.Invokable
            public TypeToken<T> getOwnerType() {
                return TypeToken.this;
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.google.common.reflect.Invokable.MethodInvokable, com.google.common.reflect.Invokable
            public Type getGenericReturnType() {
                return TypeToken.this.getCovariantTypeResolver().resolveType(super.getGenericReturnType());
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.google.common.reflect.Invokable.MethodInvokable, com.google.common.reflect.Invokable
            public Type[] getGenericParameterTypes() {
                return TypeToken.this.getInvariantTypeResolver().resolveTypesInPlace(super.getGenericParameterTypes());
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.google.common.reflect.Invokable.MethodInvokable, com.google.common.reflect.Invokable
            public Type[] getGenericExceptionTypes() {
                return TypeToken.this.getCovariantTypeResolver().resolveTypesInPlace(super.getGenericExceptionTypes());
            }

            @Override // com.google.common.reflect.Invokable
            public String toString() {
                String valueOf = String.valueOf(getOwnerType());
                String methodInvokable = super.toString();
                return new StringBuilder(String.valueOf(valueOf).length() + 1 + String.valueOf(methodInvokable).length()).append(valueOf).append(".").append(methodInvokable).toString();
            }
        };
    }

    public final Invokable<T, T> constructor(Constructor<?> constructor) {
        Preconditions.checkArgument(constructor.getDeclaringClass() == getRawType(), "%s not declared by %s", constructor, getRawType());
        return new Invokable.ConstructorInvokable<T>(constructor) { // from class: com.google.common.reflect.TypeToken.2
            @Override // com.google.common.reflect.Invokable
            public TypeToken<T> getOwnerType() {
                return TypeToken.this;
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.google.common.reflect.Invokable.ConstructorInvokable, com.google.common.reflect.Invokable
            public Type getGenericReturnType() {
                return TypeToken.this.getCovariantTypeResolver().resolveType(super.getGenericReturnType());
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.google.common.reflect.Invokable.ConstructorInvokable, com.google.common.reflect.Invokable
            public Type[] getGenericParameterTypes() {
                return TypeToken.this.getInvariantTypeResolver().resolveTypesInPlace(super.getGenericParameterTypes());
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.google.common.reflect.Invokable.ConstructorInvokable, com.google.common.reflect.Invokable
            public Type[] getGenericExceptionTypes() {
                return TypeToken.this.getCovariantTypeResolver().resolveTypesInPlace(super.getGenericExceptionTypes());
            }

            @Override // com.google.common.reflect.Invokable
            public String toString() {
                String valueOf = String.valueOf(getOwnerType());
                String join = Joiner.on(", ").join(getGenericParameterTypes());
                return new StringBuilder(String.valueOf(valueOf).length() + 2 + String.valueOf(join).length()).append(valueOf).append("(").append(join).append(")").toString();
            }
        };
    }

    /* loaded from: classes3.dex */
    public class TypeSet extends ForwardingSet<TypeToken<? super T>> implements Serializable {
        private static final long serialVersionUID = 0;

        @CheckForNull
        private transient ImmutableSet<TypeToken<? super T>> types;

        TypeSet() {
        }

        public TypeToken<T>.TypeSet interfaces() {
            return new InterfaceSet(this);
        }

        public TypeToken<T>.TypeSet classes() {
            return new ClassSet();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.ForwardingSet, com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
        public Set<TypeToken<? super T>> delegate() {
            ImmutableSet<TypeToken<? super T>> immutableSet = this.types;
            if (immutableSet != null) {
                return immutableSet;
            }
            ImmutableSet<TypeToken<? super T>> set = FluentIterable.from(TypeCollector.FOR_GENERIC_TYPE.collectTypes((TypeCollector<TypeToken<?>>) TypeToken.this)).filter(TypeFilter.IGNORE_TYPE_VARIABLE_OR_WILDCARD).toSet();
            this.types = set;
            return set;
        }

        public Set<Class<? super T>> rawTypes() {
            return ImmutableSet.copyOf((Collection) TypeCollector.FOR_RAW_TYPE.collectTypes(TypeToken.this.getRawTypes()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public final class InterfaceSet extends TypeToken<T>.TypeSet {
        private static final long serialVersionUID = 0;
        private final transient TypeToken<T>.TypeSet allTypes;

        @CheckForNull
        private transient ImmutableSet<TypeToken<? super T>> interfaces;

        @Override // com.google.common.reflect.TypeToken.TypeSet
        public TypeToken<T>.TypeSet interfaces() {
            return this;
        }

        InterfaceSet(TypeToken<T>.TypeSet typeSet) {
            super();
            this.allTypes = typeSet;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.reflect.TypeToken.TypeSet, com.google.common.collect.ForwardingSet, com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
        public Set<TypeToken<? super T>> delegate() {
            ImmutableSet<TypeToken<? super T>> immutableSet = this.interfaces;
            if (immutableSet != null) {
                return immutableSet;
            }
            ImmutableSet<TypeToken<? super T>> set = FluentIterable.from(this.allTypes).filter(TypeFilter.INTERFACE_ONLY).toSet();
            this.interfaces = set;
            return set;
        }

        @Override // com.google.common.reflect.TypeToken.TypeSet
        public Set<Class<? super T>> rawTypes() {
            return FluentIterable.from(TypeCollector.FOR_RAW_TYPE.collectTypes(TypeToken.this.getRawTypes())).filter(new Predicate() { // from class: com.google.common.reflect.TypeToken$InterfaceSet$$ExternalSyntheticLambda0
                @Override // com.google.common.base.Predicate
                public final boolean apply(Object obj) {
                    boolean isInterface;
                    isInterface = ((Class) obj).isInterface();
                    return isInterface;
                }
            }).toSet();
        }

        @Override // com.google.common.reflect.TypeToken.TypeSet
        public TypeToken<T>.TypeSet classes() {
            throw new UnsupportedOperationException("interfaces().classes() not supported.");
        }

        private Object readResolve() {
            return TypeToken.this.getTypes().interfaces();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public final class ClassSet extends TypeToken<T>.TypeSet {
        private static final long serialVersionUID = 0;

        @CheckForNull
        private transient ImmutableSet<TypeToken<? super T>> classes;

        @Override // com.google.common.reflect.TypeToken.TypeSet
        public TypeToken<T>.TypeSet classes() {
            return this;
        }

        private ClassSet() {
            super();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.reflect.TypeToken.TypeSet, com.google.common.collect.ForwardingSet, com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
        public Set<TypeToken<? super T>> delegate() {
            ImmutableSet<TypeToken<? super T>> immutableSet = this.classes;
            if (immutableSet != null) {
                return immutableSet;
            }
            ImmutableSet<TypeToken<? super T>> set = FluentIterable.from(TypeCollector.FOR_GENERIC_TYPE.classesOnly().collectTypes((TypeCollector<TypeToken<?>>) TypeToken.this)).filter(TypeFilter.IGNORE_TYPE_VARIABLE_OR_WILDCARD).toSet();
            this.classes = set;
            return set;
        }

        @Override // com.google.common.reflect.TypeToken.TypeSet
        public Set<Class<? super T>> rawTypes() {
            return ImmutableSet.copyOf((Collection) TypeCollector.FOR_RAW_TYPE.classesOnly().collectTypes(TypeToken.this.getRawTypes()));
        }

        @Override // com.google.common.reflect.TypeToken.TypeSet
        public TypeToken<T>.TypeSet interfaces() {
            throw new UnsupportedOperationException("classes().interfaces() not supported.");
        }

        private Object readResolve() {
            return TypeToken.this.getTypes().classes();
        }
    }

    public boolean equals(@CheckForNull Object obj) {
        if (obj instanceof TypeToken) {
            return this.runtimeType.equals(((TypeToken) obj).runtimeType);
        }
        return false;
    }

    public int hashCode() {
        return this.runtimeType.hashCode();
    }

    public String toString() {
        return Types.toString(this.runtimeType);
    }

    protected Object writeReplace() {
        return of(new TypeResolver().resolveType(this.runtimeType));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final TypeToken<T> rejectTypeVariables() {
        new TypeVisitor() { // from class: com.google.common.reflect.TypeToken.3
            @Override // com.google.common.reflect.TypeVisitor
            void visitTypeVariable(TypeVariable<?> typeVariable) {
                String valueOf = String.valueOf(TypeToken.this.runtimeType);
                throw new IllegalArgumentException(new StringBuilder(String.valueOf(valueOf).length() + 58).append(valueOf).append("contains a type variable and is not safe for the operation").toString());
            }

            @Override // com.google.common.reflect.TypeVisitor
            void visitWildcardType(WildcardType wildcardType) {
                visit(wildcardType.getLowerBounds());
                visit(wildcardType.getUpperBounds());
            }

            @Override // com.google.common.reflect.TypeVisitor
            void visitParameterizedType(ParameterizedType parameterizedType) {
                visit(parameterizedType.getActualTypeArguments());
                visit(parameterizedType.getOwnerType());
            }

            @Override // com.google.common.reflect.TypeVisitor
            void visitGenericArrayType(GenericArrayType genericArrayType) {
                visit(genericArrayType.getGenericComponentType());
            }
        }.visit(this.runtimeType);
        return this;
    }

    private boolean someRawTypeIsSubclassOf(Class<?> cls) {
        UnmodifiableIterator<Class<? super T>> it = getRawTypes().iterator();
        while (it.hasNext()) {
            if (cls.isAssignableFrom(it.next())) {
                return true;
            }
        }
        return false;
    }

    private boolean isSubtypeOfParameterizedType(ParameterizedType parameterizedType) {
        Class<? super Object> rawType = of(parameterizedType).getRawType();
        if (!someRawTypeIsSubclassOf(rawType)) {
            return false;
        }
        TypeVariable<Class<? super Object>>[] typeParameters = rawType.getTypeParameters();
        Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
        for (int i = 0; i < typeParameters.length; i++) {
            if (!of(getCovariantTypeResolver().resolveType(typeParameters[i])).is(actualTypeArguments[i], typeParameters[i])) {
                return false;
            }
        }
        return Modifier.isStatic(((Class) parameterizedType.getRawType()).getModifiers()) || parameterizedType.getOwnerType() == null || isOwnedBySubtypeOf(parameterizedType.getOwnerType());
    }

    private boolean isSubtypeOfArrayType(GenericArrayType genericArrayType) {
        Type type = this.runtimeType;
        if (type instanceof Class) {
            Class cls = (Class) type;
            if (cls.isArray()) {
                return of((Class) cls.getComponentType()).isSubtypeOf(genericArrayType.getGenericComponentType());
            }
            return false;
        }
        if (type instanceof GenericArrayType) {
            return of(((GenericArrayType) type).getGenericComponentType()).isSubtypeOf(genericArrayType.getGenericComponentType());
        }
        return false;
    }

    private boolean isSupertypeOfArray(GenericArrayType genericArrayType) {
        Type type = this.runtimeType;
        if (type instanceof Class) {
            Class cls = (Class) type;
            if (!cls.isArray()) {
                return cls.isAssignableFrom(Object[].class);
            }
            return of(genericArrayType.getGenericComponentType()).isSubtypeOf(cls.getComponentType());
        }
        if (type instanceof GenericArrayType) {
            return of(genericArrayType.getGenericComponentType()).isSubtypeOf(((GenericArrayType) this.runtimeType).getGenericComponentType());
        }
        return false;
    }

    private boolean is(Type type, TypeVariable<?> typeVariable) {
        if (this.runtimeType.equals(type)) {
            return true;
        }
        if (type instanceof WildcardType) {
            WildcardType canonicalizeWildcardType = canonicalizeWildcardType(typeVariable, (WildcardType) type);
            return every(canonicalizeWildcardType.getUpperBounds()).isSupertypeOf(this.runtimeType) && every(canonicalizeWildcardType.getLowerBounds()).isSubtypeOf(this.runtimeType);
        }
        return canonicalizeWildcardsInType(this.runtimeType).equals(canonicalizeWildcardsInType(type));
    }

    private static Type canonicalizeTypeArg(TypeVariable<?> typeVariable, Type type) {
        if (type instanceof WildcardType) {
            return canonicalizeWildcardType(typeVariable, (WildcardType) type);
        }
        return canonicalizeWildcardsInType(type);
    }

    private static Type canonicalizeWildcardsInType(Type type) {
        if (type instanceof ParameterizedType) {
            return canonicalizeWildcardsInParameterizedType((ParameterizedType) type);
        }
        return type instanceof GenericArrayType ? Types.newArrayType(canonicalizeWildcardsInType(((GenericArrayType) type).getGenericComponentType())) : type;
    }

    private static WildcardType canonicalizeWildcardType(TypeVariable<?> typeVariable, WildcardType wildcardType) {
        Type[] bounds = typeVariable.getBounds();
        ArrayList arrayList = new ArrayList();
        for (Type type : wildcardType.getUpperBounds()) {
            if (!any(bounds).isSubtypeOf(type)) {
                arrayList.add(canonicalizeWildcardsInType(type));
            }
        }
        return new Types.WildcardTypeImpl(wildcardType.getLowerBounds(), (Type[]) arrayList.toArray(new Type[0]));
    }

    private static ParameterizedType canonicalizeWildcardsInParameterizedType(ParameterizedType parameterizedType) {
        Class cls = (Class) parameterizedType.getRawType();
        TypeVariable<Class<T>>[] typeParameters = cls.getTypeParameters();
        Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
        for (int i = 0; i < actualTypeArguments.length; i++) {
            actualTypeArguments[i] = canonicalizeTypeArg(typeParameters[i], actualTypeArguments[i]);
        }
        return Types.newParameterizedTypeWithOwner(parameterizedType.getOwnerType(), cls, actualTypeArguments);
    }

    private static Bounds every(Type[] typeArr) {
        return new Bounds(typeArr, false);
    }

    private static Bounds any(Type[] typeArr) {
        return new Bounds(typeArr, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class Bounds {
        private final Type[] bounds;
        private final boolean target;

        Bounds(Type[] typeArr, boolean z) {
            this.bounds = typeArr;
            this.target = z;
        }

        boolean isSubtypeOf(Type type) {
            for (Type type2 : this.bounds) {
                boolean isSubtypeOf = TypeToken.of(type2).isSubtypeOf(type);
                boolean z = this.target;
                if (isSubtypeOf == z) {
                    return z;
                }
            }
            return !this.target;
        }

        boolean isSupertypeOf(Type type) {
            TypeToken<?> of = TypeToken.of(type);
            for (Type type2 : this.bounds) {
                boolean isSubtypeOf = of.isSubtypeOf(type2);
                boolean z = this.target;
                if (isSubtypeOf == z) {
                    return z;
                }
            }
            return !this.target;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ImmutableSet<Class<? super T>> getRawTypes() {
        final ImmutableSet.Builder builder = ImmutableSet.builder();
        new TypeVisitor(this) { // from class: com.google.common.reflect.TypeToken.4
            @Override // com.google.common.reflect.TypeVisitor
            void visitTypeVariable(TypeVariable<?> typeVariable) {
                visit(typeVariable.getBounds());
            }

            @Override // com.google.common.reflect.TypeVisitor
            void visitWildcardType(WildcardType wildcardType) {
                visit(wildcardType.getUpperBounds());
            }

            @Override // com.google.common.reflect.TypeVisitor
            void visitParameterizedType(ParameterizedType parameterizedType) {
                builder.add((ImmutableSet.Builder) parameterizedType.getRawType());
            }

            @Override // com.google.common.reflect.TypeVisitor
            void visitClass(Class<?> cls) {
                builder.add((ImmutableSet.Builder) cls);
            }

            @Override // com.google.common.reflect.TypeVisitor
            void visitGenericArrayType(GenericArrayType genericArrayType) {
                builder.add((ImmutableSet.Builder) Types.getArrayClass(TypeToken.of(genericArrayType.getGenericComponentType()).getRawType()));
            }
        }.visit(this.runtimeType);
        return builder.build();
    }

    private boolean isOwnedBySubtypeOf(Type type) {
        Iterator<TypeToken<? super T>> it = getTypes().iterator();
        while (it.hasNext()) {
            Type ownerTypeIfPresent = it.next().getOwnerTypeIfPresent();
            if (ownerTypeIfPresent != null && of(ownerTypeIfPresent).isSubtypeOf(type)) {
                return true;
            }
        }
        return false;
    }

    @CheckForNull
    private Type getOwnerTypeIfPresent() {
        Type type = this.runtimeType;
        if (type instanceof ParameterizedType) {
            return ((ParameterizedType) type).getOwnerType();
        }
        if (type instanceof Class) {
            return ((Class) type).getEnclosingClass();
        }
        return null;
    }

    static <T> TypeToken<? extends T> toGenericType(Class<T> cls) {
        if (cls.isArray()) {
            return (TypeToken<? extends T>) of(Types.newArrayType(toGenericType(cls.getComponentType()).runtimeType));
        }
        TypeVariable<Class<T>>[] typeParameters = cls.getTypeParameters();
        Type type = (!cls.isMemberClass() || Modifier.isStatic(cls.getModifiers())) ? null : toGenericType(cls.getEnclosingClass()).runtimeType;
        if (typeParameters.length > 0 || (type != null && type != cls.getEnclosingClass())) {
            return (TypeToken<? extends T>) of(Types.newParameterizedTypeWithOwner(type, cls, typeParameters));
        }
        return of((Class) cls);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public TypeResolver getCovariantTypeResolver() {
        TypeResolver typeResolver = this.covariantTypeResolver;
        if (typeResolver != null) {
            return typeResolver;
        }
        TypeResolver covariantly = TypeResolver.covariantly(this.runtimeType);
        this.covariantTypeResolver = covariantly;
        return covariantly;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public TypeResolver getInvariantTypeResolver() {
        TypeResolver typeResolver = this.invariantTypeResolver;
        if (typeResolver != null) {
            return typeResolver;
        }
        TypeResolver invariantly = TypeResolver.invariantly(this.runtimeType);
        this.invariantTypeResolver = invariantly;
        return invariantly;
    }

    private TypeToken<? super T> getSupertypeFromUpperBounds(Class<? super T> cls, Type[] typeArr) {
        for (Type type : typeArr) {
            TypeToken<?> of = of(type);
            if (of.isSubtypeOf(cls)) {
                return (TypeToken<? super T>) of.getSupertype(cls);
            }
        }
        String valueOf = String.valueOf(cls);
        String valueOf2 = String.valueOf(this);
        throw new IllegalArgumentException(new StringBuilder(String.valueOf(valueOf).length() + 23 + String.valueOf(valueOf2).length()).append(valueOf).append(" isn't a super type of ").append(valueOf2).toString());
    }

    private TypeToken<? extends T> getSubtypeFromLowerBounds(Class<?> cls, Type[] typeArr) {
        if (typeArr.length > 0) {
            return (TypeToken<? extends T>) of(typeArr[0]).getSubtype(cls);
        }
        String valueOf = String.valueOf(cls);
        String valueOf2 = String.valueOf(this);
        throw new IllegalArgumentException(new StringBuilder(String.valueOf(valueOf).length() + 21 + String.valueOf(valueOf2).length()).append(valueOf).append(" isn't a subclass of ").append(valueOf2).toString());
    }

    private TypeToken<? super T> getArraySupertype(Class<? super T> cls) {
        TypeToken<?> componentType = getComponentType();
        if (componentType == null) {
            String valueOf = String.valueOf(cls);
            String valueOf2 = String.valueOf(this);
            throw new IllegalArgumentException(new StringBuilder(String.valueOf(valueOf).length() + 23 + String.valueOf(valueOf2).length()).append(valueOf).append(" isn't a super type of ").append(valueOf2).toString());
        }
        return (TypeToken<? super T>) of(newArrayClassOrGenericArrayType(componentType.getSupertype((Class) Objects.requireNonNull(cls.getComponentType())).runtimeType));
    }

    private TypeToken<? extends T> getArraySubtype(Class<?> cls) {
        Class<?> componentType = cls.getComponentType();
        if (componentType == null) {
            String valueOf = String.valueOf(cls);
            String valueOf2 = String.valueOf(this);
            throw new IllegalArgumentException(new StringBuilder(String.valueOf(valueOf).length() + 36 + String.valueOf(valueOf2).length()).append(valueOf).append(" does not appear to be a subtype of ").append(valueOf2).toString());
        }
        return (TypeToken<? extends T>) of(newArrayClassOrGenericArrayType(((TypeToken) Objects.requireNonNull(getComponentType())).getSubtype(componentType).runtimeType));
    }

    private Type resolveTypeArgsForSubclass(Class<?> cls) {
        if ((this.runtimeType instanceof Class) && (cls.getTypeParameters().length == 0 || getRawType().getTypeParameters().length != 0)) {
            return cls;
        }
        TypeToken genericType = toGenericType(cls);
        return new TypeResolver().where(genericType.getSupertype(getRawType()).runtimeType, this.runtimeType).resolveType(genericType.runtimeType);
    }

    private static Type newArrayClassOrGenericArrayType(Type type) {
        return Types.JavaVersion.JAVA7.newArrayType(type);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static final class SimpleTypeToken<T> extends TypeToken<T> {
        private static final long serialVersionUID = 0;

        SimpleTypeToken(Type type) {
            super(type);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static abstract class TypeCollector<K> {
        static final TypeCollector<TypeToken<?>> FOR_GENERIC_TYPE = new TypeCollector<TypeToken<?>>() { // from class: com.google.common.reflect.TypeToken.TypeCollector.1
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.google.common.reflect.TypeToken.TypeCollector
            public Class<?> getRawType(TypeToken<?> typeToken) {
                return typeToken.getRawType();
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.google.common.reflect.TypeToken.TypeCollector
            public Iterable<? extends TypeToken<?>> getInterfaces(TypeToken<?> typeToken) {
                return typeToken.getGenericInterfaces();
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.google.common.reflect.TypeToken.TypeCollector
            @CheckForNull
            public TypeToken<?> getSuperclass(TypeToken<?> typeToken) {
                return typeToken.getGenericSuperclass();
            }
        };
        static final TypeCollector<Class<?>> FOR_RAW_TYPE = new TypeCollector<Class<?>>() { // from class: com.google.common.reflect.TypeToken.TypeCollector.2
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.google.common.reflect.TypeToken.TypeCollector
            public Class<?> getRawType(Class<?> cls) {
                return cls;
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.google.common.reflect.TypeToken.TypeCollector
            public Iterable<? extends Class<?>> getInterfaces(Class<?> cls) {
                return Arrays.asList(cls.getInterfaces());
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.google.common.reflect.TypeToken.TypeCollector
            @CheckForNull
            public Class<?> getSuperclass(Class<?> cls) {
                return cls.getSuperclass();
            }
        };

        abstract Iterable<? extends K> getInterfaces(K k);

        abstract Class<?> getRawType(K k);

        @CheckForNull
        abstract K getSuperclass(K k);

        private TypeCollector() {
        }

        final TypeCollector<K> classesOnly() {
            return new ForwardingTypeCollector<K>(this, this) { // from class: com.google.common.reflect.TypeToken.TypeCollector.3
                @Override // com.google.common.reflect.TypeToken.TypeCollector.ForwardingTypeCollector, com.google.common.reflect.TypeToken.TypeCollector
                Iterable<? extends K> getInterfaces(K k) {
                    return ImmutableSet.of();
                }

                @Override // com.google.common.reflect.TypeToken.TypeCollector
                ImmutableList<K> collectTypes(Iterable<? extends K> iterable) {
                    ImmutableList.Builder builder = ImmutableList.builder();
                    for (K k : iterable) {
                        if (!getRawType(k).isInterface()) {
                            builder.add((ImmutableList.Builder) k);
                        }
                    }
                    return super.collectTypes((Iterable) builder.build());
                }
            };
        }

        final ImmutableList<K> collectTypes(K k) {
            return collectTypes((Iterable) ImmutableList.of(k));
        }

        ImmutableList<K> collectTypes(Iterable<? extends K> iterable) {
            HashMap newHashMap = Maps.newHashMap();
            Iterator<? extends K> it = iterable.iterator();
            while (it.hasNext()) {
                collectTypes(it.next(), newHashMap);
            }
            return sortKeysByValue(newHashMap, Ordering.natural().reverse());
        }

        /* JADX WARN: Multi-variable type inference failed */
        private int collectTypes(K k, Map<? super K, Integer> map) {
            Integer num = map.get(k);
            if (num != null) {
                return num.intValue();
            }
            boolean isInterface = getRawType(k).isInterface();
            Iterator<? extends K> it = getInterfaces(k).iterator();
            int i = isInterface;
            while (it.hasNext()) {
                i = Math.max(i, collectTypes(it.next(), map));
            }
            K superclass = getSuperclass(k);
            int i2 = i;
            if (superclass != null) {
                i2 = Math.max(i, collectTypes(superclass, map));
            }
            int i3 = i2 + 1;
            map.put(k, Integer.valueOf(i3));
            return i3;
        }

        private static <K, V> ImmutableList<K> sortKeysByValue(final Map<K, V> map, final Comparator<? super V> comparator) {
            return (ImmutableList<K>) new Ordering<K>() { // from class: com.google.common.reflect.TypeToken.TypeCollector.4
                /* JADX WARN: Multi-variable type inference failed */
                @Override // com.google.common.collect.Ordering, java.util.Comparator
                public int compare(K k, K k2) {
                    return comparator.compare(Objects.requireNonNull(map.get(k)), Objects.requireNonNull(map.get(k2)));
                }
            }.immutableSortedCopy(map.keySet());
        }

        /* loaded from: classes3.dex */
        private static class ForwardingTypeCollector<K> extends TypeCollector<K> {
            private final TypeCollector<K> delegate;

            ForwardingTypeCollector(TypeCollector<K> typeCollector) {
                super();
                this.delegate = typeCollector;
            }

            @Override // com.google.common.reflect.TypeToken.TypeCollector
            Class<?> getRawType(K k) {
                return this.delegate.getRawType(k);
            }

            @Override // com.google.common.reflect.TypeToken.TypeCollector
            Iterable<? extends K> getInterfaces(K k) {
                return this.delegate.getInterfaces(k);
            }

            @Override // com.google.common.reflect.TypeToken.TypeCollector
            @CheckForNull
            K getSuperclass(K k) {
                return this.delegate.getSuperclass(k);
            }
        }
    }
}
