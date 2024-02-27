.class public Landroidx/biometric/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/biometric/i$a;,
        Landroidx/biometric/i$b;,
        Landroidx/biometric/i$c;,
        Landroidx/biometric/i$d;
    }
.end annotation


# instance fields
.field private final a:Landroidx/biometric/i$d;

.field private final b:Landroid/hardware/biometrics/BiometricManager;

.field private final c:Landroidx/core/hardware/fingerprint/a;


# direct methods
.method constructor <init>(Landroidx/biometric/i$d;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/biometric/i;->a:Landroidx/biometric/i$d;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_11

    invoke-interface {p1}, Landroidx/biometric/i$d;->b()Landroid/hardware/biometrics/BiometricManager;

    move-result-object v3

    goto :goto_12

    :cond_11
    move-object v3, v1

    :goto_12
    iput-object v3, p0, Landroidx/biometric/i;->b:Landroid/hardware/biometrics/BiometricManager;

    if-gt v0, v2, :cond_1a

    invoke-interface {p1}, Landroidx/biometric/i$d;->f()Landroidx/core/hardware/fingerprint/a;

    move-result-object v1

    :cond_1a
    iput-object v1, p0, Landroidx/biometric/i;->c:Landroidx/core/hardware/fingerprint/a;

    return-void
.end method

.method private b(I)I
    .registers 5

    invoke-static {p1}, Landroidx/biometric/c;->e(I)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p1, -0x2

    return p1

    :cond_8
    const/16 v0, 0xc

    if-nez p1, :cond_d

    return v0

    :cond_d
    iget-object v1, p0, Landroidx/biometric/i;->a:Landroidx/biometric/i$d;

    invoke-interface {v1}, Landroidx/biometric/i$d;->e()Z

    move-result v1

    if-nez v1, :cond_16

    return v0

    :cond_16
    invoke-static {p1}, Landroidx/biometric/c;->c(I)Z

    move-result v1

    if-eqz v1, :cond_29

    iget-object p1, p0, Landroidx/biometric/i;->a:Landroidx/biometric/i$d;

    invoke-interface {p1}, Landroidx/biometric/i$d;->c()Z

    move-result p1

    if-eqz p1, :cond_26

    const/4 p1, 0x0

    goto :goto_28

    :cond_26
    const/16 p1, 0xb

    :goto_28
    return p1

    :cond_29
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-ne v1, v2, :cond_3f

    invoke-static {p1}, Landroidx/biometric/c;->f(I)Z

    move-result p1

    if-eqz p1, :cond_3a

    invoke-direct {p0}, Landroidx/biometric/i;->f()I

    move-result p1

    goto :goto_3e

    :cond_3a
    invoke-direct {p0}, Landroidx/biometric/i;->e()I

    move-result p1

    :goto_3e
    return p1

    :cond_3f
    const/16 p1, 0x1c

    if-ne v1, p1, :cond_50

    iget-object p1, p0, Landroidx/biometric/i;->a:Landroidx/biometric/i$d;

    invoke-interface {p1}, Landroidx/biometric/i$d;->a()Z

    move-result p1

    if-eqz p1, :cond_4f

    invoke-direct {p0}, Landroidx/biometric/i;->d()I

    move-result v0

    :cond_4f
    return v0

    :cond_50
    invoke-direct {p0}, Landroidx/biometric/i;->c()I

    move-result p1

    return p1
.end method

.method private c()I
    .registers 3

    iget-object v0, p0, Landroidx/biometric/i;->c:Landroidx/core/hardware/fingerprint/a;

    if-nez v0, :cond_d

    const-string v0, "BiometricManager"

    const-string v1, "Failure in canAuthenticate(). FingerprintManager was null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_d
    invoke-virtual {v0}, Landroidx/core/hardware/fingerprint/a;->e()Z

    move-result v0

    if-nez v0, :cond_16

    const/16 v0, 0xc

    return v0

    :cond_16
    iget-object v0, p0, Landroidx/biometric/i;->c:Landroidx/core/hardware/fingerprint/a;

    invoke-virtual {v0}, Landroidx/core/hardware/fingerprint/a;->d()Z

    move-result v0

    if-nez v0, :cond_21

    const/16 v0, 0xb

    return v0

    :cond_21
    const/4 v0, 0x0

    return v0
.end method

.method private d()I
    .registers 2

    iget-object v0, p0, Landroidx/biometric/i;->a:Landroidx/biometric/i$d;

    invoke-interface {v0}, Landroidx/biometric/i$d;->c()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-direct {p0}, Landroidx/biometric/i;->c()I

    move-result v0

    return v0

    :cond_d
    invoke-direct {p0}, Landroidx/biometric/i;->c()I

    move-result v0

    if-nez v0, :cond_15

    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    const/4 v0, -0x1

    :goto_16
    return v0
.end method

.method private e()I
    .registers 7

    const-string v0, "BiometricManager"

    invoke-static {}, Landroidx/biometric/i$a;->c()Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_39

    invoke-static {}, Landroidx/biometric/m;->a()Landroidx/biometric/BiometricPrompt$c;

    move-result-object v2

    invoke-static {v2}, Landroidx/biometric/m;->d(Landroidx/biometric/BiometricPrompt$c;)Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    move-result-object v2

    if-eqz v2, :cond_39

    :try_start_12
    iget-object v3, p0, Landroidx/biometric/i;->b:Landroid/hardware/biometrics/BiometricManager;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_29

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_29
    const-string v1, "Invalid return type for canAuthenticate(CryptoObject)."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catch Ljava/lang/IllegalAccessException; {:try_start_12 .. :try_end_2e} :catch_33
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_2e} :catch_31
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_12 .. :try_end_2e} :catch_2f

    goto :goto_39

    :catch_2f
    move-exception v1

    goto :goto_34

    :catch_31
    move-exception v1

    goto :goto_34

    :catch_33
    move-exception v1

    :goto_34
    const-string v2, "Failed to invoke canAuthenticate(CryptoObject)."

    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_39
    :goto_39
    invoke-direct {p0}, Landroidx/biometric/i;->f()I

    move-result v0

    iget-object v1, p0, Landroidx/biometric/i;->a:Landroidx/biometric/i$d;

    invoke-interface {v1}, Landroidx/biometric/i$d;->d()Z

    move-result v1

    if-nez v1, :cond_4c

    if-eqz v0, :cond_48

    goto :goto_4c

    :cond_48
    invoke-direct {p0}, Landroidx/biometric/i;->d()I

    move-result v0

    :cond_4c
    :goto_4c
    return v0
