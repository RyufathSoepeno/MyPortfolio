.class Landroidx/core/hardware/fingerprint/a$a;
.super Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/hardware/fingerprint/a;->g(Landroidx/core/hardware/fingerprint/a$c;)Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/core/hardware/fingerprint/a$c;


# direct methods
.method constructor <init>(Landroidx/core/hardware/fingerprint/a$c;)V
    .registers 2

    iput-object p1, p0, Landroidx/core/hardware/fingerprint/a$a;->a:Landroidx/core/hardware/fingerprint/a$c;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .registers 4

    iget-object v0, p0, Landroidx/core/hardware/fingerprint/a$a;->a:Landroidx/core/hardware/fingerprint/a$c;

    invoke-virtual {v0, p1, p2}, Landroidx/core/hardware/fingerprint/a$c;->a(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public onAuthenticationFailed()V
    .registers 2

    iget-object v0, p0, Landroidx/core/hardware/fingerprint/a$a;->a:Landroidx/core/hardware/fingerprint/a$c;

    invoke-virtual {v0}, Landroidx/core/hardware/fingerprint/a$c;->b()V

    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .registers 4

    iget-object v0, p0, Landroidx/core/hardware/fingerprint/a$a;->a:Landroidx/core/hardware/fingerprint/a$c;

    invoke-virtual {v0, p1, p2}, Landroidx/core/hardware/fingerprint/a$c;->c(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V
    .registers 4

    iget-object v0, p0, Landroidx/core/hardware/fingerprint/a$a;->a:Landroidx/core/hardware/fingerprint/a$c;

    new-instance v1, Landroidx/core/hardware/fingerprint/a$d;

    invoke-static {p1}, Landroidx/core/hardware/fingerprint/a$b;->b(Ljava/lang/Object;)Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/hardware/fingerprint/a;->f(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;)Landroidx/core/hardware/fingerprint/a$e;

    move-result-object p1

    invoke-direct {v1, p1}, Landroidx/core/hardware/fingerprint/a$d;-><init>(Landroidx/core/hardware/fingerprint/a$e;)V

    invoke-virtual {v0, v1}, Landroidx/core/hardware/fingerprint/a$c;->d(Landroidx/core/hardware/fingerprint/a$d;)V

    return-void
.end method
