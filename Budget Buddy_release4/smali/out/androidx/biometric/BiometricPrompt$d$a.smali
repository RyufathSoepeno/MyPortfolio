.class public Landroidx/biometric/BiometricPrompt$d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/biometric/BiometricPrompt$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/CharSequence;

.field private b:Ljava/lang/CharSequence;

.field private c:Ljava/lang/CharSequence;

.field private d:Ljava/lang/CharSequence;

.field private e:Z

.field private f:Z

.field private g:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/biometric/BiometricPrompt$d$a;->a:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/biometric/BiometricPrompt$d$a;->b:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/biometric/BiometricPrompt$d$a;->c:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/biometric/BiometricPrompt$d$a;->d:Ljava/lang/CharSequence;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/biometric/BiometricPrompt$d$a;->e:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/biometric/BiometricPrompt$d$a;->f:Z

    iput v0, p0, Landroidx/biometric/BiometricPrompt$d$a;->g:I

    return-void
.end method


# virtual methods
.method public a()Landroidx/biometric/BiometricPrompt$d;
    .registers 11

    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$d$a;->a:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7d

    iget v0, p0, Landroidx/biometric/BiometricPrompt$d$a;->g:I

    invoke-static {v0}, Landroidx/biometric/c;->e(I)Z

    move-result v0

    if-eqz v0, :cond_56

    iget v0, p0, Landroidx/biometric/BiometricPrompt$d$a;->g:I

    if-eqz v0, :cond_19

    invoke-static {v0}, Landroidx/biometric/c;->c(I)Z

    move-result v0

    goto :goto_1b

    :cond_19
    iget-boolean v0, p0, Landroidx/biometric/BiometricPrompt$d$a;->f:Z

    :goto_1b
    iget-object v1, p0, Landroidx/biometric/BiometricPrompt$d$a;->d:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2e

    if-eqz v0, :cond_26

    goto :goto_2e

    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Negative text must be set and non-empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e
    :goto_2e
    iget-object v1, p0, Landroidx/biometric/BiometricPrompt$d$a;->d:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_41

    if-nez v0, :cond_39

    goto :goto_41

    :cond_39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Negative text must not be set if device credential authentication is allowed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_41
    :goto_41
    new-instance v0, Landroidx/biometric/BiometricPrompt$d;

    iget-object v3, p0, Landroidx/biometric/BiometricPrompt$d$a;->a:Ljava/lang/CharSequence;

    iget-object v4, p0, Landroidx/biometric/BiometricPrompt$d$a;->b:Ljava/lang/CharSequence;

    iget-object v5, p0, Landroidx/biometric/BiometricPrompt$d$a;->c:Ljava/lang/CharSequence;

    iget-object v6, p0, Landroidx/biometric/BiometricPrompt$d$a;->d:Ljava/lang/CharSequence;

    iget-boolean v7, p0, Landroidx/biometric/BiometricPrompt$d$a;->e:Z

    iget-boolean v8, p0, Landroidx/biometric/BiometricPrompt$d$a;->f:Z

    iget v9, p0, Landroidx/biometric/BiometricPrompt$d$a;->g:I

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Landroidx/biometric/BiometricPrompt$d;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZI)V

    return-object v0

    :cond_56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Authenticator combination is unsupported on API "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/biometric/BiometricPrompt$d$a;->g:I

    invoke-static {v2}, Landroidx/biometric/c;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Title must be set and non-empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(I)Landroidx/biometric/BiometricPrompt$d$a;
    .registers 2

    iput p1, p0, Landroidx/biometric/BiometricPrompt$d$a;->g:I

    return-object p0
.end method

.method public c(Z)Landroidx/biometric/BiometricPrompt$d$a;
    .registers 2

    iput-boolean p1, p0, Landroidx/biometric/BiometricPrompt$d$a;->e:Z

    return-object p0
.end method

.method public d(Ljava/lang/CharSequence;)Landroidx/biometric/BiometricPrompt$d$a;
    .registers 2

    iput-object p1, p0, Landroidx/biometric/BiometricPrompt$d$a;->c:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public e(Ljava/lang/CharSequence;)Landroidx/biometric/BiometricPrompt$d$a;
    .registers 2

    iput-object p1, p0, Landroidx/biometric/BiometricPrompt$d$a;->d:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public f(Ljava/lang/CharSequence;)Landroidx/biometric/BiometricPrompt$d$a;
    .registers 2

    iput-object p1, p0, Landroidx/biometric/BiometricPrompt$d$a;->b:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public g(Ljava/lang/CharSequence;)Landroidx/biometric/BiometricPrompt$d$a;
    .registers 2

    iput-object p1, p0, Landroidx/biometric/BiometricPrompt$d$a;->a:Ljava/lang/CharSequence;

    return-object p0
.end method
