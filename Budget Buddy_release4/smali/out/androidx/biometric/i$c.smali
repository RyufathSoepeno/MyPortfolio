.class Landroidx/biometric/i$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/biometric/i$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/biometric/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/biometric/i$c;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    iget-object v0, p0, Landroidx/biometric/i$c;->a:Landroid/content/Context;

    invoke-static {v0}, Landroidx/biometric/t;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public b()Landroid/hardware/biometrics/BiometricManager;
    .registers 2

    iget-object v0, p0, Landroidx/biometric/i$c;->a:Landroid/content/Context;

    invoke-static {v0}, Landroidx/biometric/i$a;->b(Landroid/content/Context;)Landroid/hardware/biometrics/BiometricManager;

    move-result-object v0

    return-object v0
.end method

.method public c()Z
    .registers 2

    iget-object v0, p0, Landroidx/biometric/i$c;->a:Landroid/content/Context;

    invoke-static {v0}, Landroidx/biometric/r;->b(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public d()Z
    .registers 3

    iget-object v0, p0, Landroidx/biometric/i$c;->a:Landroid/content/Context;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0, v1}, Landroidx/biometric/o;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public e()Z
    .registers 2

    iget-object v0, p0, Landroidx/biometric/i$c;->a:Landroid/content/Context;

    invoke-static {v0}, Landroidx/biometric/r;->a(Landroid/content/Context;)Landroid/app/KeyguardManager;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public f()Landroidx/core/hardware/fingerprint/a;
    .registers 2

    iget-object v0, p0, Landroidx/biometric/i$c;->a:Landroid/content/Context;

    invoke-static {v0}, Landroidx/core/hardware/fingerprint/a;->b(Landroid/content/Context;)Landroidx/core/hardware/fingerprint/a;

    move-result-object v0

    return-object v0
.end method
