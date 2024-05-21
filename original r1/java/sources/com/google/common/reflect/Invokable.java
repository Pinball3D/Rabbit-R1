package com.google.common.reflect;

import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import java.lang.annotation.Annotation;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.AnnotatedElement;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.Arrays;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public abstract class Invokable<T, R> implements AnnotatedElement, Member {
    private final AccessibleObject accessibleObject;
    private final Member member;

    abstract Type[] getGenericExceptionTypes();

    abstract Type[] getGenericParameterTypes();

    abstract Type getGenericReturnType();

    abstract Annotation[][] getParameterAnnotations();

    public abstract TypeVariable<?>[] getTypeParameters();

    @CheckForNull
    abstract Object invokeInternal(@CheckForNull Object obj, Object[] objArr) throws InvocationTargetException, IllegalAccessException;

    public abstract boolean isOverridable();

    public abstract boolean isVarArgs();

    <M extends AccessibleObject & Member> Invokable(M m) {
        Preconditions.checkNotNull(m);
        this.accessibleObject = m;
        this.member = m;
    }

    public static Invokable<?, Object> from(Method method) {
        return new MethodInvokable(method);
    }

    public static <T> Invokable<T, T> from(Constructor<T> constructor) {
        return new ConstructorInvokable(constructor);
    }

    @Override // java.lang.reflect.AnnotatedElement
    public final boolean isAnnotationPresent(Class<? extends Annotation> cls) {
        return this.accessibleObject.isAnnotationPresent(cls);
    }

    @Override // java.lang.reflect.AnnotatedElement
    @CheckForNull
    public final <A extends Annotation> A getAnnotation(Class<A> cls) {
        return (A) this.accessibleObject.getAnnotation(cls);
    }

    @Override // java.lang.reflect.AnnotatedElement
    public final Annotation[] getAnnotations() {
        return this.accessibleObject.getAnnotations();
    }

    @Override // java.lang.reflect.AnnotatedElement
    public final Annotation[] getDeclaredAnnotations() {
        return this.accessibleObject.getDeclaredAnnotations();
    }

    public final void setAccessible(boolean z) {
        this.accessibleObject.setAccessible(z);
    }

    public final boolean trySetAccessible() {
        try {
            this.accessibleObject.setAccessible(true);
            return true;
        } catch (RuntimeException unused) {
            return false;
        }
    }

    public final boolean isAccessible() {
        return this.accessibleObject.isAccessible();
    }

    @Override // java.lang.reflect.Member
    public final String getName() {
        return this.member.getName();
    }

    @Override // java.lang.reflect.Member
    public final int getModifiers() {
        return this.member.getModifiers();
    }

    @Override // java.lang.reflect.Member
    public final boolean isSynthetic() {
        return this.member.isSynthetic();
    }

    public final boolean isPublic() {
        return Modifier.isPublic(getModifiers());
    }

    public final boolean isProtected() {
        return Modifier.isProtected(getModifiers());
    }

    public final boolean isPackagePrivate() {
        return (isPrivate() || isPublic() || isProtected()) ? false : true;
    }

    public final boolean isPrivate() {
        return Modifier.isPrivate(getModifiers());
    }

    public final boolean isStatic() {
        return Modifier.isStatic(getModifiers());
    }

    public final boolean isFinal() {
        return Modifier.isFinal(getModifiers());
    }

    public final boolean isAbstract() {
        return Modifier.isAbstract(getModifiers());
    }

    public final boolean isNative() {
        return Modifier.isNative(getModifiers());
    }

    public final boolean isSynchronized() {
        return Modifier.isSynchronized(getModifiers());
    }

    final boolean isVolatile() {
        return Modifier.isVolatile(getModifiers());
    }

    final boolean isTransient() {
        return Modifier.isTransient(getModifiers());
    }

    public boolean equals(@CheckForNull Object obj) {
        if (!(obj instanceof Invokable)) {
            return false;
        }
        Invokable invokable = (Invokable) obj;
        return getOwnerType().equals(invokable.getOwnerType()) && this.member.equals(invokable.member);
    }

    public int hashCode() {
        return this.member.hashCode();
    }

    public String toString() {
        return this.member.toString();
    }

    @CheckForNull
    public final R invoke(@CheckForNull T t, Object... objArr) throws InvocationTargetException, IllegalAccessException {
        return (R) invokeInternal(t, (Object[]) Preconditions.checkNotNull(objArr));
    }

    public final TypeToken<? extends R> getReturnType() {
        return (TypeToken<? extends R>) TypeToken.of(getGenericReturnType());
    }

    public final ImmutableList<Parameter> getParameters() {
        Type[] genericParameterTypes = getGenericParameterTypes();
        Annotation[][] parameterAnnotations = getParameterAnnotations();
        ImmutableList.Builder builder = ImmutableList.builder();
        for (int i = 0; i < genericParameterTypes.length; i++) {
            builder.add((ImmutableList.Builder) new Parameter(this, i, TypeToken.of(genericParameterTypes[i]), parameterAnnotations[i]));
        }
        return builder.build();
    }

    public final ImmutableList<TypeToken<? extends Throwable>> getExceptionTypes() {
        ImmutableList.Builder builder = ImmutableList.builder();
        for (Type type : getGenericExceptionTypes()) {
            builder.add((ImmutableList.Builder) TypeToken.of(type));
        }
        return builder.build();
    }

    public final <R1 extends R> Invokable<T, R1> returning(Class<R1> cls) {
        return returning(TypeToken.of((Class) cls));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <R1 extends R> Invokable<T, R1> returning(TypeToken<R1> typeToken) {
        if (typeToken.isSupertypeOf(getReturnType())) {
            return this;
        }
        String valueOf = String.valueOf(getReturnType());
        String valueOf2 = String.valueOf(typeToken);
        throw new IllegalArgumentException(new StringBuilder(String.valueOf(valueOf).length() + 35 + String.valueOf(valueOf2).length()).append("Invokable is known to return ").append(valueOf).append(", not ").append(valueOf2).toString());
    }

    @Override // java.lang.reflect.Member
    public final Class<? super T> getDeclaringClass() {
        return (Class<? super T>) this.member.getDeclaringClass();
    }

    public TypeToken<T> getOwnerType() {
        return TypeToken.of((Class) getDeclaringClass());
    }

    /* loaded from: classes3.dex */
    static class MethodInvokable<T> extends Invokable<T, Object> {
        final Method method;

        /* JADX INFO: Access modifiers changed from: package-private */
        public MethodInvokable(Method method) {
            super(method);
            this.method = method;
        }

        @Override // com.google.common.reflect.Invokable
        @CheckForNull
        final Object invokeInternal(@CheckForNull Object obj, Object[] objArr) throws InvocationTargetException, IllegalAccessException {
            return this.method.invoke(obj, objArr);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.reflect.Invokable
        public Type getGenericReturnType() {
            return this.method.getGenericReturnType();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.reflect.Invokable
        public Type[] getGenericParameterTypes() {
            return this.method.getGenericParameterTypes();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.reflect.Invokable
        public Type[] getGenericExceptionTypes() {
            return this.method.getGenericExceptionTypes();
        }

        @Override // com.google.common.reflect.Invokable
        final Annotation[][] getParameterAnnotations() {
            return this.method.getParameterAnnotations();
        }

        @Override // com.google.common.reflect.Invokable
        public final TypeVariable<?>[] getTypeParameters() {
            return this.method.getTypeParameters();
        }

        @Override // com.google.common.reflect.Invokable
        public final boolean isOverridable() {
            return (isFinal() || isPrivate() || isStatic() || Modifier.isFinal(getDeclaringClass().getModifiers())) ? false : true;
        }

        @Override // com.google.common.reflect.Invokable
        public final boolean isVarArgs() {
            return this.method.isVarArgs();
        }
    }

    /* loaded from: classes3.dex */
    static class ConstructorInvokable<T> extends Invokable<T, T> {
        final Constructor<?> constructor;

        @Override // com.google.common.reflect.Invokable
        public final boolean isOverridable() {
            return false;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public ConstructorInvokable(Constructor<?> constructor) {
            super(constructor);
            this.constructor = constructor;
        }

        @Override // com.google.common.reflect.Invokable
        final Object invokeInternal(@CheckForNull Object obj, Object[] objArr) throws InvocationTargetException, IllegalAccessException {
            try {
                return this.constructor.newInstance(objArr);
            } catch (InstantiationException e) {
                String valueOf = String.valueOf(this.constructor);
                throw new RuntimeException(new StringBuilder(String.valueOf(valueOf).length() + 8).append(valueOf).append(" failed.").toString(), e);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.reflect.Invokable
        public Type getGenericReturnType() {
            Class<? super T> declaringClass = getDeclaringClass();
            TypeVariable<Class<? super T>>[] typeParameters = declaringClass.getTypeParameters();
            return typeParameters.length > 0 ? Types.newParameterizedType(declaringClass, typeParameters) : declaringClass;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.reflect.Invokable
        public Type[] getGenericParameterTypes() {
            Type[] genericParameterTypes = this.constructor.getGenericParameterTypes();
            if (genericParameterTypes.length > 0 && mayNeedHiddenThis()) {
                Class<?>[] parameterTypes = this.constructor.getParameterTypes();
                if (genericParameterTypes.length == parameterTypes.length && parameterTypes[0] == getDeclaringClass().getEnclosingClass()) {
                    return (Type[]) Arrays.copyOfRange(genericParameterTypes, 1, genericParameterTypes.length);
                }
            }
            return genericParameterTypes;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.reflect.Invokable
        public Type[] getGenericExceptionTypes() {
            return this.constructor.getGenericExceptionTypes();
        }

        @Override // com.google.common.reflect.Invokable
        final Annotation[][] getParameterAnnotations() {
            return this.constructor.getParameterAnnotations();
        }

        @Override // com.google.common.reflect.Invokable
        public final TypeVariable<?>[] getTypeParameters() {
            TypeVariable<Class<? super T>>[] typeParameters = getDeclaringClass().getTypeParameters();
            TypeVariable<Constructor<?>>[] typeParameters2 = this.constructor.getTypeParameters();
            TypeVariable<?>[] typeVariableArr = new TypeVariable[typeParameters.length + typeParameters2.length];
            System.arraycopy(typeParameters, 0, typeVariableArr, 0, typeParameters.length);
            System.arraycopy(typeParameters2, 0, typeVariableArr, typeParameters.length, typeParameters2.length);
            return typeVariableArr;
        }

        @Override // com.google.common.reflect.Invokable
        public final boolean isVarArgs() {
            return this.constructor.isVarArgs();
        }

        private boolean mayNeedHiddenThis() {
            Class<?> declaringClass = this.constructor.getDeclaringClass();
            if (declaringClass.getEnclosingConstructor() != null) {
                return true;
            }
            if (declaringClass.getEnclosingMethod() != null) {
                return !Modifier.isStatic(r0.getModifiers());
            }
            return (declaringClass.getEnclosingClass() == null || Modifier.isStatic(declaringClass.getModifiers())) ? false : true;
        }
    }
}
