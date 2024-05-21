package androidx.work.multiprocess;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import androidx.work.multiprocess.IWorkManagerImplCallback;
import kotlin.text.Typography;

/* loaded from: classes2.dex */
public interface IWorkManagerImpl extends IInterface {
    public static final String DESCRIPTOR = "androidx$work$multiprocess$IWorkManagerImpl".replace(Typography.dollar, '.');

    /* loaded from: classes2.dex */
    public static class Default implements IWorkManagerImpl {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // androidx.work.multiprocess.IWorkManagerImpl
        public void cancelAllWork(IWorkManagerImplCallback callback) throws RemoteException {
        }

        @Override // androidx.work.multiprocess.IWorkManagerImpl
        public void cancelAllWorkByTag(String tag, IWorkManagerImplCallback callback) throws RemoteException {
        }

        @Override // androidx.work.multiprocess.IWorkManagerImpl
        public void cancelUniqueWork(String name, IWorkManagerImplCallback callback) throws RemoteException {
        }

        @Override // androidx.work.multiprocess.IWorkManagerImpl
        public void cancelWorkById(String id, IWorkManagerImplCallback callback) throws RemoteException {
        }

        @Override // androidx.work.multiprocess.IWorkManagerImpl
        public void enqueueContinuation(byte[] request, IWorkManagerImplCallback callback) throws RemoteException {
        }

        @Override // androidx.work.multiprocess.IWorkManagerImpl
        public void enqueueWorkRequests(byte[] request, IWorkManagerImplCallback callback) throws RemoteException {
        }

        @Override // androidx.work.multiprocess.IWorkManagerImpl
        public void queryWorkInfo(byte[] request, IWorkManagerImplCallback callback) throws RemoteException {
        }

        @Override // androidx.work.multiprocess.IWorkManagerImpl
        public void setForegroundAsync(byte[] request, IWorkManagerImplCallback callback) throws RemoteException {
        }

        @Override // androidx.work.multiprocess.IWorkManagerImpl
        public void setProgress(byte[] request, IWorkManagerImplCallback callback) throws RemoteException {
        }

        @Override // androidx.work.multiprocess.IWorkManagerImpl
        public void updateUniquePeriodicWorkRequest(String name, byte[] request, IWorkManagerImplCallback callback) throws RemoteException {
        }
    }

    void cancelAllWork(IWorkManagerImplCallback callback) throws RemoteException;

    void cancelAllWorkByTag(String tag, IWorkManagerImplCallback callback) throws RemoteException;

    void cancelUniqueWork(String name, IWorkManagerImplCallback callback) throws RemoteException;

    void cancelWorkById(String id, IWorkManagerImplCallback callback) throws RemoteException;

    void enqueueContinuation(byte[] request, IWorkManagerImplCallback callback) throws RemoteException;

    void enqueueWorkRequests(byte[] request, IWorkManagerImplCallback callback) throws RemoteException;

    void queryWorkInfo(byte[] request, IWorkManagerImplCallback callback) throws RemoteException;

    void setForegroundAsync(byte[] request, IWorkManagerImplCallback callback) throws RemoteException;

    void setProgress(byte[] request, IWorkManagerImplCallback callback) throws RemoteException;

    void updateUniquePeriodicWorkRequest(String name, byte[] request, IWorkManagerImplCallback callback) throws RemoteException;

