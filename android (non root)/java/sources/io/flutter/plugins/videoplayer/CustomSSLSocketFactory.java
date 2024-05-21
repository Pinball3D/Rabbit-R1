package io.flutter.plugins.videoplayer;

import java.io.IOException;
import java.net.InetAddress;
import java.net.Socket;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;

/* loaded from: classes3.dex */
public class CustomSSLSocketFactory extends SSLSocketFactory {
    private final SSLSocketFactory sslSocketFactory;

    public CustomSSLSocketFactory() throws KeyManagementException, NoSuchAlgorithmException {
        SSLContext sSLContext = SSLContext.getInstance("TLS");
        sSLContext.init(null, null, null);
        this.sslSocketFactory = sSLContext.getSocketFactory();
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public String[] getDefaultCipherSuites() {
        return this.sslSocketFactory.getDefaultCipherSuites();
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public String[] getSupportedCipherSuites() {
        return this.sslSocketFactory.getSupportedCipherSuites();
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket() throws IOException {
        return enableProtocols(this.sslSocketFactory.createSocket());
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public Socket createSocket(Socket socket, String str, int i, boolean z) throws IOException {
        return enableProtocols(this.sslSocketFactory.createSocket(socket, str, i, z));
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String str, int i) throws IOException {
        return enableProtocols(this.sslSocketFactory.createSocket(str, i));
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String str, int i, InetAddress inetAddress, int i2) throws IOException {
        return enableProtocols(this.sslSocketFactory.createSocket(str, i, inetAddress, i2));
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(InetAddress inetAddress, int i) throws IOException {
        return enableProtocols(this.sslSocketFactory.createSocket(inetAddress, i));
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(InetAddress inetAddress, int i, InetAddress inetAddress2, int i2) throws IOException {
        return enableProtocols(this.sslSocketFactory.createSocket(inetAddress, i, inetAddress2, i2));
    }

    private Socket enableProtocols(Socket socket) {
        if (socket instanceof SSLSocket) {
            ((SSLSocket) socket).setEnabledProtocols(new String[]{"TLSv1.1", "TLSv1.2"});
        }
        return socket;
    }
}
