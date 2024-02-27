.class Landroidx/biometric/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/biometric/a$b;,
        Landroidx/biometric/a$c;,
        Landroidx/biometric/a$d;
    }
.end annotation


# instance fields
.field private a:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

.field private b:Landroidx/core/hardware/fingerprint/a$c;

.field final c:Landroidx/biometric/a$d;


# direct methods
.method constructor <init>(Landroidx/biometric/a$d;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/biometric/a;->c:Landroidx/biometric/a$d;

    return-void
.end method


# virtual methods
.method a()Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;
    .registers 2

    iget-object v0, p0, Landroidx/biometric/a;->a:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    if-nez v0, :cond_c

    iget-object v0, p0, Landroidx/biometric/a;->c:Landroidx/biometric/a$d;

    invoke-static {v0}, Landroidx/biometric/a$b;->a(Landroidx/biometric/a$d;)Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    move-result-object v0

    iput-object v0, p0, Landroidx/biometric/a;->a:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    :cond_c
    iget-object v0, p0, Landroidx/biometric/a;->a:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    return-object v0
.end method

.method b()Landroidx/core/hardware/fingerprint/a$c;
    .registers 2

    iget-object v0, p0, Landroidx/biometric/a;->b:Landroidx/core/hardware/fingerprint/a$c;

    if-nez v0, :cond_b

    new-instance v0, Landroidx/biometric/a$a;

    invoke-direct {v0, p0}, Landroidx/biometric/a$a;-><init>(Landroidx/biometric/a;)V

    iput-object v0, p0, Landroidx/biometric/a;->b:Landroidx/core/hardware/fingerprint/a$c;

    :cond_b
    iget-object v0, p0, Landroidx/biometric/a;->b:Landroidx/core/hardware/fingerprint/a$c;

    return-object v0
.end method
