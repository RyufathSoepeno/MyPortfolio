.class Landroidx/biometric/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/biometric/m$a;,
        Landroidx/biometric/m$b;,
        Landroidx/biometric/m$c;
    }
.end annotation


# direct methods
.method static a()Landroidx/biometric/BiometricPrompt$c;
    .registers 6

    const-string v0, "androidxBiometric"

    const-string v1, "AndroidKeyStore"

    const/4 v2, 0x0

    :try_start_5
    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    const/4 v4, 0x3

    invoke-static {v0, v4}, Landroidx/biometric/m$a;->b(Ljava/lang/String;I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v4

    invoke-static {v4}, Landroidx/biometric/m$a;->d(Landroid/security/keystore/KeyGenParameterSpec$Builder;)V

    invoke-static {v4}, Landroidx/biometric/m$a;->e(Landroid/security/keystore/KeyGenParameterSpec$Builder;)V

    const-string v5, "AES"

    invoke-static {v5, v1}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v1

    invoke-static {v4}, Landroidx/biometric/m$a;->a(Landroid/security/keystore/KeyGenParameterSpec$Builder;)Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v4

    invoke-static {v1, v4}, Landroidx/biometric/m$a;->c(Ljavax/crypto/KeyGenerator;Landroid/security/keystore/KeyGenParameterSpec;)V

    invoke-virtual {v1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    invoke-virtual {v3, v0, v2}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v0

    check-cast v0, Ljavax/crypto/SecretKey;

    const-string v1, "AES/CBC/PKCS7Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    new-instance v0, Landroidx/biometric/BiometricPrompt$c;

    invoke-direct {v0, v1}, Landroidx/biometric/BiometricPrompt$c;-><init>(Ljavax/crypto/Cipher;)V
    :try_end_3c
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_5 .. :try_end_3c} :catch_4d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_3c} :catch_4b
    .catch Ljava/security/cert/CertificateException; {:try_start_5 .. :try_end_3c} :catch_49
    .catch Ljava/security/KeyStoreException; {:try_start_5 .. :try_end_3c} :catch_47
    .catch Ljava/security/InvalidKeyException; {:try_start_5 .. :try_end_3c} :catch_45
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_5 .. :try_end_3c} :catch_43
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_5 .. :try_end_3c} :catch_41
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_3c} :catch_3f
    .catch Ljava/security/NoSuchProviderException; {:try_start_5 .. :try_end_3c} :catch_3d

    return-object v0

    :catch_3d
    move-exception v0

    goto :goto_4e

    :catch_3f
    move-exception v0

    goto :goto_4e

    :catch_41
    move-exception v0

    goto :goto_4e

    :catch_43
    move-exception v0

    goto :goto_4e

    :catch_45
    move-exception v0

    goto :goto_4e

    :catch_47
    move-exception v0

    goto :goto_4e

    :catch_49
    move-exception v0

    goto :goto_4e

    :catch_4b
    move-exception v0

    goto :goto_4e

    :catch_4d
    move-exception v0

    :goto_4e
    const-string v1, "CryptoObjectUtils"

    const-string v3, "Failed to create fake crypto object."

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2
.end method

.method static b(Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;)Landroidx/biometric/BiometricPrompt$c;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    invoke-static {p0}, Landroidx/biometric/m$b;->d(Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;)Ljavax/crypto/Cipher;

    move-result-object v1

    if-eqz v1, :cond_10

    new-instance p0, Landroidx/biometric/BiometricPrompt$c;

    invoke-direct {p0, v1}, Landroidx/biometric/BiometricPrompt$c;-><init>(Ljavax/crypto/Cipher;)V

    return-object p0

    :cond_10
    invoke-static {p0}, Landroidx/biometric/m$b;->f(Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;)Ljava/security/Signature;

    move-result-object v1

    if-eqz v1, :cond_1c

    new-instance p0, Landroidx/biometric/BiometricPrompt$c;

    invoke-direct {p0, v1}, Landroidx/biometric/BiometricPrompt$c;-><init>(Ljava/security/Signature;)V

    return-object p0

    :cond_1c
    invoke-static {p0}, Landroidx/biometric/m$b;->e(Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;)Ljavax/crypto/Mac;

    move-result-object v1

    if-eqz v1, :cond_28

    new-instance p0, Landroidx/biometric/BiometricPrompt$c;

    invoke-direct {p0, v1}, Landroidx/biometric/BiometricPrompt$c;-><init>(Ljavax/crypto/Mac;)V

    return-object p0

    :cond_28
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_39

    invoke-static {p0}, Landroidx/biometric/m$c;->b(Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;)Landroid/security/identity/IdentityCredential;

    move-result-object p0

    if-eqz p0, :cond_39

    new-instance v0, Landroidx/biometric/BiometricPrompt$c;

    invoke-direct {v0, p0}, Landroidx/biometric/BiometricPrompt$c;-><init>(Landroid/security/identity/IdentityCredential;)V

    :cond_39
    return-object v0
