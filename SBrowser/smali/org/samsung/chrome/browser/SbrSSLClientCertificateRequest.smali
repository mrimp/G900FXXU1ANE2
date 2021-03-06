.class public Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest;
.super Landroid/os/AsyncTask;
.source "SbrSSLClientCertificateRequest.java"

# interfaces
.implements Landroid/security/KeyChainAliasCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest$ClientCertRequestCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;",
        "Landroid/security/KeyChainAliasCallback;"
    }
.end annotation

.annotation runtime Lorg/chromium/base/JNINamespace;
    value = "chrome::android"
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "SbrSSLClientCertificateRequest"

.field private static clientCertRequestCallback:Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest$ClientCertRequestCallback;


# instance fields
.field private mAlias:Ljava/lang/String;

.field private mEncodedChain:[[B

.field private mHostName:Ljava/lang/String;

.field private mKeyTypes:[Ljava/lang/String;

.field private final mNativePtr:I

.field private mPort:I

.field private mPrincipals:[Ljava/security/Principal;

.field private mPrivateKey:Ljava/security/PrivateKey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest;->clientCertRequestCallback:Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest$ClientCertRequestCallback;

    return-void
.end method

.method private constructor <init>(I[Ljava/lang/String;[Ljava/security/Principal;Ljava/lang/String;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput p1, p0, Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest;->mNativePtr:I

    iput-object v1, p0, Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest;->mAlias:Ljava/lang/String;

    move-object v0, v1

    check-cast v0, [[B

    iput-object v0, p0, Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest;->mEncodedChain:[[B

    iput-object v1, p0, Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest;->mPrivateKey:Ljava/security/PrivateKey;

    iput-object p2, p0, Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest;->mKeyTypes:[Ljava/lang/String;

    iput-object p3, p0, Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest;->mPrincipals:[Ljava/security/Principal;

    iput-object p4, p0, Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest;->mHostName:Ljava/lang/String;

    iput p5, p0, Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest;->mPort:I

    return-void
.end method

.method private static native nativeOnSystemRequestCompletion(I[[BLjava/security/PrivateKey;)V
.end method

.method private static selectClientCertificate(I[Ljava/lang/String;[[BLjava/lang/String;I)Z
    .locals 8
    .annotation build Lorg/chromium/base/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    const/4 v3, 0x0

    array-length v1, p2

    if-lez v1, :cond_0

    array-length v1, p2

    new-array v3, v1, [Ljavax/security/auth/x500/X500Principal;

    const/4 v7, 0x0

    :goto_0
    :try_start_0
    array-length v1, p2

    if-ge v7, v1, :cond_0

    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    aget-object v2, p2, v7

    invoke-direct {v1, v2}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    aput-object v1, v3, v7
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :catch_0
    move-exception v6

    const-string v1, "SbrSSLClientCertificateRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception while decoding issuers list: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_1
    return v1

    :cond_0
    new-instance v0, Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest;

    move v1, p0

    move-object v2, p1

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest;-><init>(I[Ljava/lang/String;[Ljava/security/Principal;Ljava/lang/String;I)V

    sget-object v1, Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest;->clientCertRequestCallback:Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest$ClientCertRequestCallback;

    if-eqz v1, :cond_1

    sget-object v1, Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest;->clientCertRequestCallback:Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest$ClientCertRequestCallback;

    invoke-interface {v1, v0}, Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest$ClientCertRequestCallback;->shouldOverrideClientCertRequest(Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    invoke-virtual {v0}, Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest;->choosePrivateKeyAliasFromPlatform()V

    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static setCallback(Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest$ClientCertRequestCallback;)V
    .locals 2

    sget-object v0, Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest;->clientCertRequestCallback:Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest$ClientCertRequestCallback;

    if-eqz v0, :cond_0

    const-string v0, "SbrSSLClientCertificateRequest"

    const-string v1, "setCallback() already registered!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sput-object p0, Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest;->clientCertRequestCallback:Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest$ClientCertRequestCallback;

    return-void
.end method


# virtual methods
.method public PrivateKeyAliasSelected(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest;->mAlias:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest;->onPostExecute(Ljava/lang/Void;)V

    goto :goto_0
.end method

.method public alias(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest;->onPostExecute(Ljava/lang/Void;)V

    :goto_0
    sget-object v0, Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest;->clientCertRequestCallback:Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest$ClientCertRequestCallback;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest;->clientCertRequestCallback:Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest$ClientCertRequestCallback;

    invoke-interface {v0, p0, p1}, Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest$ClientCertRequestCallback;->onPrivateKeyAliasSelectedFromPlatform(Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    iput-object p1, p0, Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest;->mAlias:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public choosePrivateKeyAliasFromPlatform()V
    .locals 7

    const/4 v6, 0x0

    invoke-static {}, Lorg/chromium/base/ActivityStatus;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "SbrSSLClientCertificateRequest"

    const-string v2, "can\'t find main activity"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v6}, Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest;->onPostExecute(Ljava/lang/Void;)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest;->mKeyTypes:[Ljava/lang/String;

    iget-object v3, p0, Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest;->mPrincipals:[Ljava/security/Principal;

    iget-object v4, p0, Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest;->mHostName:Ljava/lang/String;

    iget v5, p0, Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest;->mPort:I

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Landroid/security/KeyChain;->choosePrivateKeyAlias(Landroid/app/Activity;Landroid/security/KeyChainAliasCallback;[Ljava/lang/String;[Ljava/security/Principal;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 10

    const/4 v9, 0x0

    const/4 v0, 0x0

    const/4 v5, 0x0

    invoke-static {}, Lorg/chromium/base/ActivityStatus;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    :try_start_0
    iget-object v6, p0, Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest;->mAlias:Ljava/lang/String;

    invoke-static {v1, v6}, Landroid/security/KeyChain;->getPrivateKey(Landroid/content/Context;Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v5

    iget-object v6, p0, Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest;->mAlias:Ljava/lang/String;

    invoke-static {v1, v6}, Landroid/security/KeyChain;->getCertificateChain(Landroid/content/Context;Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Landroid/security/KeyChainException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    if-eqz v5, :cond_0

    if-eqz v0, :cond_0

    array-length v6, v0

    if-nez v6, :cond_1

    :cond_0
    const-string v6, "SbrSSLClientCertificateRequest"

    const-string v7, "Empty client certificate chain?"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v9

    :catch_0
    move-exception v2

    const-string v6, "SbrSSLClientCertificateRequest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "KeyChainException when looking for \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest;->mAlias:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' certificate"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v2

    const-string v6, "SbrSSLClientCertificateRequest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "InterruptedException when looking for \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest;->mAlias:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'certificate"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    array-length v6, v0

    new-array v3, v6, [[B

    const/4 v4, 0x0

    :goto_1
    :try_start_1
    array-length v6, v0

    if-ge v4, v6, :cond_2

    aget-object v6, v0, v4

    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v6

    aput-object v6, v3, v4
    :try_end_1
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1 .. :try_end_1} :catch_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :catch_2
    move-exception v2

    const-string v6, "SbrSSLClientCertificateRequest"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not retrieve encoded certificate chain: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iput-object v3, p0, Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest;->mEncodedChain:[[B

    iput-object v5, p0, Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest;->mPrivateKey:Ljava/security/PrivateKey;

    goto :goto_0
.end method

.method public getHostAndPort()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest;->mHostName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest;->mPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3

    iget v0, p0, Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest;->mNativePtr:I

    iget-object v1, p0, Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest;->mEncodedChain:[[B

    iget-object v2, p0, Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest;->mPrivateKey:Ljava/security/PrivateKey;

    invoke-static {v0, v1, v2}, Lorg/samsung/chrome/browser/SbrSSLClientCertificateRequest;->nativeOnSystemRequestCompletion(I[[BLjava/security/PrivateKey;)V

    return-void
.end method
