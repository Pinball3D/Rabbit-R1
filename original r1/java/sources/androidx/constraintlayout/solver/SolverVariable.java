package androidx.constraintlayout.solver;

import androidx.exifinterface.media.ExifInterface;
import java.util.Arrays;
import java.util.HashSet;

/* loaded from: classes.dex */
public class SolverVariable {
    private static final boolean INTERNAL_DEBUG = false;
    static final int MAX_STRENGTH = 9;
    public static final int STRENGTH_BARRIER = 6;
    public static final int STRENGTH_CENTERING = 7;
    public static final int STRENGTH_EQUALITY = 5;
    public static final int STRENGTH_FIXED = 8;
    public static final int STRENGTH_HIGH = 3;
    public static final int STRENGTH_HIGHEST = 4;
    public static final int STRENGTH_LOW = 1;
    public static final int STRENGTH_MEDIUM = 2;
    public static final int STRENGTH_NONE = 0;
    private static final boolean VAR_USE_HASH = false;
    private static int uniqueConstantId = 1;
    private static int uniqueErrorId = 1;
    private static int uniqueId = 1;
    private static int uniqueSlackId = 1;
    private static int uniqueUnrestrictedId = 1;
    public float computedValue;
    int definitionId;
    float[] goalStrengthVector;
    public int id;
    public boolean inGoal;
    HashSet<ArrayRow> inRows;
    public boolean isFinalValue;
    ArrayRow[] mClientEquations;
    int mClientEquationsCount;
    private String mName;
    Type mType;
    public int strength;
    float[] strengthVector;
    public int usageInRowCount;

    /* loaded from: classes.dex */
    public enum Type {
        UNRESTRICTED,
        CONSTANT,
        SLACK,
        ERROR,
        UNKNOWN
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void increaseErrorId() {
        uniqueErrorId++;
    }

    public String getName() {
        return this.mName;
    }

    public void setName(String str) {
        this.mName = str;
    }

    public void setType(Type type, String str) {
        this.mType = type;
    }

    private static String getUniqueName(Type type, String str) {
        if (str != null) {
            return str + uniqueErrorId;
        }
        int i = AnonymousClass1.$SwitchMap$androidx$constraintlayout$solver$SolverVariable$Type[type.ordinal()];
        if (i == 1) {
            StringBuilder sb = new StringBuilder("U");
            int i2 = uniqueUnrestrictedId + 1;
            uniqueUnrestrictedId = i2;
            return sb.append(i2).toString();
        }
        if (i == 2) {
            StringBuilder sb2 = new StringBuilder("C");
            int i3 = uniqueConstantId + 1;
            uniqueConstantId = i3;
            return sb2.append(i3).toString();
        }
        if (i == 3) {
            StringBuilder sb3 = new StringBuilder(ExifInterface.LATITUDE_SOUTH);
            int i4 = uniqueSlackId + 1;
            uniqueSlackId = i4;
            return sb3.append(i4).toString();
        }
        if (i == 4) {
            StringBuilder sb4 = new StringBuilder("e");
            int i5 = uniqueErrorId + 1;
            uniqueErrorId = i5;
            return sb4.append(i5).toString();
        }
        if (i == 5) {
            StringBuilder sb5 = new StringBuilder(ExifInterface.GPS_MEASUREMENT_INTERRUPTED);
            int i6 = uniqueId + 1;
            uniqueId = i6;
            return sb5.append(i6).toString();
        }
        throw new AssertionError(type.name());
    }

    /* renamed from: androidx.constraintlayout.solver.SolverVariable$1, reason: invalid class name */
    /* loaded from: classes.dex */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$androidx$constraintlayout$solver$SolverVariable$Type;

