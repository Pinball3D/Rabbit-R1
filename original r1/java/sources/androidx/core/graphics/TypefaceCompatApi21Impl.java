package androidx.core.graphics;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import android.util.Log;
import androidx.core.content.res.FontResourcesParserCompat;
import androidx.core.provider.FontsContractCompat;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
class TypefaceCompatApi21Impl extends TypefaceCompatBaseImpl {
    private static final String ADD_FONT_WEIGHT_STYLE_METHOD = "addFontWeightStyle";
    private static final String CREATE_FROM_FAMILIES_WITH_DEFAULT_METHOD = "createFromFamiliesWithDefault";
    private static final String FONT_FAMILY_CLASS = "android.graphics.FontFamily";
    private static final String TAG = "TypefaceCompatApi21Impl";
    private static Method sAddFontWeightStyle = null;
    private static Method sCreateFromFamiliesWithDefault = null;
    private static Class<?> sFontFamily = null;
    private static Constructor<?> sFontFamilyCtor = null;
    private static boolean sHasInitBeenCalled = false;

    private static void init() {
        Class<?> cls;
        Method method;
        Constructor<?> constructor;
        Method method2;
        if (sHasInitBeenCalled) {
            return;
        }
        sHasInitBeenCalled = true;
        try {
            cls = Class.forName(FONT_FAMILY_CLASS);
            constructor = cls.getConstructor(new Class[0]);
            method2 = cls.getMethod(ADD_FONT_WEIGHT_STYLE_METHOD, String.class, Integer.TYPE, Boolean.TYPE);
            method = Typeface.class.getMethod(CREATE_FROM_FAMILIES_WITH_DEFAULT_METHOD, Array.newInstance(cls, 1).getClass());
        } catch (ClassNotFoundException | NoSuchMethodException e) {
            Log.e(TAG, e.getClass().getName(), e);
            cls = null;
            method = null;
            constructor = null;
            method2 = null;
        }
        sFontFamilyCtor = constructor;
        sFontFamily = cls;
        sAddFontWeightStyle = method2;
        sCreateFromFamiliesWithDefault = method;
    }

    private File getFile(ParcelFileDescriptor parcelFileDescriptor) {
        try {
            String readlink = Os.readlink("/proc/self/fd/" + parcelFileDescriptor.getFd());
            if (OsConstants.S_ISREG(Os.stat(readlink).st_mode)) {
                return new File(readlink);
            }
        } catch (ErrnoException unused) {
        }
        return null;
    }

    private static Object newFamily() {
        init();
        try {
            return sFontFamilyCtor.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
            throw new RuntimeException(e);
        }
    }

    private static Typeface createFromFamiliesWithDefault(Object obj) {
        init();
        try {
            Object newInstance = Array.newInstance(sFontFamily, 1);
            Array.set(newInstance, 0, obj);
            return (Typeface) sCreateFromFamiliesWithDefault.invoke(null, newInstance);
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw new RuntimeException(e);
        }
    }

    private static boolean addFontWeightStyle(Object obj, String str, int i, boolean z) {
        init();
        try {
            return ((Boolean) sAddFontWeightStyle.invoke(obj, str, Integer.valueOf(i), Boolean.valueOf(z))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw new RuntimeException(e);
        }
    }

    @Override // androidx.core.graphics.TypefaceCompatBaseImpl
    public Typeface createFromFontInfo(Context context, CancellationSignal cancellationSignal, FontsContractCompat.FontInfo[] fontInfoArr, int i) {
        if (fontInfoArr.length < 1) {
            return null;
        }
        FontsContractCompat.FontInfo findBestInfo = findBestInfo(fontInfoArr, i);
        try {
            ParcelFileDescriptor openFileDescriptor = context.getContentResolver().openFileDescriptor(findBestInfo.getUri(), "r", cancellationSignal);
            if (openFileDescriptor == null) {
                if (openFileDescriptor != null) {
                    openFileDescriptor.close();
                }
                return null;
            }
            try {
                File file = getFile(openFileDescriptor);
                if (file != null && file.canRead()) {
                    Typeface createFromFile = Typeface.createFromFile(file);
                    if (openFileDescriptor != null) {
                        openFileDescriptor.close();
                    }
                    return createFromFile;
                }
                FileInputStream fileInputStream = new FileInputStream(openFileDescriptor.getFileDescriptor());
                try {
                    Typeface createFromInputStream = super.createFromInputStream(context, fileInputStream);
                    fileInputStream.close();
                    if (openFileDescriptor != null) {
                        openFileDescriptor.close();
                    }
                    return createFromInputStream;
                } finally {
                }
            } finally {
            }
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // androidx.core.graphics.TypefaceCompatBaseImpl
    public Typeface createFromFontFamilyFilesResourceEntry(Context context, FontResourcesParserCompat.FontFamilyFilesResourceEntry fontFamilyFilesResourceEntry, Resources resources, int i) {
        Object newFamily = newFamily();
        for (FontResourcesParserCompat.FontFileResourceEntry fontFileResourceEntry : fontFamilyFilesResourceEntry.getEntries()) {
            File tempFile = TypefaceCompatUtil.getTempFile(context);
            if (tempFile == null) {
                return null;
            }
            try {
                if (!TypefaceCompatUtil.copyToFile(tempFile, resources, fontFileResourceEntry.getResourceId())) {
                    return null;
                }
                if (!addFontWeightStyle(newFamily, tempFile.getPath(), fontFileResourceEntry.getWeight(), fontFileResourceEntry.isItalic())) {
                    return null;
                }
                tempFile.delete();
            } catch (RuntimeException unused) {
                return null;
            } finally {
                tempFile.delete();
            }
        }
        return createFromFamiliesWithDefault(newFamily);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.core.graphics.TypefaceCompatBaseImpl
    public Typeface createWeightStyle(Context context, Typeface typeface, int i, boolean z) {
        Typeface typeface2;
        try {
            typeface2 = WeightTypefaceApi21.createWeightStyle(typeface, i, z);
        } catch (RuntimeException unused) {
            typeface2 = null;
        }
        return typeface2 == null ? super.createWeightStyle(context, typeface, i, z) : typeface2;
    }
}
