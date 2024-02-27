.class public Landroidx/biometric/BiometricPrompt$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/biometric/BiometricPrompt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/biometric/BiometricPrompt$d$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/CharSequence;

.field private final b:Ljava/lang/CharSequence;

.field private final c:Ljava/lang/CharSequence;

.field private final d:Ljava/lang/CharSequence;

.field private final e:Z

.field private final f:Z

.field private final g:I


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZI)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/biometric/BiometricPrompt$d;->a:Ljava/lang/CharSequence;

    iput-object p2, p0, Landroidx/biometric/BiometricPrompt$d;->b:Ljava/lang/CharSequence;

    iput-object p3, p0, Landroidx/biometric/BiometricPrompt$d;->c:Ljava/lang/CharSequence;

    iput-object p4, p0, Landroidx/biometric/BiometricPrompt$d;->d:Ljava/lang/CharSequence;

    iput-boolean p5, p0, Landroidx/biometric/BiometricPrompt$d;->e:Z

    iput-boolean p6, p0, Landroidx/biometric/BiometricPrompt$d;->f:Z

    iput p7, p0, Landroidx/biometric/BiometricPrompt$d;->g:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Landroidx/biometric/BiometricPrompt$d;->g:I

    return v0
.end method

.method public b()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$d;->c:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public c()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$d;->d:Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    goto :goto_7

    :cond_5
    const-string v0, ""

    :goto_7
    return-object v0
.end method

.method public d()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$d;->b:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public e()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroidx/biometric/BiometricPrompt$d;->a:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public f()Z
    .registers 2

    iget-boolean v0, p0, Landroidx/biometric/BiometricPrompt$d;->e:Z

    return v0
.end method

.method public g()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Landroidx/biometric/BiometricPrompt$d;->f:Z

    return v0
.end method
