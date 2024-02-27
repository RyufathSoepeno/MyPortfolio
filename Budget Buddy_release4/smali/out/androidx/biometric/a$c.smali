.class Landroidx/biometric/a$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/biometric/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# direct methods
.method static a(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;)I
    .registers 1

    invoke-static {p0}, Landroidx/biometric/b;->a(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;)I

    move-result p0

    return p0
.end method