.end method

.method static c(Landroidx/core/hardware/fingerprint/a$e;)Landroidx/biometric/BiometricPrompt$c;
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    invoke-virtual {p0}, Landroidx/core/hardware/fingerprint/a$e;->a()Ljavax/crypto/Cipher;

    move-result-object v1

    if-eqz v1, :cond_10

    new-instance p0, Landroidx/biometric/BiometricPrompt$c;

    invoke-direct {p0, v1}, Landroidx/biometric/BiometricPrompt$c;-><init>(Ljavax/crypto/Cipher;)V

    return-object p0

    :cond_10
    invoke-virtual {p0}, Landroidx/core/hardware/fingerprint/a$e;->c()Ljava/security/Signature;

    move-result-object v1

    if-eqz v1, :cond_1c

    new-instance p0, Landroidx/biometric/BiometricPrompt$c;

    invoke-direct {p0, v1}, Landroidx/biometric/BiometricPrompt$c;-><init>(Ljava/security/Signature;)V

    return-object p0

    :cond_1c
    invoke-virtual {p0}, Landroidx/core/hardware/fingerprint/a$e;->b()Ljavax/crypto/Mac;

    move-result-object p0

    if-eqz p0, :cond_27

    new-instance v0, Landroidx/biometric/BiometricPrompt$c;

    invoke-direct {v0, p0}, Landroidx/biometric/BiometricPrompt$c;-><init>(Ljavax/crypto/Mac;)V

    :cond_27
    return-object v0
.end method

.method static d(Landroidx/biometric/BiometricPrompt$c;)Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    invoke-virtual {p0}, Landroidx/biometric/BiometricPrompt$c;->a()Ljavax/crypto/Cipher;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-static {v1}, Landroidx/biometric/m$b;->b(Ljavax/crypto/Cipher;)Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    move-result-object p0

    return-object p0

    :cond_f
    invoke-virtual {p0}, Landroidx/biometric/BiometricPrompt$c;->d()Ljava/security/Signature;

    move-result-object v1

    if-eqz v1, :cond_1a

    invoke-static {v1}, Landroidx/biometric/m$b;->a(Ljava/security/Signature;)Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    move-result-object p0

    return-object p0

    :cond_1a
    invoke-virtual {p0}, Landroidx/biometric/BiometricPrompt$c;->c()Ljavax/crypto/Mac;

    move-result-object v1

    if-eqz v1, :cond_25

    invoke-static {v1}, Landroidx/biometric/m$b;->c(Ljavax/crypto/Mac;)Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    move-result-object p0

    return-object p0

    :cond_25
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_36

    invoke-virtual {p0}, Landroidx/biometric/BiometricPrompt$c;->b()Landroid/security/identity/IdentityCredential;

    move-result-object p0

    if-eqz p0, :cond_36

    invoke-static {p0}, Landroidx/biometric/m$c;->a(Landroid/security/identity/IdentityCredential;)Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    move-result-object p0

    return-object p0

    :cond_36
    return-object v0
.end method

.method static e(Landroidx/biometric/BiometricPrompt$c;)Landroidx/core/hardware/fingerprint/a$e;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    invoke-virtual {p0}, Landroidx/biometric/BiometricPrompt$c;->a()Ljavax/crypto/Cipher;

    move-result-object v1

    if-eqz v1, :cond_10

    new-instance p0, Landroidx/core/hardware/fingerprint/a$e;

    invoke-direct {p0, v1}, Landroidx/core/hardware/fingerprint/a$e;-><init>(Ljavax/crypto/Cipher;)V

    return-object p0

    :cond_10
    invoke-virtual {p0}, Landroidx/biometric/BiometricPrompt$c;->d()Ljava/security/Signature;

    move-result-object v1

    if-eqz v1, :cond_1c

    new-instance p0, Landroidx/core/hardware/fingerprint/a$e;

    invoke-direct {p0, v1}, Landroidx/core/hardware/fingerprint/a$e;-><init>(Ljava/security/Signature;)V

    return-object p0

    :cond_1c
    invoke-virtual {p0}, Landroidx/biometric/BiometricPrompt$c;->c()Ljavax/crypto/Mac;

    move-result-object v1

    if-eqz v1, :cond_28

    new-instance p0, Landroidx/core/hardware/fingerprint/a$e;

    invoke-direct {p0, v1}, Landroidx/core/hardware/fingerprint/a$e;-><init>(Ljavax/crypto/Mac;)V

    return-object p0

    :cond_28
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_3b

    invoke-virtual {p0}, Landroidx/biometric/BiometricPrompt$c;->b()Landroid/security/identity/IdentityCredential;

    move-result-object p0

    if-eqz p0, :cond_3b

    const-string p0, "CryptoObjectUtils"

    const-string v1, "Identity credential is not supported by FingerprintManager."

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3b
    return-object v0
.end method
