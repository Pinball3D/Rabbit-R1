package com.google.common.util.concurrent;

import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import com.google.common.collect.Ordering;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import javax.annotation.CheckForNull;

/* JADX INFO: Access modifiers changed from: package-private */
@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public final class FuturesGetChecked {
    private static final Ordering<Constructor<?>> WITH_STRING_PARAM_FIRST = Ordering.natural().onResultOf(new Function<Constructor<?>, Boolean>() { // from class: com.google.common.util.concurrent.FuturesGetChecked.1
        @Override // com.google.common.base.Function
        public Boolean apply(Constructor<?> constructor) {
            return Boolean.valueOf(Arrays.asList(constructor.getParameterTypes()).contains(String.class));
        }
    }).reverse();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public interface GetCheckedTypeValidator {
        void validateClass(Class<? extends Exception> cls);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ParametricNullness
    public static <V, X extends Exception> V getChecked(Future<V> future, Class<X> cls) throws Exception {
        return (V) getChecked(bestGetCheckedTypeValidator(), future, cls);
    }

    @ParametricNullness
    static <V, X extends Exception> V getChecked(GetCheckedTypeValidator getCheckedTypeValidator, Future<V> future, Class<X> cls) throws Exception {
        getCheckedTypeValidator.validateClass(cls);
        try {
            return future.get();
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            throw newWithCause(cls, e);
        } catch (ExecutionException e2) {
            wrapAndThrowExceptionOrError(e2.getCause(), cls);
            throw new AssertionError();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ParametricNullness
    public static <V, X extends Exception> V getChecked(Future<V> future, Class<X> cls, long j, TimeUnit timeUnit) throws Exception {
        bestGetCheckedTypeValidator().validateClass(cls);
        try {
            return future.get(j, timeUnit);
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            throw newWithCause(cls, e);
        } catch (ExecutionException e2) {
            wrapAndThrowExceptionOrError(e2.getCause(), cls);
            throw new AssertionError();
        } catch (TimeoutException e3) {
            throw newWithCause(cls, e3);
        }
    }

    private static GetCheckedTypeValidator bestGetCheckedTypeValidator() {
        return GetCheckedTypeValidatorHolder.BEST_VALIDATOR;
    }

    static GetCheckedTypeValidator weakSetValidator() {
        return GetCheckedTypeValidatorHolder.WeakSetValidator.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class GetCheckedTypeValidatorHolder {
        static final GetCheckedTypeValidator BEST_VALIDATOR = getBestValidator();

        GetCheckedTypeValidatorHolder() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes3.dex */
        public enum WeakSetValidator implements GetCheckedTypeValidator {
            INSTANCE;

            private static final Set<WeakReference<Class<? extends Exception>>> validClasses = new CopyOnWriteArraySet();

            @Override // com.google.common.util.concurrent.FuturesGetChecked.GetCheckedTypeValidator
            public void validateClass(Class<? extends Exception> cls) {
                Iterator<WeakReference<Class<? extends Exception>>> it = validClasses.iterator();
                while (it.hasNext()) {
                    if (cls.equals(it.next().get())) {
                        return;
                    }
                }
                FuturesGetChecked.checkExceptionClassValidity(cls);
                Set<WeakReference<Class<? extends Exception>>> set = validClasses;
                if (set.size() > 1000) {
                    set.clear();
                }
                set.add(new WeakReference<>(cls));
            }
        }

        static GetCheckedTypeValidator getBestValidator() {
            return FuturesGetChecked.weakSetValidator();
        }
    }

    private static <X extends Exception> void wrapAndThrowExceptionOrError(Throwable th, Class<X> cls) throws Exception {
        if (th instanceof Error) {
            throw new ExecutionError((Error) th);
        }
        if (th instanceof RuntimeException) {
            throw new UncheckedExecutionException(th);
        }
        throw newWithCause(cls, th);
    }

    private static boolean hasConstructorUsableByGetChecked(Class<? extends Exception> cls) {
        try {
            newWithCause(cls, new Exception());
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    private static <X extends Exception> X newWithCause(Class<X> cls, Throwable th) {
        Iterator it = preferringStrings(Arrays.asList(cls.getConstructors())).iterator();
        while (it.hasNext()) {
            X x = (X) newFromConstructor((Constructor) it.next(), th);
            if (x != null) {
                if (x.getCause() == null) {
                    x.initCause(th);
                }
                return x;
            }
        }
        String valueOf = String.valueOf(cls);
        throw new IllegalArgumentException(new StringBuilder(String.valueOf(valueOf).length() + 82).append("No appropriate constructor for exception of type ").append(valueOf).append(" in response to chained exception").toString(), th);
    }

    private static <X extends Exception> List<Constructor<X>> preferringStrings(List<Constructor<X>> list) {
        return (List<Constructor<X>>) WITH_STRING_PARAM_FIRST.sortedCopy(list);
    }

    @CheckForNull
    private static <X> X newFromConstructor(Constructor<X> constructor, Throwable th) {
        Class<?>[] parameterTypes = constructor.getParameterTypes();
        Object[] objArr = new Object[parameterTypes.length];
        for (int i = 0; i < parameterTypes.length; i++) {
            Class<?> cls = parameterTypes[i];
            if (cls.equals(String.class)) {
                objArr[i] = th.toString();
            } else {
                if (!cls.equals(Throwable.class)) {
                    return null;
                }
                objArr[i] = th;
            }
        }
        try {
            return constructor.newInstance(objArr);
        } catch (IllegalAccessException | IllegalArgumentException | InstantiationException | InvocationTargetException unused) {
            return null;
        }
    }

    static boolean isCheckedException(Class<? extends Exception> cls) {
        return !RuntimeException.class.isAssignableFrom(cls);
    }

    static void checkExceptionClassValidity(Class<? extends Exception> cls) {
        Preconditions.checkArgument(isCheckedException(cls), "Futures.getChecked exception type (%s) must not be a RuntimeException", cls);
        Preconditions.checkArgument(hasConstructorUsableByGetChecked(cls), "Futures.getChecked exception type (%s) must be an accessible class with an accessible constructor whose parameters (if any) must be of type String and/or Throwable", cls);
    }

    private FuturesGetChecked() {
    }
}