        static {
            int[] iArr = new int[Type.values().length];
            $SwitchMap$androidx$constraintlayout$solver$SolverVariable$Type = iArr;
            try {
                iArr[Type.UNRESTRICTED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$solver$SolverVariable$Type[Type.CONSTANT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$solver$SolverVariable$Type[Type.SLACK.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$solver$SolverVariable$Type[Type.ERROR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$solver$SolverVariable$Type[Type.UNKNOWN.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public SolverVariable(String str, Type type) {
        this.id = -1;
        this.definitionId = -1;
        this.strength = 0;
        this.isFinalValue = false;
        this.strengthVector = new float[9];
        this.goalStrengthVector = new float[9];
        this.mClientEquations = new ArrayRow[16];
        this.mClientEquationsCount = 0;
        this.usageInRowCount = 0;
        this.inRows = null;
        this.mName = str;
        this.mType = type;
    }

    public SolverVariable(Type type, String str) {
        this.id = -1;
        this.definitionId = -1;
        this.strength = 0;
        this.isFinalValue = false;
        this.strengthVector = new float[9];
        this.goalStrengthVector = new float[9];
        this.mClientEquations = new ArrayRow[16];
        this.mClientEquationsCount = 0;
        this.usageInRowCount = 0;
        this.inRows = null;
        this.mType = type;
    }

    void clearStrengths() {
        for (int i = 0; i < 9; i++) {
            this.strengthVector[i] = 0.0f;
        }
    }

    String strengthsToString() {
        String str = this + "[";
        boolean z = false;
        boolean z2 = true;
        for (int i = 0; i < this.strengthVector.length; i++) {
            String str2 = str + this.strengthVector[i];
            float[] fArr = this.strengthVector;
            float f = fArr[i];
            if (f > 0.0f) {
                z = false;
            } else if (f < 0.0f) {
                z = true;
            }
            if (f != 0.0f) {
                z2 = false;
            }
            if (i < fArr.length - 1) {
                str = str2 + ", ";
            } else {
                str = str2 + "] ";
            }
        }
        if (z) {
            str = str + " (-)";
        }
        return z2 ? str + " (*)" : str;
    }

    public final void addToRow(ArrayRow arrayRow) {
        int i = 0;
        while (true) {
            int i2 = this.mClientEquationsCount;
            if (i < i2) {
                if (this.mClientEquations[i] == arrayRow) {
                    return;
                } else {
                    i++;
                }
            } else {
                ArrayRow[] arrayRowArr = this.mClientEquations;
                if (i2 >= arrayRowArr.length) {
                    this.mClientEquations = (ArrayRow[]) Arrays.copyOf(arrayRowArr, arrayRowArr.length * 2);
                }
                ArrayRow[] arrayRowArr2 = this.mClientEquations;
                int i3 = this.mClientEquationsCount;
                arrayRowArr2[i3] = arrayRow;
                this.mClientEquationsCount = i3 + 1;
                return;
            }
        }
    }

    public final void removeFromRow(ArrayRow arrayRow) {
        int i = this.mClientEquationsCount;
        int i2 = 0;
        while (i2 < i) {
            if (this.mClientEquations[i2] == arrayRow) {
                while (i2 < i - 1) {
                    ArrayRow[] arrayRowArr = this.mClientEquations;
                    int i3 = i2 + 1;
                    arrayRowArr[i2] = arrayRowArr[i3];
                    i2 = i3;
                }
                this.mClientEquationsCount--;
                return;
            }
            i2++;
        }
    }

    public final void updateReferencesWithNewDefinition(ArrayRow arrayRow) {
        int i = this.mClientEquationsCount;
        for (int i2 = 0; i2 < i; i2++) {
            this.mClientEquations[i2].updateFromRow(arrayRow, false);
        }
        this.mClientEquationsCount = 0;
    }

    public void setFinalValue(LinearSystem linearSystem, float f) {
        this.computedValue = f;
        this.isFinalValue = true;
        int i = this.mClientEquationsCount;
        for (int i2 = 0; i2 < i; i2++) {
            this.mClientEquations[i2].updateFromFinalVariable(linearSystem, this, false);
        }
        this.mClientEquationsCount = 0;
    }

    public void reset() {
        this.mName = null;
        this.mType = Type.UNKNOWN;
        this.strength = 0;
        this.id = -1;
        this.definitionId = -1;
        this.computedValue = 0.0f;
        this.isFinalValue = false;
        int i = this.mClientEquationsCount;
        for (int i2 = 0; i2 < i; i2++) {
            this.mClientEquations[i2] = null;
        }
        this.mClientEquationsCount = 0;
        this.usageInRowCount = 0;
        this.inGoal = false;
        Arrays.fill(this.goalStrengthVector, 0.0f);
    }

    public String toString() {
        if (this.mName != null) {
            return "" + this.mName;
        }
        return "" + this.id;
    }
}
