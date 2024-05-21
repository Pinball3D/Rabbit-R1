package com.google.gson.internal.reflect;

import com.google.gson.JsonIOException;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;

/* loaded from: classes3.dex */
final class UnsafeReflectionAccessor extends ReflectionAccessor {
    private static Class unsafeClass;
    private final Object theUnsafe = getUnsafeInstance();
    private final Field overrideField = getOverrideField();

    @Override // com.google.gson.internal.reflect.ReflectionAccessor
    public void makeAccessible(AccessibleObject accessibleObject) {
        if (makeAccessibleWithUnsafe(accessibleObject)) {
            return;
        }
        try {
            accessibleObject.setAccessible(true);
        } catch (SecurityException e) {
            throw new JsonIOException("Gson couldn't modify fields for " + accessibleObject + "\nand sun.misc.Unsafe not found.\nEither write a custom type adapter, or make fields accessible, or include sun.misc.Unsafe.", e);
        }
    }

    boolean makeAccessibleWithUnsafe(AccessibleObject accessibleObject) {
        if (this.theUnsafe != null && this.overrideField != null) {
            try {
                unsafeClass.getMethod("putBoolean", Object.class, Long.TYPE, Boolean.TYPE).invoke(this.theUnsafe, accessibleObject, Long.valueOf(((Long) unsafeClass.getMethod("objectFieldOffset", Field.class).invoke(this.theUnsafe, this.overrideField)).longValue()), true);
                return true;
            } catch (Exception unused) {
            }
        }
        return false;
    }

    private static Object getUnsafeInstance() {
        try {
            Class<?> cls = Class.forName("sun.misc.Unsafe");
            unsafeClass = cls;
            Field declaredField = cls.getDeclaredField("theUnsafe");
            declaredField.setAccessible(true);
            return declaredField.get(null);
        } catch (Exception unused) {
            return null;
        }
    }

    private static Field getOverrideField() {
        try {
            return AccessibleObject.class.getDeclaredField("override");
        } catch (Exception unused) {
            return null;
        }
    }
}
