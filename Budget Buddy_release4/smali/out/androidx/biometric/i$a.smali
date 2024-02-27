.class Landroidx/biometric/i$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/biometric/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method static a(Landroid/hardware/biometrics/BiometricManager;)I
    .registers 1

    invoke-virtual {p0}, Landroid/hardware/biometrics/BiometricManager;->canAuthenticate()I

    move-result p0

    return p0
.end method

.method static b(Landroid/content/Context;)Landroid/hardware/biometrics/BiometricManager;
    .registers 2

    const-class v0, Landroid/hardware/biometrics/BiometricManager;

    invoke-static {p0, v0}, Ld/e;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/biometrics/BiometricManager;

    return-object p0
.end method

.method static c()Ljava/lang/reflect/Method;
    .registers 5

    :try_start_0
    const-class v0, Landroid/hardware/biometrics/BiometricManager;

    const-string v1, "canAuthenticate"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_10
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_10} :catch_11

    return-object v0

    :catch_11
    const/4 v0, 0x0

    return-object v0
.end method
