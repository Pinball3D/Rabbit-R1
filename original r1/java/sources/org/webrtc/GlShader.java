package org.webrtc;

import android.opengl.GLES20;
import java.nio.Buffer;
import java.nio.FloatBuffer;

/* loaded from: classes3.dex */
public class GlShader {
    private static final String TAG = "GlShader";
    private int program;

    private static int compileShader(int i, String str) {
        int glCreateShader = GLES20.glCreateShader(i);
        if (glCreateShader == 0) {
            throw new RuntimeException("glCreateShader() failed. GLES20 error: " + GLES20.glGetError());
        }
        GLES20.glShaderSource(glCreateShader, str);
        GLES20.glCompileShader(glCreateShader);
        int[] iArr = {0};
        GLES20.glGetShaderiv(glCreateShader, 35713, iArr, 0);
        if (iArr[0] != 1) {
            Logging.e(TAG, "Compile error " + GLES20.glGetShaderInfoLog(glCreateShader) + " in shader:\n" + str);
            throw new RuntimeException(GLES20.glGetShaderInfoLog(glCreateShader));
        }
        GlUtil.checkNoGLES2Error("compileShader");
        return glCreateShader;
    }

    public GlShader(String str, String str2) {
        int compileShader = compileShader(35633, str);
        int compileShader2 = compileShader(35632, str2);
        int glCreateProgram = GLES20.glCreateProgram();
        this.program = glCreateProgram;
        if (glCreateProgram == 0) {
            throw new RuntimeException("glCreateProgram() failed. GLES20 error: " + GLES20.glGetError());
        }
        GLES20.glAttachShader(glCreateProgram, compileShader);
        GLES20.glAttachShader(this.program, compileShader2);
        GLES20.glLinkProgram(this.program);
        int[] iArr = {0};
        GLES20.glGetProgramiv(this.program, 35714, iArr, 0);
        if (iArr[0] != 1) {
            Logging.e(TAG, "Could not link program: " + GLES20.glGetProgramInfoLog(this.program));
            throw new RuntimeException(GLES20.glGetProgramInfoLog(this.program));
        }
        GLES20.glDeleteShader(compileShader);
        GLES20.glDeleteShader(compileShader2);
        GlUtil.checkNoGLES2Error("Creating GlShader");
    }

    public int getAttribLocation(String str) {
        int i = this.program;
        if (i == -1) {
            throw new RuntimeException("The program has been released");
        }
        int glGetAttribLocation = GLES20.glGetAttribLocation(i, str);
        if (glGetAttribLocation >= 0) {
            return glGetAttribLocation;
        }
        throw new RuntimeException("Could not locate '" + str + "' in program");
    }

    public void setVertexAttribArray(String str, int i, FloatBuffer floatBuffer) {
        setVertexAttribArray(str, i, 0, floatBuffer);
    }

    public void setVertexAttribArray(String str, int i, int i2, FloatBuffer floatBuffer) {
        if (this.program == -1) {
            throw new RuntimeException("The program has been released");
        }
        int attribLocation = getAttribLocation(str);
        GLES20.glEnableVertexAttribArray(attribLocation);
        GLES20.glVertexAttribPointer(attribLocation, i, 5126, false, i2, (Buffer) floatBuffer);
        GlUtil.checkNoGLES2Error("setVertexAttribArray");
    }

    public int getUniformLocation(String str) {
        int i = this.program;
        if (i == -1) {
            throw new RuntimeException("The program has been released");
        }
        int glGetUniformLocation = GLES20.glGetUniformLocation(i, str);
        if (glGetUniformLocation >= 0) {
            return glGetUniformLocation;
        }
        throw new RuntimeException("Could not locate uniform '" + str + "' in program");
    }

    public void useProgram() {
        if (this.program == -1) {
            throw new RuntimeException("The program has been released");
        }
        synchronized (EglBase.lock) {
            GLES20.glUseProgram(this.program);
        }
        GlUtil.checkNoGLES2Error("glUseProgram");
    }

    public void release() {
        Logging.d(TAG, "Deleting shader.");
        int i = this.program;
        if (i != -1) {
            GLES20.glDeleteProgram(i);
            this.program = -1;
        }
    }
}
