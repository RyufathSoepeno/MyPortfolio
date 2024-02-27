.class Landroidx/biometric/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/biometric/l$b;,
        Landroidx/biometric/l$c;
    }
.end annotation


# instance fields
.field private final a:Landroidx/biometric/l$c;

.field private b:Landroid/os/CancellationSignal;

.field private c:Landroidx/core/os/e;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/biometric/l$a;

    invoke-direct {v0, p0}, Landroidx/biometric/l$a;-><init>(Landroidx/biometric/l;)V

    iput-object v0, p0, Landroidx/biometric/l;->a:Landroidx/biometric/l$c;

    return-void
.end method


# virtual methods
.method a()V
    .registers 5

    iget-object v0, p0, Landroidx/biometric/l;->b:Landroid/os/CancellationSignal;

    const/4 v1, 0x0

    const-string v2, "CancelSignalProvider"

    if-eqz v0, :cond_13

    :try_start_7
    invoke-static {v0}, Landroidx/biometric/l$b;->a(Landroid/os/CancellationSignal;)V
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_a} :catch_b

    goto :goto_11

    :catch_b
    move-exception v0

    const-string v3, "Got NPE while canceling biometric authentication."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_11
    iput-object v1, p0, Landroidx/biometric/l;->b:Landroid/os/CancellationSignal;

    :cond_13
    iget-object v0, p0, Landroidx/biometric/l;->c:Landroidx/core/os/e;

    if-eqz v0, :cond_23

    :try_start_17
    invoke-virtual {v0}, Landroidx/core/os/e;->a()V
    :try_end_1a
    .catch Ljava/lang/NullPointerException; {:try_start_17 .. :try_end_1a} :catch_1b

    goto :goto_21

    :catch_1b
    move-exception v0

    const-string v3, "Got NPE while canceling fingerprint authentication."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_21
    iput-object v1, p0, Landroidx/biometric/l;->c:Landroidx/core/os/e;

    :cond_23
    return-void
.end method

.method b()Landroid/os/CancellationSignal;
    .registers 2

    iget-object v0, p0, Landroidx/biometric/l;->b:Landroid/os/CancellationSignal;

    if-nez v0, :cond_c

    iget-object v0, p0, Landroidx/biometric/l;->a:Landroidx/biometric/l$c;

    invoke-interface {v0}, Landroidx/biometric/l$c;->a()Landroid/os/CancellationSignal;

    move-result-object v0

    iput-object v0, p0, Landroidx/biometric/l;->b:Landroid/os/CancellationSignal;

    :cond_c
    iget-object v0, p0, Landroidx/biometric/l;->b:Landroid/os/CancellationSignal;

    return-object v0
.end method

.method c()Landroidx/core/os/e;
    .registers 2

    iget-object v0, p0, Landroidx/biometric/l;->c:Landroidx/core/os/e;

    if-nez v0, :cond_c

    iget-object v0, p0, Landroidx/biometric/l;->a:Landroidx/biometric/l$c;

    invoke-interface {v0}, Landroidx/biometric/l$c;->b()Landroidx/core/os/e;

    move-result-object v0

    iput-object v0, p0, Landroidx/biometric/l;->c:Landroidx/core/os/e;

    :cond_c
    iget-object v0, p0, Landroidx/biometric/l;->c:Landroidx/core/os/e;

    return-object v0
.end method
