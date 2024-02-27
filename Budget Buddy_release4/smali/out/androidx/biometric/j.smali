.class public final synthetic Landroidx/biometric/j;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a(Landroid/hardware/biometrics/BiometricManager;I)I
    .registers 2

    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/BiometricManager;->canAuthenticate(I)I

    move-result p0

    return p0
.end method