    /* loaded from: classes2.dex */
    public static abstract class Stub extends Binder implements IWorkManagerImpl {
        static final int TRANSACTION_cancelAllWork = 7;
        static final int TRANSACTION_cancelAllWorkByTag = 5;
        static final int TRANSACTION_cancelUniqueWork = 6;
        static final int TRANSACTION_cancelWorkById = 4;
        static final int TRANSACTION_enqueueContinuation = 3;
        static final int TRANSACTION_enqueueWorkRequests = 1;
        static final int TRANSACTION_queryWorkInfo = 8;
        static final int TRANSACTION_setForegroundAsync = 10;
        static final int TRANSACTION_setProgress = 9;
        static final int TRANSACTION_updateUniquePeriodicWorkRequest = 2;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IWorkManagerImpl asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface queryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof IWorkManagerImpl)) {
                return (IWorkManagerImpl) queryLocalInterface;
            }
            return new Proxy(obj);
        }

        @Override // android.os.Binder
        public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
            String str = DESCRIPTOR;
            if (code >= 1 && code <= 16777215) {
                data.enforceInterface(str);
            }
            if (code == 1598968902) {
                reply.writeString(str);
                return true;
            }
            switch (code) {
                case 1:
                    enqueueWorkRequests(data.createByteArray(), IWorkManagerImplCallback.Stub.asInterface(data.readStrongBinder()));
                    return true;
                case 2:
                    updateUniquePeriodicWorkRequest(data.readString(), data.createByteArray(), IWorkManagerImplCallback.Stub.asInterface(data.readStrongBinder()));
                    return true;
                case 3:
                    enqueueContinuation(data.createByteArray(), IWorkManagerImplCallback.Stub.asInterface(data.readStrongBinder()));
                    return true;
                case 4:
                    cancelWorkById(data.readString(), IWorkManagerImplCallback.Stub.asInterface(data.readStrongBinder()));
                    return true;
                case 5:
                    cancelAllWorkByTag(data.readString(), IWorkManagerImplCallback.Stub.asInterface(data.readStrongBinder()));
                    return true;
                case 6:
                    cancelUniqueWork(data.readString(), IWorkManagerImplCallback.Stub.asInterface(data.readStrongBinder()));
                    return true;
                case 7:
                    cancelAllWork(IWorkManagerImplCallback.Stub.asInterface(data.readStrongBinder()));
                    return true;
                case 8:
                    queryWorkInfo(data.createByteArray(), IWorkManagerImplCallback.Stub.asInterface(data.readStrongBinder()));
                    return true;
                case 9:
                    setProgress(data.createByteArray(), IWorkManagerImplCallback.Stub.asInterface(data.readStrongBinder()));
                    return true;
                case 10:
                    setForegroundAsync(data.createByteArray(), IWorkManagerImplCallback.Stub.asInterface(data.readStrongBinder()));
                    return true;
                default:
                    return super.onTransact(code, data, reply, flags);
            }
        }

        /* loaded from: classes2.dex */
        private static class Proxy implements IWorkManagerImpl {
            private IBinder mRemote;

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            public String getInterfaceDescriptor() {
                return DESCRIPTOR;
            }

            @Override // androidx.work.multiprocess.IWorkManagerImpl
            public void enqueueWorkRequests(byte[] request, IWorkManagerImplCallback callback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(DESCRIPTOR);
                    obtain.writeByteArray(request);
                    obtain.writeStrongInterface(callback);
                    this.mRemote.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.work.multiprocess.IWorkManagerImpl
            public void updateUniquePeriodicWorkRequest(String name, byte[] request, IWorkManagerImplCallback callback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(DESCRIPTOR);
                    obtain.writeString(name);
                    obtain.writeByteArray(request);
                    obtain.writeStrongInterface(callback);
                    this.mRemote.transact(2, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.work.multiprocess.IWorkManagerImpl
            public void enqueueContinuation(byte[] request, IWorkManagerImplCallback callback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(DESCRIPTOR);
                    obtain.writeByteArray(request);
                    obtain.writeStrongInterface(callback);
                    this.mRemote.transact(3, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.work.multiprocess.IWorkManagerImpl
            public void cancelWorkById(String id, IWorkManagerImplCallback callback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(DESCRIPTOR);
                    obtain.writeString(id);
                    obtain.writeStrongInterface(callback);
                    this.mRemote.transact(4, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.work.multiprocess.IWorkManagerImpl
            public void cancelAllWorkByTag(String tag, IWorkManagerImplCallback callback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(DESCRIPTOR);
                    obtain.writeString(tag);
                    obtain.writeStrongInterface(callback);
                    this.mRemote.transact(5, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.work.multiprocess.IWorkManagerImpl
            public void cancelUniqueWork(String name, IWorkManagerImplCallback callback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(DESCRIPTOR);
                    obtain.writeString(name);
                    obtain.writeStrongInterface(callback);
                    this.mRemote.transact(6, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.work.multiprocess.IWorkManagerImpl
            public void cancelAllWork(IWorkManagerImplCallback callback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(DESCRIPTOR);
                    obtain.writeStrongInterface(callback);
                    this.mRemote.transact(7, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.work.multiprocess.IWorkManagerImpl
            public void queryWorkInfo(byte[] request, IWorkManagerImplCallback callback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(DESCRIPTOR);
                    obtain.writeByteArray(request);
                    obtain.writeStrongInterface(callback);
                    this.mRemote.transact(8, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.work.multiprocess.IWorkManagerImpl
            public void setProgress(byte[] request, IWorkManagerImplCallback callback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(DESCRIPTOR);
                    obtain.writeByteArray(request);
                    obtain.writeStrongInterface(callback);
                    this.mRemote.transact(9, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // androidx.work.multiprocess.IWorkManagerImpl
            public void setForegroundAsync(byte[] request, IWorkManagerImplCallback callback) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(DESCRIPTOR);
                    obtain.writeByteArray(request);
                    obtain.writeStrongInterface(callback);
                    this.mRemote.transact(10, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }
    }
}
