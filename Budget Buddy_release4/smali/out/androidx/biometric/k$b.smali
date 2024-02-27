.class final Landroidx/biometric/k$b;
.super Landroidx/biometric/a$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/biometric/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/biometric/k;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/biometric/k;)V
    .registers 3

    invoke-direct {p0}, Landroidx/biometric/a$d;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/biometric/k$b;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method a(ILjava/lang/CharSequence;)V
    .registers 5

    iget-object v0, p0, Landroidx/biometric/k$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Landroidx/biometric/k$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/biometric/k;

    invoke-virtual {v0}, Landroidx/biometric/k;->B()Z

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, p0, Landroidx/biometric/k$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/biometric/k;

    invoke-virtual {v0}, Landroidx/biometric/k;->z()Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Landroidx/biometric/k$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/biometric/k;

    new-instance v1, Landroidx/biometric/d;

    invoke-direct {v1, p1, p2}, Landroidx/biometric/d;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroidx/biometric/k;->J(Landroidx/biometric/d;)V

    :cond_34
    return-void
.end method

.method b()V
    .registers 3

    iget-object v0, p0, Landroidx/biometric/k$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroidx/biometric/k$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/biometric/k;

    invoke-virtual {v0}, Landroidx/biometric/k;->z()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroidx/biometric/k$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/biometric/k;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/biometric/k;->K(Z)V

    :cond_22
    return-void
.end method

.method c(Ljava/lang/CharSequence;)V
    .registers 3

    iget-object v0, p0, Landroidx/biometric/k$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroidx/biometric/k$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/biometric/k;

    invoke-virtual {v0, p1}, Landroidx/biometric/k;->L(Ljava/lang/CharSequence;)V

    :cond_13
    return-void
.end method

.method d(Landroidx/biometric/BiometricPrompt$b;)V
    .registers 4

    iget-object v0, p0, Landroidx/biometric/k$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3e

    iget-object v0, p0, Landroidx/biometric/k$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/biometric/k;

    invoke-virtual {v0}, Landroidx/biometric/k;->z()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-virtual {p1}, Landroidx/biometric/BiometricPrompt$b;->a()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_33

    new-instance v0, Landroidx/biometric/BiometricPrompt$b;

    invoke-virtual {p1}, Landroidx/biometric/BiometricPrompt$b;->b()Landroidx/biometric/BiometricPrompt$c;

    move-result-object p1

    iget-object v1, p0, Landroidx/biometric/k$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/biometric/k;

    invoke-virtual {v1}, Landroidx/biometric/k;->t()I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroidx/biometric/BiometricPrompt$b;-><init>(Landroidx/biometric/BiometricPrompt$c;I)V

    move-object p1, v0

    :cond_33
    iget-object v0, p0, Landroidx/biometric/k$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/biometric/k;

    invoke-virtual {v0, p1}, Landroidx/biometric/k;->M(Landroidx/biometric/BiometricPrompt$b;)V

    :cond_3e
    return-void
.end method
