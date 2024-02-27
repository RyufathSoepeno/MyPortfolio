.class Landroidx/biometric/m$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/biometric/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# direct methods
.method static a(Landroid/security/identity/IdentityCredential;)Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;
    .registers 2

    new-instance v0, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    invoke-direct {v0, p0}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;-><init>(Landroid/security/identity/IdentityCredential;)V

    return-object v0
.end method

.method static b(Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;)Landroid/security/identity/IdentityCredential;
    .registers 1

    invoke-static {p0}, Landroidx/biometric/n;->a(Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;)Landroid/security/identity/IdentityCredential;

    move-result-object p0

    return-object p0
.end method
