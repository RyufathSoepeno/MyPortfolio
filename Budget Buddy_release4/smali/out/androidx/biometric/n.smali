.class public final synthetic Landroidx/biometric/n;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a(Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;)Landroid/security/identity/IdentityCredential;
    .registers 1

    invoke-virtual {p0}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;->getIdentityCredential()Landroid/security/identity/IdentityCredential;

    move-result-object p0

    return-object p0
.end method
