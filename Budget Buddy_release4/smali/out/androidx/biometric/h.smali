.class public final synthetic Landroidx/biometric/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a(Landroid/hardware/biometrics/BiometricPrompt$Builder;I)Landroid/hardware/biometrics/BiometricPrompt$Builder;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setAllowedAuthenticators(I)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    move-result-object p0

    return-object p0
.end method