.end method

.method private f()I
    .registers 3

    iget-object v0, p0, Landroidx/biometric/i;->b:Landroid/hardware/biometrics/BiometricManager;

    if-nez v0, :cond_d

    const-string v0, "BiometricManager"

    const-string v1, "Failure in canAuthenticate(). BiometricManager was null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_d
    invoke-static {v0}, Landroidx/biometric/i$a;->a(Landroid/hardware/biometrics/BiometricManager;)I

    move-result v0

    return v0
.end method

.method public static g(Landroid/content/Context;)Landroidx/biometric/i;
    .registers 3

    new-instance v0, Landroidx/biometric/i;

    new-instance v1, Landroidx/biometric/i$c;

    invoke-direct {v1, p0}, Landroidx/biometric/i$c;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Landroidx/biometric/i;-><init>(Landroidx/biometric/i$d;)V

    return-object v0
.end method


# virtual methods
.method public a(I)I
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_18

    iget-object v0, p0, Landroidx/biometric/i;->b:Landroid/hardware/biometrics/BiometricManager;

    if-nez v0, :cond_13

    const-string p1, "BiometricManager"

    const-string v0, "Failure in canAuthenticate(). BiometricManager was null."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1

    :cond_13
    invoke-static {v0, p1}, Landroidx/biometric/i$b;->a(Landroid/hardware/biometrics/BiometricManager;I)I

    move-result p1

    return p1

    :cond_18
    invoke-direct {p0, p1}, Landroidx/biometric/i;->b(I)I

    move-result p1

    return p1
.end method
